# This Maps to the Media Lab pages
class ResourcesController < ApplicationController
  
  before_filter :coverflows
  
  layout "layout2"
  
  def index
    @documents = Document.small_list(3)
    @links = Link.small_list(3)
  end

end
