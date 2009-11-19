module ArticlesHelper
 
  def index_article(mod)
    a = "<div class='show_wrap grid_11 alpha omega'>"
    mod.assets.each do |asset|
  end
    a << "<div class='grid_9 alpha'>"
    a << "<h3>#{mod.title}</h3>"
    a << "<p>#{truncate(mod.description, :length => 350)}</p>"
    a << "</div>"
    a << "<div class='clear'></div>"
    a << "<div class='widget_links grid_5 omega right'>"
    a <<  link_to('Read More', article_path(mod))
    if current_user
      a << " | "
      a << link_to('New', new_article_path)
      a << " | " 
      a << link_to('Edit', edit_article_path(mod))
      a << " | "
      a << link_to('Delete', "#{mod}", :confirm => 'Are you sure?', :method => :delete) 
    end
    a << "</div></div>"
  end
end
