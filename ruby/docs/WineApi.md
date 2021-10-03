# OpenapiClient::WineApi

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_dish_pairing_for_wine**](WineApi.md#get_dish_pairing_for_wine) | **GET** /food/wine/dishes | Dish Pairing for Wine
[**get_wine_description**](WineApi.md#get_wine_description) | **GET** /food/wine/description | Wine Description
[**get_wine_pairing**](WineApi.md#get_wine_pairing) | **GET** /food/wine/pairing | Wine Pairing
[**get_wine_recommendation**](WineApi.md#get_wine_recommendation) | **GET** /food/wine/recommendation | Wine Recommendation



## get_dish_pairing_for_wine

> InlineResponse20044 get_dish_pairing_for_wine(wine)

Dish Pairing for Wine

Find a dish that goes well with a given wine.

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKeyScheme
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKey'] = 'Bearer'
end

api_instance = OpenapiClient::WineApi.new
wine = 'malbec' # String | The type of wine that should be paired, e.g. \"merlot\", \"riesling\", or \"malbec\".

begin
  #Dish Pairing for Wine
  result = api_instance.get_dish_pairing_for_wine(wine)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling WineApi->get_dish_pairing_for_wine: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wine** | **String**| The type of wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;. | 

### Return type

[**InlineResponse20044**](InlineResponse20044.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_wine_description

> InlineResponse20046 get_wine_description(wine)

Wine Description

Get a simple description of a certain wine, e.g. \"malbec\", \"riesling\", or \"merlot\".

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKeyScheme
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKey'] = 'Bearer'
end

api_instance = OpenapiClient::WineApi.new
wine = 'merlot' # String | The name of the wine that should be paired, e.g. \"merlot\", \"riesling\", or \"malbec\".

begin
  #Wine Description
  result = api_instance.get_wine_description(wine)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling WineApi->get_wine_description: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wine** | **String**| The name of the wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;. | 

### Return type

[**InlineResponse20046**](InlineResponse20046.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_wine_pairing

> InlineResponse20045 get_wine_pairing(food, opts)

Wine Pairing

Find a wine that goes well with a food. Food can be a dish name (\"steak\"), an ingredient name (\"salmon\"), or a cuisine (\"italian\").

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKeyScheme
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKey'] = 'Bearer'
end

api_instance = OpenapiClient::WineApi.new
food = 'steak' # String | The food to get a pairing for. This can be a dish (\"steak\"), an ingredient (\"salmon\"), or a cuisine (\"italian\").
opts = {
  max_price: 50 # Float | The maximum price for the specific wine recommendation in USD.
}

begin
  #Wine Pairing
  result = api_instance.get_wine_pairing(food, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling WineApi->get_wine_pairing: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **food** | **String**| The food to get a pairing for. This can be a dish (\&quot;steak\&quot;), an ingredient (\&quot;salmon\&quot;), or a cuisine (\&quot;italian\&quot;). | 
 **max_price** | **Float**| The maximum price for the specific wine recommendation in USD. | [optional] 

### Return type

[**InlineResponse20045**](InlineResponse20045.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_wine_recommendation

> InlineResponse20047 get_wine_recommendation(wine, opts)

Wine Recommendation

Get a specific wine recommendation (concrete product) for a given wine type, e.g. \"merlot\".

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKeyScheme
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKey'] = 'Bearer'
end

api_instance = OpenapiClient::WineApi.new
wine = 'merlot' # String | The type of wine to get a specific product recommendation for.
opts = {
  max_price: 50, # Float | The maximum price for the specific wine recommendation in USD.
  min_rating: 0.7, # Float | The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars.
  number: 10 # Float | The number of wine recommendations expected (between 1 and 100).
}

begin
  #Wine Recommendation
  result = api_instance.get_wine_recommendation(wine, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling WineApi->get_wine_recommendation: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wine** | **String**| The type of wine to get a specific product recommendation for. | 
 **max_price** | **Float**| The maximum price for the specific wine recommendation in USD. | [optional] 
 **min_rating** | **Float**| The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars. | [optional] 
 **number** | **Float**| The number of wine recommendations expected (between 1 and 100). | [optional] [default to 10]

### Return type

[**InlineResponse20047**](InlineResponse20047.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

