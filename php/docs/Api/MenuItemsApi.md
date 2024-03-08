# OpenAPI\Client\MenuItemsApi

All URIs are relative to https://api.spoonacular.com, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**autocompleteMenuItemSearch()**](MenuItemsApi.md#autocompleteMenuItemSearch) | **GET** /food/menuItems/suggest | Autocomplete Menu Item Search |
| [**getMenuItemInformation()**](MenuItemsApi.md#getMenuItemInformation) | **GET** /food/menuItems/{id} | Get Menu Item Information |
| [**menuItemNutritionByIDImage()**](MenuItemsApi.md#menuItemNutritionByIDImage) | **GET** /food/menuItems/{id}/nutritionWidget.png | Menu Item Nutrition by ID Image |
| [**menuItemNutritionLabelImage()**](MenuItemsApi.md#menuItemNutritionLabelImage) | **GET** /food/menuItems/{id}/nutritionLabel.png | Menu Item Nutrition Label Image |
| [**menuItemNutritionLabelWidget()**](MenuItemsApi.md#menuItemNutritionLabelWidget) | **GET** /food/menuItems/{id}/nutritionLabel | Menu Item Nutrition Label Widget |
| [**searchMenuItems()**](MenuItemsApi.md#searchMenuItems) | **GET** /food/menuItems/search | Search Menu Items |
| [**visualizeMenuItemNutritionByID()**](MenuItemsApi.md#visualizeMenuItemNutritionByID) | **GET** /food/menuItems/{id}/nutritionWidget | Menu Item Nutrition by ID Widget |


## `autocompleteMenuItemSearch()`

```php
autocompleteMenuItemSearch($query, $number): \OpenAPI\Client\Model\AutocompleteMenuItemSearch200Response
```

Autocomplete Menu Item Search

Generate suggestions for menu items based on a (partial) query. The matches will be found by looking in the title only.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\MenuItemsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$query = chicke; // string | The (partial) search query.
$number = 10; // float | The number of results to return (between 1 and 25).

try {
    $result = $apiInstance->autocompleteMenuItemSearch($query, $number);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MenuItemsApi->autocompleteMenuItemSearch: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **query** | **string**| The (partial) search query. | |
| **number** | **float**| The number of results to return (between 1 and 25). | [optional] |

### Return type

[**\OpenAPI\Client\Model\AutocompleteMenuItemSearch200Response**](../Model/AutocompleteMenuItemSearch200Response.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getMenuItemInformation()`

```php
getMenuItemInformation($id): \OpenAPI\Client\Model\GetMenuItemInformation200Response
```

Get Menu Item Information

Use a menu item id to get all available information about a menu item, such as nutrition.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\MenuItemsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 1; // int | The item's id.

try {
    $result = $apiInstance->getMenuItemInformation($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MenuItemsApi->getMenuItemInformation: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**| The item&#39;s id. | |

### Return type

[**\OpenAPI\Client\Model\GetMenuItemInformation200Response**](../Model/GetMenuItemInformation200Response.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `menuItemNutritionByIDImage()`

```php
menuItemNutritionByIDImage($id): object
```

Menu Item Nutrition by ID Image

Visualize a menu item's nutritional information as HTML including CSS.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\MenuItemsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 424571; // float | The menu item id.

try {
    $result = $apiInstance->menuItemNutritionByIDImage($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MenuItemsApi->menuItemNutritionByIDImage: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **float**| The menu item id. | |

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

## `menuItemNutritionLabelImage()`

```php
menuItemNutritionLabelImage($id, $show_optional_nutrients, $show_zero_values, $show_ingredients): object
```

Menu Item Nutrition Label Image

Visualize a menu item's nutritional label information as an image.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\MenuItemsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 342313; // float | The menu item id.
$show_optional_nutrients = false; // bool | Whether to show optional nutrients.
$show_zero_values = false; // bool | Whether to show zero values.
$show_ingredients = false; // bool | Whether to show a list of ingredients.

try {
    $result = $apiInstance->menuItemNutritionLabelImage($id, $show_optional_nutrients, $show_zero_values, $show_ingredients);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MenuItemsApi->menuItemNutritionLabelImage: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **float**| The menu item id. | |
| **show_optional_nutrients** | **bool**| Whether to show optional nutrients. | [optional] |
| **show_zero_values** | **bool**| Whether to show zero values. | [optional] |
| **show_ingredients** | **bool**| Whether to show a list of ingredients. | [optional] |

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

## `menuItemNutritionLabelWidget()`

```php
menuItemNutritionLabelWidget($id, $default_css, $show_optional_nutrients, $show_zero_values, $show_ingredients): string
```

Menu Item Nutrition Label Widget

Visualize a menu item's nutritional label information as HTML including CSS.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\MenuItemsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 342313; // float | The menu item id.
$default_css = false; // bool | Whether the default CSS should be added to the response.
$show_optional_nutrients = false; // bool | Whether to show optional nutrients.
$show_zero_values = false; // bool | Whether to show zero values.
$show_ingredients = false; // bool | Whether to show a list of ingredients.

try {
    $result = $apiInstance->menuItemNutritionLabelWidget($id, $default_css, $show_optional_nutrients, $show_zero_values, $show_ingredients);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MenuItemsApi->menuItemNutritionLabelWidget: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **float**| The menu item id. | |
| **default_css** | **bool**| Whether the default CSS should be added to the response. | [optional] [default to true] |
| **show_optional_nutrients** | **bool**| Whether to show optional nutrients. | [optional] |
| **show_zero_values** | **bool**| Whether to show zero values. | [optional] |
| **show_ingredients** | **bool**| Whether to show a list of ingredients. | [optional] |

### Return type

**string**

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/html`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `searchMenuItems()`

```php
searchMenuItems($query, $min_calories, $max_calories, $min_carbs, $max_carbs, $min_protein, $max_protein, $min_fat, $max_fat, $add_menu_item_information, $offset, $number): \OpenAPI\Client\Model\SearchMenuItems200Response
```

Search Menu Items

Search over 115,000 menu items from over 800 fast food and chain restaurants. For example, McDonald's Big Mac or Starbucks Mocha.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\MenuItemsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$query = burger; // string | The (natural language) search query.
$min_calories = 50; // float | The minimum amount of calories the menu item must have.
$max_calories = 800; // float | The maximum amount of calories the menu item can have.
$min_carbs = 10; // float | The minimum amount of carbohydrates in grams the menu item must have.
$max_carbs = 100; // float | The maximum amount of carbohydrates in grams the menu item can have.
$min_protein = 10; // float | The minimum amount of protein in grams the menu item must have.
$max_protein = 100; // float | The maximum amount of protein in grams the menu item can have.
$min_fat = 1; // float | The minimum amount of fat in grams the menu item must have.
$max_fat = 100; // float | The maximum amount of fat in grams the menu item can have.
$add_menu_item_information = true; // bool | If set to true, you get more information about the menu items returned.
$offset = 56; // int | The number of results to skip (between 0 and 900).
$number = 10; // int | The maximum number of items to return (between 1 and 100). Defaults to 10.

try {
    $result = $apiInstance->searchMenuItems($query, $min_calories, $max_calories, $min_carbs, $max_carbs, $min_protein, $max_protein, $min_fat, $max_fat, $add_menu_item_information, $offset, $number);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MenuItemsApi->searchMenuItems: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **query** | **string**| The (natural language) search query. | [optional] |
| **min_calories** | **float**| The minimum amount of calories the menu item must have. | [optional] |
| **max_calories** | **float**| The maximum amount of calories the menu item can have. | [optional] |
| **min_carbs** | **float**| The minimum amount of carbohydrates in grams the menu item must have. | [optional] |
| **max_carbs** | **float**| The maximum amount of carbohydrates in grams the menu item can have. | [optional] |
| **min_protein** | **float**| The minimum amount of protein in grams the menu item must have. | [optional] |
| **max_protein** | **float**| The maximum amount of protein in grams the menu item can have. | [optional] |
| **min_fat** | **float**| The minimum amount of fat in grams the menu item must have. | [optional] |
| **max_fat** | **float**| The maximum amount of fat in grams the menu item can have. | [optional] |
| **add_menu_item_information** | **bool**| If set to true, you get more information about the menu items returned. | [optional] |
| **offset** | **int**| The number of results to skip (between 0 and 900). | [optional] |
| **number** | **int**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10] |

### Return type

[**\OpenAPI\Client\Model\SearchMenuItems200Response**](../Model/SearchMenuItems200Response.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `visualizeMenuItemNutritionByID()`

```php
visualizeMenuItemNutritionByID($id, $default_css, $accept): string
```

Menu Item Nutrition by ID Widget

Visualize a menu item's nutritional information as HTML including CSS.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\MenuItemsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 1; // int | The item's id.
$default_css = false; // bool | Whether the default CSS should be added to the response.
$accept = application/json; // string | Accept header.

try {
    $result = $apiInstance->visualizeMenuItemNutritionByID($id, $default_css, $accept);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MenuItemsApi->visualizeMenuItemNutritionByID: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**| The item&#39;s id. | |
| **default_css** | **bool**| Whether the default CSS should be added to the response. | [optional] [default to true] |
| **accept** | **string**| Accept header. | [optional] |

### Return type

**string**

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/html`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
