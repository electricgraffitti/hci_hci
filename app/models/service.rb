class Service < ActiveRecord::Base
  
  # Thinking Sphinx Indexes
  define_index do
    indexes description
    indexes title
  end
  
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
  
end
