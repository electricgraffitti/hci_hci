# == Schema Information
#
# Table name: services
#
#  id                  :integer(4)      not null, primary key
#  title               :string(255)
#  description         :text
#  created_at          :datetime
#  updated_at          :datetime
#  avatar_file_name    :string(255)
#  avatar_content_type :string(255)
#  avatar_file_size    :integer(4)
#  avatar_updated_at   :datetime
#  keywords            :string(255)
#  permalink           :string(255)
#

class Service < ActiveRecord::Base
  
  has_many :assets, :as => :attachable
  
  # Thinking Sphinx Indexes
  define_index do
    indexes description
    indexes title
  end
  
  # RedCloth (textilize)
  acts_as_textiled  :description
  
  # Validations
  validates_presence_of :title, :description, :permalink
  
  # PaperClip
  has_attached_file :avatar, 
                    :styles => { :medium => "200x200>", :small => "100x100>", :thumb => "70x70>" },
                    :url => "/avatars/:id/:style_:basename.:extension",
                    :path => ":rails_root/public/avatars/:id/:style_:basename.:extension"
  # Attrs
  attr_protected :avatar_file_name, :avatar_content_type, :avatar_file_size
  
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