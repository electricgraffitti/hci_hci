module ServicesHelper
  
  def index_listing(serv)
    a = "<div class='show_wrap grid_12'>"
    a << "<div class='grid_2 alpha '>#{link_to image_tag(serv.avatar.url(:small), :alt => serv.title), service_path(serv)}</div>"
    a << "<div class='grid_10 omega'>"
    a << "<h3>#{h serv.title}&#8482</h3>"
    a << "<p>#{h serv.description}</p>"
    a << "</div></div>"
  end
  
  def show_listing(serv)
    a = "<div class='show_wrap grid_12'>"
    a << "<div class='grid_2 alpha '>#{link_to image_tag(serv.avatar.url(:small), :alt => serv.title), service_path(serv)}</div>"
    a << "<div class='grid_10 omega'>"
    a << "<h3>#{h serv.title}&#8482</h3>"
    a << "<p>#{h serv.description}</p>"
    a << "</div></div>"
  end
  
end
