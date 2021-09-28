# openapi.api.WineApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getDishPairingForWine**](WineApi.md#getDishPairingForWine) | **GET** /food/wine/dishes | Dish Pairing for Wine
[**getWineDescription**](WineApi.md#getWineDescription) | **GET** /food/wine/description | Wine Description
[**getWinePairing**](WineApi.md#getWinePairing) | **GET** /food/wine/pairing | Wine Pairing
[**getWineRecommendation**](WineApi.md#getWineRecommendation) | **GET** /food/wine/recommendation | Wine Recommendation


# **getDishPairingForWine**
> InlineResponse20043 getDishPairingForWine(wine)

Dish Pairing for Wine

Find a dish that goes well with a given wine.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new WineApi();
var wine = malbec; // String | The type of wine that should be paired, e.g. \"merlot\", \"riesling\", or \"malbec\".

try { 
    var result = api_instance.getDishPairingForWine(wine);
    print(result);
} catch (e) {
    print("Exception when calling WineApi->getDishPairingForWine: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wine** | **String**| The type of wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;. | [default to null]

### Return type

[**InlineResponse20043**](InlineResponse20043.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWineDescription**
> InlineResponse20045 getWineDescription(wine)

Wine Description

Get a simple description of a certain wine, e.g. \"malbec\", \"riesling\", or \"merlot\".

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new WineApi();
var wine = merlot; // String | The name of the wine that should be paired, e.g. \"merlot\", \"riesling\", or \"malbec\".

try { 
    var result = api_instance.getWineDescription(wine);
    print(result);
} catch (e) {
    print("Exception when calling WineApi->getWineDescription: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wine** | **String**| The name of the wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;. | [default to null]

### Return type

[**InlineResponse20045**](InlineResponse20045.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWinePairing**
> InlineResponse20044 getWinePairing(food, maxPrice)

Wine Pairing

Find a wine that goes well with a food. Food can be a dish name (\"steak\"), an ingredient name (\"salmon\"), or a cuisine (\"italian\").

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new WineApi();
var food = steak; // String | The food to get a pairing for. This can be a dish (\"steak\"), an ingredient (\"salmon\"), or a cuisine (\"italian\").
var maxPrice = 50; // num | The maximum price for the specific wine recommendation in USD.

try { 
    var result = api_instance.getWinePairing(food, maxPrice);
    print(result);
} catch (e) {
    print("Exception when calling WineApi->getWinePairing: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **food** | **String**| The food to get a pairing for. This can be a dish (\&quot;steak\&quot;), an ingredient (\&quot;salmon\&quot;), or a cuisine (\&quot;italian\&quot;). | [default to null]
 **maxPrice** | **num**| The maximum price for the specific wine recommendation in USD. | [optional] [default to null]

### Return type

[**InlineResponse20044**](InlineResponse20044.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWineRecommendation**
> InlineResponse20046 getWineRecommendation(wine, maxPrice, minRating, number)

Wine Recommendation

Get a specific wine recommendation (concrete product) for a given wine type, e.g. \"merlot\".

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new WineApi();
var wine = merlot; // String | The type of wine to get a specific product recommendation for.
var maxPrice = 50; // num | The maximum price for the specific wine recommendation in USD.
var minRating = 0.7; // num | The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars.
var number = 3; // num | The number of wine recommendations expected (between 1 and 100).

try { 
    var result = api_instance.getWineRecommendation(wine, maxPrice, minRating, number);
    print(result);
} catch (e) {
    print("Exception when calling WineApi->getWineRecommendation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wine** | **String**| The type of wine to get a specific product recommendation for. | [default to null]
 **maxPrice** | **num**| The maximum price for the specific wine recommendation in USD. | [optional] [default to null]
 **minRating** | **num**| The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars. | [optional] [default to null]
 **number** | **num**| The number of wine recommendations expected (between 1 and 100). | [optional] [default to 10]

### Return type

[**InlineResponse20046**](InlineResponse20046.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

