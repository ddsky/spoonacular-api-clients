# SpoonacularApi.DefaultApi

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**analyzeRecipe**](DefaultApi.md#analyzeRecipe) | **POST** /recipes/analyze | Analyze Recipe
[**searchRestaurants**](DefaultApi.md#searchRestaurants) | **GET** /food/restaurants/search | Search Restaurants



## analyzeRecipe

> Object analyzeRecipe(analyzeRecipeRequest, opts)

Analyze Recipe

This endpoint allows you to send raw recipe information, such as title, servings, and ingredients, to then see what we compute (badges, diets, nutrition, and more). This is useful if you have your own recipe data and want to enrich it with our semantic analysis.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.DefaultApi();
let analyzeRecipeRequest = new SpoonacularApi.AnalyzeRecipeRequest(); // AnalyzeRecipeRequest | Example request body.
let opts = {
  'language': en, // String | The input language, either \"en\" or \"de\".
  'includeNutrition': false, // Boolean | Whether nutrition data should be added to correctly parsed ingredients.
  'includeTaste': false // Boolean | Whether taste data should be added to correctly parsed ingredients.
};
apiInstance.analyzeRecipe(analyzeRecipeRequest, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **analyzeRecipeRequest** | [**AnalyzeRecipeRequest**](AnalyzeRecipeRequest.md)| Example request body. | 
 **language** | **String**| The input language, either \&quot;en\&quot; or \&quot;de\&quot;. | [optional] 
 **includeNutrition** | **Boolean**| Whether nutrition data should be added to correctly parsed ingredients. | [optional] 
 **includeTaste** | **Boolean**| Whether taste data should be added to correctly parsed ingredients. | [optional] 

### Return type

**Object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: , application/json
- **Accept**: application/json


## searchRestaurants

> SearchRestaurants200Response searchRestaurants(opts)

Search Restaurants

Search through thousands of restaurants (in North America) by location, cuisine, budget, and more.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.DefaultApi();
let opts = {
  'query': beach cafe, // String | The search query.
  'lat': 37.7786357, // Number | The latitude of the user's location.
  'lng': -122.3918135, // Number | The longitude of the user's location.\".
  'distance': 2, // Number | The distance around the location in miles.
  'budget': 20, // Number | The user's budget for a meal in USD.
  'cuisine': italian, // String | The cuisine of the restaurant.
  'minRating': 4.4, // Number | The minimum rating of the restaurant between 0 and 5.
  'isOpen': true, // Boolean | Whether the restaurant must be open at the time of search.
  'sort': distance, // String | How to sort the results, one of the following 'cheapest', 'fastest', 'rating', 'distance' or the default 'relevance'.
  'page': 0 // Number | The page number of results.
};
apiInstance.searchRestaurants(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The search query. | [optional] 
 **lat** | **Number**| The latitude of the user&#39;s location. | [optional] 
 **lng** | **Number**| The longitude of the user&#39;s location.\&quot;. | [optional] 
 **distance** | **Number**| The distance around the location in miles. | [optional] 
 **budget** | **Number**| The user&#39;s budget for a meal in USD. | [optional] 
 **cuisine** | **String**| The cuisine of the restaurant. | [optional] 
 **minRating** | **Number**| The minimum rating of the restaurant between 0 and 5. | [optional] 
 **isOpen** | **Boolean**| Whether the restaurant must be open at the time of search. | [optional] 
 **sort** | **String**| How to sort the results, one of the following &#39;cheapest&#39;, &#39;fastest&#39;, &#39;rating&#39;, &#39;distance&#39; or the default &#39;relevance&#39;. | [optional] 
 **page** | **Number**| The page number of results. | [optional] 

### Return type

[**SearchRestaurants200Response**](SearchRestaurants200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

