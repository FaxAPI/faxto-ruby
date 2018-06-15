# SwaggerClient::FaxReceivingApi

All URIs are relative to *https://api.fax.to/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**area_codes_country_code_state_id_get**](FaxReceivingApi.md#area_codes_country_code_state_id_get) | **GET** /areacodes/{COUNTRY_CODE}/{STATE_ID} | This API gets a list of countries with its area code
[**countries_country_code_did_groups_get**](FaxReceivingApi.md#countries_country_code_did_groups_get) | **GET** /countries/{countryCode}/didgroups | This API gets a list of DID groups
[**countries_get**](FaxReceivingApi.md#countries_get) | **GET** /countries | This API gets a list of countries available in the Fax.to coverage
[**incoming_faxes_get**](FaxReceivingApi.md#incoming_faxes_get) | **GET** /incoming-faxes | This API gets a list of incoming faxes
[**incoming_faxes_recipient_get**](FaxReceivingApi.md#incoming_faxes_recipient_get) | **GET** /incoming-faxes/{recipient} | This API gets a list of incoming faxes for a specific recipient
[**numbers_get**](FaxReceivingApi.md#numbers_get) | **GET** /numbers | This API gets a list of numbers to get the current configuration of one or multiple number
[**provision_numbers_get**](FaxReceivingApi.md#provision_numbers_get) | **GET** /countries/didgroups/{did_group_id}/provision | This API gets a list of provisioned numbers
[**states_country_code_get**](FaxReceivingApi.md#states_country_code_get) | **GET** /states/{COUNTRY_CODE} | This API gets a list of states of a given country available in the Fax.to coverage


# **area_codes_country_code_state_id_get**
> InlineResponse20014 area_codes_country_code_state_id_get(country_code, state_id, api_key)

This API gets a list of countries with its area code

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::FaxReceivingApi.new

country_code = 56 # Integer | Indicates the country code in its ISO 3166-1 alpha-3 format

state_id = 56 # Integer | The numerical identifier for the state

api_key = 'api_key_example' # String | 


begin
  #This API gets a list of countries with its area code
  result = api_instance.area_codes_country_code_state_id_get(country_code, state_id, api_key)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FaxReceivingApi->area_codes_country_code_state_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_code** | **Integer**| Indicates the country code in its ISO 3166-1 alpha-3 format | 
 **state_id** | **Integer**| The numerical identifier for the state | 
 **api_key** | **String**|  | 

### Return type

[**InlineResponse20014**](InlineResponse20014.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



# **countries_country_code_did_groups_get**
> InlineResponse20015 countries_country_code_did_groups_get(country_code, area_code, api_key, opts)

This API gets a list of DID groups

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::FaxReceivingApi.new

country_code = 56 # Integer | Indicates the country code of the DID group in its ISO 3166-1 alpha-3 format

area_code = 56 # Integer | The area code of the DID group

api_key = 'api_key_example' # String | 

opts = { 
  did_group_ids: 56, # Integer | Used to display more information about specific DID groups
  state_id: 56, # Integer | The numerical identifier for the didGroup's state
  city_name_pattern: 56 # Integer | A string pattern for the beginning of city name
}

begin
  #This API gets a list of DID groups
  result = api_instance.countries_country_code_did_groups_get(country_code, area_code, api_key, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FaxReceivingApi->countries_country_code_did_groups_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_code** | **Integer**| Indicates the country code of the DID group in its ISO 3166-1 alpha-3 format | 
 **area_code** | **Integer**| The area code of the DID group | 
 **api_key** | **String**|  | 
 **did_group_ids** | **Integer**| Used to display more information about specific DID groups | [optional] 
 **state_id** | **Integer**| The numerical identifier for the didGroup&#39;s state | [optional] 
 **city_name_pattern** | **Integer**| A string pattern for the beginning of city name | [optional] 

### Return type

[**InlineResponse20015**](InlineResponse20015.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



# **countries_get**
> InlineResponse20012 countries_get(api_key)

This API gets a list of countries available in the Fax.to coverage

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::FaxReceivingApi.new

api_key = 'api_key_example' # String | 


begin
  #This API gets a list of countries available in the Fax.to coverage
  result = api_instance.countries_get(api_key)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FaxReceivingApi->countries_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_key** | **String**|  | 

### Return type

[**InlineResponse20012**](InlineResponse20012.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



# **incoming_faxes_get**
> InlineResponse2004 incoming_faxes_get(api_key, opts)

This API gets a list of incoming faxes

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::FaxReceivingApi.new

api_key = 'api_key_example' # String | 

opts = { 
  limit: 'limit_example', # String | The number of record to return
  page: 'page_example' # String | The page you want to get
}

begin
  #This API gets a list of incoming faxes
  result = api_instance.incoming_faxes_get(api_key, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FaxReceivingApi->incoming_faxes_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_key** | **String**|  | 
 **limit** | **String**| The number of record to return | [optional] 
 **page** | **String**| The page you want to get | [optional] 

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



# **incoming_faxes_recipient_get**
> InlineResponse2004 incoming_faxes_recipient_get(recipient, api_key, opts)

This API gets a list of incoming faxes for a specific recipient

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::FaxReceivingApi.new

recipient = 56 # Integer | The recipient's fax number

api_key = 'api_key_example' # String | 

opts = { 
  limit: 'limit_example', # String | The number of record to return
  page: 'page_example' # String | The page you want to get
}

begin
  #This API gets a list of incoming faxes for a specific recipient
  result = api_instance.incoming_faxes_recipient_get(recipient, api_key, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FaxReceivingApi->incoming_faxes_recipient_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **recipient** | **Integer**| The recipient&#39;s fax number | 
 **api_key** | **String**|  | 
 **limit** | **String**| The number of record to return | [optional] 
 **page** | **String**| The page you want to get | [optional] 

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



# **numbers_get**
> InlineResponse20017 numbers_get(api_key, opts)

This API gets a list of numbers to get the current configuration of one or multiple number

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::FaxReceivingApi.new

api_key = 'api_key_example' # String | 

opts = { 
  limit: 'limit_example', # String | The number of record to return
  page: 'page_example' # String | The page you want to get
}

begin
  #This API gets a list of numbers to get the current configuration of one or multiple number
  result = api_instance.numbers_get(api_key, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FaxReceivingApi->numbers_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_key** | **String**|  | 
 **limit** | **String**| The number of record to return | [optional] 
 **page** | **String**| The page you want to get | [optional] 

### Return type

[**InlineResponse20017**](InlineResponse20017.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



# **provision_numbers_get**
> InlineResponse20016 provision_numbers_get(did_group_id, api_key)

This API gets a list of provisioned numbers

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::FaxReceivingApi.new

did_group_id = 56 # Integer | The id of the did group

api_key = 'api_key_example' # String | 


begin
  #This API gets a list of provisioned numbers
  result = api_instance.provision_numbers_get(did_group_id, api_key)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FaxReceivingApi->provision_numbers_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **did_group_id** | **Integer**| The id of the did group | 
 **api_key** | **String**|  | 

### Return type

[**InlineResponse20016**](InlineResponse20016.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



# **states_country_code_get**
> InlineResponse20013 states_country_code_get(country_code, api_key)

This API gets a list of states of a given country available in the Fax.to coverage

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::FaxReceivingApi.new

country_code = 56 # Integer | Indicates the country code in its ISO 3166-1 alpha-3 format

api_key = 'api_key_example' # String | 


begin
  #This API gets a list of states of a given country available in the Fax.to coverage
  result = api_instance.states_country_code_get(country_code, api_key)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FaxReceivingApi->states_country_code_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_code** | **Integer**| Indicates the country code in its ISO 3166-1 alpha-3 format | 
 **api_key** | **String**|  | 

### Return type

[**InlineResponse20013**](InlineResponse20013.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



