  # The priority is based upon order of creation: first created -> highest priority.
ActionController::Routing::Routes.draw do |map|
  map.resources :document_types
  map.resources :documents, :has_many => :assets
  map.resources :links, :has_many => :assets
  map.resources :article_types
  map.resources :articles, :has_many => :assets
  map.resources :events, :has_many => :assets
  map.resources :services, :has_many => :assets
  map.resources :users
  map.resources :user_sessions
  map.resources :videos, :new => {:upload => :post}
  
  # Mail Route Paths
  map.contact_mailer 'contacts_mailer', :controller => "contacts", :action => "contacts_mailer"
  
  # Custom Named Routes
  map.contact "contact-healthcare-insight", :controller => "contacts", :action => "contact_us"
  map.press "health-care-press", :controller => "announcements", :action => "index"
  map.media "health-care-media", :controller => "resources", :action => "index"
  map.careers "healthcare-insight-careers", :controller => "careers", :action => "index"
  map.search "health-care-search-results", :controller => 'search', :action => 'index'
  map.dashboard "dashboard", :controller => "users", :action => "index"
  map.login "login", :controller => "user_sessions", :action => "new"
  map.logout "logout", :controller => "user_sessions", :action => "destroy"
  map.about "about-healthcare-insight", :controller => "health_care", :action => "about"
  map.home "health-care", :controller => "health_care", :action => "index"
  map.root :controller => "health_care", :action => "index"
  
end
