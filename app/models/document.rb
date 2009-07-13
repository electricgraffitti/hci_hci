# == Schema Information
#
# Table name: documents
#
#  id               :integer(4)      not null, primary key
#  title            :string(255)
#  description      :text
#  document_type_id :integer(4)
#  meta_description :text
#  keywords         :string(255)
#  permalink        :string(255)
#  created_at       :datetime
#  updated_at       :datetime
#

class Document < ActiveRecord::Base
  
  belongs_to :document_type
  
  has_many :assets, :as => :attachable
  has_many :coverflows, :as => :cflow, :class_name => "Coverflow"
  accepts_nested_attributes_for :coverflows, :allow_destroy => true
  
  # Validations
  validates_presence_of :title, :description, :permalink
  
  # Thinking Sphinx Indexes
  define_index do
    indexes description
    indexes title
  end
  
  # RedCloth (textilize)
  acts_as_textiled  :description
  
  # Named Scopes
  named_scope :small_list, lambda { |limit| {:limit => limit }}
  named_scope :last_created, :order => "created_at DESC"
  
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
