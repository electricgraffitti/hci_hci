class SitemapController < ApplicationController
  
  def sitemap
    @services = Service.find(:all, :select => "services.id, services.title, services.updated_at")
    @articles = Article.find(:all, :select => "articles.id, articles.title, articles.updated_at")
    @videos = Video.find(:all, :select => "videos.id, videos.title, videos.updated_at")
    @documents = Document.find(:all, :select => "documents.id, documents.title, documents.updated_at")
    @events = Event.find(:all, :select => "events.id, events.title, events.updated_at")
    render :action => "google_sitemap"
  end

end
