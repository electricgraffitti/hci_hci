ActionController::Routing::Routes.draw do |map|
  
  # The priority is based upon order of creation: first created -> highest priority.
  
  # Mail Route Paths
  
  # Custom Named Routes
  map.home "health-care", :controller => "health_care", :action => "index"
  map.root :controller => "health_care", :action => "index"
  
end
