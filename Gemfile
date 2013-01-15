source 'https://rubygems.org'
ruby "1.9.3"

gem 'rails', '3.2.11'

gem 'pg'
gem 'thin'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
gem 'haml-rails'

group :development, :test do
  gem 'quiet_assets'
end

group :test do
  gem 'action_mailer_cache_delivery'
  gem 'capybara-webkit'
  gem 'cucumber-rails'
  gem 'database_cleaner'
  gem 'email_spec'
  gem 'rspec-rails'
end