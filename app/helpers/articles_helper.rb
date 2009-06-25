module ArticlesHelper
 
  def index_article(mod)
    a = "<div class='show_wrap grid_12 alpha omega'>"
    mod.assets.each do |asset|
    a << "<div class='grid_2 alpha '>#{link_to image_tag(asset.attachment.url(:small), :alt => mod.title), article_path(mod)}</div>"
  end
    a << "<div class='grid_10 omega'>"
    a << "<h3>#{h mod.title}</h3>"
    a << "<p>#{h truncate(mod.description, :length => 350)}</p>"
    a << "</div>"
    a << "<div class='clear'></div>"
    a << "<div class='widget_links grid_5 omega right'>"
    a <<  link_to('Read More', article_path(mod))
    if current_user
      a << " | "
      a << link_to('New article', new_article_path)
      a << " | " 
      a << link_to('Edit', edit_article_path(mod))
      a << " | "
      a << link_to('Destroy', "#{mod}", :confirm => 'Are you sure?', :method => :delete) 
    end
    a << "</div></div>"
  end
end
