class Link < ActiveRecord::Base
  
  has_many :assets, :as => :attachable
  
  # Validations
  validates_presence_of :title, :description, :link_url, :permalink
  
  # Thinking Sphinx Indexes
  define_index do
    indexes description
    indexes title
  end
  
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
