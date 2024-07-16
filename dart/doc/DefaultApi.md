# openapi.api.DefaultApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**analyzeRecipe**](DefaultApi.md#analyzerecipe) | **POST** /recipes/analyze | Analyze Recipe
[**createRecipeCardGet**](DefaultApi.md#createrecipecardget) | **GET** /recipes/{id}/card | Create Recipe Card
[**searchRestaurants**](DefaultApi.md#searchrestaurants) | **GET** /food/restaurants/search | Search Restaurants


# **analyzeRecipe**
> Object analyzeRecipe(analyzeRecipeRequest, language, includeNutrition, includeTaste)

Analyze Recipe

This endpoint allows you to send raw recipe information, such as title, servings, and ingredients, to then see what we compute (badges, diets, nutrition, and more). This is useful if you have your own recipe data and want to enrich it with our semantic analysis.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = DefaultApi();
final analyzeRecipeRequest = AnalyzeRecipeRequest(); // AnalyzeRecipeRequest | Example request body.
final language = en; // String | The input language, either \"en\" or \"de\".
final includeNutrition = false; // bool | Whether nutrition data should be added to correctly parsed ingredients.
final includeTaste = false; // bool | Whether taste data should be added to correctly parsed ingredients.

try {
    final result = api_instance.analyzeRecipe(analyzeRecipeRequest, language, includeNutrition, includeTaste);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->analyzeRecipe: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **analyzeRecipeRequest** | [**AnalyzeRecipeRequest**](AnalyzeRecipeRequest.md)| Example request body. | 
 **language** | **String**| The input language, either \"en\" or \"de\". | [optional] 
 **includeNutrition** | **bool**| Whether nutrition data should be added to correctly parsed ingredients. | [optional] 
 **includeTaste** | **bool**| Whether taste data should be added to correctly parsed ingredients. | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createRecipeCardGet**
> Object createRecipeCardGet(id, mask, backgroundImage, backgroundColor, fontColor)

Create Recipe Card

Generate a recipe card for a recipe.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = DefaultApi();
final id = 4632; // int | The recipe id.
final mask = ellipseMask; // String | The mask to put over the recipe image (\"ellipseMask\", \"diamondMask\", \"starMask\", \"heartMask\", \"potMask\", \"fishMask\").
final backgroundImage = background1; // String | The background image (\"none\",\"background1\", or \"background2\").
final backgroundColor = ffffff; // String | The background color for the recipe card as a hex-string.
final fontColor = 333333; // String | The font color for the recipe card as a hex-string.

try {
    final result = api_instance.createRecipeCardGet(id, mask, backgroundImage, backgroundColor, fontColor);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->createRecipeCardGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The recipe id. | 
 **mask** | **String**| The mask to put over the recipe image (\"ellipseMask\", \"diamondMask\", \"starMask\", \"heartMask\", \"potMask\", \"fishMask\"). | [optional] 
 **backgroundImage** | **String**| The background image (\"none\",\"background1\", or \"background2\"). | [optional] 
 **backgroundColor** | **String**| The background color for the recipe card as a hex-string. | [optional] 
 **fontColor** | **String**| The font color for the recipe card as a hex-string. | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchRestaurants**
> SearchRestaurants200Response searchRestaurants(query, lat, lng, distance, budget, cuisine, minRating, isOpen, sort, page)

Search Restaurants

Search through thousands of restaurants (in North America) by location, cuisine, budget, and more.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = DefaultApi();
final query = beach cafe; // String | The search query.
final lat = 37.7786357; // num | The latitude of the user's location.
final lng = -122.3918135; // num | The longitude of the user's location.\".
final distance = 2; // num | The distance around the location in miles.
final budget = 20; // num | The user's budget for a meal in USD.
final cuisine = italian; // String | The cuisine of the restaurant.
final minRating = 4.4; // num | The minimum rating of the restaurant between 0 and 5.
final isOpen = true; // bool | Whether the restaurant must be open at the time of search.
final sort = distance; // String | How to sort the results, one of the following 'cheapest', 'fastest', 'rating', 'distance' or the default 'relevance'.
final page = 0; // num | The page number of results.

try {
    final result = api_instance.searchRestaurants(query, lat, lng, distance, budget, cuisine, minRating, isOpen, sort, page);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->searchRestaurants: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The search query. | [optional] 
 **lat** | **num**| The latitude of the user's location. | [optional] 
 **lng** | **num**| The longitude of the user's location.\". | [optional] 
 **distance** | **num**| The distance around the location in miles. | [optional] 
 **budget** | **num**| The user's budget for a meal in USD. | [optional] 
 **cuisine** | **String**| The cuisine of the restaurant. | [optional] 
 **minRating** | **num**| The minimum rating of the restaurant between 0 and 5. | [optional] 
 **isOpen** | **bool**| Whether the restaurant must be open at the time of search. | [optional] 
 **sort** | **String**| How to sort the results, one of the following 'cheapest', 'fastest', 'rating', 'distance' or the default 'relevance'. | [optional] 
 **page** | **num**| The page number of results. | [optional] 

### Return type

[**SearchRestaurants200Response**](SearchRestaurants200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

