# OpenAPI\Client\WineApi

All URIs are relative to https://api.spoonacular.com, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**getDishPairingForWine()**](WineApi.md#getDishPairingForWine) | **GET** /food/wine/dishes | Dish Pairing for Wine |
| [**getWineDescription()**](WineApi.md#getWineDescription) | **GET** /food/wine/description | Wine Description |
| [**getWinePairing()**](WineApi.md#getWinePairing) | **GET** /food/wine/pairing | Wine Pairing |
| [**getWineRecommendation()**](WineApi.md#getWineRecommendation) | **GET** /food/wine/recommendation | Wine Recommendation |


## `getDishPairingForWine()`

```php
getDishPairingForWine($wine): \OpenAPI\Client\Model\GetDishPairingForWine200Response
```

Dish Pairing for Wine

Find a dish that goes well with a given wine.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\WineApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$wine = malbec; // string | The type of wine that should be paired, e.g. \"merlot\", \"riesling\", or \"malbec\".

try {
    $result = $apiInstance->getDishPairingForWine($wine);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling WineApi->getDishPairingForWine: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **wine** | **string**| The type of wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;. | |

### Return type

[**\OpenAPI\Client\Model\GetDishPairingForWine200Response**](../Model/GetDishPairingForWine200Response.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getWineDescription()`

```php
getWineDescription($wine): \OpenAPI\Client\Model\GetWineDescription200Response
```

Wine Description

Get a simple description of a certain wine, e.g. \"malbec\", \"riesling\", or \"merlot\".

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\WineApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$wine = merlot; // string | The name of the wine that should be paired, e.g. \"merlot\", \"riesling\", or \"malbec\".

try {
    $result = $apiInstance->getWineDescription($wine);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling WineApi->getWineDescription: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **wine** | **string**| The name of the wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;. | |

### Return type

[**\OpenAPI\Client\Model\GetWineDescription200Response**](../Model/GetWineDescription200Response.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getWinePairing()`

```php
getWinePairing($food, $max_price): \OpenAPI\Client\Model\GetWinePairing200Response
```

Wine Pairing

Find a wine that goes well with a food. Food can be a dish name (\"steak\"), an ingredient name (\"salmon\"), or a cuisine (\"italian\").

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\WineApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$food = steak; // string | The food to get a pairing for. This can be a dish (\"steak\"), an ingredient (\"salmon\"), or a cuisine (\"italian\").
$max_price = 50; // float | The maximum price for the specific wine recommendation in USD.

try {
    $result = $apiInstance->getWinePairing($food, $max_price);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling WineApi->getWinePairing: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **food** | **string**| The food to get a pairing for. This can be a dish (\&quot;steak\&quot;), an ingredient (\&quot;salmon\&quot;), or a cuisine (\&quot;italian\&quot;). | |
| **max_price** | **float**| The maximum price for the specific wine recommendation in USD. | [optional] |

### Return type

[**\OpenAPI\Client\Model\GetWinePairing200Response**](../Model/GetWinePairing200Response.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getWineRecommendation()`

```php
getWineRecommendation($wine, $max_price, $min_rating, $number): \OpenAPI\Client\Model\GetWineRecommendation200Response
```

Wine Recommendation

Get a specific wine recommendation (concrete product) for a given wine type, e.g. \"merlot\".

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\WineApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$wine = merlot; // string | The type of wine to get a specific product recommendation for.
$max_price = 50; // float | The maximum price for the specific wine recommendation in USD.
$min_rating = 0.7; // float | The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars.
$number = 3; // float | The number of wine recommendations expected (between 1 and 100).

try {
    $result = $apiInstance->getWineRecommendation($wine, $max_price, $min_rating, $number);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling WineApi->getWineRecommendation: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **wine** | **string**| The type of wine to get a specific product recommendation for. | |
| **max_price** | **float**| The maximum price for the specific wine recommendation in USD. | [optional] |
| **min_rating** | **float**| The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars. | [optional] |
| **number** | **float**| The number of wine recommendations expected (between 1 and 100). | [optional] [default to 10] |

### Return type

[**\OpenAPI\Client\Model\GetWineRecommendation200Response**](../Model/GetWineRecommendation200Response.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
