  # The priority is based upon order of creation: first created -> highest priority.
ActionController::Routing::Routes.draw do |map|
  
  map.resources :goal_types
  map.resources :claim_types
  map.resources :business_type
  map.resources :service_inquiries
  map.resources :videos
  map.resources :free_trials
  map.resources :benefits
  map.resources :newsletter_subscriptions
  map.resources :tickets, :has_many => :ticket_assets
  map.resources :ticket_updates
  map.resources :ticket_statuses
  map.resources :priorities
  map.resources :departments
  map.resources :roles
  map.resources :employees
  map.resources :employee_sessions
  map.resources :document_types
  map.resources :coverflows
  map.resources :documents, :has_many => :assets
  map.resources :links, :has_many => :assets
  map.resources :article_types
  map.resources :articles, :has_many => :assets
  map.resources :events, :has_many => :assets
  map.resources :services, :has_many => :assets
  map.resources :users
  map.resources :user_sessions
  
  # Mail Route Paths
  map.contact_mailer 'contacts_mailer', :controller => "contacts", :action => "contacts_mailer"
  
  # Captcha
  map.simple_captcha '/simple_captcha/:action', :controller => 'simple_captcha'
  
  # XML Routes
  
  # Admin Paths
  map.login "login", :controller => "user_sessions", :action => "new"
  map.logout "logout", :controller => "user_sessions", :action => "destroy"
  map.admin_services "hci-services", :controller => "users", :action => "admin_services"
  map.admin_articles "hci-articles", :controller => "users", :action => "admin_articles"
  map.admin_events "hci-events", :controller => "users", :action => "admin_events"
  map.admin_videos "hci-videos", :controller => "users", :action => "admin_videos"
  map.admin_documents "hci-documents", :controller => "users", :action => "admin_documents"
  
  # Custom Named Routes
  map.issuu_upload "upload-issuu", :controller => "issuu_uploads", :action => "index"
  map.landing "landing_page_test", :controller => "health_care", :action => "landing_page"
  map.issue "healthcare-insight-document", :controller => 'issuu_uploads', :action => 'show'
  map.nucleus "nucleus", :controller => "health_care", :action => "nucleus"
  map.markets "healthcare-insight-markets", :controller => "health_care", :action => "markets"
  map.res "healthcare-insight-resources", :controller => "health_care", :action => "resources"
  map.press_kit "healthcare-insight-press-kit", :controller => "health_care", :action => "press_kit"
  map.contact "contact-healthcare-insight", :controller => "contacts", :action => "contact_us"
  map.contact_thank_you "thank-you", :controller => "contacts", :action => "thank_you"
  map.press "health-care-press", :controller => "announcements", :action => "index"
  map.media "health-care-resources", :controller => "resources", :action => "index"
  map.careers "careers", :controller => "health_care", :action => "careers"
  map.partners "healthcare-insight-partners", :controller => "health_care", :action => "partners"
  map.accreditations "healthcare-insight-accreditations", :controller => "health_care", :action => "accreditations"
  map.privacy "healthcare-insight-privacy-policy-and-disclaimers", :controller => "health_care", :action => "privacy_policy"
  map.social "healthcare-insight-social-media-links", :controller => "health_care", :action => "social_media"
  map.public_sector "public-sector-claims-payment-software-solutions", :controller => "health_care", :action => "public_sector"
  map.private_sector "private-sector-claims-payment-software-solutions", :controller => "health_care", :action => "private_sector"
  map.workers_comp "workers-comp-claims-payment-software-solutions", :controller => "health_care", :action => "workers_comp"
  map.search "health-care-search-results", :controller => 'search', :action => 'index'

  map.employee_login "employee_login", :controller => "employee_sessions", :action => "new"
  map.employee_logout "employee_logout", :controller => "employee_sessions", :action => "destroy"
  map.about "about-healthcare-insight", :controller => "health_care", :action => "about"
  map.home "health-care", :controller => "health_care", :action => "index"
  map.root :controller => "health_care", :action => "index"
  
end
