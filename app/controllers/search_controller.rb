class SearchController < ApplicationController
  
  def index
    @services = Service.search params[:search]
    @articles = Article.search params[:search]
    @documents = Document.search params[:search]
    @events = Event.search params[:search]
    # add more sources as needed
  end

end
