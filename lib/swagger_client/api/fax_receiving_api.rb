=begin
#Fax.to REST API client for Ruby

#This is Fax.to REST API client for Ruby.

OpenAPI spec version: 2.0.0
Contact: inquiries@fax.to
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'uri'

module SwaggerClient
  class FaxReceivingApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # This API gets a list of countries with its area code
    # @param country_code Indicates the country code in its ISO 3166-1 alpha-3 format
    # @param state_id The numerical identifier for the state
    # @param api_key 
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20014]
    def area_codes_country_code_state_id_get(country_code, state_id, api_key, opts = {})
      data, _status_code, _headers = area_codes_country_code_state_id_get_with_http_info(country_code, state_id, api_key, opts)
      data
    end

    # This API gets a list of countries with its area code
    # @param country_code Indicates the country code in its ISO 3166-1 alpha-3 format
    # @param state_id The numerical identifier for the state
    # @param api_key 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20014, Fixnum, Hash)>] InlineResponse20014 data, response status code and response headers
    def area_codes_country_code_state_id_get_with_http_info(country_code, state_id, api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FaxReceivingApi.area_codes_country_code_state_id_get ...'
      end
      # verify the required parameter 'country_code' is set
      if @api_client.config.client_side_validation && country_code.nil?
        fail ArgumentError, "Missing the required parameter 'country_code' when calling FaxReceivingApi.area_codes_country_code_state_id_get"
      end
      # verify the required parameter 'state_id' is set
      if @api_client.config.client_side_validation && state_id.nil?
        fail ArgumentError, "Missing the required parameter 'state_id' when calling FaxReceivingApi.area_codes_country_code_state_id_get"
      end
      # verify the required parameter 'api_key' is set
      if @api_client.config.client_side_validation && api_key.nil?
        fail ArgumentError, "Missing the required parameter 'api_key' when calling FaxReceivingApi.area_codes_country_code_state_id_get"
      end
      # resource path
      local_var_path = '/areacodes/{COUNTRY_CODE}/{STATE_ID}'.sub('{' + 'COUNTRY_CODE' + '}', country_code.to_s).sub('{' + 'STATE_ID' + '}', state_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])
      header_params[:'api_key'] = api_key

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20014')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FaxReceivingApi#area_codes_country_code_state_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # This API gets a list of DID groups
    # @param country_code Indicates the country code of the DID group in its ISO 3166-1 alpha-3 format
    # @param area_code The area code of the DID group
    # @param api_key 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :did_group_ids Used to display more information about specific DID groups
    # @option opts [Integer] :state_id The numerical identifier for the didGroup&#39;s state
    # @option opts [Integer] :city_name_pattern A string pattern for the beginning of city name
    # @return [InlineResponse20015]
    def countries_country_code_did_groups_get(country_code, area_code, api_key, opts = {})
      data, _status_code, _headers = countries_country_code_did_groups_get_with_http_info(country_code, area_code, api_key, opts)
      data
    end

    # This API gets a list of DID groups
    # @param country_code Indicates the country code of the DID group in its ISO 3166-1 alpha-3 format
    # @param area_code The area code of the DID group
    # @param api_key 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :did_group_ids Used to display more information about specific DID groups
    # @option opts [Integer] :state_id The numerical identifier for the didGroup&#39;s state
    # @option opts [Integer] :city_name_pattern A string pattern for the beginning of city name
    # @return [Array<(InlineResponse20015, Fixnum, Hash)>] InlineResponse20015 data, response status code and response headers
    def countries_country_code_did_groups_get_with_http_info(country_code, area_code, api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FaxReceivingApi.countries_country_code_did_groups_get ...'
      end
      # verify the required parameter 'country_code' is set
      if @api_client.config.client_side_validation && country_code.nil?
        fail ArgumentError, "Missing the required parameter 'country_code' when calling FaxReceivingApi.countries_country_code_did_groups_get"
      end
      # verify the required parameter 'area_code' is set
      if @api_client.config.client_side_validation && area_code.nil?
        fail ArgumentError, "Missing the required parameter 'area_code' when calling FaxReceivingApi.countries_country_code_did_groups_get"
      end
      # verify the required parameter 'api_key' is set
      if @api_client.config.client_side_validation && api_key.nil?
        fail ArgumentError, "Missing the required parameter 'api_key' when calling FaxReceivingApi.countries_country_code_did_groups_get"
      end
      # resource path
      local_var_path = '/countries/{countryCode}/didgroups'.sub('{' + 'COUNTRY_CODE' + '}', country_code.to_s)

      # query parameters
      query_params = {}
      query_params[:'areaCode'] = area_code
      query_params[:'didGroupIds'] = opts[:'did_group_ids'] if !opts[:'did_group_ids'].nil?
      query_params[:'stateId'] = opts[:'state_id'] if !opts[:'state_id'].nil?
      query_params[:'cityNamePattern'] = opts[:'city_name_pattern'] if !opts[:'city_name_pattern'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])
      header_params[:'api_key'] = api_key

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20015')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FaxReceivingApi#countries_country_code_did_groups_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # This API gets a list of countries available in the Fax.to coverage
    # @param api_key 
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20012]
    def countries_get(api_key, opts = {})
      data, _status_code, _headers = countries_get_with_http_info(api_key, opts)
      data
    end

    # This API gets a list of countries available in the Fax.to coverage
    # @param api_key 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20012, Fixnum, Hash)>] InlineResponse20012 data, response status code and response headers
    def countries_get_with_http_info(api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FaxReceivingApi.countries_get ...'
      end
      # verify the required parameter 'api_key' is set
      if @api_client.config.client_side_validation && api_key.nil?
        fail ArgumentError, "Missing the required parameter 'api_key' when calling FaxReceivingApi.countries_get"
      end
      # resource path
      local_var_path = '/countries'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])
      header_params[:'api_key'] = api_key

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20012')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FaxReceivingApi#countries_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # This API gets a list of incoming faxes
    # @param api_key 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :limit The number of record to return
    # @option opts [String] :page The page you want to get
    # @return [InlineResponse2004]
    def incoming_faxes_get(api_key, opts = {})
      data, _status_code, _headers = incoming_faxes_get_with_http_info(api_key, opts)
      data
    end

    # This API gets a list of incoming faxes
    # @param api_key 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :limit The number of record to return
    # @option opts [String] :page The page you want to get
    # @return [Array<(InlineResponse2004, Fixnum, Hash)>] InlineResponse2004 data, response status code and response headers
    def incoming_faxes_get_with_http_info(api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FaxReceivingApi.incoming_faxes_get ...'
      end
      # verify the required parameter 'api_key' is set
      if @api_client.config.client_side_validation && api_key.nil?
        fail ArgumentError, "Missing the required parameter 'api_key' when calling FaxReceivingApi.incoming_faxes_get"
      end
      # resource path
      local_var_path = '/incoming-faxes'

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])
      header_params[:'api_key'] = api_key

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2004')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FaxReceivingApi#incoming_faxes_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # This API gets a list of incoming faxes for a specific recipient
    # @param recipient The recipient&#39;s fax number
    # @param api_key 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :limit The number of record to return
    # @option opts [String] :page The page you want to get
    # @return [InlineResponse2004]
    def incoming_faxes_recipient_get(recipient, api_key, opts = {})
      data, _status_code, _headers = incoming_faxes_recipient_get_with_http_info(recipient, api_key, opts)
      data
    end

    # This API gets a list of incoming faxes for a specific recipient
    # @param recipient The recipient&#39;s fax number
    # @param api_key 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :limit The number of record to return
    # @option opts [String] :page The page you want to get
    # @return [Array<(InlineResponse2004, Fixnum, Hash)>] InlineResponse2004 data, response status code and response headers
    def incoming_faxes_recipient_get_with_http_info(recipient, api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FaxReceivingApi.incoming_faxes_recipient_get ...'
      end
      # verify the required parameter 'recipient' is set
      if @api_client.config.client_side_validation && recipient.nil?
        fail ArgumentError, "Missing the required parameter 'recipient' when calling FaxReceivingApi.incoming_faxes_recipient_get"
      end
      # verify the required parameter 'api_key' is set
      if @api_client.config.client_side_validation && api_key.nil?
        fail ArgumentError, "Missing the required parameter 'api_key' when calling FaxReceivingApi.incoming_faxes_recipient_get"
      end
      # resource path
      local_var_path = '/incoming-faxes/{recipient}'.sub('{' + 'recipient' + '}', recipient.to_s)

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])
      header_params[:'api_key'] = api_key

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2004')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FaxReceivingApi#incoming_faxes_recipient_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # This API gets a list of numbers to get the current configuration of one or multiple number
    # @param api_key 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :limit The number of record to return
    # @option opts [String] :page The page you want to get
    # @return [InlineResponse20017]
    def numbers_get(api_key, opts = {})
      data, _status_code, _headers = numbers_get_with_http_info(api_key, opts)
      data
    end

    # This API gets a list of numbers to get the current configuration of one or multiple number
    # @param api_key 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :limit The number of record to return
    # @option opts [String] :page The page you want to get
    # @return [Array<(InlineResponse20017, Fixnum, Hash)>] InlineResponse20017 data, response status code and response headers
    def numbers_get_with_http_info(api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FaxReceivingApi.numbers_get ...'
      end
      # verify the required parameter 'api_key' is set
      if @api_client.config.client_side_validation && api_key.nil?
        fail ArgumentError, "Missing the required parameter 'api_key' when calling FaxReceivingApi.numbers_get"
      end
      # resource path
      local_var_path = '/numbers'

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])
      header_params[:'api_key'] = api_key

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20017')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FaxReceivingApi#numbers_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # This API gets a list of provisioned numbers
    # @param did_group_id The id of the did group
    # @param api_key 
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20016]
    def provision_numbers_get(did_group_id, api_key, opts = {})
      data, _status_code, _headers = provision_numbers_get_with_http_info(did_group_id, api_key, opts)
      data
    end

    # This API gets a list of provisioned numbers
    # @param did_group_id The id of the did group
    # @param api_key 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20016, Fixnum, Hash)>] InlineResponse20016 data, response status code and response headers
    def provision_numbers_get_with_http_info(did_group_id, api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FaxReceivingApi.provision_numbers_get ...'
      end
      # verify the required parameter 'did_group_id' is set
      if @api_client.config.client_side_validation && did_group_id.nil?
        fail ArgumentError, "Missing the required parameter 'did_group_id' when calling FaxReceivingApi.provision_numbers_get"
      end
      # verify the required parameter 'api_key' is set
      if @api_client.config.client_side_validation && api_key.nil?
        fail ArgumentError, "Missing the required parameter 'api_key' when calling FaxReceivingApi.provision_numbers_get"
      end
      # resource path
      local_var_path = '/countries/didgroups/{did_group_id}/provision'

      # query parameters
      query_params = {}
      query_params[:'did_group_id'] = did_group_id

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])
      header_params[:'api_key'] = api_key

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20016')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FaxReceivingApi#provision_numbers_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # This API gets a list of states of a given country available in the Fax.to coverage
    # @param country_code Indicates the country code in its ISO 3166-1 alpha-3 format
    # @param api_key 
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20013]
    def states_country_code_get(country_code, api_key, opts = {})
      data, _status_code, _headers = states_country_code_get_with_http_info(country_code, api_key, opts)
      data
    end

    # This API gets a list of states of a given country available in the Fax.to coverage
    # @param country_code Indicates the country code in its ISO 3166-1 alpha-3 format
    # @param api_key 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20013, Fixnum, Hash)>] InlineResponse20013 data, response status code and response headers
    def states_country_code_get_with_http_info(country_code, api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FaxReceivingApi.states_country_code_get ...'
      end
      # verify the required parameter 'country_code' is set
      if @api_client.config.client_side_validation && country_code.nil?
        fail ArgumentError, "Missing the required parameter 'country_code' when calling FaxReceivingApi.states_country_code_get"
      end
      # verify the required parameter 'api_key' is set
      if @api_client.config.client_side_validation && api_key.nil?
        fail ArgumentError, "Missing the required parameter 'api_key' when calling FaxReceivingApi.states_country_code_get"
      end
      # resource path
      local_var_path = '/states/{COUNTRY_CODE}'.sub('{' + 'COUNTRY_CODE' + '}', country_code.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])
      header_params[:'api_key'] = api_key

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20013')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FaxReceivingApi#states_country_code_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
