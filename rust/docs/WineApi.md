# com.spoonacular.client\WineApi

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_dish_pairing_for_wine**](WineApi.md#get_dish_pairing_for_wine) | **Get** /food/wine/dishes | Dish Pairing for Wine
[**get_wine_description**](WineApi.md#get_wine_description) | **Get** /food/wine/description | Wine Description
[**get_wine_pairing**](WineApi.md#get_wine_pairing) | **Get** /food/wine/pairing | Wine Pairing
[**get_wine_recommendation**](WineApi.md#get_wine_recommendation) | **Get** /food/wine/recommendation | Wine Recommendation



## get_dish_pairing_for_wine

> ::models::InlineResponse20043 get_dish_pairing_for_wine(ctx, wine)
Dish Pairing for Wine

Find a dish that goes well with a given wine.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **wine** | **String**| The type of wine that should be paired, e.g. \"merlot\", \"riesling\", or \"malbec\". | 

### Return type

[**::models::InlineResponse20043**](inline_response_200_43.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_wine_description

> ::models::InlineResponse20045 get_wine_description(ctx, wine)
Wine Description

Get a simple description of a certain wine, e.g. \"malbec\", \"riesling\", or \"merlot\".

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **wine** | **String**| The name of the wine that should be paired, e.g. \"merlot\", \"riesling\", or \"malbec\". | 

### Return type

[**::models::InlineResponse20045**](inline_response_200_45.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_wine_pairing

> ::models::InlineResponse20044 get_wine_pairing(ctx, food, optional)
Wine Pairing

Find a wine that goes well with a food. Food can be a dish name (\"steak\"), an ingredient name (\"salmon\"), or a cuisine (\"italian\").

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **food** | **String**| The food to get a pairing for. This can be a dish (\"steak\"), an ingredient (\"salmon\"), or a cuisine (\"italian\"). | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **food** | **String**| The food to get a pairing for. This can be a dish (\"steak\"), an ingredient (\"salmon\"), or a cuisine (\"italian\"). | 
 **max_price** | **f32**| The maximum price for the specific wine recommendation in USD. | 

### Return type

[**::models::InlineResponse20044**](inline_response_200_44.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_wine_recommendation

> ::models::InlineResponse20046 get_wine_recommendation(ctx, wine, optional)
Wine Recommendation

Get a specific wine recommendation (concrete product) for a given wine type, e.g. \"merlot\".

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **wine** | **String**| The type of wine to get a specific product recommendation for. | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wine** | **String**| The type of wine to get a specific product recommendation for. | 
 **max_price** | **f32**| The maximum price for the specific wine recommendation in USD. | 
 **min_rating** | **f32**| The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars. | 
 **number** | **f32**| The number of wine recommendations expected (between 1 and 100). | [default to 10]

### Return type

[**::models::InlineResponse20046**](inline_response_200_46.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

