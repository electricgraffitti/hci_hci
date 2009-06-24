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
    a << "<h3>#{h mod.title}</h3>"
    a << "<p>#{h mod.description}</p>"
    a << "</div></div>"
  end
  
  # def admin_links(m)
  #   if current_user
  #     a = "#{link_to 'New', new_m_path}"
  #     a << "|"
  #     a << "#{link_to 'Edit', edit_m_path(m)}" 
  #     a << "|"
  #     a << "#{link_to 'Delete', m, :confirm => 'Are you sure?', :method => :delete}"
  #   end 
  # end
  
end
