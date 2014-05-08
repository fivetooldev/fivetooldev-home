require 'dotenv'
Dotenv.load

require 'codeclimate-test-reporter'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
  SimpleCov::Formatter::HTMLFormatter,
]

SimpleCov.start 'rails'
