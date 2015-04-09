source 'https://rubygems.org'

ruby '2.2.1'

gem 'airbrake'
gem 'batch-rails-4'
gem 'bourbon'
gem 'coffee-rails'
gem 'email_validator'
gem 'haml-rails'
gem 'high_voltage'
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'neat'
gem 'pg'
gem 'pry-rails'
gem 'rails', '~> 4.1.1'
gem 'thin'
gem 'uglifier'

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'bullet'
  gem 'foreman'
  gem 'quiet_assets'
  gem 'ruby-prof'
end

group :development, :production do
  gem 'newrelic_rpm'
end

group :development, :test do
  gem 'cane'
  gem 'dotenv-rails'
  gem 'factory_girl_rails'
  gem 'letter_opener'
  gem 'parity'
  gem 'rspec-rails', "~> 2.14.2"
  gem 'shoulda-matchers'
end

group :test do
  gem 'action_mailer_cache_delivery'
  gem 'bourne'
  gem 'capybara-webkit'
  gem 'codeclimate-test-reporter', require: false
  gem 'cucumber-rails', require: false
  gem 'database_cleaner'
  gem 'email_spec'
  gem 'selenium-webdriver'
  gem 'simplecov', require: false
  gem 'timecop'
end

group :production, :staging do
  gem 'rails_12factor'
  gem 'rails_version'
end

group :development, :test, :staging do
  gem 'recipient_interceptor'
end
