# This Maps to the Media Lab pages
class ResourcesController < ApplicationController
  
  def index
    @articles = Article.small_list(9)
    @documents = Document.brochures
  end

end
