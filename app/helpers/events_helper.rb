module EventsHelper
  
  def index_event(mod)
    a = "<div class='show_wrap grid_12 alpha omega'>"
    mod.assets.each do |asset|
    a << "<div class='grid_2 alpha '>#{link_to image_tag(asset.attachment.url(:small), :alt => mod.title), event_path(mod)}</div>"
  end
    a << "<div class='grid_10 omega'>"
    a << "<h3>#{mod.title}</h3>"
    a << "<p>#{truncate(mod.description, :length => 350)}</p>"
    a << "</div>"
    a << "<div class='clear'></div>"
    a << "<div class='widget_links grid_5 omega right'>"
    a <<  link_to('Read More', event_path(mod))
    if current_user
      a << " | "
      a << link_to('New', new_event_path)
      a << " | " 
      a << link_to('Edit', edit_event_path(mod))
      a << " | "
      a << link_to('Delete', mod, :confirm => 'Are you sure?', :method => :delete) 
    end
    a << "</div></div>"
  end
  
end
