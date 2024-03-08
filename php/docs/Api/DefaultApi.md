# OpenAPI\Client\DefaultApi

All URIs are relative to https://api.spoonacular.com, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**analyzeRecipe()**](DefaultApi.md#analyzeRecipe) | **POST** /recipes/analyze | Analyze Recipe |
| [**createRecipeCardGet()**](DefaultApi.md#createRecipeCardGet) | **GET** /recipes/{id}/card | Create Recipe Card |
| [**searchRestaurants()**](DefaultApi.md#searchRestaurants) | **GET** /food/restaurants/search | Search Restaurants |


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
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$analyze_recipe_request = new \OpenAPI\Client\Model\AnalyzeRecipeRequest(); // \OpenAPI\Client\Model\AnalyzeRecipeRequest | Example request body.
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

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **analyze_recipe_request** | [**\OpenAPI\Client\Model\AnalyzeRecipeRequest**](../Model/AnalyzeRecipeRequest.md)| Example request body. | |
| **language** | **string**| The input language, either \&quot;en\&quot; or \&quot;de\&quot;. | [optional] |
| **include_nutrition** | **bool**| Whether nutrition data should be added to correctly parsed ingredients. | [optional] |
| **include_taste** | **bool**| Whether taste data should be added to correctly parsed ingredients. | [optional] |

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

## `createRecipeCardGet()`

```php
createRecipeCardGet($id, $mask, $background_image, $background_color, $font_color): object
```

Create Recipe Card

Generate a recipe card for a recipe.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 4632; // float | The recipe id.
$mask = ellipseMask; // string | The mask to put over the recipe image (\"ellipseMask\", \"diamondMask\", \"starMask\", \"heartMask\", \"potMask\", \"fishMask\").
$background_image = background1; // string | The background image (\"none\",\"background1\", or \"background2\").
$background_color = ffffff; // string | The background color for the recipe card as a hex-string.
$font_color = 333333; // string | The font color for the recipe card as a hex-string.

try {
    $result = $apiInstance->createRecipeCardGet($id, $mask, $background_image, $background_color, $font_color);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->createRecipeCardGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **float**| The recipe id. | |
| **mask** | **string**| The mask to put over the recipe image (\&quot;ellipseMask\&quot;, \&quot;diamondMask\&quot;, \&quot;starMask\&quot;, \&quot;heartMask\&quot;, \&quot;potMask\&quot;, \&quot;fishMask\&quot;). | [optional] |
| **background_image** | **string**| The background image (\&quot;none\&quot;,\&quot;background1\&quot;, or \&quot;background2\&quot;). | [optional] |
| **background_color** | **string**| The background color for the recipe card as a hex-string. | [optional] |
| **font_color** | **string**| The font color for the recipe card as a hex-string. | [optional] |

### Return type

**object**

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `searchRestaurants()`

```php
searchRestaurants($query, $lat, $lng, $distance, $budget, $cuisine, $min_rating, $is_open, $sort, $page): \OpenAPI\Client\Model\SearchRestaurants200Response
```

Search Restaurants

Search through thousands of restaurants (in North America) by location, cuisine, budget, and more.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\DefaultApi(
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

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **query** | **string**| The search query. | [optional] |
| **lat** | **float**| The latitude of the user&#39;s location. | [optional] |
| **lng** | **float**| The longitude of the user&#39;s location.\&quot;. | [optional] |
| **distance** | **float**| The distance around the location in miles. | [optional] |
| **budget** | **float**| The user&#39;s budget for a meal in USD. | [optional] |
| **cuisine** | **string**| The cuisine of the restaurant. | [optional] |
| **min_rating** | **float**| The minimum rating of the restaurant between 0 and 5. | [optional] |
| **is_open** | **bool**| Whether the restaurant must be open at the time of search. | [optional] |
| **sort** | **string**| How to sort the results, one of the following &#39;cheapest&#39;, &#39;fastest&#39;, &#39;rating&#39;, &#39;distance&#39; or the default &#39;relevance&#39;. | [optional] |
| **page** | **float**| The page number of results. | [optional] |

### Return type

[**\OpenAPI\Client\Model\SearchRestaurants200Response**](../Model/SearchRestaurants200Response.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
