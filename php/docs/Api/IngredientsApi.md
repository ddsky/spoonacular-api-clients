# OpenAPI\Client\IngredientsApi

All URIs are relative to https://api.spoonacular.com, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**autocompleteIngredientSearch()**](IngredientsApi.md#autocompleteIngredientSearch) | **GET** /food/ingredients/autocomplete | Autocomplete Ingredient Search |
| [**computeIngredientAmount()**](IngredientsApi.md#computeIngredientAmount) | **GET** /food/ingredients/{id}/amount | Compute Ingredient Amount |
| [**getIngredientInformation()**](IngredientsApi.md#getIngredientInformation) | **GET** /food/ingredients/{id}/information | Get Ingredient Information |
| [**getIngredientSubstitutes()**](IngredientsApi.md#getIngredientSubstitutes) | **GET** /food/ingredients/substitutes | Get Ingredient Substitutes |
| [**getIngredientSubstitutesByID()**](IngredientsApi.md#getIngredientSubstitutesByID) | **GET** /food/ingredients/{id}/substitutes | Get Ingredient Substitutes by ID |
| [**ingredientSearch()**](IngredientsApi.md#ingredientSearch) | **GET** /food/ingredients/search | Ingredient Search |
| [**ingredientsByIDImage()**](IngredientsApi.md#ingredientsByIDImage) | **GET** /recipes/{id}/ingredientWidget.png | Ingredients by ID Image |
| [**mapIngredientsToGroceryProducts()**](IngredientsApi.md#mapIngredientsToGroceryProducts) | **POST** /food/ingredients/map | Map Ingredients to Grocery Products |
| [**visualizeIngredients()**](IngredientsApi.md#visualizeIngredients) | **POST** /recipes/visualizeIngredients | Ingredients Widget |


## `autocompleteIngredientSearch()`

```php
autocompleteIngredientSearch($query, $number, $meta_information, $intolerances, $language): \OpenAPI\Client\Model\AutocompleteIngredientSearch200ResponseInner[]
```

Autocomplete Ingredient Search

Autocomplete the entry of an ingredient.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\IngredientsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$query = burger; // string | The (natural language) search query.
$number = 10; // int | The maximum number of items to return (between 1 and 100). Defaults to 10.
$meta_information = false; // bool | Whether to return more meta information about the ingredients.
$intolerances = egg; // string | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.
$language = en; // string | The language of the input. Either 'en' or 'de'.

try {
    $result = $apiInstance->autocompleteIngredientSearch($query, $number, $meta_information, $intolerances, $language);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling IngredientsApi->autocompleteIngredientSearch: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **query** | **string**| The (natural language) search query. | [optional] |
| **number** | **int**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10] |
| **meta_information** | **bool**| Whether to return more meta information about the ingredients. | [optional] |
| **intolerances** | **string**| A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. | [optional] |
| **language** | **string**| The language of the input. Either &#39;en&#39; or &#39;de&#39;. | [optional] |

### Return type

[**\OpenAPI\Client\Model\AutocompleteIngredientSearch200ResponseInner[]**](../Model/AutocompleteIngredientSearch200ResponseInner.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `computeIngredientAmount()`

```php
computeIngredientAmount($id, $nutrient, $target, $unit): \OpenAPI\Client\Model\ComputeIngredientAmount200Response
```

Compute Ingredient Amount

Compute the amount you need of a certain ingredient for a certain nutritional goal. For example, how much pineapple do you have to eat to get 10 grams of protein?

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\IngredientsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 9266; // float | The id of the ingredient you want the amount for.
$nutrient = protein; // string | The target nutrient. See a list of supported nutrients.
$target = 2; // float | The target number of the given nutrient.
$unit = oz; // string | The target unit.

try {
    $result = $apiInstance->computeIngredientAmount($id, $nutrient, $target, $unit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling IngredientsApi->computeIngredientAmount: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **float**| The id of the ingredient you want the amount for. | |
| **nutrient** | **string**| The target nutrient. See a list of supported nutrients. | |
| **target** | **float**| The target number of the given nutrient. | |
| **unit** | **string**| The target unit. | [optional] |

### Return type

[**\OpenAPI\Client\Model\ComputeIngredientAmount200Response**](../Model/ComputeIngredientAmount200Response.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getIngredientInformation()`

```php
getIngredientInformation($id, $amount, $unit): \OpenAPI\Client\Model\GetIngredientInformation200Response
```

Get Ingredient Information

Use an ingredient id to get all available information about an ingredient, such as its image and supermarket aisle.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\IngredientsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 1; // int | The item's id.
$amount = 150; // float | The amount of this ingredient.
$unit = grams; // string | The unit for the given amount.

try {
    $result = $apiInstance->getIngredientInformation($id, $amount, $unit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling IngredientsApi->getIngredientInformation: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**| The item&#39;s id. | |
| **amount** | **float**| The amount of this ingredient. | [optional] |
| **unit** | **string**| The unit for the given amount. | [optional] |

### Return type

[**\OpenAPI\Client\Model\GetIngredientInformation200Response**](../Model/GetIngredientInformation200Response.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getIngredientSubstitutes()`

```php
getIngredientSubstitutes($ingredient_name): \OpenAPI\Client\Model\GetIngredientSubstitutes200Response
```

Get Ingredient Substitutes

Search for substitutes for a given ingredient.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\IngredientsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$ingredient_name = butter; // string | The name of the ingredient you want to replace.

try {
    $result = $apiInstance->getIngredientSubstitutes($ingredient_name);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling IngredientsApi->getIngredientSubstitutes: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **ingredient_name** | **string**| The name of the ingredient you want to replace. | |

### Return type

[**\OpenAPI\Client\Model\GetIngredientSubstitutes200Response**](../Model/GetIngredientSubstitutes200Response.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getIngredientSubstitutesByID()`

```php
getIngredientSubstitutesByID($id): \OpenAPI\Client\Model\GetIngredientSubstitutes200Response
```

Get Ingredient Substitutes by ID

Search for substitutes for a given ingredient.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\IngredientsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 1; // int | The item's id.

try {
    $result = $apiInstance->getIngredientSubstitutesByID($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling IngredientsApi->getIngredientSubstitutesByID: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**| The item&#39;s id. | |

### Return type

[**\OpenAPI\Client\Model\GetIngredientSubstitutes200Response**](../Model/GetIngredientSubstitutes200Response.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `ingredientSearch()`

```php
ingredientSearch($query, $add_children, $min_protein_percent, $max_protein_percent, $min_fat_percent, $max_fat_percent, $min_carbs_percent, $max_carbs_percent, $meta_information, $intolerances, $sort, $sort_direction, $offset, $number, $language): \OpenAPI\Client\Model\IngredientSearch200Response
```

Ingredient Search

Search for simple whole foods (e.g. fruits, vegetables, nuts, grains, meat, fish, dairy etc.).

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\IngredientsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$query = burger; // string | The (natural language) search query.
$add_children = true; // bool | Whether to add children of found foods.
$min_protein_percent = 10; // float | The minimum percentage of protein the food must have (between 0 and 100).
$max_protein_percent = 90; // float | The maximum percentage of protein the food can have (between 0 and 100).
$min_fat_percent = 10; // float | The minimum percentage of fat the food must have (between 0 and 100).
$max_fat_percent = 90; // float | The maximum percentage of fat the food can have (between 0 and 100).
$min_carbs_percent = 10; // float | The minimum percentage of carbs the food must have (between 0 and 100).
$max_carbs_percent = 90; // float | The maximum percentage of carbs the food can have (between 0 and 100).
$meta_information = false; // bool | Whether to return more meta information about the ingredients.
$intolerances = egg; // string | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.
$sort = calories; // string | The strategy to sort recipes by. See a full list of supported sorting options.
$sort_direction = asc; // string | The direction in which to sort. Must be either 'asc' (ascending) or 'desc' (descending).
$offset = 56; // int | The number of results to skip (between 0 and 900).
$number = 10; // int | The maximum number of items to return (between 1 and 100). Defaults to 10.
$language = en; // string | The language of the input. Either 'en' or 'de'.

try {
    $result = $apiInstance->ingredientSearch($query, $add_children, $min_protein_percent, $max_protein_percent, $min_fat_percent, $max_fat_percent, $min_carbs_percent, $max_carbs_percent, $meta_information, $intolerances, $sort, $sort_direction, $offset, $number, $language);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling IngredientsApi->ingredientSearch: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **query** | **string**| The (natural language) search query. | [optional] |
| **add_children** | **bool**| Whether to add children of found foods. | [optional] |
| **min_protein_percent** | **float**| The minimum percentage of protein the food must have (between 0 and 100). | [optional] |
| **max_protein_percent** | **float**| The maximum percentage of protein the food can have (between 0 and 100). | [optional] |
| **min_fat_percent** | **float**| The minimum percentage of fat the food must have (between 0 and 100). | [optional] |
| **max_fat_percent** | **float**| The maximum percentage of fat the food can have (between 0 and 100). | [optional] |
| **min_carbs_percent** | **float**| The minimum percentage of carbs the food must have (between 0 and 100). | [optional] |
| **max_carbs_percent** | **float**| The maximum percentage of carbs the food can have (between 0 and 100). | [optional] |
| **meta_information** | **bool**| Whether to return more meta information about the ingredients. | [optional] |
| **intolerances** | **string**| A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. | [optional] |
| **sort** | **string**| The strategy to sort recipes by. See a full list of supported sorting options. | [optional] |
| **sort_direction** | **string**| The direction in which to sort. Must be either &#39;asc&#39; (ascending) or &#39;desc&#39; (descending). | [optional] |
| **offset** | **int**| The number of results to skip (between 0 and 900). | [optional] |
| **number** | **int**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10] |
| **language** | **string**| The language of the input. Either &#39;en&#39; or &#39;de&#39;. | [optional] |

### Return type

[**\OpenAPI\Client\Model\IngredientSearch200Response**](../Model/IngredientSearch200Response.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `ingredientsByIDImage()`

```php
ingredientsByIDImage($id, $measure): object
```

Ingredients by ID Image

Visualize a recipe's ingredient list.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\IngredientsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 1082038; // float | The recipe id.
$measure = metric; // string | Whether the the measures should be 'us' or 'metric'.

try {
    $result = $apiInstance->ingredientsByIDImage($id, $measure);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling IngredientsApi->ingredientsByIDImage: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **float**| The recipe id. | |
| **measure** | **string**| Whether the the measures should be &#39;us&#39; or &#39;metric&#39;. | [optional] |

### Return type

**object**

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `image/png`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mapIngredientsToGroceryProducts()`

```php
mapIngredientsToGroceryProducts($map_ingredients_to_grocery_products_request): \OpenAPI\Client\Model\MapIngredientsToGroceryProducts200ResponseInner[]
```

Map Ingredients to Grocery Products

Map a set of ingredients to products you can buy in the grocery store.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\IngredientsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$map_ingredients_to_grocery_products_request = {"ingredients":["eggs","bacon"],"servings":2}; // \OpenAPI\Client\Model\MapIngredientsToGroceryProductsRequest

try {
    $result = $apiInstance->mapIngredientsToGroceryProducts($map_ingredients_to_grocery_products_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling IngredientsApi->mapIngredientsToGroceryProducts: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **map_ingredients_to_grocery_products_request** | [**\OpenAPI\Client\Model\MapIngredientsToGroceryProductsRequest**](../Model/MapIngredientsToGroceryProductsRequest.md)|  | |

### Return type

[**\OpenAPI\Client\Model\MapIngredientsToGroceryProducts200ResponseInner[]**](../Model/MapIngredientsToGroceryProducts200ResponseInner.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `visualizeIngredients()`

```php
visualizeIngredients($content_type, $language, $accept): string
```

Ingredients Widget

Visualize ingredients of a recipe. You can play around with that endpoint!

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\IngredientsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$content_type = application/json; // string | The content type.
$language = en; // string | The language of the input. Either 'en' or 'de'.
$accept = application/json; // string | Accept header.

try {
    $result = $apiInstance->visualizeIngredients($content_type, $language, $accept);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling IngredientsApi->visualizeIngredients: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **content_type** | **string**| The content type. | [optional] |
| **language** | **string**| The language of the input. Either &#39;en&#39; or &#39;de&#39;. | [optional] |
| **accept** | **string**| Accept header. | [optional] |

### Return type

**string**

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: `application/x-www-form-urlencoded`
- **Accept**: `text/html`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
