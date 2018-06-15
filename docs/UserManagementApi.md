# SwaggerClient::UserManagementApi

All URIs are relative to *https://api.fax.to/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sub_user_post**](UserManagementApi.md#sub_user_post) | **POST** /subuser | This API creates a subuser
[**user_login_post**](UserManagementApi.md#user_login_post) | **POST** /user/login | This API is used for logging in on an existing user account
[**user_post**](UserManagementApi.md#user_post) | **POST** /user | This API registers a new user account


# **sub_user_post**
> InlineResponse2006 sub_user_post(email, password, api_key)

This API creates a subuser

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UserManagementApi.new

email = SwaggerClient::null.new #  | The unique email of the user

password = SwaggerClient::null.new #  | The password of the subuser

api_key = 'api_key_example' # String | 


begin
  #This API creates a subuser
  result = api_instance.sub_user_post(email, password, api_key)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UserManagementApi->sub_user_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | [****](.md)| The unique email of the user | 
 **password** | [****](.md)| The password of the subuser | 
 **api_key** | **String**|  | 

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



# **user_login_post**
> InlineResponse2005 user_login_post(email, password)

This API is used for logging in on an existing user account

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UserManagementApi.new

email = SwaggerClient::null.new #  | The unique email of the user

password = SwaggerClient::null.new #  | The password of the user


begin
  #This API is used for logging in on an existing user account
  result = api_instance.user_login_post(email, password)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UserManagementApi->user_login_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | [****](.md)| The unique email of the user | 
 **password** | [****](.md)| The password of the user | 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



# **user_post**
> InlineResponse2005 user_post(email, password)

This API registers a new user account

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UserManagementApi.new

email = SwaggerClient::null.new #  | The unique email of the user

password = SwaggerClient::null.new #  | The password of the user


begin
  #This API registers a new user account
  result = api_instance.user_post(email, password)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UserManagementApi->user_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | [****](.md)| The unique email of the user | 
 **password** | [****](.md)| The password of the user | 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



