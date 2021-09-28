# com.spoonacular.client\MealPlanningApi

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addToMealPlan**](MealPlanningApi.md#addToMealPlan) | **POST** /mealplanner/{username}/items | Add to Meal Plan
[**addToShoppingList**](MealPlanningApi.md#addToShoppingList) | **POST** /mealplanner/{username}/shopping-list/items | Add to Shopping List
[**clearMealPlanDay**](MealPlanningApi.md#clearMealPlanDay) | **DELETE** /mealplanner/{username}/day/{date} | Clear Meal Plan Day
[**connectUser**](MealPlanningApi.md#connectUser) | **POST** /users/connect | Connect User
[**deleteFromMealPlan**](MealPlanningApi.md#deleteFromMealPlan) | **DELETE** /mealplanner/{username}/items/{id} | Delete from Meal Plan
[**deleteFromShoppingList**](MealPlanningApi.md#deleteFromShoppingList) | **DELETE** /mealplanner/{username}/shopping-list/items/{id} | Delete from Shopping List
[**generateMealPlan**](MealPlanningApi.md#generateMealPlan) | **GET** /mealplanner/generate | Generate Meal Plan
[**generateShoppingList**](MealPlanningApi.md#generateShoppingList) | **POST** /mealplanner/{username}/shopping-list/{start-date}/{end-date} | Generate Shopping List
[**getMealPlanTemplate**](MealPlanningApi.md#getMealPlanTemplate) | **GET** /mealplanner/{username}/templates/{id} | Get Meal Plan Template
[**getMealPlanTemplates**](MealPlanningApi.md#getMealPlanTemplates) | **GET** /mealplanner/{username}/templates | Get Meal Plan Templates
[**getMealPlanWeek**](MealPlanningApi.md#getMealPlanWeek) | **GET** /mealplanner/{username}/week/{start-date} | Get Meal Plan Week
[**getShoppingList**](MealPlanningApi.md#getShoppingList) | **GET** /mealplanner/{username}/shopping-list | Get Shopping List



## addToMealPlan

> object addToMealPlan($username, $hash, $inline_object4)

Add to Meal Plan

Add an item to the user's meal plan.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKey('apiKey', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('apiKey', 'Bearer');


$apiInstance = new com.spoonacular.client\Api\MealPlanningApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$username = dsky; // string | The username.
$hash = 'hash_example'; // string | The private hash for the username.
$inline_object4 = new \com.spoonacular.client\com.spoonacular.client.model\InlineObject4(); // \com.spoonacular.client\com.spoonacular.client.model\InlineObject4 | 

try {
    $result = $apiInstance->addToMealPlan($username, $hash, $inline_object4);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MealPlanningApi->addToMealPlan: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username. |
 **hash** | **string**| The private hash for the username. |
 **inline_object4** | [**\com.spoonacular.client\com.spoonacular.client.model\InlineObject4**](../Model/InlineObject4.md)|  |

### Return type

**object**

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: , application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## addToShoppingList

> \com.spoonacular.client\com.spoonacular.client.model\InlineResponse20041 addToShoppingList($username, $hash, $inline_object7)

Add to Shopping List

Add an item to the current shopping list of a user.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKey('apiKey', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('apiKey', 'Bearer');


$apiInstance = new com.spoonacular.client\Api\MealPlanningApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$username = dsky; // string | The username.
$hash = 'hash_example'; // string | The private hash for the username.
$inline_object7 = new \com.spoonacular.client\com.spoonacular.client.model\InlineObject7(); // \com.spoonacular.client\com.spoonacular.client.model\InlineObject7 | 

try {
    $result = $apiInstance->addToShoppingList($username, $hash, $inline_object7);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MealPlanningApi->addToShoppingList: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username. |
 **hash** | **string**| The private hash for the username. |
 **inline_object7** | [**\com.spoonacular.client\com.spoonacular.client.model\InlineObject7**](../Model/InlineObject7.md)|  |

### Return type

[**\com.spoonacular.client\com.spoonacular.client.model\InlineResponse20041**](../Model/InlineResponse20041.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: , application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## clearMealPlanDay

> object clearMealPlanDay($username, $date, $hash, $inline_object3)

Clear Meal Plan Day

Delete all planned items from the user's meal plan for a specific day.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKey('apiKey', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('apiKey', 'Bearer');


$apiInstance = new com.spoonacular.client\Api\MealPlanningApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$username = dsky; // string | The username.
$date = 2020-06-01; // string | The date in the format yyyy-mm-dd.
$hash = 'hash_example'; // string | The private hash for the username.
$inline_object3 = new \com.spoonacular.client\com.spoonacular.client.model\InlineObject3(); // \com.spoonacular.client\com.spoonacular.client.model\InlineObject3 | 

try {
    $result = $apiInstance->clearMealPlanDay($username, $date, $hash, $inline_object3);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MealPlanningApi->clearMealPlanDay: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username. |
 **date** | **string**| The date in the format yyyy-mm-dd. |
 **hash** | **string**| The private hash for the username. |
 **inline_object3** | [**\com.spoonacular.client\com.spoonacular.client.model\InlineObject3**](../Model/InlineObject3.md)|  |

### Return type

**object**

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: 
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## connectUser

> \com.spoonacular.client\com.spoonacular.client.model\InlineResponse20042 connectUser($body)

Connect User

In order to call user-specific endpoints, you need to connect your app's users to spoonacular users.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKey('apiKey', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('apiKey', 'Bearer');


$apiInstance = new com.spoonacular.client\Api\MealPlanningApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$body = new \stdClass; // object | 

try {
    $result = $apiInstance->connectUser($body);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MealPlanningApi->connectUser: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **object**|  |

### Return type

[**\com.spoonacular.client\com.spoonacular.client.model\InlineResponse20042**](../Model/InlineResponse20042.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: , application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## deleteFromMealPlan

> object deleteFromMealPlan($username, $id, $hash, $inline_object5)

Delete from Meal Plan

Delete an item from the user's meal plan.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKey('apiKey', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('apiKey', 'Bearer');


$apiInstance = new com.spoonacular.client\Api\MealPlanningApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$username = dsky; // string | The username.
$id = 15678; // float | The shopping list item id.
$hash = 'hash_example'; // string | The private hash for the username.
$inline_object5 = new \com.spoonacular.client\com.spoonacular.client.model\InlineObject5(); // \com.spoonacular.client\com.spoonacular.client.model\InlineObject5 | 

try {
    $result = $apiInstance->deleteFromMealPlan($username, $id, $hash, $inline_object5);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MealPlanningApi->deleteFromMealPlan: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username. |
 **id** | **float**| The shopping list item id. |
 **hash** | **string**| The private hash for the username. |
 **inline_object5** | [**\com.spoonacular.client\com.spoonacular.client.model\InlineObject5**](../Model/InlineObject5.md)|  |

### Return type

**object**

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: 
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## deleteFromShoppingList

> object deleteFromShoppingList($username, $id, $hash, $inline_object8)

Delete from Shopping List

Delete an item from the current shopping list of the user.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKey('apiKey', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('apiKey', 'Bearer');


$apiInstance = new com.spoonacular.client\Api\MealPlanningApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$username = dsky; // string | The username.
$id = 1; // int | The item's id.
$hash = 'hash_example'; // string | The private hash for the username.
$inline_object8 = new \com.spoonacular.client\com.spoonacular.client.model\InlineObject8(); // \com.spoonacular.client\com.spoonacular.client.model\InlineObject8 | 

try {
    $result = $apiInstance->deleteFromShoppingList($username, $id, $hash, $inline_object8);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MealPlanningApi->deleteFromShoppingList: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username. |
 **id** | **int**| The item&#39;s id. |
 **hash** | **string**| The private hash for the username. |
 **inline_object8** | [**\com.spoonacular.client\com.spoonacular.client.model\InlineObject8**](../Model/InlineObject8.md)|  |

### Return type

**object**

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: 
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## generateMealPlan

> \com.spoonacular.client\com.spoonacular.client.model\InlineResponse20037 generateMealPlan($time_frame, $target_calories, $diet, $exclude)

Generate Meal Plan

Generate a meal plan with three meals per day (breakfast, lunch, and dinner).

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKey('apiKey', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('apiKey', 'Bearer');


$apiInstance = new com.spoonacular.client\Api\MealPlanningApi(
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
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **time_frame** | **string**| Either for one \&quot;day\&quot; or an entire \&quot;week\&quot;. | [optional]
 **target_calories** | **float**| What is the caloric target for one day? The meal plan generator will try to get as close as possible to that goal. | [optional]
 **diet** | **string**| Enter a diet that the meal plan has to adhere to. See a full list of supported diets. | [optional]
 **exclude** | **string**| A comma-separated list of allergens or ingredients that must be excluded. | [optional]

### Return type

[**\com.spoonacular.client\com.spoonacular.client.model\InlineResponse20037**](../Model/InlineResponse20037.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## generateShoppingList

> \com.spoonacular.client\com.spoonacular.client.model\InlineResponse20041 generateShoppingList($username, $start_date, $end_date, $hash, $inline_object6)

Generate Shopping List

Generate the shopping list for a user from the meal planner in a given time frame.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKey('apiKey', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('apiKey', 'Bearer');


$apiInstance = new com.spoonacular.client\Api\MealPlanningApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$username = dsky; // string | The username.
$start_date = 2020-06-01; // string | The start date in the format yyyy-mm-dd.
$end_date = 2020-06-07; // string | The end date in the format yyyy-mm-dd.
$hash = 'hash_example'; // string | The private hash for the username.
$inline_object6 = new \com.spoonacular.client\com.spoonacular.client.model\InlineObject6(); // \com.spoonacular.client\com.spoonacular.client.model\InlineObject6 | 

try {
    $result = $apiInstance->generateShoppingList($username, $start_date, $end_date, $hash, $inline_object6);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MealPlanningApi->generateShoppingList: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username. |
 **start_date** | **string**| The start date in the format yyyy-mm-dd. |
 **end_date** | **string**| The end date in the format yyyy-mm-dd. |
 **hash** | **string**| The private hash for the username. |
 **inline_object6** | [**\com.spoonacular.client\com.spoonacular.client.model\InlineObject6**](../Model/InlineObject6.md)|  |

### Return type

[**\com.spoonacular.client\com.spoonacular.client.model\InlineResponse20041**](../Model/InlineResponse20041.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: 
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## getMealPlanTemplate

> \com.spoonacular.client\com.spoonacular.client.model\InlineResponse20040 getMealPlanTemplate($username, $id, $hash)

Get Meal Plan Template

Get information about a meal plan template.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKey('apiKey', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('apiKey', 'Bearer');


$apiInstance = new com.spoonacular.client\Api\MealPlanningApi(
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
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username. |
 **id** | **int**| The item&#39;s id. |
 **hash** | **string**| The private hash for the username. |

### Return type

[**\com.spoonacular.client\com.spoonacular.client.model\InlineResponse20040**](../Model/InlineResponse20040.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## getMealPlanTemplates

> \com.spoonacular.client\com.spoonacular.client.model\InlineResponse20039 getMealPlanTemplates($username, $hash)

Get Meal Plan Templates

Get meal plan templates from user or public ones.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKey('apiKey', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('apiKey', 'Bearer');


$apiInstance = new com.spoonacular.client\Api\MealPlanningApi(
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
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username. |
 **hash** | **string**| The private hash for the username. |

### Return type

[**\com.spoonacular.client\com.spoonacular.client.model\InlineResponse20039**](../Model/InlineResponse20039.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## getMealPlanWeek

> \com.spoonacular.client\com.spoonacular.client.model\InlineResponse20038 getMealPlanWeek($username, $start_date, $hash)

Get Meal Plan Week

Retrieve a meal planned week for the given user. The username must be a spoonacular user and the hash must the the user's hash that can be found in his/her account.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKey('apiKey', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('apiKey', 'Bearer');


$apiInstance = new com.spoonacular.client\Api\MealPlanningApi(
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
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username. |
 **start_date** | **string**| The start date of the meal planned week in the format yyyy-mm-dd. |
 **hash** | **string**| The private hash for the username. |

### Return type

[**\com.spoonacular.client\com.spoonacular.client.model\InlineResponse20038**](../Model/InlineResponse20038.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## getShoppingList

> \com.spoonacular.client\com.spoonacular.client.model\InlineResponse20041 getShoppingList($username, $hash)

Get Shopping List

Get the current shopping list for the given user.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKey('apiKey', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('apiKey', 'Bearer');


$apiInstance = new com.spoonacular.client\Api\MealPlanningApi(
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
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username. |
 **hash** | **string**| The private hash for the username. |

### Return type

[**\com.spoonacular.client\com.spoonacular.client.model\InlineResponse20041**](../Model/InlineResponse20041.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)

