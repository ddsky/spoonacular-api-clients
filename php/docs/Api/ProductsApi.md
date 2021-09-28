# com.spoonacular.client\ProductsApi

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**autocompleteProductSearch**](ProductsApi.md#autocompleteProductSearch) | **GET** /food/products/suggest | Autocomplete Product Search
[**classifyGroceryProduct**](ProductsApi.md#classifyGroceryProduct) | **POST** /food/products/classify | Classify Grocery Product
[**classifyGroceryProductBulk**](ProductsApi.md#classifyGroceryProductBulk) | **POST** /food/products/classifyBatch | Classify Grocery Product Bulk
[**getComparableProducts**](ProductsApi.md#getComparableProducts) | **GET** /food/products/upc/{upc}/comparable | Get Comparable Products
[**getProductInformation**](ProductsApi.md#getProductInformation) | **GET** /food/products/{id} | Get Product Information
[**productNutritionByIDImage**](ProductsApi.md#productNutritionByIDImage) | **GET** /food/products/{id}/nutritionWidget.png | Product Nutrition by ID Image
[**productNutritionLabelImage**](ProductsApi.md#productNutritionLabelImage) | **GET** /food/products/{id}/nutritionLabel.png | Product Nutrition Label Image
[**productNutritionLabelWidget**](ProductsApi.md#productNutritionLabelWidget) | **GET** /food/products/{id}/nutritionLabel | Product Nutrition Label Widget
[**searchGroceryProducts**](ProductsApi.md#searchGroceryProducts) | **GET** /food/products/search | Search Grocery Products
[**searchGroceryProductsByUPC**](ProductsApi.md#searchGroceryProductsByUPC) | **GET** /food/products/upc/{upc} | Search Grocery Products by UPC
[**visualizeProductNutritionByID**](ProductsApi.md#visualizeProductNutritionByID) | **GET** /food/products/{id}/nutritionWidget | Product Nutrition by ID Widget



## autocompleteProductSearch

> \com.spoonacular.client\com.spoonacular.client.model\InlineResponse20032 autocompleteProductSearch($query, $number)

Autocomplete Product Search

Generate suggestions for grocery products based on a (partial) query. The matches will be found by looking in the title only.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKey('apiKey', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('apiKey', 'Bearer');


$apiInstance = new com.spoonacular.client\Api\ProductsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$query = chicke; // string | The (partial) search query.
$number = 10; // int | The number of results to return (between 1 and 25).

try {
    $result = $apiInstance->autocompleteProductSearch($query, $number);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ProductsApi->autocompleteProductSearch: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The (partial) search query. |
 **number** | **int**| The number of results to return (between 1 and 25). | [optional]

### Return type

[**\com.spoonacular.client\com.spoonacular.client.model\InlineResponse20032**](../Model/InlineResponse20032.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## classifyGroceryProduct

> \com.spoonacular.client\com.spoonacular.client.model\InlineResponse20033 classifyGroceryProduct($inline_object1, $locale)

Classify Grocery Product

This endpoint allows you to match a packaged food to a basic category, e.g. a specific brand of milk to the category milk.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKey('apiKey', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('apiKey', 'Bearer');


$apiInstance = new com.spoonacular.client\Api\ProductsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$inline_object1 = new \com.spoonacular.client\com.spoonacular.client.model\InlineObject1(); // \com.spoonacular.client\com.spoonacular.client.model\InlineObject1 | 
$locale = en_US; // string | The display name of the returned category, supported is en_US (for American English) and en_GB (for British English).

try {
    $result = $apiInstance->classifyGroceryProduct($inline_object1, $locale);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ProductsApi->classifyGroceryProduct: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inline_object1** | [**\com.spoonacular.client\com.spoonacular.client.model\InlineObject1**](../Model/InlineObject1.md)|  |
 **locale** | **string**| The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). | [optional]

### Return type

[**\com.spoonacular.client\com.spoonacular.client.model\InlineResponse20033**](../Model/InlineResponse20033.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## classifyGroceryProductBulk

> \com.spoonacular.client\com.spoonacular.client.model\InlineResponse20033[] classifyGroceryProductBulk($inline_object, $locale)

Classify Grocery Product Bulk

Provide a set of product jsons, get back classified products.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKey('apiKey', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('apiKey', 'Bearer');


$apiInstance = new com.spoonacular.client\Api\ProductsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$inline_object = [{"title":"Kroger Vitamin A & D Reduced Fat 2% Milk","upc":"","plu_code":""}]; // \com.spoonacular.client\com.spoonacular.client.model\InlineObject[] | 
$locale = en_US; // string | The display name of the returned category, supported is en_US (for American English) and en_GB (for British English).

try {
    $result = $apiInstance->classifyGroceryProductBulk($inline_object, $locale);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ProductsApi->classifyGroceryProductBulk: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inline_object** | [**\com.spoonacular.client\com.spoonacular.client.model\InlineObject[]**](../Model/array.md)|  |
 **locale** | **string**| The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). | [optional]

### Return type

[**\com.spoonacular.client\com.spoonacular.client.model\InlineResponse20033[]**](../Model/InlineResponse20033.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## getComparableProducts

> \com.spoonacular.client\com.spoonacular.client.model\InlineResponse20031 getComparableProducts($upc)

Get Comparable Products

Find comparable products to the given one.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKey('apiKey', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('apiKey', 'Bearer');


$apiInstance = new com.spoonacular.client\Api\ProductsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$upc = 33698816271; // float | The UPC of the product for which you want to find comparable products.

try {
    $result = $apiInstance->getComparableProducts($upc);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ProductsApi->getComparableProducts: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **upc** | **float**| The UPC of the product for which you want to find comparable products. |

### Return type

[**\com.spoonacular.client\com.spoonacular.client.model\InlineResponse20031**](../Model/InlineResponse20031.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## getProductInformation

> \com.spoonacular.client\com.spoonacular.client.model\InlineResponse20030 getProductInformation($id)

Get Product Information

Use a product id to get full information about a product, such as ingredients, nutrition, etc. The nutritional information is per serving.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKey('apiKey', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('apiKey', 'Bearer');


$apiInstance = new com.spoonacular.client\Api\ProductsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 1; // int | The item's id.

try {
    $result = $apiInstance->getProductInformation($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ProductsApi->getProductInformation: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The item&#39;s id. |

### Return type

[**\com.spoonacular.client\com.spoonacular.client.model\InlineResponse20030**](../Model/InlineResponse20030.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## productNutritionByIDImage

> object productNutritionByIDImage($id)

Product Nutrition by ID Image

Visualize a product's nutritional information as an image.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKey('apiKey', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('apiKey', 'Bearer');


$apiInstance = new com.spoonacular.client\Api\ProductsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 7657; // float | The id of the product.

try {
    $result = $apiInstance->productNutritionByIDImage($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ProductsApi->productNutritionByIDImage: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **float**| The id of the product. |

### Return type

**object**

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## productNutritionLabelImage

> object productNutritionLabelImage($id, $show_optional_nutrients, $show_zero_values, $show_ingredients)

Product Nutrition Label Image

Get a product's nutrition label as an image.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKey('apiKey', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('apiKey', 'Bearer');


$apiInstance = new com.spoonacular.client\Api\ProductsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 22347; // float | The product id.
$show_optional_nutrients = false; // bool | Whether to show optional nutrients.
$show_zero_values = false; // bool | Whether to show zero values.
$show_ingredients = false; // bool | Whether to show a list of ingredients.

try {
    $result = $apiInstance->productNutritionLabelImage($id, $show_optional_nutrients, $show_zero_values, $show_ingredients);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ProductsApi->productNutritionLabelImage: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **float**| The product id. |
 **show_optional_nutrients** | **bool**| Whether to show optional nutrients. | [optional]
 **show_zero_values** | **bool**| Whether to show zero values. | [optional]
 **show_ingredients** | **bool**| Whether to show a list of ingredients. | [optional]

### Return type

**object**

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## productNutritionLabelWidget

> string productNutritionLabelWidget($id, $default_css, $show_optional_nutrients, $show_zero_values, $show_ingredients)

Product Nutrition Label Widget

Get a product's nutrition label as an HTML widget.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKey('apiKey', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('apiKey', 'Bearer');


$apiInstance = new com.spoonacular.client\Api\ProductsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 22347; // float | The product id.
$default_css = false; // bool | Whether the default CSS should be added to the response.
$show_optional_nutrients = false; // bool | Whether to show optional nutrients.
$show_zero_values = false; // bool | Whether to show zero values.
$show_ingredients = false; // bool | Whether to show a list of ingredients.

try {
    $result = $apiInstance->productNutritionLabelWidget($id, $default_css, $show_optional_nutrients, $show_zero_values, $show_ingredients);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ProductsApi->productNutritionLabelWidget: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **float**| The product id. |
 **default_css** | **bool**| Whether the default CSS should be added to the response. | [optional] [default to true]
 **show_optional_nutrients** | **bool**| Whether to show optional nutrients. | [optional]
 **show_zero_values** | **bool**| Whether to show zero values. | [optional]
 **show_ingredients** | **bool**| Whether to show a list of ingredients. | [optional]

### Return type

**string**

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## searchGroceryProducts

> \com.spoonacular.client\com.spoonacular.client.model\InlineResponse20027 searchGroceryProducts($query, $min_calories, $max_calories, $min_carbs, $max_carbs, $min_protein, $max_protein, $min_fat, $max_fat, $offset, $number)

Search Grocery Products

Search packaged food products, such as frozen pizza or Greek yogurt.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKey('apiKey', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('apiKey', 'Bearer');


$apiInstance = new com.spoonacular.client\Api\ProductsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$query = burger; // string | The (natural language) search query.
$min_calories = 50; // float | The minimum amount of calories the product must have.
$max_calories = 800; // float | The maximum amount of calories the product can have.
$min_carbs = 10; // float | The minimum amount of carbohydrates in grams the product must have.
$max_carbs = 100; // float | The maximum amount of carbohydrates in grams the product can have.
$min_protein = 10; // float | The minimum amount of protein in grams the product must have.
$max_protein = 100; // float | The maximum amount of protein in grams the product can have.
$min_fat = 1; // float | The minimum amount of fat in grams the product must have.
$max_fat = 100; // float | The maximum amount of fat in grams the product can have.
$offset = 56; // int | The number of results to skip (between 0 and 900).
$number = 10; // int | The maximum number of items to return (between 1 and 100). Defaults to 10.

try {
    $result = $apiInstance->searchGroceryProducts($query, $min_calories, $max_calories, $min_carbs, $max_carbs, $min_protein, $max_protein, $min_fat, $max_fat, $offset, $number);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ProductsApi->searchGroceryProducts: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The (natural language) search query. | [optional]
 **min_calories** | **float**| The minimum amount of calories the product must have. | [optional]
 **max_calories** | **float**| The maximum amount of calories the product can have. | [optional]
 **min_carbs** | **float**| The minimum amount of carbohydrates in grams the product must have. | [optional]
 **max_carbs** | **float**| The maximum amount of carbohydrates in grams the product can have. | [optional]
 **min_protein** | **float**| The minimum amount of protein in grams the product must have. | [optional]
 **max_protein** | **float**| The maximum amount of protein in grams the product can have. | [optional]
 **min_fat** | **float**| The minimum amount of fat in grams the product must have. | [optional]
 **max_fat** | **float**| The maximum amount of fat in grams the product can have. | [optional]
 **offset** | **int**| The number of results to skip (between 0 and 900). | [optional]
 **number** | **int**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]

### Return type

[**\com.spoonacular.client\com.spoonacular.client.model\InlineResponse20027**](../Model/InlineResponse20027.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## searchGroceryProductsByUPC

> \com.spoonacular.client\com.spoonacular.client.model\InlineResponse20028 searchGroceryProductsByUPC($upc)

Search Grocery Products by UPC

Get information about a packaged food using its UPC.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKey('apiKey', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('apiKey', 'Bearer');


$apiInstance = new com.spoonacular.client\Api\ProductsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$upc = 41631000564; // float | The product's UPC.

try {
    $result = $apiInstance->searchGroceryProductsByUPC($upc);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ProductsApi->searchGroceryProductsByUPC: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **upc** | **float**| The product&#39;s UPC. |

### Return type

[**\com.spoonacular.client\com.spoonacular.client.model\InlineResponse20028**](../Model/InlineResponse20028.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## visualizeProductNutritionByID

> string visualizeProductNutritionByID($id, $default_css, $accept)

Product Nutrition by ID Widget

Visualize a product's nutritional information as HTML including CSS.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKey('apiKey', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('apiKey', 'Bearer');


$apiInstance = new com.spoonacular.client\Api\ProductsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 1; // int | The item's id.
$default_css = false; // bool | Whether the default CSS should be added to the response.
$accept = application/json; // string | Accept header.

try {
    $result = $apiInstance->visualizeProductNutritionByID($id, $default_css, $accept);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ProductsApi->visualizeProductNutritionByID: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The item&#39;s id. |
 **default_css** | **bool**| Whether the default CSS should be added to the response. | [optional] [default to true]
 **accept** | **string**| Accept header. | [optional]

### Return type

**string**

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)

