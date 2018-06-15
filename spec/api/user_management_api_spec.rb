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

# Unit tests for SwaggerClient::UserManagementApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'UserManagementApi' do
  before do
    # run before each test
    @instance = SwaggerClient::UserManagementApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UserManagementApi' do
    it 'should create an instance of UserManagementApi' do
      expect(@instance).to be_instance_of(SwaggerClient::UserManagementApi)
    end
  end

  # unit tests for sub_user_post
  # This API creates a subuser
  # @param email The unique email of the user
  # @param password The password of the subuser
  # @param api_key 
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse2006]
  describe 'sub_user_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for user_login_post
  # This API is used for logging in on an existing user account
  # @param email The unique email of the user
  # @param password The password of the user
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse2005]
  describe 'user_login_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for user_post
  # This API registers a new user account
  # @param email The unique email of the user
  # @param password The password of the user
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse2005]
  describe 'user_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
