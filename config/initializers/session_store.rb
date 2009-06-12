# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_hci_hci_session',
  :secret      => '223376c44e80bf467d785fde5137b27d0078b06f3aa7f16eb960aa5174591e330da246fd8e617bf8b16d8a920a4ad9e398d301c957114dbfe131c1b1c8329039'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
