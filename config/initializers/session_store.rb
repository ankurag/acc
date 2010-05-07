# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_AccountPill_session',
  :secret      => '33e814e4131900031d8c4b337142fb32a2e60f6e5b7a269e1c6784847cb11ae236ff825a79effd6540612bd8adc71bb21ffc06f782522e3a928c2b4bd2f11977'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
