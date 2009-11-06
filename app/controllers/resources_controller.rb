# This Maps to the Media Lab pages
class ResourcesController < ApplicationController
  
  def index
    @articles = Article.small_list(9)
    @documents = Document.last_created.small_list(3)
  end

end
