# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  def page_title(page_title)
    content_for(:title) { page_title }
  end
  
  def show_page_listing(mod)
    a = "<div class='show_wrap grid_12'>"
    mod.assets.each do |asset|
      a << "<div class='grid_2 alpha '>#{image_tag(asset.attachment.url(:small), :alt => mod.title)}</div>"
    end
    a << "<div class='grid_10 omega'>"
    a << "<h3>#{mod.title}</h3>"
    a << mod.description
    a << "</div></div>"
  end
  
end
