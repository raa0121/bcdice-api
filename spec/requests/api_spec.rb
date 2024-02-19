# frozen_string_literal: true

require_relative '../spec_helper.rb'

ENV['OPENAPI_OUTPUT'] ||= 'yaml'

RSpec::OpenAPI.title = 'BCDice OpenAPI Documentation'
RSpec::OpenAPI.path = File.expand_path("../../docs/openapi.#{ENV.fetch('OPENAPI_OUTPUT', nil)}", __dir__)

RSpec.describe 'API', type: :request do
  describe '#index' do
    it 'returns ok' do
      get '/'
      expect(last_response.status).to eq(200)
    end
  end
end
