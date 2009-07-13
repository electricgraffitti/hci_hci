class AnnouncementsController < ApplicationController
  
  before_filter :coverflows
  
  layout "layout2"
  
  def index
    @articles = Article.type("hci_article").small_list(2)
    @third_party_articles = Article.type("third_party").small_list(2)
    @press_releases = Article.type("press_release").small_list(2)
    @events = Event.all
  end

end
