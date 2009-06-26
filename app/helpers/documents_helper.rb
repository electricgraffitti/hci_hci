module DocumentsHelper
  
  def index_document(mod)
    a = "<div class='show_wrap grid_12 alpha omega'>"
    mod.assets.each do |asset|
    a << "<div class='grid_2 alpha '>#{link_to image_tag(asset.attachment.url(:small), :alt => mod.title), document_path(mod)}</div>"
  end
    a << "<div class='grid_10 omega'>"
    a << "<h3>#{h mod.title}</h3>"
    a << "<p>#{h truncate(mod.description, :length => 350)}</p>"
    a << "</div>"
    a << "<div class='clear'></div>"
    a << "<div class='widget_links grid_5 omega right'>"
    a <<  link_to('Read More', document_path(mod))
    if current_user
      a << " | "
      a << link_to('New', new_document_path)
      a << " | " 
      a << link_to('Edit', edit_document_path(mod))
      a << " | "
      a << link_to('Delete', mod, :confirm => 'Are you sure?', :method => :delete) 
    end
    a << "</div></div>"
  end
  
end
