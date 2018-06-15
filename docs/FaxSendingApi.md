# SwaggerClient::FaxSendingApi

All URIs are relative to *https://api.fax.to/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fax_document_id_costs_get**](FaxSendingApi.md#fax_document_id_costs_get) | **GET** /fax/{document_id}/costs | This API is for computing the cost of the fax to be sent
[**fax_history_get**](FaxSendingApi.md#fax_history_get) | **GET** /fax-history | This API gets the history of a fax
[**fax_job_id_status_get**](FaxSendingApi.md#fax_job_id_status_get) | **GET** /fax/{fax_job_id}/status | This API gets the status of a fax
[**fax_post**](FaxSendingApi.md#fax_post) | **POST** /fax | This API is for sending a new fax in any fax numbers anywhere in the world
[**file_clean_get**](FaxSendingApi.md#file_clean_get) | **GET** /file-clean | This API is used for cleaning a document
[**file_generate_preview_get**](FaxSendingApi.md#file_generate_preview_get) | **GET** /file-generate-preview | This API generates a preview of a document
[**files_document_id_delete**](FaxSendingApi.md#files_document_id_delete) | **DELETE** /files/{document_id} | This API deletes a document
[**files_get**](FaxSendingApi.md#files_get) | **GET** /files | This API gets all the files of a certain user


# **fax_document_id_costs_get**
> InlineResponse2001 fax_document_id_costs_get(document_id, api_key, opts)

This API is for computing the cost of the fax to be sent

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::FaxSendingApi.new

document_id = 56 # Integer | The id of the document to be sent

api_key = 'api_key_example' # String | 

opts = { 
  fax_number: 'fax_number_example' # String | The fax number of the recipient
}

begin
  #This API is for computing the cost of the fax to be sent
  result = api_instance.fax_document_id_costs_get(document_id, api_key, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FaxSendingApi->fax_document_id_costs_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **document_id** | **Integer**| The id of the document to be sent | 
 **api_key** | **String**|  | 
 **fax_number** | **String**| The fax number of the recipient | [optional] 

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



# **fax_history_get**
> InlineResponse2003 fax_history_get(api_key, opts)

This API gets the history of a fax

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::FaxSendingApi.new

api_key = 'api_key_example' # String | 

opts = { 
  limit: 'limit_example', # String | The number of record to return
  page: 'page_example' # String | The page you want to get
}

begin
  #This API gets the history of a fax
  result = api_instance.fax_history_get(api_key, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FaxSendingApi->fax_history_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_key** | **String**|  | 
 **limit** | **String**| The number of record to return | [optional] 
 **page** | **String**| The page you want to get | [optional] 

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



# **fax_job_id_status_get**
> InlineResponse2002 fax_job_id_status_get(fax_job_id, api_key)

This API gets the status of a fax

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::FaxSendingApi.new

fax_job_id = 56 # Integer | The id of the fax job

api_key = 'api_key_example' # String | 


begin
  #This API gets the status of a fax
  result = api_instance.fax_job_id_status_get(fax_job_id, api_key)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FaxSendingApi->fax_job_id_status_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fax_job_id** | **Integer**| The id of the fax job | 
 **api_key** | **String**|  | 

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



# **fax_post**
> InlineResponse200 fax_post(fax_number, document_id, api_key)

This API is for sending a new fax in any fax numbers anywhere in the world

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::FaxSendingApi.new

fax_number = SwaggerClient::null.new #  | The fax number of the recipient

document_id = SwaggerClient::null.new #  | The id of the document to be sent

api_key = 'api_key_example' # String | 


begin
  #This API is for sending a new fax in any fax numbers anywhere in the world
  result = api_instance.fax_post(fax_number, document_id, api_key)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FaxSendingApi->fax_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fax_number** | [****](.md)| The fax number of the recipient | 
 **document_id** | [****](.md)| The id of the document to be sent | 
 **api_key** | **String**|  | 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



# **file_clean_get**
> InlineResponse2009 file_clean_get(document_id, api_key)

This API is used for cleaning a document

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::FaxSendingApi.new

document_id = 56 # Integer | The id of the document

api_key = 'api_key_example' # String | 


begin
  #This API is used for cleaning a document
  result = api_instance.file_clean_get(document_id, api_key)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FaxSendingApi->file_clean_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **document_id** | **Integer**| The id of the document | 
 **api_key** | **String**|  | 

### Return type

[**InlineResponse2009**](InlineResponse2009.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



# **file_generate_preview_get**
> InlineResponse20010 file_generate_preview_get(document_id, api_key)

This API generates a preview of a document

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::FaxSendingApi.new

document_id = 56 # Integer | The id of the document

api_key = 'api_key_example' # String | 


begin
  #This API generates a preview of a document
  result = api_instance.file_generate_preview_get(document_id, api_key)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FaxSendingApi->file_generate_preview_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **document_id** | **Integer**| The id of the document | 
 **api_key** | **String**|  | 

### Return type

[**InlineResponse20010**](InlineResponse20010.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



# **files_document_id_delete**
> InlineResponse20011 files_document_id_delete(document_id, api_key)

This API deletes a document

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::FaxSendingApi.new

document_id = 56 # Integer | The id of the document

api_key = 'api_key_example' # String | 


begin
  #This API deletes a document
  result = api_instance.files_document_id_delete(document_id, api_key)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FaxSendingApi->files_document_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **document_id** | **Integer**| The id of the document | 
 **api_key** | **String**|  | 

### Return type

[**InlineResponse20011**](InlineResponse20011.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



# **files_get**
> InlineResponse2008 files_get(api_key, opts)

This API gets all the files of a certain user

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::FaxSendingApi.new

api_key = 'api_key_example' # String | 

opts = { 
  limit: 'limit_example', # String | The number of record to return
  page: 'page_example' # String | The page you want to get
}

begin
  #This API gets all the files of a certain user
  result = api_instance.files_get(api_key, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FaxSendingApi->files_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_key** | **String**|  | 
 **limit** | **String**| The number of record to return | [optional] 
 **page** | **String**| The page you want to get | [optional] 

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml



