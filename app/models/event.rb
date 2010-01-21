# == Schema Information
#
# Table name: events
#
#  id               :integer(4)      not null, primary key
#  title            :string(255)
#  description      :text
#  meta_description :text
#  keywords         :string(255)
#  permalink        :string(255)
#  created_at       :datetime
#  updated_at       :datetime
#

class Event < ActiveRecord::Base
  
  has_many :assets, :as => :attachable
  has_many :coverflows, :as => :cflow, :class_name => "Coverflow"
  accepts_nested_attributes_for :coverflows, :allow_destroy => true
  
  # Validations
  validates_presence_of :title, :description, :permalink
  
  # Thinking Sphinx Indexes
  define_index do
    indexes title
  end
  
  # RedCloth (textilize)
  acts_as_textiled  :description
  
  named_scope :upcoming_events, :conditions => ["start_date > ?", Date.today]
  named_scope :small_list, lambda { |limit| {:limit => limit }}
  named_scope :last_created,  :order => "start_date ASC"
  
  #============================= Class Methods ==================================#
  
  # Sets Permalink Routes
  def to_param
    "#{id}-#{permalink}"
  end
  
  #pulls the assets from the form
  def attachments=(attachments)
    attachments.each do |attachment|
      assets.build(attachment)
    end
  end
  
end
