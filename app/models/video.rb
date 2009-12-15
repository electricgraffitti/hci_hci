# == Schema Information
#
# Table name: videos
#
#  id                 :integer(4)      not null, primary key
#  title              :string(255)
#  description        :text
#  video_type_id      :integer(4)
#  third_party        :boolean(1)
#  third_party_url    :string(255)
#  created_at         :datetime
#  updated_at         :datetime
#  video_file_name    :string(255)
#  video_content_type :string(255)
#  video_file_size    :integer(4)
#  video_updated_at   :datetime
#  permalink          :string(255)
#

class Video < ActiveRecord::Base
  
  # has_many :assets, :as => :attachable
   # has_many :case_studies, :class_name => 'CaseStudy'
   # accepts_nested_attributes_for :case_studies, :allow_destroy => true

   # Thinking Sphinx Indexes
   define_index do
     indexes description
     indexes title
   end

   # RedCloth (textilize)
   # acts_as_textiled  :description

   # Validations
   validates_presence_of :title, :description, :permalink

   # PaperClip
   has_attached_file :video,
                     :url => "/videos/:id/:style/:basename.:extension",
                     :path => ":rails_root/public/videos/:id/:style/:basename.:extension"
                     
   # # Paperclip Validations
   # validates_attachment_presence :video
   # validates_attachment_content_type :video, :content_type => ['video/x-msvideo','video/avi','video/quicktime','video/3gpp','video/x-ms-wmv','video/mp4','video/mpeg']
   # 
   # # Attrs
   # attr_protected :video_file_name, :video_content_type, :video_file_size

   #============================= Class Methods ==================================#

   # Sets Permalink Routes
   def to_param
     "#{id}-#{permalink}"
   end
  
end
