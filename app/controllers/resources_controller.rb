# This Maps to the Media Lab pages
class ResourcesController < ApplicationController
  
  def index
    @articles = Article.no_press.paginate :per_page => 10, :page => params[:page]
    @documents = Document.brochures
    @press_releases = Article.type('press_release').small_list(3)
    @videos = Video.list(4, params[:page])
    @events = Event.upcoming_events.small_list(1).last_created
    # @advertisements = Advertisement.current_list.small_list(2).order_list
  end

end
