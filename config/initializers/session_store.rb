# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_Blog_session',
  :secret      => '4e835587ebbb899e214de15772b0689060f0b8c1fd003190f40c9243e94ee42b9b836d50854a3071617d2adc2d5ea5a1dff3e05518538cd5508e149085f4de84'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
