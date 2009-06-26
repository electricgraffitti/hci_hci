# This Maps to the Media Lab pages
class ResourcesController < ApplicationController
  
  layout "layout4"
  
  def index
    @documents = Document.small_list(3)
    @links = Link.small_list(3)
  end

end
