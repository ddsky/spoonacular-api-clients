# com.spoonacular.client\DefaultApi

All URIs are relative to https://api.spoonacular.com.

Method | HTTP request | Description
------------- | ------------- | -------------
[**analyzeRecipe()**](DefaultApi.md#analyzeRecipe) | **POST** /recipes/analyze | Analyze Recipe
[**searchRestaurants()**](DefaultApi.md#searchRestaurants) | **GET** /food/restaurants/search | Search Restaurants


## `analyzeRecipe()`

```php
analyzeRecipe($analyze_recipe_request, $language, $include_nutrition, $include_taste): object
```

Analyze Recipe

This endpoint allows you to send raw recipe information, such as title, servings, and ingredients, to then see what we compute (badges, diets, nutrition, and more). This is useful if you have your own recipe data and want to enrich it with our semantic analysis.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$analyze_recipe_request = new \com.spoonacular.client\com.spoonacular.client.model\AnalyzeRecipeRequest(); // \com.spoonacular.client\com.spoonacular.client.model\AnalyzeRecipeRequest | Example request body.
$language = en; // string | The input language, either \"en\" or \"de\".
$include_nutrition = false; // bool | Whether nutrition data should be added to correctly parsed ingredients.
$include_taste = false; // bool | Whether taste data should be added to correctly parsed ingredients.

try {
    $result = $apiInstance->analyzeRecipe($analyze_recipe_request, $language, $include_nutrition, $include_taste);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->analyzeRecipe: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **analyze_recipe_request** | [**\com.spoonacular.client\com.spoonacular.client.model\AnalyzeRecipeRequest**](../Model/AnalyzeRecipeRequest.md)| Example request body. |
 **language** | **string**| The input language, either \&quot;en\&quot; or \&quot;de\&quot;. | [optional]
 **include_nutrition** | **bool**| Whether nutrition data should be added to correctly parsed ingredients. | [optional]
 **include_taste** | **bool**| Whether taste data should be added to correctly parsed ingredients. | [optional]

### Return type

**object**

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: ``, `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `searchRestaurants()`

```php
searchRestaurants($query, $lat, $lng, $distance, $budget, $cuisine, $min_rating, $is_open, $sort, $page): \com.spoonacular.client\com.spoonacular.client.model\SearchRestaurants200Response
```

Search Restaurants

Search through thousands of restaurants (in North America) by location, cuisine, budget, and more.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$query = beach cafe; // string | The search query.
$lat = 37.7786357; // float | The latitude of the user's location.
$lng = -122.3918135; // float | The longitude of the user's location.\".
$distance = 2; // float | The distance around the location in miles.
$budget = 20; // float | The user's budget for a meal in USD.
$cuisine = italian; // string | The cuisine of the restaurant.
$min_rating = 4.4; // float | The minimum rating of the restaurant between 0 and 5.
$is_open = true; // bool | Whether the restaurant must be open at the time of search.
$sort = distance; // string | How to sort the results, one of the following 'cheapest', 'fastest', 'rating', 'distance' or the default 'relevance'.
$page = 0; // float | The page number of results.

try {
    $result = $apiInstance->searchRestaurants($query, $lat, $lng, $distance, $budget, $cuisine, $min_rating, $is_open, $sort, $page);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->searchRestaurants: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The search query. | [optional]
 **lat** | **float**| The latitude of the user&#39;s location. | [optional]
 **lng** | **float**| The longitude of the user&#39;s location.\&quot;. | [optional]
 **distance** | **float**| The distance around the location in miles. | [optional]
 **budget** | **float**| The user&#39;s budget for a meal in USD. | [optional]
 **cuisine** | **string**| The cuisine of the restaurant. | [optional]
 **min_rating** | **float**| The minimum rating of the restaurant between 0 and 5. | [optional]
 **is_open** | **bool**| Whether the restaurant must be open at the time of search. | [optional]
 **sort** | **string**| How to sort the results, one of the following &#39;cheapest&#39;, &#39;fastest&#39;, &#39;rating&#39;, &#39;distance&#39; or the default &#39;relevance&#39;. | [optional]
 **page** | **float**| The page number of results. | [optional]

### Return type

[**\com.spoonacular.client\com.spoonacular.client.model\SearchRestaurants200Response**](../Model/SearchRestaurants200Response.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
