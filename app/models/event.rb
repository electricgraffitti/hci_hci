# == Schema Information
#
# Table name: events
#
#  id          :integer(4)      not null, primary key
#  title       :string(255)
#  description :text
#  keywords    :string(255)
#  permalink   :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Event < ActiveRecord::Base
  
  has_many :assets, :as => :attachable
  
  # Validations
  validates_presence_of :title, :description, :permalink
  
  # Thinking Sphinx Indexes
  define_index do
    indexes description
    indexes title
  end
  
  # RedCloth (textilize)
  acts_as_textiled  :description
  
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