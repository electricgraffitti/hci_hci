# This Maps to the Media Lab pages
class ResourcesController < ApplicationController
  
  def index
    @documents = Document.small_list(3)
    @links = Link.small_list(3)
  end

end
