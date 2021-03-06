# Be sure to restart your server when you modify this file

# Specifies gem version of Rails to use when vendor/rails is not present
RAILS_GEM_VERSION = '2.3.8' unless defined? RAILS_GEM_VERSION

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  # Settings in config/environments/* take precedence over those specified here.
  # Application configuration should go into files in config/initializers
  # -- all .rb files in that directory are automatically loaded.

  # Add additional load paths for your own custom dirs
  # config.load_paths += %W( #{RAILS_ROOT}/extras )

  # Specify gems that this application depends on and have them installed with rake gems:install
  # config.gem "bj"
  # config.gem "hpricot", :version => '0.6', :source => "http://code.whytheluckystiff.net"
  # config.gem "sqlite3-ruby", :lib => "sqlite3"
  # config.gem "aws-s3", :lib => "aws/s3"
  # config.gem 'RedCloth', :version => ">= 4.1.1", :source => "http://code.whytheluckystiff.net"
    config.gem "authlogic"
  # config.gem 'bullet', :source => 'http://gemcutter.org'
    config.gem 'will_paginate', :version => '~> 2.3.11', :source => 'http://gemcutter.org'
  # config.gem "active_youtube"
    config.gem(
      'thinking-sphinx',
      :lib     => 'thinking_sphinx',
      :version => '1.3.18'
    )
    
  # Only load the plugins named here, in the order given (default is alphabetical).
  # :all can be used as a placeholder for all plugins not explicitly named
  # config.plugins = [ :exception_notification, :ssl_requirement, :all ]

  # Skip frameworks you're not going to use. To use Rails without a database,
  # you must remove the Active Record framework.
  # config.frameworks -= [ :active_record, :active_resource, :action_mailer ]

  # Activate observers that should always be running
  # config.active_record.observers = :cacher, :garbage_collector, :forum_observer

  # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
  # Run "rake -D time" for a list of tasks for finding time zone names.
  config.time_zone = 'Mountain Time (US & Canada)'

  # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
  # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}')]
  # config.i18n.default_locale = :de
end
# require for pagination
require 'will_paginate'
require 'authlogic'
require 'hpricot'
require 'RedCloth'
# require 'lib/connection.rb'
# require 'youtube_g'

# set delivery method to :smtp, :sendmail or :test
ActionMailer::Base.delivery_method = :sendmail
ActionMailer::Base.sendmail_settings = {
  :location       => '/usr/sbin/sendmail',
  :arguments      => '-i -t -f mailer@hcinsight.com'
}

# Custom Time View
Time::DATE_FORMATS[:event_time] = "%A %B %d, at %I:%M %p"
Date::DATE_FORMATS[:nice_date] = "%A, %B %d, %Y"
Date::DATE_FORMATS[:short_date] = "%A, %B %d"
Time::DATE_FORMATS[:table_date] = "%B %d %Y, at %I:%M %p"

# set the default email host for the application
# ActionMailer::Base.default_url_options = { :host => "stophealthcarefraud.com" }
