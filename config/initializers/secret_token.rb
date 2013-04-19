# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
if Rails.env.test?
  Fivetool::Application.config.secret_token = '23cf389ccb9ecc2adc9d88d25154ff7504f2c1c5dca1c9d8a9ad59eb269e4e494e61fa034d1005555bc33deb633c63321e3e9febfe94ecaa2407578cb82cfeb2'
else
  Fivetool::Application.config.secret_token = ENV['RAILS_SECRET_TOKEN']
end