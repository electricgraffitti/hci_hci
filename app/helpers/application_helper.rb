# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  def page_title(page_title)
    content_for(:title) { page_title }
  end
  
  def meta_keywords(meta_keywords)
    content_for(:keywords) {meta_keywords}
  end
  
  def meta_description(meta_description)
    content_for(:description) {meta_description}
  end
  
  def show_page_listing(mod)
    a = "<div class='grid_11 omega'>"
    mod.assets.each do |asset|
      a << "<div class='grid_2 alpha'>#{image_tag(asset.attachment.url(:small), :alt => mod.title)}</div>"
    end
    a << "<div class='grid_9 alpha'>"
    a << "<h3>#{mod.title}</h3>"
    a << mod.description
    a << "</div></div>"
  end
  
end
