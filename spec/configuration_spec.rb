=begin
#Fax.to REST API client for Ruby

#This is Fax.to REST API client for Ruby.

OpenAPI spec version: 2.0.0
Contact: inquiries@fax.to
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'spec_helper'

describe SwaggerClient::Configuration do
  let(:config) { SwaggerClient::Configuration.default }

  before(:each) do
    # uncomment below to setup host and base_path
    # require 'URI'
    # uri = URI.parse("https://api.fax.to/api/v2")
    # SwaggerClient.configure do |c|
    #   c.host = uri.host
    #   c.base_path = uri.path
    # end
  end

  describe '#base_url' do
    it 'should have the default value' do
      # uncomment below to test default value of the base path
      # expect(config.base_url).to eq("https://api.fax.to/api/v2")
    end

    it 'should remove trailing slashes' do
      [nil, '', '/', '//'].each do |base_path|
        config.base_path = base_path
        # uncomment below to test trailing slashes
        # expect(config.base_url).to eq("https://api.fax.to/api/v2")
      end
    end
  end
end
