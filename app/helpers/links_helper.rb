module LinksHelper
  
  def index_link(mod)
    a = "<div class='show_wrap grid_12 alpha omega'>"
    mod.assets.each do |asset|
    a << "<div class='grid_2 alpha '>#{link_to image_tag(asset.attachment.url(:small), :alt => mod.title), mod.link_url}</div>"
  end
    a << "<div class='grid_10 omega'>"
    a << "<h3>#{link_to((mod.title), mod.link_url)}</h3>"
    a << "<p>#{mod.description}</p>"
    a << "</div>"
    a << "<div class='clear'></div>"
    a << "<div class='widget_links grid_5 omega right'>"
    a <<  link_to('Visit Site', mod.link_url)
    if current_user
      a << " | "
      a << link_to('New article', new_link_path)
      a << " | " 
      a << link_to('Edit', edit_link_path(mod))
      a << " | "
      a << link_to('Destroy', mod, :confirm => 'Are you sure?', :method => :delete) 
    end
    a << "</div></div>"
  end
  
end
