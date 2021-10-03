# com.spoonacular.client\WineApi

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetDishPairingForWine**](WineApi.md#GetDishPairingForWine) | **Get** /food/wine/dishes | Dish Pairing for Wine
[**GetWineDescription**](WineApi.md#GetWineDescription) | **Get** /food/wine/description | Wine Description
[**GetWinePairing**](WineApi.md#GetWinePairing) | **Get** /food/wine/pairing | Wine Pairing
[**GetWineRecommendation**](WineApi.md#GetWineRecommendation) | **Get** /food/wine/recommendation | Wine Recommendation



## GetDishPairingForWine

> InlineResponse20044 GetDishPairingForWine(ctx, wine)
Dish Pairing for Wine

Find a dish that goes well with a given wine.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**wine** | **string**| The type of wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;. | 

### Return type

[**InlineResponse20044**](inline_response_200_44.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetWineDescription

> InlineResponse20046 GetWineDescription(ctx, wine)
Wine Description

Get a simple description of a certain wine, e.g. \"malbec\", \"riesling\", or \"merlot\".

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**wine** | **string**| The name of the wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;. | 

### Return type

[**InlineResponse20046**](inline_response_200_46.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetWinePairing

> InlineResponse20045 GetWinePairing(ctx, food, optional)
Wine Pairing

Find a wine that goes well with a food. Food can be a dish name (\"steak\"), an ingredient name (\"salmon\"), or a cuisine (\"italian\").

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**food** | **string**| The food to get a pairing for. This can be a dish (\&quot;steak\&quot;), an ingredient (\&quot;salmon\&quot;), or a cuisine (\&quot;italian\&quot;). | 
 **optional** | ***GetWinePairingOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a GetWinePairingOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **maxPrice** | **optional.Float32**| The maximum price for the specific wine recommendation in USD. | 

### Return type

[**InlineResponse20045**](inline_response_200_45.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetWineRecommendation

> InlineResponse20047 GetWineRecommendation(ctx, wine, optional)
Wine Recommendation

Get a specific wine recommendation (concrete product) for a given wine type, e.g. \"merlot\".

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**wine** | **string**| The type of wine to get a specific product recommendation for. | 
 **optional** | ***GetWineRecommendationOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a GetWineRecommendationOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **maxPrice** | **optional.Float32**| The maximum price for the specific wine recommendation in USD. | 
 **minRating** | **optional.Float32**| The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars. | 
 **number** | **optional.Float32**| The number of wine recommendations expected (between 1 and 100). | [default to 10]

### Return type

[**InlineResponse20047**](inline_response_200_47.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

