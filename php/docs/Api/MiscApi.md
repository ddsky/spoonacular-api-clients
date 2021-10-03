# com.spoonacular.client\MiscApi

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**detectFoodInText**](MiscApi.md#detectFoodInText) | **POST** /food/detect | Detect Food in Text
[**getARandomFoodJoke**](MiscApi.md#getARandomFoodJoke) | **GET** /food/jokes/random | Random Food Joke
[**getConversationSuggests**](MiscApi.md#getConversationSuggests) | **GET** /food/converse/suggest | Conversation Suggests
[**getRandomFoodTrivia**](MiscApi.md#getRandomFoodTrivia) | **GET** /food/trivia/random | Random Food Trivia
[**imageAnalysisByURL**](MiscApi.md#imageAnalysisByURL) | **GET** /food/images/analyze | Image Analysis by URL
[**imageClassificationByURL**](MiscApi.md#imageClassificationByURL) | **GET** /food/images/classify | Image Classification by URL
[**searchAllFood**](MiscApi.md#searchAllFood) | **GET** /food/search | Search All Food
[**searchCustomFoods**](MiscApi.md#searchCustomFoods) | **GET** /food/customFoods/search | Search Custom Foods
[**searchFoodVideos**](MiscApi.md#searchFoodVideos) | **GET** /food/videos/search | Search Food Videos
[**searchSiteContent**](MiscApi.md#searchSiteContent) | **GET** /food/site/search | Search Site Content
[**talkToChatbot**](MiscApi.md#talkToChatbot) | **GET** /food/converse | Talk to Chatbot



## detectFoodInText

> \com.spoonacular.client\com.spoonacular.client.model\InlineResponse20051 detectFoodInText($content_type)

Detect Food in Text

Take any text and find all mentions of food contained within it. This task is also called Named Entity Recognition (NER). In this case, the entities are foods. Either dishes, such as pizza or cheeseburger, or ingredients, such as cucumber or almonds.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKey('apiKey', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('apiKey', 'Bearer');


$apiInstance = new com.spoonacular.client\Api\MiscApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$content_type = application/json; // string | The content type.

try {
    $result = $apiInstance->detectFoodInText($content_type);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MiscApi->detectFoodInText: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content_type** | **string**| The content type. | [optional]

### Return type

[**\com.spoonacular.client\com.spoonacular.client.model\InlineResponse20051**](../Model/InlineResponse20051.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## getARandomFoodJoke

> \com.spoonacular.client\com.spoonacular.client.model\InlineResponse20055 getARandomFoodJoke()

Random Food Joke

Get a random joke that is related to food. Caution: this is an endpoint for adults!

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKey('apiKey', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('apiKey', 'Bearer');


$apiInstance = new com.spoonacular.client\Api\MiscApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->getARandomFoodJoke();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MiscApi->getARandomFoodJoke: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\com.spoonacular.client\com.spoonacular.client.model\InlineResponse20055**](../Model/InlineResponse20055.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## getConversationSuggests

> \com.spoonacular.client\com.spoonacular.client.model\InlineResponse20057 getConversationSuggests($query, $number)

Conversation Suggests

This endpoint returns suggestions for things the user can say or ask the chatbot.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKey('apiKey', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('apiKey', 'Bearer');


$apiInstance = new com.spoonacular.client\Api\MiscApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$query = tell; // string | A (partial) query from the user. The endpoint will return if it matches topics it can talk about.
$number = 5; // float | The number of suggestions to return (between 1 and 25).

try {
    $result = $apiInstance->getConversationSuggests($query, $number);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MiscApi->getConversationSuggests: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| A (partial) query from the user. The endpoint will return if it matches topics it can talk about. |
 **number** | **float**| The number of suggestions to return (between 1 and 25). | [optional]

### Return type

[**\com.spoonacular.client\com.spoonacular.client.model\InlineResponse20057**](../Model/InlineResponse20057.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## getRandomFoodTrivia

> \com.spoonacular.client\com.spoonacular.client.model\InlineResponse20055 getRandomFoodTrivia()

Random Food Trivia

Returns random food trivia.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKey('apiKey', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('apiKey', 'Bearer');


$apiInstance = new com.spoonacular.client\Api\MiscApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->getRandomFoodTrivia();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MiscApi->getRandomFoodTrivia: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\com.spoonacular.client\com.spoonacular.client.model\InlineResponse20055**](../Model/InlineResponse20055.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## imageAnalysisByURL

> \com.spoonacular.client\com.spoonacular.client.model\InlineResponse20049 imageAnalysisByURL($image_url)

Image Analysis by URL

Analyze a food image. The API tries to classify the image, guess the nutrition, and find a matching recipes.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKey('apiKey', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('apiKey', 'Bearer');


$apiInstance = new com.spoonacular.client\Api\MiscApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$image_url = https://spoonacular.com/recipeImages/635350-240x150.jpg; // string | The URL of the image to be analyzed.

try {
    $result = $apiInstance->imageAnalysisByURL($image_url);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MiscApi->imageAnalysisByURL: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_url** | **string**| The URL of the image to be analyzed. |

### Return type

[**\com.spoonacular.client\com.spoonacular.client.model\InlineResponse20049**](../Model/InlineResponse20049.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## imageClassificationByURL

> \com.spoonacular.client\com.spoonacular.client.model\InlineResponse20048 imageClassificationByURL($image_url)

Image Classification by URL

Classify a food image.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKey('apiKey', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('apiKey', 'Bearer');


$apiInstance = new com.spoonacular.client\Api\MiscApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$image_url = https://spoonacular.com/recipeImages/635350-240x150.jpg; // string | The URL of the image to be classified.

try {
    $result = $apiInstance->imageClassificationByURL($image_url);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MiscApi->imageClassificationByURL: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_url** | **string**| The URL of the image to be classified. |

### Return type

[**\com.spoonacular.client\com.spoonacular.client.model\InlineResponse20048**](../Model/InlineResponse20048.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## searchAllFood

> \com.spoonacular.client\com.spoonacular.client.model\InlineResponse20053 searchAllFood($query, $offset, $number)

Search All Food

Search all food content with one call. That includes recipes, grocery products, menu items, simple foods (ingredients), and food videos.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKey('apiKey', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('apiKey', 'Bearer');


$apiInstance = new com.spoonacular.client\Api\MiscApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$query = apple; // string | The search query.
$offset = 56; // int | The number of results to skip (between 0 and 900).
$number = 10; // int | The maximum number of items to return (between 1 and 100). Defaults to 10.

try {
    $result = $apiInstance->searchAllFood($query, $offset, $number);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MiscApi->searchAllFood: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The search query. |
 **offset** | **int**| The number of results to skip (between 0 and 900). | [optional]
 **number** | **int**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]

### Return type

[**\com.spoonacular.client\com.spoonacular.client.model\InlineResponse20053**](../Model/InlineResponse20053.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## searchCustomFoods

> \com.spoonacular.client\com.spoonacular.client.model\InlineResponse20029 searchCustomFoods($username, $hash, $query, $offset, $number)

Search Custom Foods

Search custom foods in a user's account.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKey('apiKey', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('apiKey', 'Bearer');


$apiInstance = new com.spoonacular.client\Api\MiscApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$username = dsky; // string | The username.
$hash = 4b5v4398573406; // string | The private hash for the username.
$query = burger; // string | The (natural language) search query.
$offset = 56; // int | The number of results to skip (between 0 and 900).
$number = 10; // int | The maximum number of items to return (between 1 and 100). Defaults to 10.

try {
    $result = $apiInstance->searchCustomFoods($username, $hash, $query, $offset, $number);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MiscApi->searchCustomFoods: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username. |
 **hash** | **string**| The private hash for the username. |
 **query** | **string**| The (natural language) search query. | [optional]
 **offset** | **int**| The number of results to skip (between 0 and 900). | [optional]
 **number** | **int**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]

### Return type

[**\com.spoonacular.client\com.spoonacular.client.model\InlineResponse20029**](../Model/InlineResponse20029.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## searchFoodVideos

> \com.spoonacular.client\com.spoonacular.client.model\InlineResponse20054 searchFoodVideos($query, $type, $cuisine, $diet, $include_ingredients, $exclude_ingredients, $min_length, $max_length, $offset, $number)

Search Food Videos

Find recipe and other food related videos.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKey('apiKey', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('apiKey', 'Bearer');


$apiInstance = new com.spoonacular.client\Api\MiscApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$query = burger; // string | The (natural language) search query.
$type = main course; // string | The type of the recipes. See a full list of supported meal types.
$cuisine = italian; // string | The cuisine(s) of the recipes. One or more, comma separated. See a full list of supported cuisines.
$diet = vegetarian; // string | The diet for which the recipes must be suitable. See a full list of supported diets.
$include_ingredients = tomato,cheese; // string | A comma-separated list of ingredients that the recipes should contain.
$exclude_ingredients = eggs; // string | A comma-separated list of ingredients or ingredient types that the recipes must not contain.
$min_length = 0; // float | Minimum video length in seconds.
$max_length = 999; // float | Maximum video length in seconds.
$offset = 56; // int | The number of results to skip (between 0 and 900).
$number = 10; // int | The maximum number of items to return (between 1 and 100). Defaults to 10.

try {
    $result = $apiInstance->searchFoodVideos($query, $type, $cuisine, $diet, $include_ingredients, $exclude_ingredients, $min_length, $max_length, $offset, $number);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MiscApi->searchFoodVideos: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The (natural language) search query. | [optional]
 **type** | **string**| The type of the recipes. See a full list of supported meal types. | [optional]
 **cuisine** | **string**| The cuisine(s) of the recipes. One or more, comma separated. See a full list of supported cuisines. | [optional]
 **diet** | **string**| The diet for which the recipes must be suitable. See a full list of supported diets. | [optional]
 **include_ingredients** | **string**| A comma-separated list of ingredients that the recipes should contain. | [optional]
 **exclude_ingredients** | **string**| A comma-separated list of ingredients or ingredient types that the recipes must not contain. | [optional]
 **min_length** | **float**| Minimum video length in seconds. | [optional]
 **max_length** | **float**| Maximum video length in seconds. | [optional]
 **offset** | **int**| The number of results to skip (between 0 and 900). | [optional]
 **number** | **int**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]

### Return type

[**\com.spoonacular.client\com.spoonacular.client.model\InlineResponse20054**](../Model/InlineResponse20054.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## searchSiteContent

> \com.spoonacular.client\com.spoonacular.client.model\InlineResponse20052 searchSiteContent($query)

Search Site Content

Search spoonacular's site content. You'll be able to find everything that you could also find using the search suggestions on spoonacular.com. This is a suggest API so you can send partial strings as queries.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKey('apiKey', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('apiKey', 'Bearer');


$apiInstance = new com.spoonacular.client\Api\MiscApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$query = past; // string | The query to search for. You can also use partial queries such as \"spagh\" to already find spaghetti recipes, articles, grocery products, and other content.

try {
    $result = $apiInstance->searchSiteContent($query);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MiscApi->searchSiteContent: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The query to search for. You can also use partial queries such as \&quot;spagh\&quot; to already find spaghetti recipes, articles, grocery products, and other content. |

### Return type

[**\com.spoonacular.client\com.spoonacular.client.model\InlineResponse20052**](../Model/InlineResponse20052.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## talkToChatbot

> \com.spoonacular.client\com.spoonacular.client.model\InlineResponse20056 talkToChatbot($text, $context_id)

Talk to Chatbot

This endpoint can be used to have a conversation about food with the spoonacular chatbot. Use the \"Get Conversation Suggests\" endpoint to show your user what he or she can say.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKey('apiKey', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = com.spoonacular.client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('apiKey', 'Bearer');


$apiInstance = new com.spoonacular.client\Api\MiscApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$text = donut recipes; // string | The request / question / answer from the user to the chatbot.
$context_id = 342938; // string | An arbitrary globally unique id for your conversation. The conversation can contain states so you should pass your context id if you want the bot to be able to remember the conversation.

try {
    $result = $apiInstance->talkToChatbot($text, $context_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MiscApi->talkToChatbot: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **string**| The request / question / answer from the user to the chatbot. |
 **context_id** | **string**| An arbitrary globally unique id for your conversation. The conversation can contain states so you should pass your context id if you want the bot to be able to remember the conversation. | [optional]

### Return type

[**\com.spoonacular.client\com.spoonacular.client.model\InlineResponse20056**](../Model/InlineResponse20056.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)

