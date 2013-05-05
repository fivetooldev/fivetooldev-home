Fivetool::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  # Rails 4 addition
  config.eager_load = false

  # The test environment is used exclusively to run your application's
  # test suite. You never need to work with it otherwise. Remember that
  # your test database is "scratch space" for the test suite and is wiped
  # and recreated between test runs. Don't rely on the data there!
  config.cache_classes = true

  # Configure static asset server for tests with Cache-Control for performance
  config.serve_static_assets = true
  config.static_cache_control = "public, max-age=3600"

  # Log error messages when you accidentally call methods on nil
  config.whiny_nils = true

  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Raise exceptions instead of rendering exception templates
  config.action_dispatch.show_exceptions = false

  # Disable request forgery protection in test environment
  config.action_controller.allow_forgery_protection = false

  # Tell Action Mailer not to deliver emails to the real world.
  # The :test delivery method accumulates sent emails in the
  # ActionMailer::Base.deliveries array.
  # config.action_mailer.delivery_method = :test
  config.action_mailer.delivery_method = :cache

  # Print deprecation notices to the stderr
  config.active_support.deprecation = :stderr

end

if Rails.env.test?
  ENV['RAILS_SECRET_TOKEN'] = 'f0530f5e6f287c4bfe19436cdd633da9'

  ENV['RAILS_SECRET_KEY_BASE'] = 'b43926b696e9f11afcfb0b3441e2a61f'
end