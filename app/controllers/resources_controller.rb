# This Maps to the Media Lab pages
class ResourcesController < ApplicationController
  
  def index
    @articles = Article.small_list(6)
    @documents = Document.brochures
    @press_releases = Article.type('press_release').small_list(5)
  end

end
