module DocumentsHelper
  
  def index_document(mod)
    a = "<div class='show_wrap grid_5 alpha omega'>"
    mod.assets.each do |asset|
    a << "<div class='grid_2 alpha '>#{link_to image_tag(asset.attachment.url(:thumb), :alt => mod.title), document_path(mod)}</div>"
  end
    a << "<div class='grid_3 alpha'>"
    a << "<h3>#{link_to mod.title, document_path(mod)}</h3>"
    a << "</div>"
    a << "<div class='clear'></div>"
    if current_user
      a << " | "
      a << link_to('New', new_document_path)
      a << " | " 
      a << link_to('Edit', edit_document_path(mod))
      a << " | "
      a << link_to('Delete', mod, :confirm => 'Are you sure?', :method => :delete) 
    end
    a << "</div>"
  end
  
end
