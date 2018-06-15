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

# Unit tests for SwaggerClient::FaxReceivingApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'FaxReceivingApi' do
  before do
    # run before each test
    @instance = SwaggerClient::FaxReceivingApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FaxReceivingApi' do
    it 'should create an instance of FaxReceivingApi' do
      expect(@instance).to be_instance_of(SwaggerClient::FaxReceivingApi)
    end
  end

  # unit tests for area_codes_country_code_state_id_get
  # This API gets a list of countries with its area code
  # @param country_code Indicates the country code in its ISO 3166-1 alpha-3 format
  # @param state_id The numerical identifier for the state
  # @param api_key 
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse20014]
  describe 'area_codes_country_code_state_id_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for countries_country_code_did_groups_get
  # This API gets a list of DID groups
  # @param country_code Indicates the country code of the DID group in its ISO 3166-1 alpha-3 format
  # @param area_code The area code of the DID group
  # @param api_key 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :did_group_ids Used to display more information about specific DID groups
  # @option opts [Integer] :state_id The numerical identifier for the didGroup&#39;s state
  # @option opts [Integer] :city_name_pattern A string pattern for the beginning of city name
  # @return [InlineResponse20015]
  describe 'countries_country_code_did_groups_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for countries_get
  # This API gets a list of countries available in the Fax.to coverage
  # @param api_key 
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse20012]
  describe 'countries_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for incoming_faxes_get
  # This API gets a list of incoming faxes
  # @param api_key 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :limit The number of record to return
  # @option opts [String] :page The page you want to get
  # @return [InlineResponse2004]
  describe 'incoming_faxes_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for incoming_faxes_recipient_get
  # This API gets a list of incoming faxes for a specific recipient
  # @param recipient The recipient&#39;s fax number
  # @param api_key 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :limit The number of record to return
  # @option opts [String] :page The page you want to get
  # @return [InlineResponse2004]
  describe 'incoming_faxes_recipient_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for numbers_get
  # This API gets a list of numbers to get the current configuration of one or multiple number
  # @param api_key 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :limit The number of record to return
  # @option opts [String] :page The page you want to get
  # @return [InlineResponse20017]
  describe 'numbers_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for provision_numbers_get
  # This API gets a list of provisioned numbers
  # @param did_group_id The id of the did group
  # @param api_key 
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse20016]
  describe 'provision_numbers_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for states_country_code_get
  # This API gets a list of states of a given country available in the Fax.to coverage
  # @param country_code Indicates the country code in its ISO 3166-1 alpha-3 format
  # @param api_key 
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse20013]
  describe 'states_country_code_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end