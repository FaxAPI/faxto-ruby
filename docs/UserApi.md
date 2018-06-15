# SwaggerClient::UserApi

All URIs are relative to *https://api.fax.to/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**balance_get**](UserApi.md#balance_get) | **GET** /balance | This API gets the balance of a user account


# **balance_get**
> InlineResponse2007 balance_get(api_key)

This API gets the balance of a user account

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UserApi.new

api_key = 'api_key_example' # String | 


begin
  #This API gets the balance of a user account
  result = api_instance.balance_get(api_key)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UserApi->balance_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_key** | **String**|  | 

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



