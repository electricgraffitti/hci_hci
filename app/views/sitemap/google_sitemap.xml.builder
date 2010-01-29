xml.instruct!
 
xml.urlset "xmlns" => "http://www.google.com/schemas/sitemap/0.84" do
  xml.url do
    xml.loc         "http://www.hcinsight.com/"
    xml.lastmod     Time.now.to_s(:event_time)
    xml.changefreq  "always"
  end
  
  @services.each do |s|
    xml.url do
      xml.loc         url_for(:controller => 'services', 
                            :action => 'show', 
                            :id => s.id,
                            :only_path => false)
      xml.lastmod     s.updated_at.to_s(:event_time)
      xml.changefreq  "weekly"
      xml.priority    0.9
    end
  end
  
  @articles.each do |a|
    xml.url do
      xml.loc         url_for(:controller => 'articles', 
                            :action => 'show', 
                            :id => a.id,
                            :only_path => false)
      xml.lastmod     a.updated_at.to_s(:event_time)
      xml.changefreq  "weekly"
      xml.priority    0.8
    end
  end
 
  @videos.each do |v|
    xml.url do
      xml.loc         url_for(:controller => 'videos', 
                            :action => 'show', 
                            :id => v.id,
                            :only_path => false)
      xml.lastmod     v.updated_at.to_s(:event_time)
      xml.changefreq  "weekly"
      xml.priority    0.7
    end
  end
  
  @documents.each do |d|
    xml.url do
      xml.loc         url_for(:controller => 'documents', 
                            :action => 'show', 
                            :id => d.id,
                            :only_path => false)
      xml.lastmod     d.updated_at.to_s(:event_time)
      xml.changefreq  "weekly"
      xml.priority    0.6
    end
  end
  
  @events.each do |e|
    xml.url do
      xml.loc         url_for(:controller => 'events', 
                            :action => 'show', 
                            :id => e.id,
                            :only_path => false)
      xml.lastmod     e.updated_at.to_s(:event_time)
      xml.changefreq  "weekly"
      xml.priority    0.5
    end
  end
 
end
