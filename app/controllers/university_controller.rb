class UniversityController < ApplicationController
  
  
  
  def index
    
    @press_releases = Article.type('press_release').small_list(5)
    @events = Event.upcoming_events.small_list(1).last_created
    @advertisements = Advertisement.current_list.small_list(2).order_list
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @articles }
      format.rss { render :rss => @articles }
      format.atom
    end
    
  end

end
