source 'https://rubygems.org'
ruby "1.9.3"

gem 'rails', '3.2.13'

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

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'bullet'
  gem 'foreman'
  gem 'quiet_assets'
end

group :development, :test do
  gem 'factory_girl_rails'
  gem 'letter_opener'
  gem 'quiet_assets'
  gem 'rspec-rails'
  gem 'shoulda-matchers'
end

group :test do
  gem 'action_mailer_cache_delivery'
  gem 'bourne'
  gem 'capybara-webkit'
  gem 'cucumber-rails'
  gem 'database_cleaner'
  gem 'email_spec'
  gem 'rspec'
  gem 'simplecov', require: false
  gem 'timecop'
end