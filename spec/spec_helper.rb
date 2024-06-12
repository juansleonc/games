
require 'rack/test'
require 'rspec'
require 'mongoid-rspec'
require 'mongoid'
require 'database_cleaner-mongoid'
require 'shoulda/matchers'

ENV['RACK_ENV'] = 'test'

require File.expand_path('../../main', __FILE__)
# require 'database_cleaner'

module RSpecMixin
  include Rack::Test::Methods

  def app
    Games::Main
  end
end

RSpec.configure do |config|
  config.before(:suite) do
    DatabaseCleaner[:mongoid].strategy = :deletion
    # DatabaseCleaner.clean_with(:deletion)
  end

  config.before(:each) do
    DatabaseCleaner[:mongoid].start
  end

  config.after(:each) do
    DatabaseCleaner[:mongoid].clean
  end

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
end

Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
  end
end
