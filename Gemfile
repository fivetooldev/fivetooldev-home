source 'https://rubygems.org'

ruby "2.0.0"

gem 'bourbon'
gem 'coffee-rails', '~> 4.0.0.rc1', require: 'coffee_script'
gem 'email_validator'
gem 'haml-rails'
gem 'high_voltage'
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'neat'
gem 'pg'
gem 'rails', '4.0.0.rc1'
gem 'sass-rails',   '~> 4.0.0.rc1', require: 'sass'
gem 'sprockets-rails', require: 'sprockets/railtie'
gem 'thin'
gem 'uglifier', '>= 1.3.0'

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'bullet'
  gem 'foreman'
  gem 'quiet_assets'
end

group :development, :test do
  gem 'cane'
  gem 'factory_girl_rails'
  gem 'letter_opener'
  gem 'quiet_assets'
  gem 'rspec-rails'
  gem "shoulda-matchers",
    github: "thoughtbot/shoulda-matchers",
    branch: 'dp-rails-four'
end

group :test do
  gem 'action_mailer_cache_delivery'
  gem 'bourne'
  gem 'capybara-webkit'
  gem 'cucumber-rails',
    github: "cucumber/cucumber-rails",
    branch: "master_rails4_test",
    require: false
  gem 'database_cleaner', '1.0.0.RC1'
  gem 'email_spec'
  gem 'rspec'
  gem 'selenium-webdriver'
  gem 'simplecov', require: false
  gem 'timecop'
end

group :production do
  gem 'newrelic_rpm'
  gem 'rails_version'
end
