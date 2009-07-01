class Brochure < ActiveRecord::Base
  
  belongs_to :service
  
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
  has_attached_file :brochure, 
                    :styles => { :thumb => "70x70>" },
                    :url => "/brochures/:id/:style_:basename.:extension",
                    :path => ":rails_root/public/brochures/:id/:style_:basename.:extension"
  # Attrs
  attr_protected :brochure_file_name, :brochure_content_type, :brochure_file_size
  
  #============================= Class Methods ==================================#
  
  # Sets Permalink Routes
  def to_param
    "#{id}-#{permalink}"
  end
  
  
end
