class Asset < ActiveRecord::Base
  
  belongs_to :attachable, :polymorphic => true
  
  # PaperClip
  has_attached_file :attachment, 
                    :styles => { :medium => "200x200>", :small => "100x100>", :thumb => "70x70>" },
                    :url => "/attachments/:id/:style_:basename.:extension",
                    :path => ":rails_root/public/attachments/:id/:style_:basename.:extension"
  # Attrs
  attr_protected :attachment_file_name, :attachment_content_type, :attachment_file_size
  
end
