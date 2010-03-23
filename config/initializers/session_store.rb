# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_test_upload_session',
  :secret      => '70e4818452a0267d8a00c7009876b732e349a25abd7f5f97a5abf516fee21c7ac2697f2331fa7325168eff0eeec7f44acfbd495ad54929b5f95d901bf2643ba8'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
