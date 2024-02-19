# frozen_string_literal: true

require 'rack/test'
require 'rspec'
require 'rspec/openapi'

ENV['RACK_ENV'] = 'test'

require_relative '../lib/bcdice_api/app.rb'

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
  config.include Rack::Test::Methods

  def app
    BCDiceAPI::APP
  end
end