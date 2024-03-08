# OpenAPI\Client\RecipesApi

All URIs are relative to https://api.spoonacular.com, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**analyzeARecipeSearchQuery()**](RecipesApi.md#analyzeARecipeSearchQuery) | **GET** /recipes/queries/analyze | Analyze a Recipe Search Query |
| [**analyzeRecipeInstructions()**](RecipesApi.md#analyzeRecipeInstructions) | **POST** /recipes/analyzeInstructions | Analyze Recipe Instructions |
| [**autocompleteRecipeSearch()**](RecipesApi.md#autocompleteRecipeSearch) | **GET** /recipes/autocomplete | Autocomplete Recipe Search |
| [**classifyCuisine()**](RecipesApi.md#classifyCuisine) | **POST** /recipes/cuisine | Classify Cuisine |
| [**computeGlycemicLoad()**](RecipesApi.md#computeGlycemicLoad) | **POST** /food/ingredients/glycemicLoad | Compute Glycemic Load |
| [**convertAmounts()**](RecipesApi.md#convertAmounts) | **GET** /recipes/convert | Convert Amounts |
| [**createRecipeCard()**](RecipesApi.md#createRecipeCard) | **POST** /recipes/visualizeRecipe | Create Recipe Card |
| [**equipmentByIDImage()**](RecipesApi.md#equipmentByIDImage) | **GET** /recipes/{id}/equipmentWidget.png | Equipment by ID Image |
| [**extractRecipeFromWebsite()**](RecipesApi.md#extractRecipeFromWebsite) | **GET** /recipes/extract | Extract Recipe from Website |
| [**getAnalyzedRecipeInstructions()**](RecipesApi.md#getAnalyzedRecipeInstructions) | **GET** /recipes/{id}/analyzedInstructions | Get Analyzed Recipe Instructions |
| [**getRandomRecipes()**](RecipesApi.md#getRandomRecipes) | **GET** /recipes/random | Get Random Recipes |
| [**getRecipeEquipmentByID()**](RecipesApi.md#getRecipeEquipmentByID) | **GET** /recipes/{id}/equipmentWidget.json | Equipment by ID |
| [**getRecipeInformation()**](RecipesApi.md#getRecipeInformation) | **GET** /recipes/{id}/information | Get Recipe Information |
| [**getRecipeInformationBulk()**](RecipesApi.md#getRecipeInformationBulk) | **GET** /recipes/informationBulk | Get Recipe Information Bulk |
| [**getRecipeIngredientsByID()**](RecipesApi.md#getRecipeIngredientsByID) | **GET** /recipes/{id}/ingredientWidget.json | Ingredients by ID |
| [**getRecipeNutritionWidgetByID()**](RecipesApi.md#getRecipeNutritionWidgetByID) | **GET** /recipes/{id}/nutritionWidget.json | Nutrition by ID |
| [**getRecipePriceBreakdownByID()**](RecipesApi.md#getRecipePriceBreakdownByID) | **GET** /recipes/{id}/priceBreakdownWidget.json | Price Breakdown by ID |
| [**getRecipeTasteByID()**](RecipesApi.md#getRecipeTasteByID) | **GET** /recipes/{id}/tasteWidget.json | Taste by ID |
| [**getSimilarRecipes()**](RecipesApi.md#getSimilarRecipes) | **GET** /recipes/{id}/similar | Get Similar Recipes |
| [**guessNutritionByDishName()**](RecipesApi.md#guessNutritionByDishName) | **GET** /recipes/guessNutrition | Guess Nutrition by Dish Name |
| [**ingredientsByIDImage()**](RecipesApi.md#ingredientsByIDImage) | **GET** /recipes/{id}/ingredientWidget.png | Ingredients by ID Image |
| [**parseIngredients()**](RecipesApi.md#parseIngredients) | **POST** /recipes/parseIngredients | Parse Ingredients |
| [**priceBreakdownByIDImage()**](RecipesApi.md#priceBreakdownByIDImage) | **GET** /recipes/{id}/priceBreakdownWidget.png | Price Breakdown by ID Image |
| [**quickAnswer()**](RecipesApi.md#quickAnswer) | **GET** /recipes/quickAnswer | Quick Answer |
| [**recipeNutritionByIDImage()**](RecipesApi.md#recipeNutritionByIDImage) | **GET** /recipes/{id}/nutritionWidget.png | Recipe Nutrition by ID Image |
| [**recipeNutritionLabelImage()**](RecipesApi.md#recipeNutritionLabelImage) | **GET** /recipes/{id}/nutritionLabel.png | Recipe Nutrition Label Image |
| [**recipeNutritionLabelWidget()**](RecipesApi.md#recipeNutritionLabelWidget) | **GET** /recipes/{id}/nutritionLabel | Recipe Nutrition Label Widget |
| [**recipeTasteByIDImage()**](RecipesApi.md#recipeTasteByIDImage) | **GET** /recipes/{id}/tasteWidget.png | Recipe Taste by ID Image |
| [**searchRecipes()**](RecipesApi.md#searchRecipes) | **GET** /recipes/complexSearch | Search Recipes |
| [**searchRecipesByIngredients()**](RecipesApi.md#searchRecipesByIngredients) | **GET** /recipes/findByIngredients | Search Recipes by Ingredients |
| [**searchRecipesByNutrients()**](RecipesApi.md#searchRecipesByNutrients) | **GET** /recipes/findByNutrients | Search Recipes by Nutrients |
| [**summarizeRecipe()**](RecipesApi.md#summarizeRecipe) | **GET** /recipes/{id}/summary | Summarize Recipe |
| [**visualizeEquipment()**](RecipesApi.md#visualizeEquipment) | **POST** /recipes/visualizeEquipment | Equipment Widget |
| [**visualizePriceBreakdown()**](RecipesApi.md#visualizePriceBreakdown) | **POST** /recipes/visualizePriceEstimator | Price Breakdown Widget |
| [**visualizeRecipeEquipmentByID()**](RecipesApi.md#visualizeRecipeEquipmentByID) | **GET** /recipes/{id}/equipmentWidget | Equipment by ID Widget |
| [**visualizeRecipeIngredientsByID()**](RecipesApi.md#visualizeRecipeIngredientsByID) | **GET** /recipes/{id}/ingredientWidget | Ingredients by ID Widget |
| [**visualizeRecipeNutrition()**](RecipesApi.md#visualizeRecipeNutrition) | **POST** /recipes/visualizeNutrition | Recipe Nutrition Widget |
| [**visualizeRecipeNutritionByID()**](RecipesApi.md#visualizeRecipeNutritionByID) | **GET** /recipes/{id}/nutritionWidget | Recipe Nutrition by ID Widget |
| [**visualizeRecipePriceBreakdownByID()**](RecipesApi.md#visualizeRecipePriceBreakdownByID) | **GET** /recipes/{id}/priceBreakdownWidget | Price Breakdown by ID Widget |
| [**visualizeRecipeTaste()**](RecipesApi.md#visualizeRecipeTaste) | **POST** /recipes/visualizeTaste | Recipe Taste Widget |
| [**visualizeRecipeTasteByID()**](RecipesApi.md#visualizeRecipeTasteByID) | **GET** /recipes/{id}/tasteWidget | Recipe Taste by ID Widget |


## `analyzeARecipeSearchQuery()`

```php
analyzeARecipeSearchQuery($q): \OpenAPI\Client\Model\AnalyzeARecipeSearchQuery200Response
```

Analyze a Recipe Search Query

Parse a recipe search query to find out its intention.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\RecipesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$q = salmon with fusilli and no nuts; // string | The recipe search query.

try {
    $result = $apiInstance->analyzeARecipeSearchQuery($q);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RecipesApi->analyzeARecipeSearchQuery: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **q** | **string**| The recipe search query. | |

### Return type

[**\OpenAPI\Client\Model\AnalyzeARecipeSearchQuery200Response**](../Model/AnalyzeARecipeSearchQuery200Response.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `analyzeRecipeInstructions()`

```php
analyzeRecipeInstructions($content_type): \OpenAPI\Client\Model\AnalyzeRecipeInstructions200Response
```

Analyze Recipe Instructions

This endpoint allows you to break down instructions into atomic steps. Furthermore, each step will contain the ingredients and equipment required. Additionally, all ingredients and equipment from the recipe's instructions will be extracted independently of the step they're used in.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\RecipesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$content_type = application/json; // string | The content type.

try {
    $result = $apiInstance->analyzeRecipeInstructions($content_type);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RecipesApi->analyzeRecipeInstructions: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **content_type** | **string**| The content type. | [optional] |

### Return type

[**\OpenAPI\Client\Model\AnalyzeRecipeInstructions200Response**](../Model/AnalyzeRecipeInstructions200Response.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `autocompleteRecipeSearch()`

```php
autocompleteRecipeSearch($query, $number): \OpenAPI\Client\Model\AutocompleteRecipeSearch200ResponseInner[]
```

Autocomplete Recipe Search

Autocomplete a partial input to suggest possible recipe names.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\RecipesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$query = burger; // string | The (natural language) search query.
$number = 10; // int | The maximum number of items to return (between 1 and 100). Defaults to 10.

try {
    $result = $apiInstance->autocompleteRecipeSearch($query, $number);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RecipesApi->autocompleteRecipeSearch: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **query** | **string**| The (natural language) search query. | [optional] |
| **number** | **int**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10] |

### Return type

[**\OpenAPI\Client\Model\AutocompleteRecipeSearch200ResponseInner[]**](../Model/AutocompleteRecipeSearch200ResponseInner.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `classifyCuisine()`

```php
classifyCuisine($content_type): \OpenAPI\Client\Model\ClassifyCuisine200Response
```

Classify Cuisine

Classify the recipe's cuisine.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\RecipesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$content_type = application/json; // string | The content type.

try {
    $result = $apiInstance->classifyCuisine($content_type);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RecipesApi->classifyCuisine: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **content_type** | **string**| The content type. | [optional] |

### Return type

[**\OpenAPI\Client\Model\ClassifyCuisine200Response**](../Model/ClassifyCuisine200Response.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `computeGlycemicLoad()`

```php
computeGlycemicLoad($compute_glycemic_load_request, $language): \OpenAPI\Client\Model\ComputeGlycemicLoad200Response
```

Compute Glycemic Load

Retrieve the glycemic index for a list of ingredients and compute the individual and total glycemic load.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\RecipesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$compute_glycemic_load_request = {"ingredients":["1 kiwi","2 cups rice","2 glasses of water"]}; // \OpenAPI\Client\Model\ComputeGlycemicLoadRequest
$language = en; // string | The language of the input. Either 'en' or 'de'.

try {
    $result = $apiInstance->computeGlycemicLoad($compute_glycemic_load_request, $language);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RecipesApi->computeGlycemicLoad: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **compute_glycemic_load_request** | [**\OpenAPI\Client\Model\ComputeGlycemicLoadRequest**](../Model/ComputeGlycemicLoadRequest.md)|  | |
| **language** | **string**| The language of the input. Either &#39;en&#39; or &#39;de&#39;. | [optional] |

### Return type

[**\OpenAPI\Client\Model\ComputeGlycemicLoad200Response**](../Model/ComputeGlycemicLoad200Response.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `convertAmounts()`

```php
convertAmounts($ingredient_name, $source_amount, $source_unit, $target_unit): \OpenAPI\Client\Model\ConvertAmounts200Response
```

Convert Amounts

Convert amounts like \"2 cups of flour to grams\".

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\RecipesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$ingredient_name = flour; // string | The ingredient which you want to convert.
$source_amount = 2.5; // float | The amount from which you want to convert, e.g. the 2.5 in \"2.5 cups of flour to grams\".
$source_unit = cups; // string | The unit from which you want to convert, e.g. the grams in \"2.5 cups of flour to grams\". You can also use \"piece\", e.g. \"3.4 oz tomatoes to piece\"
$target_unit = grams; // string | The unit to which you want to convert, e.g. the grams in \"2.5 cups of flour to grams\". You can also use \"piece\", e.g. \"3.4 oz tomatoes to piece\"

try {
    $result = $apiInstance->convertAmounts($ingredient_name, $source_amount, $source_unit, $target_unit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RecipesApi->convertAmounts: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **ingredient_name** | **string**| The ingredient which you want to convert. | |
| **source_amount** | **float**| The amount from which you want to convert, e.g. the 2.5 in \&quot;2.5 cups of flour to grams\&quot;. | |
| **source_unit** | **string**| The unit from which you want to convert, e.g. the grams in \&quot;2.5 cups of flour to grams\&quot;. You can also use \&quot;piece\&quot;, e.g. \&quot;3.4 oz tomatoes to piece\&quot; | |
| **target_unit** | **string**| The unit to which you want to convert, e.g. the grams in \&quot;2.5 cups of flour to grams\&quot;. You can also use \&quot;piece\&quot;, e.g. \&quot;3.4 oz tomatoes to piece\&quot; | |

### Return type

[**\OpenAPI\Client\Model\ConvertAmounts200Response**](../Model/ConvertAmounts200Response.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `createRecipeCard()`

```php
createRecipeCard($content_type): \OpenAPI\Client\Model\CreateRecipeCard200Response
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


$apiInstance = new OpenAPI\Client\Api\RecipesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$content_type = application/json; // string | The content type.

try {
    $result = $apiInstance->createRecipeCard($content_type);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RecipesApi->createRecipeCard: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **content_type** | **string**| The content type. | [optional] |

### Return type

[**\OpenAPI\Client\Model\CreateRecipeCard200Response**](../Model/CreateRecipeCard200Response.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: `multipart/form-data`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `equipmentByIDImage()`

```php
equipmentByIDImage($id): object
```

Equipment by ID Image

Visualize a recipe's equipment list as an image.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\RecipesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 44860; // float | The recipe id.

try {
    $result = $apiInstance->equipmentByIDImage($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RecipesApi->equipmentByIDImage: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **float**| The recipe id. | |

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

## `extractRecipeFromWebsite()`

```php
extractRecipeFromWebsite($url, $force_extraction, $analyze, $include_nutrition, $include_taste): \OpenAPI\Client\Model\GetRecipeInformation200Response
```

Extract Recipe from Website

This endpoint lets you extract recipe data such as title, ingredients, and instructions from any properly formatted Website.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\RecipesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$url = https://foodista.com/recipe/ZHK4KPB6/chocolate-crinkle-cookies; // string | The URL of the recipe page.
$force_extraction = true; // bool | If true, the extraction will be triggered whether we already know the recipe or not. Use this only if information is missing as this operation is slower.
$analyze = false; // bool | If true, the recipe will be analyzed and classified resolving in more data such as cuisines, dish types, and more.
$include_nutrition = false; // bool | Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings.
$include_taste = false; // bool | Whether taste data should be added to correctly parsed ingredients.

try {
    $result = $apiInstance->extractRecipeFromWebsite($url, $force_extraction, $analyze, $include_nutrition, $include_taste);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RecipesApi->extractRecipeFromWebsite: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **url** | **string**| The URL of the recipe page. | |
| **force_extraction** | **bool**| If true, the extraction will be triggered whether we already know the recipe or not. Use this only if information is missing as this operation is slower. | [optional] |
| **analyze** | **bool**| If true, the recipe will be analyzed and classified resolving in more data such as cuisines, dish types, and more. | [optional] |
| **include_nutrition** | **bool**| Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. | [optional] [default to false] |
| **include_taste** | **bool**| Whether taste data should be added to correctly parsed ingredients. | [optional] [default to false] |

### Return type

[**\OpenAPI\Client\Model\GetRecipeInformation200Response**](../Model/GetRecipeInformation200Response.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getAnalyzedRecipeInstructions()`

```php
getAnalyzedRecipeInstructions($id, $step_breakdown): \OpenAPI\Client\Model\GetAnalyzedRecipeInstructions200Response
```

Get Analyzed Recipe Instructions

Get an analyzed breakdown of a recipe's instructions. Each step is enriched with the ingredients and equipment required.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\RecipesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 1; // int | The item's id.
$step_breakdown = true; // bool | Whether to break down the recipe steps even more.

try {
    $result = $apiInstance->getAnalyzedRecipeInstructions($id, $step_breakdown);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RecipesApi->getAnalyzedRecipeInstructions: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**| The item&#39;s id. | |
| **step_breakdown** | **bool**| Whether to break down the recipe steps even more. | [optional] |

### Return type

[**\OpenAPI\Client\Model\GetAnalyzedRecipeInstructions200Response**](../Model/GetAnalyzedRecipeInstructions200Response.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getRandomRecipes()`

```php
getRandomRecipes($limit_license, $tags, $number): \OpenAPI\Client\Model\GetRandomRecipes200Response
```

Get Random Recipes

Find random (popular) recipes. If you need to filter recipes by diet, nutrition etc. you might want to consider using the complex recipe search endpoint and set the sort request parameter to random.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\RecipesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$limit_license = true; // bool | Whether the recipes should have an open license that allows display with proper attribution.
$tags = 'tags_example'; // string | The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have.
$number = 10; // int | The maximum number of items to return (between 1 and 100). Defaults to 10.

try {
    $result = $apiInstance->getRandomRecipes($limit_license, $tags, $number);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RecipesApi->getRandomRecipes: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **limit_license** | **bool**| Whether the recipes should have an open license that allows display with proper attribution. | [optional] [default to true] |
| **tags** | **string**| The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have. | [optional] |
| **number** | **int**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10] |

### Return type

[**\OpenAPI\Client\Model\GetRandomRecipes200Response**](../Model/GetRandomRecipes200Response.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getRecipeEquipmentByID()`

```php
getRecipeEquipmentByID($id): \OpenAPI\Client\Model\GetRecipeEquipmentByID200Response
```

Equipment by ID

Get a recipe's equipment list.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\RecipesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 1; // int | The item's id.

try {
    $result = $apiInstance->getRecipeEquipmentByID($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RecipesApi->getRecipeEquipmentByID: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**| The item&#39;s id. | |

### Return type

[**\OpenAPI\Client\Model\GetRecipeEquipmentByID200Response**](../Model/GetRecipeEquipmentByID200Response.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getRecipeInformation()`

```php
getRecipeInformation($id, $include_nutrition): \OpenAPI\Client\Model\GetRecipeInformation200Response
```

Get Recipe Information

Use a recipe id to get full information about a recipe, such as ingredients, nutrition, diet and allergen information, etc.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\RecipesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 1; // int | The item's id.
$include_nutrition = false; // bool | Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings.

try {
    $result = $apiInstance->getRecipeInformation($id, $include_nutrition);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RecipesApi->getRecipeInformation: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**| The item&#39;s id. | |
| **include_nutrition** | **bool**| Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. | [optional] [default to false] |

### Return type

[**\OpenAPI\Client\Model\GetRecipeInformation200Response**](../Model/GetRecipeInformation200Response.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getRecipeInformationBulk()`

```php
getRecipeInformationBulk($ids, $include_nutrition): \OpenAPI\Client\Model\GetRecipeInformationBulk200ResponseInner[]
```

Get Recipe Information Bulk

Get information about multiple recipes at once. This is equivalent to calling the Get Recipe Information endpoint multiple times, but faster.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\RecipesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$ids = 715538,716429; // string | A comma-separated list of recipe ids.
$include_nutrition = false; // bool | Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings.

try {
    $result = $apiInstance->getRecipeInformationBulk($ids, $include_nutrition);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RecipesApi->getRecipeInformationBulk: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **ids** | **string**| A comma-separated list of recipe ids. | |
| **include_nutrition** | **bool**| Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. | [optional] [default to false] |

### Return type

[**\OpenAPI\Client\Model\GetRecipeInformationBulk200ResponseInner[]**](../Model/GetRecipeInformationBulk200ResponseInner.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getRecipeIngredientsByID()`

```php
getRecipeIngredientsByID($id): \OpenAPI\Client\Model\GetRecipeIngredientsByID200Response
```

Ingredients by ID

Get a recipe's ingredient list.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\RecipesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 1; // int | The item's id.

try {
    $result = $apiInstance->getRecipeIngredientsByID($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RecipesApi->getRecipeIngredientsByID: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**| The item&#39;s id. | |

### Return type

[**\OpenAPI\Client\Model\GetRecipeIngredientsByID200Response**](../Model/GetRecipeIngredientsByID200Response.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getRecipeNutritionWidgetByID()`

```php
getRecipeNutritionWidgetByID($id): \OpenAPI\Client\Model\GetRecipeNutritionWidgetByID200Response
```

Nutrition by ID

Get a recipe's nutrition data.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\RecipesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 1; // int | The item's id.

try {
    $result = $apiInstance->getRecipeNutritionWidgetByID($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RecipesApi->getRecipeNutritionWidgetByID: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**| The item&#39;s id. | |

### Return type

[**\OpenAPI\Client\Model\GetRecipeNutritionWidgetByID200Response**](../Model/GetRecipeNutritionWidgetByID200Response.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getRecipePriceBreakdownByID()`

```php
getRecipePriceBreakdownByID($id): \OpenAPI\Client\Model\GetRecipePriceBreakdownByID200Response
```

Price Breakdown by ID

Get a recipe's price breakdown data.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\RecipesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 1; // int | The item's id.

try {
    $result = $apiInstance->getRecipePriceBreakdownByID($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RecipesApi->getRecipePriceBreakdownByID: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**| The item&#39;s id. | |

### Return type

[**\OpenAPI\Client\Model\GetRecipePriceBreakdownByID200Response**](../Model/GetRecipePriceBreakdownByID200Response.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getRecipeTasteByID()`

```php
getRecipeTasteByID($id, $normalize): \OpenAPI\Client\Model\GetRecipeTasteByID200Response
```

Taste by ID

Get a recipe's taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\RecipesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 1; // int | The item's id.
$normalize = true; // bool | Normalize to the strongest taste.

try {
    $result = $apiInstance->getRecipeTasteByID($id, $normalize);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RecipesApi->getRecipeTasteByID: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**| The item&#39;s id. | |
| **normalize** | **bool**| Normalize to the strongest taste. | [optional] [default to true] |

### Return type

[**\OpenAPI\Client\Model\GetRecipeTasteByID200Response**](../Model/GetRecipeTasteByID200Response.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getSimilarRecipes()`

```php
getSimilarRecipes($id, $number, $limit_license): \OpenAPI\Client\Model\GetSimilarRecipes200ResponseInner[]
```

Get Similar Recipes

Find recipes which are similar to the given one.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\RecipesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 1; // int | The item's id.
$number = 10; // int | The maximum number of items to return (between 1 and 100). Defaults to 10.
$limit_license = true; // bool | Whether the recipes should have an open license that allows display with proper attribution.

try {
    $result = $apiInstance->getSimilarRecipes($id, $number, $limit_license);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RecipesApi->getSimilarRecipes: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**| The item&#39;s id. | |
| **number** | **int**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10] |
| **limit_license** | **bool**| Whether the recipes should have an open license that allows display with proper attribution. | [optional] [default to true] |

### Return type

[**\OpenAPI\Client\Model\GetSimilarRecipes200ResponseInner[]**](../Model/GetSimilarRecipes200ResponseInner.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `guessNutritionByDishName()`

```php
guessNutritionByDishName($title): \OpenAPI\Client\Model\GuessNutritionByDishName200Response
```

Guess Nutrition by Dish Name

Estimate the macronutrients of a dish based on its title.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\RecipesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$title = Spaghetti Aglio et Olio; // string | The title of the dish.

try {
    $result = $apiInstance->guessNutritionByDishName($title);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RecipesApi->guessNutritionByDishName: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **title** | **string**| The title of the dish. | |

### Return type

[**\OpenAPI\Client\Model\GuessNutritionByDishName200Response**](../Model/GuessNutritionByDishName200Response.md)

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


$apiInstance = new OpenAPI\Client\Api\RecipesApi(
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
    echo 'Exception when calling RecipesApi->ingredientsByIDImage: ', $e->getMessage(), PHP_EOL;
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

## `parseIngredients()`

```php
parseIngredients($content_type, $language): \OpenAPI\Client\Model\ParseIngredients200ResponseInner[]
```

Parse Ingredients

Extract an ingredient from plain text.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\RecipesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$content_type = application/json; // string | The content type.
$language = en; // string | The language of the input. Either 'en' or 'de'.

try {
    $result = $apiInstance->parseIngredients($content_type, $language);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RecipesApi->parseIngredients: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **content_type** | **string**| The content type. | [optional] |
| **language** | **string**| The language of the input. Either &#39;en&#39; or &#39;de&#39;. | [optional] |

### Return type

[**\OpenAPI\Client\Model\ParseIngredients200ResponseInner[]**](../Model/ParseIngredients200ResponseInner.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `priceBreakdownByIDImage()`

```php
priceBreakdownByIDImage($id): object
```

Price Breakdown by ID Image

Visualize a recipe's price breakdown.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\RecipesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 1082038; // float | The recipe id.

try {
    $result = $apiInstance->priceBreakdownByIDImage($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RecipesApi->priceBreakdownByIDImage: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **float**| The recipe id. | |

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

## `quickAnswer()`

```php
quickAnswer($q): \OpenAPI\Client\Model\QuickAnswer200Response
```

Quick Answer

Answer a nutrition related natural language question.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\RecipesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$q = How much vitamin c is in 2 apples?; // string | The nutrition related question.

try {
    $result = $apiInstance->quickAnswer($q);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RecipesApi->quickAnswer: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **q** | **string**| The nutrition related question. | |

### Return type

[**\OpenAPI\Client\Model\QuickAnswer200Response**](../Model/QuickAnswer200Response.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `recipeNutritionByIDImage()`

```php
recipeNutritionByIDImage($id): object
```

Recipe Nutrition by ID Image

Visualize a recipe's nutritional information as an image.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\RecipesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 1082038; // float | The recipe id.

try {
    $result = $apiInstance->recipeNutritionByIDImage($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RecipesApi->recipeNutritionByIDImage: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **float**| The recipe id. | |

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

## `recipeNutritionLabelImage()`

```php
recipeNutritionLabelImage($id, $show_optional_nutrients, $show_zero_values, $show_ingredients): object
```

Recipe Nutrition Label Image

Get a recipe's nutrition label as an image.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\RecipesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 641166; // float | The recipe id.
$show_optional_nutrients = false; // bool | Whether to show optional nutrients.
$show_zero_values = false; // bool | Whether to show zero values.
$show_ingredients = false; // bool | Whether to show a list of ingredients.

try {
    $result = $apiInstance->recipeNutritionLabelImage($id, $show_optional_nutrients, $show_zero_values, $show_ingredients);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RecipesApi->recipeNutritionLabelImage: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **float**| The recipe id. | |
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

## `recipeNutritionLabelWidget()`

```php
recipeNutritionLabelWidget($id, $default_css, $show_optional_nutrients, $show_zero_values, $show_ingredients): string
```

Recipe Nutrition Label Widget

Get a recipe's nutrition label as an HTML widget.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\RecipesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 641166; // float | The recipe id.
$default_css = false; // bool | Whether the default CSS should be added to the response.
$show_optional_nutrients = false; // bool | Whether to show optional nutrients.
$show_zero_values = false; // bool | Whether to show zero values.
$show_ingredients = false; // bool | Whether to show a list of ingredients.

try {
    $result = $apiInstance->recipeNutritionLabelWidget($id, $default_css, $show_optional_nutrients, $show_zero_values, $show_ingredients);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RecipesApi->recipeNutritionLabelWidget: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **float**| The recipe id. | |
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

## `recipeTasteByIDImage()`

```php
recipeTasteByIDImage($id, $normalize, $rgb): object
```

Recipe Taste by ID Image

Get a recipe's taste as an image. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\RecipesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 69095; // float | The recipe id.
$normalize = false; // bool | Normalize to the strongest taste.
$rgb = 75,192,192; // string | Red, green, blue values for the chart color.

try {
    $result = $apiInstance->recipeTasteByIDImage($id, $normalize, $rgb);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RecipesApi->recipeTasteByIDImage: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **float**| The recipe id. | |
| **normalize** | **bool**| Normalize to the strongest taste. | [optional] |
| **rgb** | **string**| Red, green, blue values for the chart color. | [optional] |

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

## `searchRecipes()`

```php
searchRecipes($query, $cuisine, $exclude_cuisine, $diet, $intolerances, $equipment, $include_ingredients, $exclude_ingredients, $type, $instructions_required, $fill_ingredients, $add_recipe_information, $add_recipe_nutrition, $author, $tags, $recipe_box_id, $title_match, $max_ready_time, $ignore_pantry, $sort, $sort_direction, $min_carbs, $max_carbs, $min_protein, $max_protein, $min_calories, $max_calories, $min_fat, $max_fat, $min_alcohol, $max_alcohol, $min_caffeine, $max_caffeine, $min_copper, $max_copper, $min_calcium, $max_calcium, $min_choline, $max_choline, $min_cholesterol, $max_cholesterol, $min_fluoride, $max_fluoride, $min_saturated_fat, $max_saturated_fat, $min_vitamin_a, $max_vitamin_a, $min_vitamin_c, $max_vitamin_c, $min_vitamin_d, $max_vitamin_d, $min_vitamin_e, $max_vitamin_e, $min_vitamin_k, $max_vitamin_k, $min_vitamin_b1, $max_vitamin_b1, $min_vitamin_b2, $max_vitamin_b2, $min_vitamin_b5, $max_vitamin_b5, $min_vitamin_b3, $max_vitamin_b3, $min_vitamin_b6, $max_vitamin_b6, $min_vitamin_b12, $max_vitamin_b12, $min_fiber, $max_fiber, $min_folate, $max_folate, $min_folic_acid, $max_folic_acid, $min_iodine, $max_iodine, $min_iron, $max_iron, $min_magnesium, $max_magnesium, $min_manganese, $max_manganese, $min_phosphorus, $max_phosphorus, $min_potassium, $max_potassium, $min_selenium, $max_selenium, $min_sodium, $max_sodium, $min_sugar, $max_sugar, $min_zinc, $max_zinc, $offset, $number, $limit_license): \OpenAPI\Client\Model\SearchRecipes200Response
```

Search Recipes

Search through hundreds of thousands of recipes using advanced filtering and ranking. NOTE: This method combines searching by query, by ingredients, and by nutrients into one endpoint.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\RecipesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$query = burger; // string | The (natural language) search query.
$cuisine = italian; // string | The cuisine(s) of the recipes. One or more, comma separated (will be interpreted as 'OR'). See a full list of supported cuisines.
$exclude_cuisine = greek; // string | The cuisine(s) the recipes must not match. One or more, comma separated (will be interpreted as 'AND'). See a full list of supported cuisines.
$diet = vegetarian; // string | The diet for which the recipes must be suitable. See a full list of supported diets.
$intolerances = gluten; // string | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.
$equipment = pan; // string | The equipment required. Multiple values will be interpreted as 'or'. For example, value could be \"blender, frying pan, bowl\".
$include_ingredients = tomato,cheese; // string | A comma-separated list of ingredients that should/must be used in the recipes.
$exclude_ingredients = eggs; // string | A comma-separated list of ingredients or ingredient types that the recipes must not contain.
$type = main course; // string | The type of recipe. See a full list of supported meal types.
$instructions_required = true; // bool | Whether the recipes must have instructions.
$fill_ingredients = false; // bool | Add information about the ingredients and whether they are used or missing in relation to the query.
$add_recipe_information = false; // bool | If set to true, you get more information about the recipes returned.
$add_recipe_nutrition = false; // bool | If set to true, you get nutritional information about each recipes returned.
$author = coffeebean; // string | The username of the recipe author.
$tags = 'tags_example'; // string | The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have.
$recipe_box_id = 2468; // float | The id of the recipe box to which the search should be limited to.
$title_match = Crock Pot; // string | Enter text that must be found in the title of the recipes.
$max_ready_time = 20; // float | The maximum time in minutes it should take to prepare and cook the recipe.
$ignore_pantry = false; // bool | Whether to ignore typical pantry items, such as water, salt, flour, etc.
$sort = calories; // string | The strategy to sort recipes by. See a full list of supported sorting options.
$sort_direction = asc; // string | The direction in which to sort. Must be either 'asc' (ascending) or 'desc' (descending).
$min_carbs = 10; // float | The minimum amount of carbohydrates in grams the recipe must have.
$max_carbs = 100; // float | The maximum amount of carbohydrates in grams the recipe can have.
$min_protein = 10; // float | The minimum amount of protein in grams the recipe must have.
$max_protein = 100; // float | The maximum amount of protein in grams the recipe can have.
$min_calories = 50; // float | The minimum amount of calories the recipe must have.
$max_calories = 800; // float | The maximum amount of calories the recipe can have.
$min_fat = 1; // float | The minimum amount of fat in grams the recipe must have.
$max_fat = 100; // float | The maximum amount of fat in grams the recipe can have.
$min_alcohol = 0; // float | The minimum amount of alcohol in grams the recipe must have.
$max_alcohol = 100; // float | The maximum amount of alcohol in grams the recipe can have.
$min_caffeine = 0; // float | The minimum amount of caffeine in milligrams the recipe must have.
$max_caffeine = 100; // float | The maximum amount of caffeine in milligrams the recipe can have.
$min_copper = 0; // float | The minimum amount of copper in milligrams the recipe must have.
$max_copper = 100; // float | The maximum amount of copper in milligrams the recipe can have.
$min_calcium = 0; // float | The minimum amount of calcium in milligrams the recipe must have.
$max_calcium = 100; // float | The maximum amount of calcium in milligrams the recipe can have.
$min_choline = 0; // float | The minimum amount of choline in milligrams the recipe must have.
$max_choline = 100; // float | The maximum amount of choline in milligrams the recipe can have.
$min_cholesterol = 0; // float | The minimum amount of cholesterol in milligrams the recipe must have.
$max_cholesterol = 100; // float | The maximum amount of cholesterol in milligrams the recipe can have.
$min_fluoride = 0; // float | The minimum amount of fluoride in milligrams the recipe must have.
$max_fluoride = 100; // float | The maximum amount of fluoride in milligrams the recipe can have.
$min_saturated_fat = 0; // float | The minimum amount of saturated fat in grams the recipe must have.
$max_saturated_fat = 100; // float | The maximum amount of saturated fat in grams the recipe can have.
$min_vitamin_a = 0; // float | The minimum amount of Vitamin A in IU the recipe must have.
$max_vitamin_a = 100; // float | The maximum amount of Vitamin A in IU the recipe can have.
$min_vitamin_c = 0; // float | The minimum amount of Vitamin C milligrams the recipe must have.
$max_vitamin_c = 100; // float | The maximum amount of Vitamin C in milligrams the recipe can have.
$min_vitamin_d = 0; // float | The minimum amount of Vitamin D in micrograms the recipe must have.
$max_vitamin_d = 100; // float | The maximum amount of Vitamin D in micrograms the recipe can have.
$min_vitamin_e = 0; // float | The minimum amount of Vitamin E in milligrams the recipe must have.
$max_vitamin_e = 100; // float | The maximum amount of Vitamin E in milligrams the recipe can have.
$min_vitamin_k = 0; // float | The minimum amount of Vitamin K in micrograms the recipe must have.
$max_vitamin_k = 100; // float | The maximum amount of Vitamin K in micrograms the recipe can have.
$min_vitamin_b1 = 0; // float | The minimum amount of Vitamin B1 in milligrams the recipe must have.
$max_vitamin_b1 = 100; // float | The maximum amount of Vitamin B1 in milligrams the recipe can have.
$min_vitamin_b2 = 0; // float | The minimum amount of Vitamin B2 in milligrams the recipe must have.
$max_vitamin_b2 = 100; // float | The maximum amount of Vitamin B2 in milligrams the recipe can have.
$min_vitamin_b5 = 0; // float | The minimum amount of Vitamin B5 in milligrams the recipe must have.
$max_vitamin_b5 = 100; // float | The maximum amount of Vitamin B5 in milligrams the recipe can have.
$min_vitamin_b3 = 0; // float | The minimum amount of Vitamin B3 in milligrams the recipe must have.
$max_vitamin_b3 = 100; // float | The maximum amount of Vitamin B3 in milligrams the recipe can have.
$min_vitamin_b6 = 0; // float | The minimum amount of Vitamin B6 in milligrams the recipe must have.
$max_vitamin_b6 = 100; // float | The maximum amount of Vitamin B6 in milligrams the recipe can have.
$min_vitamin_b12 = 0; // float | The minimum amount of Vitamin B12 in micrograms the recipe must have.
$max_vitamin_b12 = 100; // float | The maximum amount of Vitamin B12 in micrograms the recipe can have.
$min_fiber = 0; // float | The minimum amount of fiber in grams the recipe must have.
$max_fiber = 100; // float | The maximum amount of fiber in grams the recipe can have.
$min_folate = 0; // float | The minimum amount of folate in micrograms the recipe must have.
$max_folate = 100; // float | The maximum amount of folate in micrograms the recipe can have.
$min_folic_acid = 0; // float | The minimum amount of folic acid in micrograms the recipe must have.
$max_folic_acid = 100; // float | The maximum amount of folic acid in micrograms the recipe can have.
$min_iodine = 0; // float | The minimum amount of iodine in micrograms the recipe must have.
$max_iodine = 100; // float | The maximum amount of iodine in micrograms the recipe can have.
$min_iron = 0; // float | The minimum amount of iron in milligrams the recipe must have.
$max_iron = 100; // float | The maximum amount of iron in milligrams the recipe can have.
$min_magnesium = 0; // float | The minimum amount of magnesium in milligrams the recipe must have.
$max_magnesium = 100; // float | The maximum amount of magnesium in milligrams the recipe can have.
$min_manganese = 0; // float | The minimum amount of manganese in milligrams the recipe must have.
$max_manganese = 100; // float | The maximum amount of manganese in milligrams the recipe can have.
$min_phosphorus = 0; // float | The minimum amount of phosphorus in milligrams the recipe must have.
$max_phosphorus = 100; // float | The maximum amount of phosphorus in milligrams the recipe can have.
$min_potassium = 0; // float | The minimum amount of potassium in milligrams the recipe must have.
$max_potassium = 100; // float | The maximum amount of potassium in milligrams the recipe can have.
$min_selenium = 0; // float | The minimum amount of selenium in micrograms the recipe must have.
$max_selenium = 100; // float | The maximum amount of selenium in micrograms the recipe can have.
$min_sodium = 0; // float | The minimum amount of sodium in milligrams the recipe must have.
$max_sodium = 100; // float | The maximum amount of sodium in milligrams the recipe can have.
$min_sugar = 0; // float | The minimum amount of sugar in grams the recipe must have.
$max_sugar = 100; // float | The maximum amount of sugar in grams the recipe can have.
$min_zinc = 0; // float | The minimum amount of zinc in milligrams the recipe must have.
$max_zinc = 100; // float | The maximum amount of zinc in milligrams the recipe can have.
$offset = 56; // int | The number of results to skip (between 0 and 900).
$number = 10; // int | The maximum number of items to return (between 1 and 100). Defaults to 10.
$limit_license = true; // bool | Whether the recipes should have an open license that allows display with proper attribution.

try {
    $result = $apiInstance->searchRecipes($query, $cuisine, $exclude_cuisine, $diet, $intolerances, $equipment, $include_ingredients, $exclude_ingredients, $type, $instructions_required, $fill_ingredients, $add_recipe_information, $add_recipe_nutrition, $author, $tags, $recipe_box_id, $title_match, $max_ready_time, $ignore_pantry, $sort, $sort_direction, $min_carbs, $max_carbs, $min_protein, $max_protein, $min_calories, $max_calories, $min_fat, $max_fat, $min_alcohol, $max_alcohol, $min_caffeine, $max_caffeine, $min_copper, $max_copper, $min_calcium, $max_calcium, $min_choline, $max_choline, $min_cholesterol, $max_cholesterol, $min_fluoride, $max_fluoride, $min_saturated_fat, $max_saturated_fat, $min_vitamin_a, $max_vitamin_a, $min_vitamin_c, $max_vitamin_c, $min_vitamin_d, $max_vitamin_d, $min_vitamin_e, $max_vitamin_e, $min_vitamin_k, $max_vitamin_k, $min_vitamin_b1, $max_vitamin_b1, $min_vitamin_b2, $max_vitamin_b2, $min_vitamin_b5, $max_vitamin_b5, $min_vitamin_b3, $max_vitamin_b3, $min_vitamin_b6, $max_vitamin_b6, $min_vitamin_b12, $max_vitamin_b12, $min_fiber, $max_fiber, $min_folate, $max_folate, $min_folic_acid, $max_folic_acid, $min_iodine, $max_iodine, $min_iron, $max_iron, $min_magnesium, $max_magnesium, $min_manganese, $max_manganese, $min_phosphorus, $max_phosphorus, $min_potassium, $max_potassium, $min_selenium, $max_selenium, $min_sodium, $max_sodium, $min_sugar, $max_sugar, $min_zinc, $max_zinc, $offset, $number, $limit_license);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RecipesApi->searchRecipes: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **query** | **string**| The (natural language) search query. | [optional] |
| **cuisine** | **string**| The cuisine(s) of the recipes. One or more, comma separated (will be interpreted as &#39;OR&#39;). See a full list of supported cuisines. | [optional] |
| **exclude_cuisine** | **string**| The cuisine(s) the recipes must not match. One or more, comma separated (will be interpreted as &#39;AND&#39;). See a full list of supported cuisines. | [optional] |
| **diet** | **string**| The diet for which the recipes must be suitable. See a full list of supported diets. | [optional] |
| **intolerances** | **string**| A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. | [optional] |
| **equipment** | **string**| The equipment required. Multiple values will be interpreted as &#39;or&#39;. For example, value could be \&quot;blender, frying pan, bowl\&quot;. | [optional] |
| **include_ingredients** | **string**| A comma-separated list of ingredients that should/must be used in the recipes. | [optional] |
| **exclude_ingredients** | **string**| A comma-separated list of ingredients or ingredient types that the recipes must not contain. | [optional] |
| **type** | **string**| The type of recipe. See a full list of supported meal types. | [optional] |
| **instructions_required** | **bool**| Whether the recipes must have instructions. | [optional] |
| **fill_ingredients** | **bool**| Add information about the ingredients and whether they are used or missing in relation to the query. | [optional] |
| **add_recipe_information** | **bool**| If set to true, you get more information about the recipes returned. | [optional] |
| **add_recipe_nutrition** | **bool**| If set to true, you get nutritional information about each recipes returned. | [optional] |
| **author** | **string**| The username of the recipe author. | [optional] |
| **tags** | **string**| The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have. | [optional] |
| **recipe_box_id** | **float**| The id of the recipe box to which the search should be limited to. | [optional] |
| **title_match** | **string**| Enter text that must be found in the title of the recipes. | [optional] |
| **max_ready_time** | **float**| The maximum time in minutes it should take to prepare and cook the recipe. | [optional] |
| **ignore_pantry** | **bool**| Whether to ignore typical pantry items, such as water, salt, flour, etc. | [optional] [default to false] |
| **sort** | **string**| The strategy to sort recipes by. See a full list of supported sorting options. | [optional] |
| **sort_direction** | **string**| The direction in which to sort. Must be either &#39;asc&#39; (ascending) or &#39;desc&#39; (descending). | [optional] |
| **min_carbs** | **float**| The minimum amount of carbohydrates in grams the recipe must have. | [optional] |
| **max_carbs** | **float**| The maximum amount of carbohydrates in grams the recipe can have. | [optional] |
| **min_protein** | **float**| The minimum amount of protein in grams the recipe must have. | [optional] |
| **max_protein** | **float**| The maximum amount of protein in grams the recipe can have. | [optional] |
| **min_calories** | **float**| The minimum amount of calories the recipe must have. | [optional] |
| **max_calories** | **float**| The maximum amount of calories the recipe can have. | [optional] |
| **min_fat** | **float**| The minimum amount of fat in grams the recipe must have. | [optional] |
| **max_fat** | **float**| The maximum amount of fat in grams the recipe can have. | [optional] |
| **min_alcohol** | **float**| The minimum amount of alcohol in grams the recipe must have. | [optional] |
| **max_alcohol** | **float**| The maximum amount of alcohol in grams the recipe can have. | [optional] |
| **min_caffeine** | **float**| The minimum amount of caffeine in milligrams the recipe must have. | [optional] |
| **max_caffeine** | **float**| The maximum amount of caffeine in milligrams the recipe can have. | [optional] |
| **min_copper** | **float**| The minimum amount of copper in milligrams the recipe must have. | [optional] |
| **max_copper** | **float**| The maximum amount of copper in milligrams the recipe can have. | [optional] |
| **min_calcium** | **float**| The minimum amount of calcium in milligrams the recipe must have. | [optional] |
| **max_calcium** | **float**| The maximum amount of calcium in milligrams the recipe can have. | [optional] |
| **min_choline** | **float**| The minimum amount of choline in milligrams the recipe must have. | [optional] |
| **max_choline** | **float**| The maximum amount of choline in milligrams the recipe can have. | [optional] |
| **min_cholesterol** | **float**| The minimum amount of cholesterol in milligrams the recipe must have. | [optional] |
| **max_cholesterol** | **float**| The maximum amount of cholesterol in milligrams the recipe can have. | [optional] |
| **min_fluoride** | **float**| The minimum amount of fluoride in milligrams the recipe must have. | [optional] |
| **max_fluoride** | **float**| The maximum amount of fluoride in milligrams the recipe can have. | [optional] |
| **min_saturated_fat** | **float**| The minimum amount of saturated fat in grams the recipe must have. | [optional] |
| **max_saturated_fat** | **float**| The maximum amount of saturated fat in grams the recipe can have. | [optional] |
| **min_vitamin_a** | **float**| The minimum amount of Vitamin A in IU the recipe must have. | [optional] |
| **max_vitamin_a** | **float**| The maximum amount of Vitamin A in IU the recipe can have. | [optional] |
| **min_vitamin_c** | **float**| The minimum amount of Vitamin C milligrams the recipe must have. | [optional] |
| **max_vitamin_c** | **float**| The maximum amount of Vitamin C in milligrams the recipe can have. | [optional] |
| **min_vitamin_d** | **float**| The minimum amount of Vitamin D in micrograms the recipe must have. | [optional] |
| **max_vitamin_d** | **float**| The maximum amount of Vitamin D in micrograms the recipe can have. | [optional] |
| **min_vitamin_e** | **float**| The minimum amount of Vitamin E in milligrams the recipe must have. | [optional] |
| **max_vitamin_e** | **float**| The maximum amount of Vitamin E in milligrams the recipe can have. | [optional] |
| **min_vitamin_k** | **float**| The minimum amount of Vitamin K in micrograms the recipe must have. | [optional] |
| **max_vitamin_k** | **float**| The maximum amount of Vitamin K in micrograms the recipe can have. | [optional] |
| **min_vitamin_b1** | **float**| The minimum amount of Vitamin B1 in milligrams the recipe must have. | [optional] |
| **max_vitamin_b1** | **float**| The maximum amount of Vitamin B1 in milligrams the recipe can have. | [optional] |
| **min_vitamin_b2** | **float**| The minimum amount of Vitamin B2 in milligrams the recipe must have. | [optional] |
| **max_vitamin_b2** | **float**| The maximum amount of Vitamin B2 in milligrams the recipe can have. | [optional] |
| **min_vitamin_b5** | **float**| The minimum amount of Vitamin B5 in milligrams the recipe must have. | [optional] |
| **max_vitamin_b5** | **float**| The maximum amount of Vitamin B5 in milligrams the recipe can have. | [optional] |
| **min_vitamin_b3** | **float**| The minimum amount of Vitamin B3 in milligrams the recipe must have. | [optional] |
| **max_vitamin_b3** | **float**| The maximum amount of Vitamin B3 in milligrams the recipe can have. | [optional] |
| **min_vitamin_b6** | **float**| The minimum amount of Vitamin B6 in milligrams the recipe must have. | [optional] |
| **max_vitamin_b6** | **float**| The maximum amount of Vitamin B6 in milligrams the recipe can have. | [optional] |
| **min_vitamin_b12** | **float**| The minimum amount of Vitamin B12 in micrograms the recipe must have. | [optional] |
| **max_vitamin_b12** | **float**| The maximum amount of Vitamin B12 in micrograms the recipe can have. | [optional] |
| **min_fiber** | **float**| The minimum amount of fiber in grams the recipe must have. | [optional] |
| **max_fiber** | **float**| The maximum amount of fiber in grams the recipe can have. | [optional] |
| **min_folate** | **float**| The minimum amount of folate in micrograms the recipe must have. | [optional] |
| **max_folate** | **float**| The maximum amount of folate in micrograms the recipe can have. | [optional] |
| **min_folic_acid** | **float**| The minimum amount of folic acid in micrograms the recipe must have. | [optional] |
| **max_folic_acid** | **float**| The maximum amount of folic acid in micrograms the recipe can have. | [optional] |
| **min_iodine** | **float**| The minimum amount of iodine in micrograms the recipe must have. | [optional] |
| **max_iodine** | **float**| The maximum amount of iodine in micrograms the recipe can have. | [optional] |
| **min_iron** | **float**| The minimum amount of iron in milligrams the recipe must have. | [optional] |
| **max_iron** | **float**| The maximum amount of iron in milligrams the recipe can have. | [optional] |
| **min_magnesium** | **float**| The minimum amount of magnesium in milligrams the recipe must have. | [optional] |
| **max_magnesium** | **float**| The maximum amount of magnesium in milligrams the recipe can have. | [optional] |
| **min_manganese** | **float**| The minimum amount of manganese in milligrams the recipe must have. | [optional] |
| **max_manganese** | **float**| The maximum amount of manganese in milligrams the recipe can have. | [optional] |
| **min_phosphorus** | **float**| The minimum amount of phosphorus in milligrams the recipe must have. | [optional] |
| **max_phosphorus** | **float**| The maximum amount of phosphorus in milligrams the recipe can have. | [optional] |
| **min_potassium** | **float**| The minimum amount of potassium in milligrams the recipe must have. | [optional] |
| **max_potassium** | **float**| The maximum amount of potassium in milligrams the recipe can have. | [optional] |
| **min_selenium** | **float**| The minimum amount of selenium in micrograms the recipe must have. | [optional] |
| **max_selenium** | **float**| The maximum amount of selenium in micrograms the recipe can have. | [optional] |
| **min_sodium** | **float**| The minimum amount of sodium in milligrams the recipe must have. | [optional] |
| **max_sodium** | **float**| The maximum amount of sodium in milligrams the recipe can have. | [optional] |
| **min_sugar** | **float**| The minimum amount of sugar in grams the recipe must have. | [optional] |
| **max_sugar** | **float**| The maximum amount of sugar in grams the recipe can have. | [optional] |
| **min_zinc** | **float**| The minimum amount of zinc in milligrams the recipe must have. | [optional] |
| **max_zinc** | **float**| The maximum amount of zinc in milligrams the recipe can have. | [optional] |
| **offset** | **int**| The number of results to skip (between 0 and 900). | [optional] |
| **number** | **int**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10] |
| **limit_license** | **bool**| Whether the recipes should have an open license that allows display with proper attribution. | [optional] [default to true] |

### Return type

[**\OpenAPI\Client\Model\SearchRecipes200Response**](../Model/SearchRecipes200Response.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `searchRecipesByIngredients()`

```php
searchRecipesByIngredients($ingredients, $number, $limit_license, $ranking, $ignore_pantry): \OpenAPI\Client\Model\SearchRecipesByIngredients200ResponseInner[]
```

Search Recipes by Ingredients

Ever wondered what recipes you can cook with the ingredients you have in your fridge or pantry? This endpoint lets you find recipes that either maximize the usage of ingredients you have at hand (pre shopping) or minimize the ingredients that you don't currently have (post shopping).

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\RecipesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$ingredients = carrots,tomatoes; // string | A comma-separated list of ingredients that the recipes should contain.
$number = 10; // int | The maximum number of items to return (between 1 and 100). Defaults to 10.
$limit_license = true; // bool | Whether the recipes should have an open license that allows display with proper attribution.
$ranking = 1; // float | Whether to maximize used ingredients (1) or minimize missing ingredients (2) first.
$ignore_pantry = false; // bool | Whether to ignore typical pantry items, such as water, salt, flour, etc.

try {
    $result = $apiInstance->searchRecipesByIngredients($ingredients, $number, $limit_license, $ranking, $ignore_pantry);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RecipesApi->searchRecipesByIngredients: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **ingredients** | **string**| A comma-separated list of ingredients that the recipes should contain. | [optional] |
| **number** | **int**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10] |
| **limit_license** | **bool**| Whether the recipes should have an open license that allows display with proper attribution. | [optional] [default to true] |
| **ranking** | **float**| Whether to maximize used ingredients (1) or minimize missing ingredients (2) first. | [optional] |
| **ignore_pantry** | **bool**| Whether to ignore typical pantry items, such as water, salt, flour, etc. | [optional] [default to false] |

### Return type

[**\OpenAPI\Client\Model\SearchRecipesByIngredients200ResponseInner[]**](../Model/SearchRecipesByIngredients200ResponseInner.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `searchRecipesByNutrients()`

```php
searchRecipesByNutrients($min_carbs, $max_carbs, $min_protein, $max_protein, $min_calories, $max_calories, $min_fat, $max_fat, $min_alcohol, $max_alcohol, $min_caffeine, $max_caffeine, $min_copper, $max_copper, $min_calcium, $max_calcium, $min_choline, $max_choline, $min_cholesterol, $max_cholesterol, $min_fluoride, $max_fluoride, $min_saturated_fat, $max_saturated_fat, $min_vitamin_a, $max_vitamin_a, $min_vitamin_c, $max_vitamin_c, $min_vitamin_d, $max_vitamin_d, $min_vitamin_e, $max_vitamin_e, $min_vitamin_k, $max_vitamin_k, $min_vitamin_b1, $max_vitamin_b1, $min_vitamin_b2, $max_vitamin_b2, $min_vitamin_b5, $max_vitamin_b5, $min_vitamin_b3, $max_vitamin_b3, $min_vitamin_b6, $max_vitamin_b6, $min_vitamin_b12, $max_vitamin_b12, $min_fiber, $max_fiber, $min_folate, $max_folate, $min_folic_acid, $max_folic_acid, $min_iodine, $max_iodine, $min_iron, $max_iron, $min_magnesium, $max_magnesium, $min_manganese, $max_manganese, $min_phosphorus, $max_phosphorus, $min_potassium, $max_potassium, $min_selenium, $max_selenium, $min_sodium, $max_sodium, $min_sugar, $max_sugar, $min_zinc, $max_zinc, $offset, $number, $random, $limit_license): \OpenAPI\Client\Model\SearchRecipesByNutrients200ResponseInner[]
```

Search Recipes by Nutrients

Find a set of recipes that adhere to the given nutritional limits. You may set limits for macronutrients (calories, protein, fat, and carbohydrate) and/or many micronutrients.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\RecipesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$min_carbs = 10; // float | The minimum amount of carbohydrates in grams the recipe must have.
$max_carbs = 100; // float | The maximum amount of carbohydrates in grams the recipe can have.
$min_protein = 10; // float | The minimum amount of protein in grams the recipe must have.
$max_protein = 100; // float | The maximum amount of protein in grams the recipe can have.
$min_calories = 50; // float | The minimum amount of calories the recipe must have.
$max_calories = 800; // float | The maximum amount of calories the recipe can have.
$min_fat = 1; // float | The minimum amount of fat in grams the recipe must have.
$max_fat = 100; // float | The maximum amount of fat in grams the recipe can have.
$min_alcohol = 0; // float | The minimum amount of alcohol in grams the recipe must have.
$max_alcohol = 100; // float | The maximum amount of alcohol in grams the recipe can have.
$min_caffeine = 0; // float | The minimum amount of caffeine in milligrams the recipe must have.
$max_caffeine = 100; // float | The maximum amount of caffeine in milligrams the recipe can have.
$min_copper = 0; // float | The minimum amount of copper in milligrams the recipe must have.
$max_copper = 100; // float | The maximum amount of copper in milligrams the recipe can have.
$min_calcium = 0; // float | The minimum amount of calcium in milligrams the recipe must have.
$max_calcium = 100; // float | The maximum amount of calcium in milligrams the recipe can have.
$min_choline = 0; // float | The minimum amount of choline in milligrams the recipe must have.
$max_choline = 100; // float | The maximum amount of choline in milligrams the recipe can have.
$min_cholesterol = 0; // float | The minimum amount of cholesterol in milligrams the recipe must have.
$max_cholesterol = 100; // float | The maximum amount of cholesterol in milligrams the recipe can have.
$min_fluoride = 0; // float | The minimum amount of fluoride in milligrams the recipe must have.
$max_fluoride = 100; // float | The maximum amount of fluoride in milligrams the recipe can have.
$min_saturated_fat = 0; // float | The minimum amount of saturated fat in grams the recipe must have.
$max_saturated_fat = 100; // float | The maximum amount of saturated fat in grams the recipe can have.
$min_vitamin_a = 0; // float | The minimum amount of Vitamin A in IU the recipe must have.
$max_vitamin_a = 100; // float | The maximum amount of Vitamin A in IU the recipe can have.
$min_vitamin_c = 0; // float | The minimum amount of Vitamin C in milligrams the recipe must have.
$max_vitamin_c = 100; // float | The maximum amount of Vitamin C in milligrams the recipe can have.
$min_vitamin_d = 0; // float | The minimum amount of Vitamin D in micrograms the recipe must have.
$max_vitamin_d = 100; // float | The maximum amount of Vitamin D in micrograms the recipe can have.
$min_vitamin_e = 0; // float | The minimum amount of Vitamin E in milligrams the recipe must have.
$max_vitamin_e = 100; // float | The maximum amount of Vitamin E in milligrams the recipe can have.
$min_vitamin_k = 0; // float | The minimum amount of Vitamin K in micrograms the recipe must have.
$max_vitamin_k = 100; // float | The maximum amount of Vitamin K in micrograms the recipe can have.
$min_vitamin_b1 = 0; // float | The minimum amount of Vitamin B1 in milligrams the recipe must have.
$max_vitamin_b1 = 100; // float | The maximum amount of Vitamin B1 in milligrams the recipe can have.
$min_vitamin_b2 = 0; // float | The minimum amount of Vitamin B2 in milligrams the recipe must have.
$max_vitamin_b2 = 100; // float | The maximum amount of Vitamin B2 in milligrams the recipe can have.
$min_vitamin_b5 = 0; // float | The minimum amount of Vitamin B5 in milligrams the recipe must have.
$max_vitamin_b5 = 100; // float | The maximum amount of Vitamin B5 in milligrams the recipe can have.
$min_vitamin_b3 = 0; // float | The minimum amount of Vitamin B3 in milligrams the recipe must have.
$max_vitamin_b3 = 100; // float | The maximum amount of Vitamin B3 in milligrams the recipe can have.
$min_vitamin_b6 = 0; // float | The minimum amount of Vitamin B6 in milligrams the recipe must have.
$max_vitamin_b6 = 100; // float | The maximum amount of Vitamin B6 in milligrams the recipe can have.
$min_vitamin_b12 = 0; // float | The minimum amount of Vitamin B12 in micrograms the recipe must have.
$max_vitamin_b12 = 100; // float | The maximum amount of Vitamin B12 in micrograms the recipe can have.
$min_fiber = 0; // float | The minimum amount of fiber in grams the recipe must have.
$max_fiber = 100; // float | The maximum amount of fiber in grams the recipe can have.
$min_folate = 0; // float | The minimum amount of folate in micrograms the recipe must have.
$max_folate = 100; // float | The maximum amount of folate in micrograms the recipe can have.
$min_folic_acid = 0; // float | The minimum amount of folic acid in micrograms the recipe must have.
$max_folic_acid = 100; // float | The maximum amount of folic acid in micrograms the recipe can have.
$min_iodine = 0; // float | The minimum amount of iodine in micrograms the recipe must have.
$max_iodine = 100; // float | The maximum amount of iodine in micrograms the recipe can have.
$min_iron = 0; // float | The minimum amount of iron in milligrams the recipe must have.
$max_iron = 100; // float | The maximum amount of iron in milligrams the recipe can have.
$min_magnesium = 0; // float | The minimum amount of magnesium in milligrams the recipe must have.
$max_magnesium = 100; // float | The maximum amount of magnesium in milligrams the recipe can have.
$min_manganese = 0; // float | The minimum amount of manganese in milligrams the recipe must have.
$max_manganese = 100; // float | The maximum amount of manganese in milligrams the recipe can have.
$min_phosphorus = 0; // float | The minimum amount of phosphorus in milligrams the recipe must have.
$max_phosphorus = 100; // float | The maximum amount of phosphorus in milligrams the recipe can have.
$min_potassium = 0; // float | The minimum amount of potassium in milligrams the recipe must have.
$max_potassium = 100; // float | The maximum amount of potassium in milligrams the recipe can have.
$min_selenium = 0; // float | The minimum amount of selenium in micrograms the recipe must have.
$max_selenium = 100; // float | The maximum amount of selenium in micrograms the recipe can have.
$min_sodium = 0; // float | The minimum amount of sodium in milligrams the recipe must have.
$max_sodium = 100; // float | The maximum amount of sodium in milligrams the recipe can have.
$min_sugar = 0; // float | The minimum amount of sugar in grams the recipe must have.
$max_sugar = 100; // float | The maximum amount of sugar in grams the recipe can have.
$min_zinc = 0; // float | The minimum amount of zinc in milligrams the recipe must have.
$max_zinc = 100; // float | The maximum amount of zinc in milligrams the recipe can have.
$offset = 56; // int | The number of results to skip (between 0 and 900).
$number = 10; // int | The maximum number of items to return (between 1 and 100). Defaults to 10.
$random = false; // bool | If true, every request will give you a random set of recipes within the requested limits.
$limit_license = true; // bool | Whether the recipes should have an open license that allows display with proper attribution.

try {
    $result = $apiInstance->searchRecipesByNutrients($min_carbs, $max_carbs, $min_protein, $max_protein, $min_calories, $max_calories, $min_fat, $max_fat, $min_alcohol, $max_alcohol, $min_caffeine, $max_caffeine, $min_copper, $max_copper, $min_calcium, $max_calcium, $min_choline, $max_choline, $min_cholesterol, $max_cholesterol, $min_fluoride, $max_fluoride, $min_saturated_fat, $max_saturated_fat, $min_vitamin_a, $max_vitamin_a, $min_vitamin_c, $max_vitamin_c, $min_vitamin_d, $max_vitamin_d, $min_vitamin_e, $max_vitamin_e, $min_vitamin_k, $max_vitamin_k, $min_vitamin_b1, $max_vitamin_b1, $min_vitamin_b2, $max_vitamin_b2, $min_vitamin_b5, $max_vitamin_b5, $min_vitamin_b3, $max_vitamin_b3, $min_vitamin_b6, $max_vitamin_b6, $min_vitamin_b12, $max_vitamin_b12, $min_fiber, $max_fiber, $min_folate, $max_folate, $min_folic_acid, $max_folic_acid, $min_iodine, $max_iodine, $min_iron, $max_iron, $min_magnesium, $max_magnesium, $min_manganese, $max_manganese, $min_phosphorus, $max_phosphorus, $min_potassium, $max_potassium, $min_selenium, $max_selenium, $min_sodium, $max_sodium, $min_sugar, $max_sugar, $min_zinc, $max_zinc, $offset, $number, $random, $limit_license);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RecipesApi->searchRecipesByNutrients: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **min_carbs** | **float**| The minimum amount of carbohydrates in grams the recipe must have. | [optional] |
| **max_carbs** | **float**| The maximum amount of carbohydrates in grams the recipe can have. | [optional] |
| **min_protein** | **float**| The minimum amount of protein in grams the recipe must have. | [optional] |
| **max_protein** | **float**| The maximum amount of protein in grams the recipe can have. | [optional] |
| **min_calories** | **float**| The minimum amount of calories the recipe must have. | [optional] |
| **max_calories** | **float**| The maximum amount of calories the recipe can have. | [optional] |
| **min_fat** | **float**| The minimum amount of fat in grams the recipe must have. | [optional] |
| **max_fat** | **float**| The maximum amount of fat in grams the recipe can have. | [optional] |
| **min_alcohol** | **float**| The minimum amount of alcohol in grams the recipe must have. | [optional] |
| **max_alcohol** | **float**| The maximum amount of alcohol in grams the recipe can have. | [optional] |
| **min_caffeine** | **float**| The minimum amount of caffeine in milligrams the recipe must have. | [optional] |
| **max_caffeine** | **float**| The maximum amount of caffeine in milligrams the recipe can have. | [optional] |
| **min_copper** | **float**| The minimum amount of copper in milligrams the recipe must have. | [optional] |
| **max_copper** | **float**| The maximum amount of copper in milligrams the recipe can have. | [optional] |
| **min_calcium** | **float**| The minimum amount of calcium in milligrams the recipe must have. | [optional] |
| **max_calcium** | **float**| The maximum amount of calcium in milligrams the recipe can have. | [optional] |
| **min_choline** | **float**| The minimum amount of choline in milligrams the recipe must have. | [optional] |
| **max_choline** | **float**| The maximum amount of choline in milligrams the recipe can have. | [optional] |
| **min_cholesterol** | **float**| The minimum amount of cholesterol in milligrams the recipe must have. | [optional] |
| **max_cholesterol** | **float**| The maximum amount of cholesterol in milligrams the recipe can have. | [optional] |
| **min_fluoride** | **float**| The minimum amount of fluoride in milligrams the recipe must have. | [optional] |
| **max_fluoride** | **float**| The maximum amount of fluoride in milligrams the recipe can have. | [optional] |
| **min_saturated_fat** | **float**| The minimum amount of saturated fat in grams the recipe must have. | [optional] |
| **max_saturated_fat** | **float**| The maximum amount of saturated fat in grams the recipe can have. | [optional] |
| **min_vitamin_a** | **float**| The minimum amount of Vitamin A in IU the recipe must have. | [optional] |
| **max_vitamin_a** | **float**| The maximum amount of Vitamin A in IU the recipe can have. | [optional] |
| **min_vitamin_c** | **float**| The minimum amount of Vitamin C in milligrams the recipe must have. | [optional] |
| **max_vitamin_c** | **float**| The maximum amount of Vitamin C in milligrams the recipe can have. | [optional] |
| **min_vitamin_d** | **float**| The minimum amount of Vitamin D in micrograms the recipe must have. | [optional] |
| **max_vitamin_d** | **float**| The maximum amount of Vitamin D in micrograms the recipe can have. | [optional] |
| **min_vitamin_e** | **float**| The minimum amount of Vitamin E in milligrams the recipe must have. | [optional] |
| **max_vitamin_e** | **float**| The maximum amount of Vitamin E in milligrams the recipe can have. | [optional] |
| **min_vitamin_k** | **float**| The minimum amount of Vitamin K in micrograms the recipe must have. | [optional] |
| **max_vitamin_k** | **float**| The maximum amount of Vitamin K in micrograms the recipe can have. | [optional] |
| **min_vitamin_b1** | **float**| The minimum amount of Vitamin B1 in milligrams the recipe must have. | [optional] |
| **max_vitamin_b1** | **float**| The maximum amount of Vitamin B1 in milligrams the recipe can have. | [optional] |
| **min_vitamin_b2** | **float**| The minimum amount of Vitamin B2 in milligrams the recipe must have. | [optional] |
| **max_vitamin_b2** | **float**| The maximum amount of Vitamin B2 in milligrams the recipe can have. | [optional] |
| **min_vitamin_b5** | **float**| The minimum amount of Vitamin B5 in milligrams the recipe must have. | [optional] |
| **max_vitamin_b5** | **float**| The maximum amount of Vitamin B5 in milligrams the recipe can have. | [optional] |
| **min_vitamin_b3** | **float**| The minimum amount of Vitamin B3 in milligrams the recipe must have. | [optional] |
| **max_vitamin_b3** | **float**| The maximum amount of Vitamin B3 in milligrams the recipe can have. | [optional] |
| **min_vitamin_b6** | **float**| The minimum amount of Vitamin B6 in milligrams the recipe must have. | [optional] |
| **max_vitamin_b6** | **float**| The maximum amount of Vitamin B6 in milligrams the recipe can have. | [optional] |
| **min_vitamin_b12** | **float**| The minimum amount of Vitamin B12 in micrograms the recipe must have. | [optional] |
| **max_vitamin_b12** | **float**| The maximum amount of Vitamin B12 in micrograms the recipe can have. | [optional] |
| **min_fiber** | **float**| The minimum amount of fiber in grams the recipe must have. | [optional] |
| **max_fiber** | **float**| The maximum amount of fiber in grams the recipe can have. | [optional] |
| **min_folate** | **float**| The minimum amount of folate in micrograms the recipe must have. | [optional] |
| **max_folate** | **float**| The maximum amount of folate in micrograms the recipe can have. | [optional] |
| **min_folic_acid** | **float**| The minimum amount of folic acid in micrograms the recipe must have. | [optional] |
| **max_folic_acid** | **float**| The maximum amount of folic acid in micrograms the recipe can have. | [optional] |
| **min_iodine** | **float**| The minimum amount of iodine in micrograms the recipe must have. | [optional] |
| **max_iodine** | **float**| The maximum amount of iodine in micrograms the recipe can have. | [optional] |
| **min_iron** | **float**| The minimum amount of iron in milligrams the recipe must have. | [optional] |
| **max_iron** | **float**| The maximum amount of iron in milligrams the recipe can have. | [optional] |
| **min_magnesium** | **float**| The minimum amount of magnesium in milligrams the recipe must have. | [optional] |
| **max_magnesium** | **float**| The maximum amount of magnesium in milligrams the recipe can have. | [optional] |
| **min_manganese** | **float**| The minimum amount of manganese in milligrams the recipe must have. | [optional] |
| **max_manganese** | **float**| The maximum amount of manganese in milligrams the recipe can have. | [optional] |
| **min_phosphorus** | **float**| The minimum amount of phosphorus in milligrams the recipe must have. | [optional] |
| **max_phosphorus** | **float**| The maximum amount of phosphorus in milligrams the recipe can have. | [optional] |
| **min_potassium** | **float**| The minimum amount of potassium in milligrams the recipe must have. | [optional] |
| **max_potassium** | **float**| The maximum amount of potassium in milligrams the recipe can have. | [optional] |
| **min_selenium** | **float**| The minimum amount of selenium in micrograms the recipe must have. | [optional] |
| **max_selenium** | **float**| The maximum amount of selenium in micrograms the recipe can have. | [optional] |
| **min_sodium** | **float**| The minimum amount of sodium in milligrams the recipe must have. | [optional] |
| **max_sodium** | **float**| The maximum amount of sodium in milligrams the recipe can have. | [optional] |
| **min_sugar** | **float**| The minimum amount of sugar in grams the recipe must have. | [optional] |
| **max_sugar** | **float**| The maximum amount of sugar in grams the recipe can have. | [optional] |
| **min_zinc** | **float**| The minimum amount of zinc in milligrams the recipe must have. | [optional] |
| **max_zinc** | **float**| The maximum amount of zinc in milligrams the recipe can have. | [optional] |
| **offset** | **int**| The number of results to skip (between 0 and 900). | [optional] |
| **number** | **int**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10] |
| **random** | **bool**| If true, every request will give you a random set of recipes within the requested limits. | [optional] |
| **limit_license** | **bool**| Whether the recipes should have an open license that allows display with proper attribution. | [optional] [default to true] |

### Return type

[**\OpenAPI\Client\Model\SearchRecipesByNutrients200ResponseInner[]**](../Model/SearchRecipesByNutrients200ResponseInner.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `summarizeRecipe()`

```php
summarizeRecipe($id): \OpenAPI\Client\Model\SummarizeRecipe200Response
```

Summarize Recipe

Automatically generate a short description that summarizes key information about the recipe.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\RecipesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 1; // int | The item's id.

try {
    $result = $apiInstance->summarizeRecipe($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RecipesApi->summarizeRecipe: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**| The item&#39;s id. | |

### Return type

[**\OpenAPI\Client\Model\SummarizeRecipe200Response**](../Model/SummarizeRecipe200Response.md)

### Authorization

[apiKeyScheme](../../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `visualizeEquipment()`

```php
visualizeEquipment($content_type, $accept): string
```

Equipment Widget

Visualize the equipment used to make a recipe.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\RecipesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$content_type = application/json; // string | The content type.
$accept = application/json; // string | Accept header.

try {
    $result = $apiInstance->visualizeEquipment($content_type, $accept);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RecipesApi->visualizeEquipment: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **content_type** | **string**| The content type. | [optional] |
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

## `visualizePriceBreakdown()`

```php
visualizePriceBreakdown($content_type, $accept, $language): string
```

Price Breakdown Widget

Visualize the price breakdown of a recipe.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\RecipesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$content_type = application/json; // string | The content type.
$accept = application/json; // string | Accept header.
$language = en; // string | The language of the input. Either 'en' or 'de'.

try {
    $result = $apiInstance->visualizePriceBreakdown($content_type, $accept, $language);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RecipesApi->visualizePriceBreakdown: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **content_type** | **string**| The content type. | [optional] |
| **accept** | **string**| Accept header. | [optional] |
| **language** | **string**| The language of the input. Either &#39;en&#39; or &#39;de&#39;. | [optional] |

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

## `visualizeRecipeEquipmentByID()`

```php
visualizeRecipeEquipmentByID($id, $default_css): string
```

Equipment by ID Widget

Visualize a recipe's equipment list.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\RecipesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 1; // int | The item's id.
$default_css = false; // bool | Whether the default CSS should be added to the response.

try {
    $result = $apiInstance->visualizeRecipeEquipmentByID($id, $default_css);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RecipesApi->visualizeRecipeEquipmentByID: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**| The item&#39;s id. | |
| **default_css** | **bool**| Whether the default CSS should be added to the response. | [optional] [default to true] |

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

## `visualizeRecipeIngredientsByID()`

```php
visualizeRecipeIngredientsByID($id, $default_css, $measure): string
```

Ingredients by ID Widget

Visualize a recipe's ingredient list.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\RecipesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 1; // int | The item's id.
$default_css = false; // bool | Whether the default CSS should be added to the response.
$measure = metric; // string | Whether the the measures should be 'us' or 'metric'.

try {
    $result = $apiInstance->visualizeRecipeIngredientsByID($id, $default_css, $measure);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RecipesApi->visualizeRecipeIngredientsByID: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**| The item&#39;s id. | |
| **default_css** | **bool**| Whether the default CSS should be added to the response. | [optional] [default to true] |
| **measure** | **string**| Whether the the measures should be &#39;us&#39; or &#39;metric&#39;. | [optional] |

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

## `visualizeRecipeNutrition()`

```php
visualizeRecipeNutrition($content_type, $accept, $language): string
```

Recipe Nutrition Widget

Visualize a recipe's nutritional information as HTML including CSS.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\RecipesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$content_type = application/json; // string | The content type.
$accept = application/json; // string | Accept header.
$language = en; // string | The language of the input. Either 'en' or 'de'.

try {
    $result = $apiInstance->visualizeRecipeNutrition($content_type, $accept, $language);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RecipesApi->visualizeRecipeNutrition: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **content_type** | **string**| The content type. | [optional] |
| **accept** | **string**| Accept header. | [optional] |
| **language** | **string**| The language of the input. Either &#39;en&#39; or &#39;de&#39;. | [optional] |

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

## `visualizeRecipeNutritionByID()`

```php
visualizeRecipeNutritionByID($id, $default_css, $accept): string
```

Recipe Nutrition by ID Widget

Visualize a recipe's nutritional information as HTML including CSS.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\RecipesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 1; // int | The item's id.
$default_css = false; // bool | Whether the default CSS should be added to the response.
$accept = application/json; // string | Accept header.

try {
    $result = $apiInstance->visualizeRecipeNutritionByID($id, $default_css, $accept);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RecipesApi->visualizeRecipeNutritionByID: ', $e->getMessage(), PHP_EOL;
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

## `visualizeRecipePriceBreakdownByID()`

```php
visualizeRecipePriceBreakdownByID($id, $default_css): string
```

Price Breakdown by ID Widget

Visualize a recipe's price breakdown.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\RecipesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 1; // int | The item's id.
$default_css = false; // bool | Whether the default CSS should be added to the response.

try {
    $result = $apiInstance->visualizeRecipePriceBreakdownByID($id, $default_css);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RecipesApi->visualizeRecipePriceBreakdownByID: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**| The item&#39;s id. | |
| **default_css** | **bool**| Whether the default CSS should be added to the response. | [optional] [default to true] |

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

## `visualizeRecipeTaste()`

```php
visualizeRecipeTaste($language, $content_type, $accept, $normalize, $rgb): string
```

Recipe Taste Widget

Visualize a recipe's taste information as HTML including CSS. You can play around with that endpoint!

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\RecipesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$language = en; // string | The language of the input. Either 'en' or 'de'.
$content_type = application/json; // string | The content type.
$accept = application/json; // string | Accept header.
$normalize = True; // bool | Whether to normalize to the strongest taste.
$rgb = 75,192,192; // string | Red, green, blue values for the chart color.

try {
    $result = $apiInstance->visualizeRecipeTaste($language, $content_type, $accept, $normalize, $rgb);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RecipesApi->visualizeRecipeTaste: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **language** | **string**| The language of the input. Either &#39;en&#39; or &#39;de&#39;. | [optional] |
| **content_type** | **string**| The content type. | [optional] |
| **accept** | **string**| Accept header. | [optional] |
| **normalize** | **bool**| Whether to normalize to the strongest taste. | [optional] |
| **rgb** | **string**| Red, green, blue values for the chart color. | [optional] |

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

## `visualizeRecipeTasteByID()`

```php
visualizeRecipeTasteByID($id, $normalize, $rgb): string
```

Recipe Taste by ID Widget

Get a recipe's taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\RecipesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 1; // int | The item's id.
$normalize = true; // bool | Whether to normalize to the strongest taste.
$rgb = 75,192,192; // string | Red, green, blue values for the chart color.

try {
    $result = $apiInstance->visualizeRecipeTasteByID($id, $normalize, $rgb);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RecipesApi->visualizeRecipeTasteByID: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**| The item&#39;s id. | |
| **normalize** | **bool**| Whether to normalize to the strongest taste. | [optional] [default to true] |
| **rgb** | **string**| Red, green, blue values for the chart color. | [optional] |

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
