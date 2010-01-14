# This Maps to the Media Lab pages
class ResourcesController < ApplicationController
  
  def index
    @articles = Article.all.paginate :per_page => 6, :page => params[:page], :order => 'created_at DESC'
    @documents = Document.brochures
    @press_releases = Article.type('press_release').small_list(3)
    @videos = Video.all
    @events = Event.all
  end

end
