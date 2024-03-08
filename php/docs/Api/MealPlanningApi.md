# OpenAPI\Client\MealPlanningApi

All URIs are relative to https://api.spoonacular.com, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**addMealPlanTemplate()**](MealPlanningApi.md#addMealPlanTemplate) | **POST** /mealplanner/{username}/templates | Add Meal Plan Template |
| [**addToMealPlan()**](MealPlanningApi.md#addToMealPlan) | **POST** /mealplanner/{username}/items | Add to Meal Plan |
| [**addToShoppingList()**](MealPlanningApi.md#addToShoppingList) | **POST** /mealplanner/{username}/shopping-list/items | Add to Shopping List |
| [**clearMealPlanDay()**](MealPlanningApi.md#clearMealPlanDay) | **DELETE** /mealplanner/{username}/day/{date} | Clear Meal Plan Day |
| [**connectUser()**](MealPlanningApi.md#connectUser) | **POST** /users/connect | Connect User |
| [**deleteFromMealPlan()**](MealPlanningApi.md#deleteFromMealPlan) | **DELETE** /mealplanner/{username}/items/{id} | Delete from Meal Plan |
| [**deleteFromShoppingList()**](MealPlanningApi.md#deleteFromShoppingList) | **DELETE** /mealplanner/{username}/shopping-list/items/{id} | Delete from Shopping List |
| [**deleteMealPlanTemplate()**](MealPlanningApi.md#deleteMealPlanTemplate) | **DELETE** /mealplanner/{username}/templates/{id} | Delete Meal Plan Template |
| [**generateMealPlan()**](MealPlanningApi.md#generateMealPlan) | **GET** /mealplanner/generate | Generate Meal Plan |
| [**generateShoppingList()**](MealPlanningApi.md#generateShoppingList) | **POST** /mealplanner/{username}/shopping-list/{start-date}/{end-date} | Generate Shopping List |
| [**getMealPlanTemplate()**](MealPlanningApi.md#getMealPlanTemplate) | **GET** /mealplanner/{username}/templates/{id} | Get Meal Plan Template |
| [**getMealPlanTemplates()**](MealPlanningApi.md#getMealPlanTemplates) | **GET** /mealplanner/{username}/templates | Get Meal Plan Templates |
| [**getMealPlanWeek()**](MealPlanningApi.md#getMealPlanWeek) | **GET** /mealplanner/{username}/week/{start-date} | Get Meal Plan Week |
| [**getShoppingList()**](MealPlanningApi.md#getShoppingList) | **GET** /mealplanner/{username}/shopping-list | Get Shopping List |


## `addMealPlanTemplate()`

```php
addMealPlanTemplate($username, $hash, $add_to_meal_plan_request): \OpenAPI\Client\Model\AddMealPlanTemplate200Response
```

Add Meal Plan Template

Add a meal plan template for a user.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\MealPlanningApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$username = dsky; // string | The username.
$hash = 4b5v4398573406; // string | The private hash for the username.
$add_to_meal_plan_request = new \OpenAPI\Client\Model\AddToMealPlanRequest(); // \OpenAPI\Client\Model\AddToMealPlanRequest

try {
    $result = $apiInstance->addMealPlanTemplate($username, $hash, $add_to_meal_plan_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MealPlanningApi->addMealPlanTemplate: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **username** | **string**| The username. | |
| **hash** | **string**| The private hash for the username. | |
| **add_to_meal_plan_request** | [**\OpenAPI\Client\Model\AddToMealPlanRequest**](../Model/AddToMealPlanRequest.md)|  | |

### Return type

[**\OpenAPI\Client\Model\AddMealPlanTemplate200Response**](../Model/AddMealPlanTemplate200Response.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: ``
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `addToMealPlan()`

```php
addToMealPlan($username, $hash, $add_to_meal_plan_request): object
```

Add to Meal Plan

Add an item to the user's meal plan.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\MealPlanningApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$username = dsky; // string | The username.
$hash = 'hash_example'; // string | The private hash for the username.
$add_to_meal_plan_request = new \OpenAPI\Client\Model\AddToMealPlanRequest(); // \OpenAPI\Client\Model\AddToMealPlanRequest

try {
    $result = $apiInstance->addToMealPlan($username, $hash, $add_to_meal_plan_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MealPlanningApi->addToMealPlan: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **username** | **string**| The username. | |
| **hash** | **string**| The private hash for the username. | |
| **add_to_meal_plan_request** | [**\OpenAPI\Client\Model\AddToMealPlanRequest**](../Model/AddToMealPlanRequest.md)|  | |

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

## `addToShoppingList()`

```php
addToShoppingList($username, $hash, $add_to_meal_plan_request): \OpenAPI\Client\Model\GenerateShoppingList200Response
```

Add to Shopping List

Add an item to the current shopping list of a user.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\MealPlanningApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$username = dsky; // string | The username.
$hash = 'hash_example'; // string | The private hash for the username.
$add_to_meal_plan_request = new \OpenAPI\Client\Model\AddToMealPlanRequest(); // \OpenAPI\Client\Model\AddToMealPlanRequest

try {
    $result = $apiInstance->addToShoppingList($username, $hash, $add_to_meal_plan_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MealPlanningApi->addToShoppingList: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **username** | **string**| The username. | |
| **hash** | **string**| The private hash for the username. | |
| **add_to_meal_plan_request** | [**\OpenAPI\Client\Model\AddToMealPlanRequest**](../Model/AddToMealPlanRequest.md)|  | |

### Return type

[**\OpenAPI\Client\Model\GenerateShoppingList200Response**](../Model/GenerateShoppingList200Response.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: ``, `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `clearMealPlanDay()`

```php
clearMealPlanDay($username, $date, $hash, $clear_meal_plan_day_request): object
```

Clear Meal Plan Day

Delete all planned items from the user's meal plan for a specific day.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\MealPlanningApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$username = dsky; // string | The username.
$date = 2020-06-01; // string | The date in the format yyyy-mm-dd.
$hash = 'hash_example'; // string | The private hash for the username.
$clear_meal_plan_day_request = new \OpenAPI\Client\Model\ClearMealPlanDayRequest(); // \OpenAPI\Client\Model\ClearMealPlanDayRequest

try {
    $result = $apiInstance->clearMealPlanDay($username, $date, $hash, $clear_meal_plan_day_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MealPlanningApi->clearMealPlanDay: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **username** | **string**| The username. | |
| **date** | **string**| The date in the format yyyy-mm-dd. | |
| **hash** | **string**| The private hash for the username. | |
| **clear_meal_plan_day_request** | [**\OpenAPI\Client\Model\ClearMealPlanDayRequest**](../Model/ClearMealPlanDayRequest.md)|  | |

### Return type

**object**

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: ``
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `connectUser()`

```php
connectUser($body): \OpenAPI\Client\Model\ConnectUser200Response
```

Connect User

In order to call user-specific endpoints, you need to connect your app's users to spoonacular users.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\MealPlanningApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$body = array('key' => new \stdClass); // object

try {
    $result = $apiInstance->connectUser($body);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MealPlanningApi->connectUser: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **body** | **object**|  | |

### Return type

[**\OpenAPI\Client\Model\ConnectUser200Response**](../Model/ConnectUser200Response.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: ``, `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `deleteFromMealPlan()`

```php
deleteFromMealPlan($username, $id, $hash, $delete_from_meal_plan_request): object
```

Delete from Meal Plan

Delete an item from the user's meal plan.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\MealPlanningApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$username = dsky; // string | The username.
$id = 15678; // float | The shopping list item id.
$hash = 'hash_example'; // string | The private hash for the username.
$delete_from_meal_plan_request = new \OpenAPI\Client\Model\DeleteFromMealPlanRequest(); // \OpenAPI\Client\Model\DeleteFromMealPlanRequest

try {
    $result = $apiInstance->deleteFromMealPlan($username, $id, $hash, $delete_from_meal_plan_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MealPlanningApi->deleteFromMealPlan: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **username** | **string**| The username. | |
| **id** | **float**| The shopping list item id. | |
| **hash** | **string**| The private hash for the username. | |
| **delete_from_meal_plan_request** | [**\OpenAPI\Client\Model\DeleteFromMealPlanRequest**](../Model/DeleteFromMealPlanRequest.md)|  | |

### Return type

**object**

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: ``
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `deleteFromShoppingList()`

```php
deleteFromShoppingList($username, $id, $hash, $delete_from_meal_plan_request): object
```

Delete from Shopping List

Delete an item from the current shopping list of the user.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\MealPlanningApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$username = dsky; // string | The username.
$id = 1; // int | The item's id.
$hash = 'hash_example'; // string | The private hash for the username.
$delete_from_meal_plan_request = new \OpenAPI\Client\Model\DeleteFromMealPlanRequest(); // \OpenAPI\Client\Model\DeleteFromMealPlanRequest

try {
    $result = $apiInstance->deleteFromShoppingList($username, $id, $hash, $delete_from_meal_plan_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MealPlanningApi->deleteFromShoppingList: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **username** | **string**| The username. | |
| **id** | **int**| The item&#39;s id. | |
| **hash** | **string**| The private hash for the username. | |
| **delete_from_meal_plan_request** | [**\OpenAPI\Client\Model\DeleteFromMealPlanRequest**](../Model/DeleteFromMealPlanRequest.md)|  | |

### Return type

**object**

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: ``
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `deleteMealPlanTemplate()`

```php
deleteMealPlanTemplate($username, $id, $hash, $delete_from_meal_plan_request): object
```

Delete Meal Plan Template

Delete a meal plan template for a user.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\MealPlanningApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$username = dsky; // string | The username.
$id = 1; // int | The item's id.
$hash = 4b5v4398573406; // string | The private hash for the username.
$delete_from_meal_plan_request = new \OpenAPI\Client\Model\DeleteFromMealPlanRequest(); // \OpenAPI\Client\Model\DeleteFromMealPlanRequest

try {
    $result = $apiInstance->deleteMealPlanTemplate($username, $id, $hash, $delete_from_meal_plan_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MealPlanningApi->deleteMealPlanTemplate: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **username** | **string**| The username. | |
| **id** | **int**| The item&#39;s id. | |
| **hash** | **string**| The private hash for the username. | |
| **delete_from_meal_plan_request** | [**\OpenAPI\Client\Model\DeleteFromMealPlanRequest**](../Model/DeleteFromMealPlanRequest.md)|  | |

### Return type

**object**

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: ``
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `generateMealPlan()`

```php
generateMealPlan($time_frame, $target_calories, $diet, $exclude): \OpenAPI\Client\Model\GenerateMealPlan200Response
```

Generate Meal Plan

Generate a meal plan with three meals per day (breakfast, lunch, and dinner).

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\MealPlanningApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$time_frame = day; // string | Either for one \"day\" or an entire \"week\".
$target_calories = 2000; // float | What is the caloric target for one day? The meal plan generator will try to get as close as possible to that goal.
$diet = vegetarian; // string | Enter a diet that the meal plan has to adhere to. See a full list of supported diets.
$exclude = shellfish, olives; // string | A comma-separated list of allergens or ingredients that must be excluded.

try {
    $result = $apiInstance->generateMealPlan($time_frame, $target_calories, $diet, $exclude);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MealPlanningApi->generateMealPlan: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **time_frame** | **string**| Either for one \&quot;day\&quot; or an entire \&quot;week\&quot;. | [optional] |
| **target_calories** | **float**| What is the caloric target for one day? The meal plan generator will try to get as close as possible to that goal. | [optional] |
| **diet** | **string**| Enter a diet that the meal plan has to adhere to. See a full list of supported diets. | [optional] |
| **exclude** | **string**| A comma-separated list of allergens or ingredients that must be excluded. | [optional] |

### Return type

[**\OpenAPI\Client\Model\GenerateMealPlan200Response**](../Model/GenerateMealPlan200Response.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `generateShoppingList()`

```php
generateShoppingList($username, $start_date, $end_date, $hash, $generate_shopping_list_request): \OpenAPI\Client\Model\GenerateShoppingList200Response
```

Generate Shopping List

Generate the shopping list for a user from the meal planner in a given time frame.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\MealPlanningApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$username = dsky; // string | The username.
$start_date = 2020-06-01; // string | The start date in the format yyyy-mm-dd.
$end_date = 2020-06-07; // string | The end date in the format yyyy-mm-dd.
$hash = 'hash_example'; // string | The private hash for the username.
$generate_shopping_list_request = new \OpenAPI\Client\Model\GenerateShoppingListRequest(); // \OpenAPI\Client\Model\GenerateShoppingListRequest

try {
    $result = $apiInstance->generateShoppingList($username, $start_date, $end_date, $hash, $generate_shopping_list_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MealPlanningApi->generateShoppingList: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **username** | **string**| The username. | |
| **start_date** | **string**| The start date in the format yyyy-mm-dd. | |
| **end_date** | **string**| The end date in the format yyyy-mm-dd. | |
| **hash** | **string**| The private hash for the username. | |
| **generate_shopping_list_request** | [**\OpenAPI\Client\Model\GenerateShoppingListRequest**](../Model/GenerateShoppingListRequest.md)|  | |

### Return type

[**\OpenAPI\Client\Model\GenerateShoppingList200Response**](../Model/GenerateShoppingList200Response.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: ``
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getMealPlanTemplate()`

```php
getMealPlanTemplate($username, $id, $hash): \OpenAPI\Client\Model\GetMealPlanTemplate200Response
```

Get Meal Plan Template

Get information about a meal plan template.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\MealPlanningApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$username = dsky; // string | The username.
$id = 1; // int | The item's id.
$hash = 'hash_example'; // string | The private hash for the username.

try {
    $result = $apiInstance->getMealPlanTemplate($username, $id, $hash);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MealPlanningApi->getMealPlanTemplate: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **username** | **string**| The username. | |
| **id** | **int**| The item&#39;s id. | |
| **hash** | **string**| The private hash for the username. | |

### Return type

[**\OpenAPI\Client\Model\GetMealPlanTemplate200Response**](../Model/GetMealPlanTemplate200Response.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getMealPlanTemplates()`

```php
getMealPlanTemplates($username, $hash): \OpenAPI\Client\Model\GetMealPlanTemplates200Response
```

Get Meal Plan Templates

Get meal plan templates from user or public ones.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\MealPlanningApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$username = dsky; // string | The username.
$hash = 'hash_example'; // string | The private hash for the username.

try {
    $result = $apiInstance->getMealPlanTemplates($username, $hash);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MealPlanningApi->getMealPlanTemplates: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **username** | **string**| The username. | |
| **hash** | **string**| The private hash for the username. | |

### Return type

[**\OpenAPI\Client\Model\GetMealPlanTemplates200Response**](../Model/GetMealPlanTemplates200Response.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getMealPlanWeek()`

```php
getMealPlanWeek($username, $start_date, $hash): \OpenAPI\Client\Model\GetMealPlanWeek200Response
```

Get Meal Plan Week

Retrieve a meal planned week for the given user. The username must be a spoonacular user and the hash must the the user's hash that can be found in his/her account.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\MealPlanningApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$username = dsky; // string | The username.
$start_date = 2020-06-01; // string | The start date of the meal planned week in the format yyyy-mm-dd.
$hash = 'hash_example'; // string | The private hash for the username.

try {
    $result = $apiInstance->getMealPlanWeek($username, $start_date, $hash);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MealPlanningApi->getMealPlanWeek: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **username** | **string**| The username. | |
| **start_date** | **string**| The start date of the meal planned week in the format yyyy-mm-dd. | |
| **hash** | **string**| The private hash for the username. | |

### Return type

[**\OpenAPI\Client\Model\GetMealPlanWeek200Response**](../Model/GetMealPlanWeek200Response.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getShoppingList()`

```php
getShoppingList($username, $hash): \OpenAPI\Client\Model\GetShoppingList200Response
```

Get Shopping List

Get the current shopping list for the given user.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\MealPlanningApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$username = dsky; // string | The username.
$hash = 'hash_example'; // string | The private hash for the username.

try {
    $result = $apiInstance->getShoppingList($username, $hash);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MealPlanningApi->getShoppingList: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **username** | **string**| The username. | |
| **hash** | **string**| The private hash for the username. | |

### Return type

[**\OpenAPI\Client\Model\GetShoppingList200Response**](../Model/GetShoppingList200Response.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
