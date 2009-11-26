# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_twilike_session',
  :secret      => '1a3563c6221a29b39dd4b9a1f8e523f252e5f09fb84491da72b12f4bdd5c301a82909eb145ae0d3a87a91504737d25e5d3c1d5996ba4bf8fbedf966266839344'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
