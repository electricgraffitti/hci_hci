  # The priority is based upon order of creation: first created -> highest priority.
ActionController::Routing::Routes.draw do |map|

  map.resources :students
  map.resources :student_sessions
  map.resources :advertisements
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
  map.resources :uni_resources
  map.resources :banners
  
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
  map.admin_banners "hci-banners", :controller => "users", :action => "admin_banners"
  map.admin_ads "hci-advertisements", :controller => "users", :action => "admin_ads"
  
  # Landing Pages
  map.webinar_thank_you "thank-you-for-registering", :controller => "free_trials", :action => "webinar_thank_you"
  map.ahip_ipod "thank-you-for-registering-for-your-free-ipod", :controller => "free_trials", :action => "ahip_nano_thank_you"
  map.ahip_ipod2 "thank-you-for-registering-for-your-free-ipod2", :controller => "free_trials", :action => "ahip_nano_thank_you2"
  map.ahip_ceo "ceo-up-at-night-thank-you", :controller => "free_trials", :action => "ceo_up_at_night"
  map.landing "landing_page_test", :controller => "health_care", :action => "landing_page"
  map.executive_summit "healthcare-insight-executive-summit", :controller => "free_trials", :action => "executive_summit"
  map.free_webinar "healthcare-insight-free-webinar", :controller => "free_trials", :action => "free_webinar"
  map.fci_webinar "healthcare-insight-webinar-series-fci", :controller => "free_trials", :action => "fci_webinar"
  map.ahip_march "ahip-win-a-free-ipod-nano", :controller => "free_trials", :action => "ahip_march"
  map.ahip_march22 "ahip-win-a-free-ipod-nano-2", :controller => "free_trials", :action => "ahip_march22"
  
  # Custom Named Routes
  map.issuu_upload "upload-issuu", :controller => "issuu_uploads", :action => "index"
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
  map.workers_comp "property-and-casualty", :controller => "health_care", :action => "workers_comp"
  map.search "health-care-search-results", :controller => 'search', :action => 'index'
  map.sitemap "healthcare-insight-sitemap", :controller => 'sitemap', :action => 'sitemap'

  map.employee_login "employee_login", :controller => "employee_sessions", :action => "new"
  map.employee_logout "employee_logout", :controller => "employee_sessions", :action => "destroy"
  map.about "about-healthcare-insight", :controller => "health_care", :action => "about"
  
  # Insight U Routes
  map.university "insight-university", :controller => "university", :action => "index"
  map.iuservices "insight-university", :controller => "university", :action => "iu_services"
  map.iuresources "insight-university-resources", :controller => "university", :action => "iu_resources"
  map.student_login "insight-university-login", :controller => "student_sessions", :action => "new"
  map.student_logout "insight-university-logout", :controller => "student_sessions", :action => "destroy"
  
  # Custom Redirects
  map.pci "PCI.html", :controller => "health_care", :action => "PCI"
  map.fci "FCI.html", :controller => "health_care", :action => "FCI"
  map.dci "DCI.html", :controller => "health_care", :action => "DCI"
  map.oci "OCI.html", :controller => "health_care", :action => "OCI"
  map.pubsec "PublicSector.html", :controller => "health_care", :action => "OldPublicSector"
  map.prisec "PrivateSector.html", :controller => "health_care", :action => "OldPrivateSector"
  map.pncsec "PandC.html", :controller => "health_care", :action => "OldPandC"
  map.oldabout "AboutUs.html", :controller => "health_care", :action => "OldAboutUs"
  map.oldcareers "Careers.html", :controller => "health_care", :action => "OldCareers"
  map.oldservices "Services.html", :controller => "health_care", :action => "OldServices"
  map.rcost_reduction "cost-reduction", :controller => "redirects", :action => "cost_reduction"
  map.rfraud_prevention "fraud-prevention", :controller => "redirects", :action => "fraud_software"
  
  map.home "health-care", :controller => "health_care", :action => "index"
  map.root :controller => "health_care", :action => "index"
end
