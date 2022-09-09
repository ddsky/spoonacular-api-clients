# openapi.api.WineApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getDishPairingForWine**](WineApi.md#getdishpairingforwine) | **GET** /food/wine/dishes | Dish Pairing for Wine
[**getWineDescription**](WineApi.md#getwinedescription) | **GET** /food/wine/description | Wine Description
[**getWinePairing**](WineApi.md#getwinepairing) | **GET** /food/wine/pairing | Wine Pairing
[**getWineRecommendation**](WineApi.md#getwinerecommendation) | **GET** /food/wine/recommendation | Wine Recommendation


# **getDishPairingForWine**
> GetDishPairingForWine200Response getDishPairingForWine(wine)

Dish Pairing for Wine

Find a dish that goes well with a given wine.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = WineApi();
final wine = malbec; // String | The type of wine that should be paired, e.g. \"merlot\", \"riesling\", or \"malbec\".

try {
    final result = api_instance.getDishPairingForWine(wine);
    print(result);
} catch (e) {
    print('Exception when calling WineApi->getDishPairingForWine: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wine** | **String**| The type of wine that should be paired, e.g. \"merlot\", \"riesling\", or \"malbec\". | 

### Return type

[**GetDishPairingForWine200Response**](GetDishPairingForWine200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWineDescription**
> GetWineDescription200Response getWineDescription(wine)

Wine Description

Get a simple description of a certain wine, e.g. \"malbec\", \"riesling\", or \"merlot\".

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = WineApi();
final wine = merlot; // String | The name of the wine that should be paired, e.g. \"merlot\", \"riesling\", or \"malbec\".

try {
    final result = api_instance.getWineDescription(wine);
    print(result);
} catch (e) {
    print('Exception when calling WineApi->getWineDescription: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wine** | **String**| The name of the wine that should be paired, e.g. \"merlot\", \"riesling\", or \"malbec\". | 

### Return type

[**GetWineDescription200Response**](GetWineDescription200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWinePairing**
> GetWinePairing200Response getWinePairing(food, maxPrice)

Wine Pairing

Find a wine that goes well with a food. Food can be a dish name (\"steak\"), an ingredient name (\"salmon\"), or a cuisine (\"italian\").

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = WineApi();
final food = steak; // String | The food to get a pairing for. This can be a dish (\"steak\"), an ingredient (\"salmon\"), or a cuisine (\"italian\").
final maxPrice = 50; // num | The maximum price for the specific wine recommendation in USD.

try {
    final result = api_instance.getWinePairing(food, maxPrice);
    print(result);
} catch (e) {
    print('Exception when calling WineApi->getWinePairing: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **food** | **String**| The food to get a pairing for. This can be a dish (\"steak\"), an ingredient (\"salmon\"), or a cuisine (\"italian\"). | 
 **maxPrice** | **num**| The maximum price for the specific wine recommendation in USD. | [optional] 

### Return type

[**GetWinePairing200Response**](GetWinePairing200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWineRecommendation**
> GetWineRecommendation200Response getWineRecommendation(wine, maxPrice, minRating, number)

Wine Recommendation

Get a specific wine recommendation (concrete product) for a given wine type, e.g. \"merlot\".

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = WineApi();
final wine = merlot; // String | The type of wine to get a specific product recommendation for.
final maxPrice = 50; // num | The maximum price for the specific wine recommendation in USD.
final minRating = 0.7; // num | The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars.
final number = 3; // num | The number of wine recommendations expected (between 1 and 100).

try {
    final result = api_instance.getWineRecommendation(wine, maxPrice, minRating, number);
    print(result);
} catch (e) {
    print('Exception when calling WineApi->getWineRecommendation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wine** | **String**| The type of wine to get a specific product recommendation for. | 
 **maxPrice** | **num**| The maximum price for the specific wine recommendation in USD. | [optional] 
 **minRating** | **num**| The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars. | [optional] 
 **number** | **num**| The number of wine recommendations expected (between 1 and 100). | [optional] [default to 10]

### Return type

[**GetWineRecommendation200Response**](GetWineRecommendation200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

