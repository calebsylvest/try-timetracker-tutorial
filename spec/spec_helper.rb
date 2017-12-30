ENV["RAILS_ENV"] ||= 'test'

require File.expand_path('../../config/environment', __FILE__)
require 'rspec/rails'
require 'rspec/autorun'
require 'database_cleaner'
require 'capybara/rspec'
Dir[Rails.root.join('spec/support/**/*.rb')].each { |f| require f }

ActiveRecord::Migration.check_pending! if defined?(ActiveRecord::Migration)

RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods
  # config.include Devise::TestHelpers, type: :controller
  config.order = "random"

  config.before(:suite) do
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with(:truncation)
  end

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end

  # config.expect_with :rspec do |expectations|
  #
  #   expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  # end
  #
  # config.mock_with :rspec do |mocks|n
  #   mocks.verify_partial_doubles = true
  # end
  #
  # config.shared_context_metadata_behavior = :apply_to_host_groups

end
