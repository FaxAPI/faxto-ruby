=begin
#Fax.to REST API client for Ruby

#This is Fax.to REST API client for Ruby.

OpenAPI spec version: 2.0.0
Contact: inquiries@fax.to
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SwaggerClient::InlineResponse20014Areacodes
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'InlineResponse20014Areacodes' do
  before do
    # run before each test
    @instance = SwaggerClient::InlineResponse20014Areacodes.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of InlineResponse20014Areacodes' do
    it 'should create an instance of InlineResponse20014Areacodes' do
      expect(@instance).to be_instance_of(SwaggerClient::InlineResponse20014Areacodes)
    end
  end
  describe 'test attribute "country_code"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "state_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "area_code"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
