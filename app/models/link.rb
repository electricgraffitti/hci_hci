# == Schema Information
#
# Table name: links
#
#  id          :integer(4)      not null, primary key
#  title       :string(255)
#  description :text
#  link_url    :string(255)
#  keywords    :string(255)
#  permalink   :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Link < ActiveRecord::Base
  
  has_many :assets, :as => :attachable
  
  # Validations
  validates_presence_of :title, :description, :link_url, :permalink
  
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
