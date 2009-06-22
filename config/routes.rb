  # The priority is based upon order of creation: first created -> highest priority.
ActionController::Routing::Routes.draw do |map|
  map.resources :services

  map.resources :users
  map.resources :user_sessions
  # Mail Route Paths
  
  # Custom Named Routes
  map.dashboard "dashboard", :controller => "users", :action => "index"
  map.login "login", :controller => "user_sessions", :action => "new"
  map.logout "logout", :controller => "user_sessions", :action => "destroy"
  map.home "health-care", :controller => "health_care", :action => "index"
  map.root :controller => "health_care", :action => "index"
  
end
