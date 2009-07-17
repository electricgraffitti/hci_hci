module LinksHelper
  
  def index_link(mod)
    a = "<div class='show_wrap grid_5 alpha omega'>"
    mod.assets.each do |asset|
    a << "<div class='grid_2 alpha '>#{link_to image_tag(asset.attachment.url(:thumb), :alt => mod.title), mod.link_url}</div>"
  end
    a << "<div class='grid_3 alpha'>"
    a << "<h4>#{link_to((mod.title), mod.link_url)}</h4>"
    a << "</div>"
    a << "<div class='clear'></div>"
    if current_user
      a << " | "
      a << link_to('New', new_link_path)
      a << " | " 
      a << link_to('Edit', edit_link_path(mod))
      a << " | "
      a << link_to('Destroy', mod, :confirm => 'Are you sure?', :method => :delete) 
    end
    a << "</div>"
  end
  
end
