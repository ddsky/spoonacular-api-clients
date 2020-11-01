# com.spoonacular.client\DefaultApi

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addToMealPlan**](DefaultApi.md#addToMealPlan) | **POST** /mealplanner/{username}/items | Add to Meal Plan
[**addToShoppingList**](DefaultApi.md#addToShoppingList) | **POST** /mealplanner/{username}/shopping-list/items | Add to Shopping List
[**analyzeARecipeSearchQuery**](DefaultApi.md#analyzeARecipeSearchQuery) | **GET** /recipes/queries/analyze | Analyze a Recipe Search Query
[**analyzeRecipeInstructions**](DefaultApi.md#analyzeRecipeInstructions) | **POST** /recipes/analyzeInstructions | Analyze Recipe Instructions
[**autocompleteIngredientSearch**](DefaultApi.md#autocompleteIngredientSearch) | **GET** /food/ingredients/autocomplete | Autocomplete Ingredient Search
[**autocompleteMenuItemSearch**](DefaultApi.md#autocompleteMenuItemSearch) | **GET** /food/menuItems/suggest | Autocomplete Menu Item Search
[**autocompleteProductSearch**](DefaultApi.md#autocompleteProductSearch) | **GET** /food/products/suggest | Autocomplete Product Search
[**autocompleteRecipeSearch**](DefaultApi.md#autocompleteRecipeSearch) | **GET** /recipes/autocomplete | Autocomplete Recipe Search
[**classifyCuisine**](DefaultApi.md#classifyCuisine) | **POST** /recipes/cuisine | Classify Cuisine
[**classifyGroceryProduct**](DefaultApi.md#classifyGroceryProduct) | **POST** /food/products/classify | Classify Grocery Product
[**classifyGroceryProductBulk**](DefaultApi.md#classifyGroceryProductBulk) | **POST** /food/products/classifyBatch | Classify Grocery Product Bulk
[**clearMealPlanDay**](DefaultApi.md#clearMealPlanDay) | **DELETE** /mealplanner/{username}/day/{date} | Clear Meal Plan Day
[**computeGlycemicLoad**](DefaultApi.md#computeGlycemicLoad) | **POST** /food/ingredients/glycemicLoad | Compute Glycemic Load
[**connectUser**](DefaultApi.md#connectUser) | **POST** /users/connect | Connect User
[**convertAmounts**](DefaultApi.md#convertAmounts) | **GET** /recipes/convert | Convert Amounts
[**createRecipeCard**](DefaultApi.md#createRecipeCard) | **POST** /recipes/visualizeRecipe | Create Recipe Card
[**deleteFromMealPlan**](DefaultApi.md#deleteFromMealPlan) | **DELETE** /mealplanner/{username}/items/{id} | Delete from Meal Plan
[**deleteFromShoppingList**](DefaultApi.md#deleteFromShoppingList) | **DELETE** /mealplanner/{username}/shopping-list/items/{id} | Delete from Shopping List
[**detectFoodInText**](DefaultApi.md#detectFoodInText) | **POST** /food/detect | Detect Food in Text
[**extractRecipeFromWebsite**](DefaultApi.md#extractRecipeFromWebsite) | **GET** /recipes/extract | Extract Recipe from Website
[**generateMealPlan**](DefaultApi.md#generateMealPlan) | **GET** /mealplanner/generate | Generate Meal Plan
[**generateShoppingList**](DefaultApi.md#generateShoppingList) | **POST** /mealplanner/{username}/shopping-list/{start-date}/{end-date} | Generate Shopping List
[**getARandomFoodJoke**](DefaultApi.md#getARandomFoodJoke) | **GET** /food/jokes/random | Get a Random Food Joke
[**getAnalyzedRecipeInstructions**](DefaultApi.md#getAnalyzedRecipeInstructions) | **GET** /recipes/{id}/analyzedInstructions | Get Analyzed Recipe Instructions
[**getComparableProducts**](DefaultApi.md#getComparableProducts) | **GET** /food/products/upc/{upc}/comparable | Get Comparable Products
[**getConversationSuggests**](DefaultApi.md#getConversationSuggests) | **GET** /food/converse/suggest | Get Conversation Suggests
[**getDishPairingForWine**](DefaultApi.md#getDishPairingForWine) | **GET** /food/wine/dishes | Get Dish Pairing for Wine
[**getIngredientInformation**](DefaultApi.md#getIngredientInformation) | **GET** /food/ingredients/{id}/information | Get Ingredient Information
[**getIngredientSubstitutes**](DefaultApi.md#getIngredientSubstitutes) | **GET** /food/ingredients/substitutes | Get Ingredient Substitutes
[**getIngredientSubstitutesByID**](DefaultApi.md#getIngredientSubstitutesByID) | **GET** /food/ingredients/{id}/substitutes | Get Ingredient Substitutes by ID
[**getMealPlanTemplate**](DefaultApi.md#getMealPlanTemplate) | **GET** /mealplanner/{username}/templates/{id} | Get Meal Plan Template
[**getMealPlanTemplates**](DefaultApi.md#getMealPlanTemplates) | **GET** /mealplanner/{username}/templates | Get Meal Plan Templates
[**getMealPlanWeek**](DefaultApi.md#getMealPlanWeek) | **GET** /mealplanner/{username}/week/{start-date} | Get Meal Plan Week
[**getMenuItemInformation**](DefaultApi.md#getMenuItemInformation) | **GET** /food/menuItems/{id} | Get Menu Item Information
[**getProductInformation**](DefaultApi.md#getProductInformation) | **GET** /food/products/{id} | Get Product Information
[**getRandomFoodTrivia**](DefaultApi.md#getRandomFoodTrivia) | **GET** /food/trivia/random | Get Random Food Trivia
[**getRandomRecipes**](DefaultApi.md#getRandomRecipes) | **GET** /recipes/random | Get Random Recipes
[**getRecipeEquipmentByID**](DefaultApi.md#getRecipeEquipmentByID) | **GET** /recipes/{id}/equipmentWidget.json | Get Recipe Equipment by ID
[**getRecipeInformation**](DefaultApi.md#getRecipeInformation) | **GET** /recipes/{id}/information | Get Recipe Information
[**getRecipeInformationBulk**](DefaultApi.md#getRecipeInformationBulk) | **GET** /recipes/informationBulk | Get Recipe Information Bulk
[**getRecipeIngredientsByID**](DefaultApi.md#getRecipeIngredientsByID) | **GET** /recipes/{id}/ingredientWidget.json | Get Recipe Ingredients by ID
[**getRecipeNutritionWidgetByID**](DefaultApi.md#getRecipeNutritionWidgetByID) | **GET** /recipes/{id}/nutritionWidget.json | Get Recipe Nutrition Widget by ID
[**getRecipePriceBreakdownByID**](DefaultApi.md#getRecipePriceBreakdownByID) | **GET** /recipes/{id}/priceBreakdownWidget.json | Get Recipe Price Breakdown by ID
[**getRecipeTasteByID**](DefaultApi.md#getRecipeTasteByID) | **GET** /recipes/{id}/tasteWidget.json | Get Recipe Taste by ID
[**getShoppingList**](DefaultApi.md#getShoppingList) | **GET** /mealplanner/{username}/shopping-list | Get Shopping List
[**getSimilarRecipes**](DefaultApi.md#getSimilarRecipes) | **GET** /recipes/{id}/similar | Get Similar Recipes
[**getWineDescription**](DefaultApi.md#getWineDescription) | **GET** /food/wine/description | Get Wine Description
[**getWinePairing**](DefaultApi.md#getWinePairing) | **GET** /food/wine/pairing | Get Wine Pairing
[**getWineRecommendation**](DefaultApi.md#getWineRecommendation) | **GET** /food/wine/recommendation | Get Wine Recommendation
[**guessNutritionByDishName**](DefaultApi.md#guessNutritionByDishName) | **GET** /recipes/guessNutrition | Guess Nutrition by Dish Name
[**imageAnalysisByURL**](DefaultApi.md#imageAnalysisByURL) | **GET** /food/images/analyze | Image Analysis by URL
[**imageClassificationByURL**](DefaultApi.md#imageClassificationByURL) | **GET** /food/images/classify | Image Classification by URL
[**ingredientSearch**](DefaultApi.md#ingredientSearch) | **GET** /food/ingredients/search | Ingredient Search
[**mapIngredientsToGroceryProducts**](DefaultApi.md#mapIngredientsToGroceryProducts) | **POST** /food/ingredients/map | Map Ingredients to Grocery Products
[**parseIngredients**](DefaultApi.md#parseIngredients) | **POST** /recipes/parseIngredients | Parse Ingredients
[**quickAnswer**](DefaultApi.md#quickAnswer) | **GET** /recipes/quickAnswer | Quick Answer
[**searchAllFood**](DefaultApi.md#searchAllFood) | **GET** /food/search | Search All Food
[**searchCustomFoods**](DefaultApi.md#searchCustomFoods) | **GET** /food/customFoods/search | Search Custom Foods
[**searchFoodVideos**](DefaultApi.md#searchFoodVideos) | **GET** /food/videos/search | Search Food Videos
[**searchGroceryProducts**](DefaultApi.md#searchGroceryProducts) | **GET** /food/products/search | Search Grocery Products
[**searchGroceryProductsByUPC**](DefaultApi.md#searchGroceryProductsByUPC) | **GET** /food/products/upc/{upc} | Search Grocery Products by UPC
[**searchMenuItems**](DefaultApi.md#searchMenuItems) | **GET** /food/menuItems/search | Search Menu Items
[**searchRecipes**](DefaultApi.md#searchRecipes) | **GET** /recipes/complexSearch | Search Recipes
[**searchRecipesByIngredients**](DefaultApi.md#searchRecipesByIngredients) | **GET** /recipes/findByIngredients | Search Recipes by Ingredients
[**searchRecipesByNutrients**](DefaultApi.md#searchRecipesByNutrients) | **GET** /recipes/findByNutrients | Search Recipes by Nutrients
[**searchSiteContent**](DefaultApi.md#searchSiteContent) | **GET** /food/site/search | Search Site Content
[**summarizeRecipe**](DefaultApi.md#summarizeRecipe) | **GET** /recipes/{id}/summary | Summarize Recipe
[**talkToChatbot**](DefaultApi.md#talkToChatbot) | **GET** /food/converse | Talk to Chatbot
[**visualizeEquipment**](DefaultApi.md#visualizeEquipment) | **POST** /recipes/visualizeEquipment | Visualize Equipment
[**visualizeIngredients**](DefaultApi.md#visualizeIngredients) | **POST** /recipes/visualizeIngredients | Visualize Ingredients
[**visualizeMenuItemNutritionByID**](DefaultApi.md#visualizeMenuItemNutritionByID) | **GET** /food/menuItems/{id}/nutritionWidget | Visualize Menu Item Nutrition by ID
[**visualizePriceBreakdown**](DefaultApi.md#visualizePriceBreakdown) | **POST** /recipes/visualizePriceEstimator | Visualize Price Breakdown
[**visualizeProductNutritionByID**](DefaultApi.md#visualizeProductNutritionByID) | **GET** /food/products/{id}/nutritionWidget | Visualize Product Nutrition by ID
[**visualizeRecipeEquipmentByID**](DefaultApi.md#visualizeRecipeEquipmentByID) | **GET** /recipes/{id}/equipmentWidget | Visualize Recipe Equipment by ID
[**visualizeRecipeIngredientsByID**](DefaultApi.md#visualizeRecipeIngredientsByID) | **GET** /recipes/{id}/ingredientWidget | Visualize Recipe Ingredients by ID
[**visualizeRecipeNutrition**](DefaultApi.md#visualizeRecipeNutrition) | **POST** /recipes/visualizeNutrition | Visualize Recipe Nutrition
[**visualizeRecipeNutritionByID**](DefaultApi.md#visualizeRecipeNutritionByID) | **GET** /recipes/{id}/nutritionWidget | Visualize Recipe Nutrition by ID
[**visualizeRecipePriceBreakdownByID**](DefaultApi.md#visualizeRecipePriceBreakdownByID) | **GET** /recipes/{id}/priceBreakdownWidget | Visualize Recipe Price Breakdown by ID
[**visualizeRecipeTaste**](DefaultApi.md#visualizeRecipeTaste) | **POST** /recipes/visualizeTaste | Visualize Recipe Taste
[**visualizeRecipeTasteByID**](DefaultApi.md#visualizeRecipeTasteByID) | **GET** /recipes/{id}/tasteWidget | Visualize Recipe Taste by ID



## addToMealPlan

> object addToMealPlan($username, $hash, $inline_object11)

Add to Meal Plan

Add an item to the user's meal plan.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$username = dsky; // string | The username.
$hash = 4b5v4398573406; // string | The private hash for the username.
$inline_object11 = new \com.spoonacular.client\com.spoonacular.client.model\InlineObject11(); // \com.spoonacular.client\com.spoonacular.client.model\InlineObject11 | 

try {
    $result = $apiInstance->addToMealPlan($username, $hash, $inline_object11);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->addToMealPlan: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username. |
 **hash** | **string**| The private hash for the username. |
 **inline_object11** | [**\com.spoonacular.client\com.spoonacular.client.model\InlineObject11**](../Model/InlineObject11.md)|  |

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: 
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## addToShoppingList

> object addToShoppingList($username, $hash, $inline_object14)

Add to Shopping List

Add an item to the current shopping list of a user.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$username = dsky; // string | The username.
$hash = 4b5v4398573406; // string | The private hash for the username.
$inline_object14 = new \com.spoonacular.client\com.spoonacular.client.model\InlineObject14(); // \com.spoonacular.client\com.spoonacular.client.model\InlineObject14 | 

try {
    $result = $apiInstance->addToShoppingList($username, $hash, $inline_object14);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->addToShoppingList: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username. |
 **hash** | **string**| The private hash for the username. |
 **inline_object14** | [**\com.spoonacular.client\com.spoonacular.client.model\InlineObject14**](../Model/InlineObject14.md)|  |

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: 
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## analyzeARecipeSearchQuery

> object analyzeARecipeSearchQuery($q)

Analyze a Recipe Search Query

Parse a recipe search query to find out its intention.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$q = salmon with fusilli and no nuts; // string | The recipe search query.

try {
    $result = $apiInstance->analyzeARecipeSearchQuery($q);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->analyzeARecipeSearchQuery: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **string**| The recipe search query. |

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## analyzeRecipeInstructions

> object analyzeRecipeInstructions($instructions)

Analyze Recipe Instructions

This endpoint allows you to break down instructions into atomic steps. Furthermore, each step will contain the ingredients and equipment required. Additionally, all ingredients and equipment from the recipe's instructions will be extracted independently of the step they're used in.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$instructions = 'instructions_example'; // string | The instructions to be analyzed.

try {
    $result = $apiInstance->analyzeRecipeInstructions($instructions);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->analyzeRecipeInstructions: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instructions** | **string**| The instructions to be analyzed. |

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## autocompleteIngredientSearch

> object autocompleteIngredientSearch($query, $number, $meta_information, $intolerances)

Autocomplete Ingredient Search

Autocomplete the entry of an ingredient.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$query = appl; // string | The partial or full ingredient name.
$number = 10; // float | The number of results to return (between 1 and 100).
$meta_information = false; // bool | Whether to return more meta information about the ingredients.
$intolerances = egg; // string | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.

try {
    $result = $apiInstance->autocompleteIngredientSearch($query, $number, $meta_information, $intolerances);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->autocompleteIngredientSearch: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The partial or full ingredient name. |
 **number** | **float**| The number of results to return (between 1 and 100). | [optional]
 **meta_information** | **bool**| Whether to return more meta information about the ingredients. | [optional]
 **intolerances** | **string**| A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. | [optional]

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## autocompleteMenuItemSearch

> object autocompleteMenuItemSearch($query, $number)

Autocomplete Menu Item Search

Generate suggestions for menu items based on a (partial) query. The matches will be found by looking in the title only.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$query = chicke; // string | The (partial) search query.
$number = 10; // float | The number of results to return (between 1 and 25).

try {
    $result = $apiInstance->autocompleteMenuItemSearch($query, $number);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->autocompleteMenuItemSearch: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The (partial) search query. |
 **number** | **float**| The number of results to return (between 1 and 25). | [optional]

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## autocompleteProductSearch

> object autocompleteProductSearch($query, $number)

Autocomplete Product Search

Generate suggestions for grocery products based on a (partial) query. The matches will be found by looking in the title only.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$query = chicke; // string | The (partial) search query.
$number = 10; // float | The number of results to return (between 1 and 25).

try {
    $result = $apiInstance->autocompleteProductSearch($query, $number);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->autocompleteProductSearch: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The (partial) search query. |
 **number** | **float**| The number of results to return (between 1 and 25). | [optional]

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## autocompleteRecipeSearch

> object autocompleteRecipeSearch($query, $number)

Autocomplete Recipe Search

Autocomplete a partial input to suggest possible recipe names.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$query = burger; // string | The query to be autocompleted.
$number = 10; // float | The number of results to return (between 1 and 25).

try {
    $result = $apiInstance->autocompleteRecipeSearch($query, $number);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->autocompleteRecipeSearch: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The query to be autocompleted. |
 **number** | **float**| The number of results to return (between 1 and 25). | [optional]

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## classifyCuisine

> object classifyCuisine($title, $ingredient_list)

Classify Cuisine

Classify the recipe's cuisine.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$title = 'title_example'; // string | The title of the recipe.
$ingredient_list = 'ingredient_list_example'; // string | The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n).

try {
    $result = $apiInstance->classifyCuisine($title, $ingredient_list);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->classifyCuisine: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **string**| The title of the recipe. |
 **ingredient_list** | **string**| The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n). |

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## classifyGroceryProduct

> object classifyGroceryProduct($inline_object9, $locale)

Classify Grocery Product

This endpoint allows you to match a packaged food to a basic category, e.g. a specific brand of milk to the category milk.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$inline_object9 = new \com.spoonacular.client\com.spoonacular.client.model\InlineObject9(); // \com.spoonacular.client\com.spoonacular.client.model\InlineObject9 | 
$locale = en_US; // string | The display name of the returned category, supported is en_US (for American English) and en_GB (for British English).

try {
    $result = $apiInstance->classifyGroceryProduct($inline_object9, $locale);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->classifyGroceryProduct: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inline_object9** | [**\com.spoonacular.client\com.spoonacular.client.model\InlineObject9**](../Model/InlineObject9.md)|  |
 **locale** | **string**| The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). | [optional]

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## classifyGroceryProductBulk

> object classifyGroceryProductBulk($body, $locale)

Classify Grocery Product Bulk

Provide a set of product jsons, get back classified products.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$body = new \stdClass; // object | 
$locale = en_US; // string | The display name of the returned category, supported is en_US (for American English) and en_GB (for British English).

try {
    $result = $apiInstance->classifyGroceryProductBulk($body, $locale);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->classifyGroceryProductBulk: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **object**|  |
 **locale** | **string**| The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). | [optional]

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## clearMealPlanDay

> object clearMealPlanDay($username, $date, $hash, $inline_object10)

Clear Meal Plan Day

Delete all planned items from the user's meal plan for a specific day.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$username = dsky; // string | The username.
$date = 2020-06-01; // string | The date in the format yyyy-mm-dd.
$hash = 4b5v4398573406; // string | The private hash for the username.
$inline_object10 = new \com.spoonacular.client\com.spoonacular.client.model\InlineObject10(); // \com.spoonacular.client\com.spoonacular.client.model\InlineObject10 | 

try {
    $result = $apiInstance->clearMealPlanDay($username, $date, $hash, $inline_object10);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->clearMealPlanDay: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username. |
 **date** | **string**| The date in the format yyyy-mm-dd. |
 **hash** | **string**| The private hash for the username. |
 **inline_object10** | [**\com.spoonacular.client\com.spoonacular.client.model\InlineObject10**](../Model/InlineObject10.md)|  |

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: 
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## computeGlycemicLoad

> object computeGlycemicLoad($body)

Compute Glycemic Load

Retrieve the glycemic index for a list of ingredients and compute the individual and total glycemic load.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$body = new \stdClass; // object | 

try {
    $result = $apiInstance->computeGlycemicLoad($body);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->computeGlycemicLoad: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **object**|  |

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## connectUser

> object connectUser($body)

Connect User

In order to call user-specific endpoints, you need to connect your app's users to spoonacular users.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$body = new \stdClass; // object | 

try {
    $result = $apiInstance->connectUser($body);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->connectUser: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **object**|  |

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: 
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## convertAmounts

> object convertAmounts($ingredient_name, $source_amount, $source_unit, $target_unit)

Convert Amounts

Convert amounts like \"2 cups of flour to grams\".

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$ingredient_name = flour; // string | The ingredient which you want to convert.
$source_amount = 2.5; // float | The amount from which you want to convert, e.g. the 2.5 in \"2.5 cups of flour to grams\".
$source_unit = cups; // string | The unit from which you want to convert, e.g. the grams in \"2.5 cups of flour to grams\". You can also use \"piece\", e.g. \"3.4 oz tomatoes to piece\"
$target_unit = grams; // string | The unit to which you want to convert, e.g. the grams in \"2.5 cups of flour to grams\". You can also use \"piece\", e.g. \"3.4 oz tomatoes to piece\"

try {
    $result = $apiInstance->convertAmounts($ingredient_name, $source_amount, $source_unit, $target_unit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->convertAmounts: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredient_name** | **string**| The ingredient which you want to convert. |
 **source_amount** | **float**| The amount from which you want to convert, e.g. the 2.5 in \&quot;2.5 cups of flour to grams\&quot;. |
 **source_unit** | **string**| The unit from which you want to convert, e.g. the grams in \&quot;2.5 cups of flour to grams\&quot;. You can also use \&quot;piece\&quot;, e.g. \&quot;3.4 oz tomatoes to piece\&quot; |
 **target_unit** | **string**| The unit to which you want to convert, e.g. the grams in \&quot;2.5 cups of flour to grams\&quot;. You can also use \&quot;piece\&quot;, e.g. \&quot;3.4 oz tomatoes to piece\&quot; |

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## createRecipeCard

> object createRecipeCard($title, $image, $ingredients, $instructions, $ready_in_minutes, $servings, $mask, $background_image, $author, $background_color, $font_color, $source)

Create Recipe Card

Generate a recipe card for a recipe.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$title = 'title_example'; // string | The title of the recipe.
$image = "/path/to/file.txt"; // \SplFileObject | The binary image of the recipe as jpg.
$ingredients = 'ingredients_example'; // string | The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n).
$instructions = 'instructions_example'; // string | The instructions to make the recipe. One step per line (separate lines with \\\\n).
$ready_in_minutes = 3.4; // float | The number of minutes it takes to get the recipe on the table.
$servings = 3.4; // float | The number of servings the recipe makes.
$mask = 'mask_example'; // string | The mask to put over the recipe image (\\\"ellipseMask\\\", \\\"diamondMask\\\", \\\"starMask\\\", \\\"heartMask\\\", \\\"potMask\\\", \\\"fishMask\\\").
$background_image = 'background_image_example'; // string | The background image (\\\"none\\\",\\\"background1\\\", or \\\"background2\\\").
$author = 'author_example'; // string | The author of the recipe.
$background_color = 'background_color_example'; // string | The background color for the recipe card as a hex-string.
$font_color = 'font_color_example'; // string | The font color for the recipe card as a hex-string.
$source = 'source_example'; // string | The source of the recipe.

try {
    $result = $apiInstance->createRecipeCard($title, $image, $ingredients, $instructions, $ready_in_minutes, $servings, $mask, $background_image, $author, $background_color, $font_color, $source);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->createRecipeCard: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **string**| The title of the recipe. |
 **image** | **\SplFileObject****\SplFileObject**| The binary image of the recipe as jpg. |
 **ingredients** | **string**| The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n). |
 **instructions** | **string**| The instructions to make the recipe. One step per line (separate lines with \\\\n). |
 **ready_in_minutes** | **float**| The number of minutes it takes to get the recipe on the table. |
 **servings** | **float**| The number of servings the recipe makes. |
 **mask** | **string**| The mask to put over the recipe image (\\\&quot;ellipseMask\\\&quot;, \\\&quot;diamondMask\\\&quot;, \\\&quot;starMask\\\&quot;, \\\&quot;heartMask\\\&quot;, \\\&quot;potMask\\\&quot;, \\\&quot;fishMask\\\&quot;). |
 **background_image** | **string**| The background image (\\\&quot;none\\\&quot;,\\\&quot;background1\\\&quot;, or \\\&quot;background2\\\&quot;). |
 **author** | **string**| The author of the recipe. | [optional]
 **background_color** | **string**| The background color for the recipe card as a hex-string. | [optional]
 **font_color** | **string**| The font color for the recipe card as a hex-string. | [optional]
 **source** | **string**| The source of the recipe. | [optional]

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## deleteFromMealPlan

> object deleteFromMealPlan($username, $id, $hash, $inline_object12)

Delete from Meal Plan

Delete an item from the user's meal plan.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$username = dsky; // string | The username.
$id = 15678; // float | The shopping list item id.
$hash = 4b5v4398573406; // string | The private hash for the username.
$inline_object12 = new \com.spoonacular.client\com.spoonacular.client.model\InlineObject12(); // \com.spoonacular.client\com.spoonacular.client.model\InlineObject12 | 

try {
    $result = $apiInstance->deleteFromMealPlan($username, $id, $hash, $inline_object12);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->deleteFromMealPlan: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username. |
 **id** | **float**| The shopping list item id. |
 **hash** | **string**| The private hash for the username. |
 **inline_object12** | [**\com.spoonacular.client\com.spoonacular.client.model\InlineObject12**](../Model/InlineObject12.md)|  |

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: 
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## deleteFromShoppingList

> object deleteFromShoppingList($username, $id, $hash, $inline_object15)

Delete from Shopping List

Delete an item from the current shopping list of the user.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$username = dsky; // string | The username.
$id = 15678; // float | The shopping list item id.
$hash = 4b5v4398573406; // string | The private hash for the username.
$inline_object15 = new \com.spoonacular.client\com.spoonacular.client.model\InlineObject15(); // \com.spoonacular.client\com.spoonacular.client.model\InlineObject15 | 

try {
    $result = $apiInstance->deleteFromShoppingList($username, $id, $hash, $inline_object15);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->deleteFromShoppingList: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username. |
 **id** | **float**| The shopping list item id. |
 **hash** | **string**| The private hash for the username. |
 **inline_object15** | [**\com.spoonacular.client\com.spoonacular.client.model\InlineObject15**](../Model/InlineObject15.md)|  |

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: 
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## detectFoodInText

> object detectFoodInText($text)

Detect Food in Text

Take any text and find all mentions of food contained within it. This task is also called Named Entity Recognition (NER). In this case, the entities are foods. Either dishes, such as pizza or cheeseburger, or ingredients, such as cucumber or almonds.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$text = 'text_example'; // string | The text in which food items, such as dish names and ingredients, should be detected in.

try {
    $result = $apiInstance->detectFoodInText($text);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->detectFoodInText: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **string**| The text in which food items, such as dish names and ingredients, should be detected in. |

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## extractRecipeFromWebsite

> object extractRecipeFromWebsite($url, $force_extraction, $analyze)

Extract Recipe from Website

This endpoint lets you extract recipe data such as title, ingredients, and instructions from any properly formatted Website.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$url = https://foodista.com/recipe/ZHK4KPB6/chocolate-crinkle-cookies; // string | The URL of the recipe page.
$force_extraction = true; // bool | If true, the extraction will be triggered whether we already know the recipe or not. Use this only if information is missing as this operation is slower.
$analyze = false; // bool | If true, the recipe will be analyzed and classified resolving in more data such as cuisines, dish types, and more.

try {
    $result = $apiInstance->extractRecipeFromWebsite($url, $force_extraction, $analyze);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->extractRecipeFromWebsite: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **string**| The URL of the recipe page. |
 **force_extraction** | **bool**| If true, the extraction will be triggered whether we already know the recipe or not. Use this only if information is missing as this operation is slower. | [optional]
 **analyze** | **bool**| If true, the recipe will be analyzed and classified resolving in more data such as cuisines, dish types, and more. | [optional]

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## generateMealPlan

> object generateMealPlan($time_frame, $target_calories, $diet, $exclude)

Generate Meal Plan

Generate a meal plan with three meals per day (breakfast, lunch, and dinner).

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$time_frame = day; // string | Either for one \"day\" or an entire \"week\".
$target_calories = 2000; // float | What is the caloric target for one day? The meal plan generator will try to get as close as possible to that goal.
$diet = vegetarian; // string | Enter a diet that the meal plan has to adhere to. See a full list of supported diets.
$exclude = shellfish, olives; // string | A comma-separated list of allergens or ingredients that must be excluded.

try {
    $result = $apiInstance->generateMealPlan($time_frame, $target_calories, $diet, $exclude);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->generateMealPlan: ', $e->getMessage(), PHP_EOL;
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

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## generateShoppingList

> object generateShoppingList($username, $start_date, $end_date, $hash, $inline_object13)

Generate Shopping List

Generate the shopping list for a user from the meal planner in a given time frame.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$username = dsky; // string | The username.
$start_date = 2020-06-01; // string | The start date in the format yyyy-mm-dd.
$end_date = 2020-06-07; // string | The end date in the format yyyy-mm-dd.
$hash = 4b5v4398573406; // string | The private hash for the username.
$inline_object13 = new \com.spoonacular.client\com.spoonacular.client.model\InlineObject13(); // \com.spoonacular.client\com.spoonacular.client.model\InlineObject13 | 

try {
    $result = $apiInstance->generateShoppingList($username, $start_date, $end_date, $hash, $inline_object13);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->generateShoppingList: ', $e->getMessage(), PHP_EOL;
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
 **inline_object13** | [**\com.spoonacular.client\com.spoonacular.client.model\InlineObject13**](../Model/InlineObject13.md)|  |

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: 
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## getARandomFoodJoke

> object getARandomFoodJoke()

Get a Random Food Joke

Get a random joke that is related to food. Caution: this is an endpoint for adults!

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->getARandomFoodJoke();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->getARandomFoodJoke: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

This endpoint does not need any parameter.

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## getAnalyzedRecipeInstructions

> object getAnalyzedRecipeInstructions($id, $step_breakdown)

Get Analyzed Recipe Instructions

Get an analyzed breakdown of a recipe's instructions. Each step is enriched with the ingredients and equipment required.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$id = 324694; // float | The recipe id.
$step_breakdown = true; // bool | Whether to break down the recipe steps even more.

try {
    $result = $apiInstance->getAnalyzedRecipeInstructions($id, $step_breakdown);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->getAnalyzedRecipeInstructions: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **float**| The recipe id. |
 **step_breakdown** | **bool**| Whether to break down the recipe steps even more. | [optional]

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## getComparableProducts

> object getComparableProducts($upc)

Get Comparable Products

Find comparable products to the given one.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$upc = 33698816271; // float | The UPC of the product for which you want to find comparable products.

try {
    $result = $apiInstance->getComparableProducts($upc);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->getComparableProducts: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **upc** | **float**| The UPC of the product for which you want to find comparable products. |

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## getConversationSuggests

> object getConversationSuggests($query, $number)

Get Conversation Suggests

This endpoint returns suggestions for things the user can say or ask the chatbot.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$query = tell; // string | A (partial) query from the user. The endpoint will return if it matches topics it can talk about.
$number = 5; // float | The number of suggestions to return (between 1 and 25).

try {
    $result = $apiInstance->getConversationSuggests($query, $number);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->getConversationSuggests: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| A (partial) query from the user. The endpoint will return if it matches topics it can talk about. |
 **number** | **float**| The number of suggestions to return (between 1 and 25). | [optional]

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## getDishPairingForWine

> object getDishPairingForWine($wine)

Get Dish Pairing for Wine

Find a dish that goes well with a given wine.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$wine = malbec; // string | The type of wine that should be paired, e.g. \"merlot\", \"riesling\", or \"malbec\".

try {
    $result = $apiInstance->getDishPairingForWine($wine);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->getDishPairingForWine: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wine** | **string**| The type of wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;. |

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## getIngredientInformation

> object getIngredientInformation($id, $amount, $unit)

Get Ingredient Information

Use an ingredient id to get all available information about an ingredient, such as its image and supermarket aisle.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$id = 9266; // float | The ingredient id.
$amount = 150; // float | The amount of this ingredient.
$unit = grams; // string | The unit for the given amount.

try {
    $result = $apiInstance->getIngredientInformation($id, $amount, $unit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->getIngredientInformation: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **float**| The ingredient id. |
 **amount** | **float**| The amount of this ingredient. | [optional]
 **unit** | **string**| The unit for the given amount. | [optional]

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## getIngredientSubstitutes

> object getIngredientSubstitutes($ingredient_name)

Get Ingredient Substitutes

Search for substitutes for a given ingredient.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$ingredient_name = butter; // string | The name of the ingredient you want to replace.

try {
    $result = $apiInstance->getIngredientSubstitutes($ingredient_name);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->getIngredientSubstitutes: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredient_name** | **string**| The name of the ingredient you want to replace. |

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## getIngredientSubstitutesByID

> object getIngredientSubstitutesByID($id)

Get Ingredient Substitutes by ID

Search for substitutes for a given ingredient.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$id = 1001; // float | The id of the ingredient you want substitutes for.

try {
    $result = $apiInstance->getIngredientSubstitutesByID($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->getIngredientSubstitutesByID: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **float**| The id of the ingredient you want substitutes for. |

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## getMealPlanTemplate

> object getMealPlanTemplate($username, $id, $hash)

Get Meal Plan Template

Get information about a meal plan template.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$username = dsky; // string | The username.
$id = 15678; // float | The shopping list item id.
$hash = 4b5v4398573406; // string | The private hash for the username.

try {
    $result = $apiInstance->getMealPlanTemplate($username, $id, $hash);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->getMealPlanTemplate: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username. |
 **id** | **float**| The shopping list item id. |
 **hash** | **string**| The private hash for the username. |

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## getMealPlanTemplates

> object getMealPlanTemplates($username, $hash)

Get Meal Plan Templates

Get meal plan templates from user or public ones.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$username = dsky; // string | The username.
$hash = 4b5v4398573406; // string | The private hash for the username.

try {
    $result = $apiInstance->getMealPlanTemplates($username, $hash);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->getMealPlanTemplates: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username. |
 **hash** | **string**| The private hash for the username. |

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## getMealPlanWeek

> object getMealPlanWeek($username, $start_date, $hash)

Get Meal Plan Week

Retrieve a meal planned week for the given user. The username must be a spoonacular user and the hash must the the user's hash that can be found in his/her account.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$username = dsky; // string | The username.
$start_date = 2020-06-01; // string | The start date of the meal planned week in the format yyyy-mm-dd.
$hash = 4b5v4398573406; // string | The private hash for the username.

try {
    $result = $apiInstance->getMealPlanWeek($username, $start_date, $hash);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->getMealPlanWeek: ', $e->getMessage(), PHP_EOL;
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

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## getMenuItemInformation

> object getMenuItemInformation($id)

Get Menu Item Information

Use a menu item id to get all available information about a menu item, such as nutrition.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$id = 424571; // float | The menu item id.

try {
    $result = $apiInstance->getMenuItemInformation($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->getMenuItemInformation: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **float**| The menu item id. |

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## getProductInformation

> object getProductInformation($id)

Get Product Information

Use a product id to get full information about a product, such as ingredients, nutrition, etc. The nutritional information is per serving.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$id = 22347; // float | The id of the packaged food.

try {
    $result = $apiInstance->getProductInformation($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->getProductInformation: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **float**| The id of the packaged food. |

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## getRandomFoodTrivia

> object getRandomFoodTrivia()

Get Random Food Trivia

Returns random food trivia.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->getRandomFoodTrivia();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->getRandomFoodTrivia: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

This endpoint does not need any parameter.

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## getRandomRecipes

> object getRandomRecipes($limit_license, $tags, $number)

Get Random Recipes

Find random (popular) recipes. If you need to filter recipes by diet, nutrition etc. you might want to consider using the complex recipe search endpoint and set the sort request parameter to random.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$limit_license = true; // bool | Whether the recipes should have an open license that allows display with proper attribution.
$tags = vegetarian, dessert; // string | The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have.
$number = 1; // float | The number of random recipes to be returned (between 1 and 100).

try {
    $result = $apiInstance->getRandomRecipes($limit_license, $tags, $number);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->getRandomRecipes: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit_license** | **bool**| Whether the recipes should have an open license that allows display with proper attribution. | [optional]
 **tags** | **string**| The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have. | [optional]
 **number** | **float**| The number of random recipes to be returned (between 1 and 100). | [optional]

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## getRecipeEquipmentByID

> object getRecipeEquipmentByID($id)

Get Recipe Equipment by ID

Get a recipe's equipment list.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$id = 1003464; // float | The recipe id.

try {
    $result = $apiInstance->getRecipeEquipmentByID($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->getRecipeEquipmentByID: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **float**| The recipe id. |

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## getRecipeInformation

> object getRecipeInformation($id, $include_nutrition)

Get Recipe Information

Use a recipe id to get full information about a recipe, such as ingredients, nutrition, diet and allergen information, etc.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$id = 716429; // float | The id of the recipe.
$include_nutrition = false; // bool | Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings.

try {
    $result = $apiInstance->getRecipeInformation($id, $include_nutrition);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->getRecipeInformation: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **float**| The id of the recipe. |
 **include_nutrition** | **bool**| Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. | [optional]

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## getRecipeInformationBulk

> object getRecipeInformationBulk($ids, $include_nutrition)

Get Recipe Information Bulk

Get information about multiple recipes at once. This is equivalent to calling the Get Recipe Information endpoint multiple times, but faster.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$ids = 715538,716429; // string | A comma-separated list of recipe ids.
$include_nutrition = false; // bool | Include nutrition data to the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings.

try {
    $result = $apiInstance->getRecipeInformationBulk($ids, $include_nutrition);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->getRecipeInformationBulk: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | **string**| A comma-separated list of recipe ids. |
 **include_nutrition** | **bool**| Include nutrition data to the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. | [optional]

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## getRecipeIngredientsByID

> object getRecipeIngredientsByID($id)

Get Recipe Ingredients by ID

Get a recipe's ingredient list.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$id = 1003464; // float | The recipe id.

try {
    $result = $apiInstance->getRecipeIngredientsByID($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->getRecipeIngredientsByID: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **float**| The recipe id. |

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## getRecipeNutritionWidgetByID

> object getRecipeNutritionWidgetByID($id)

Get Recipe Nutrition Widget by ID

Get a recipe's nutrition widget data.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$id = 1003464; // float | The recipe id.

try {
    $result = $apiInstance->getRecipeNutritionWidgetByID($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->getRecipeNutritionWidgetByID: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **float**| The recipe id. |

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## getRecipePriceBreakdownByID

> object getRecipePriceBreakdownByID($id)

Get Recipe Price Breakdown by ID

Get a recipe's price breakdown data.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$id = 1003464; // float | The recipe id.

try {
    $result = $apiInstance->getRecipePriceBreakdownByID($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->getRecipePriceBreakdownByID: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **float**| The recipe id. |

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## getRecipeTasteByID

> object getRecipeTasteByID($id)

Get Recipe Taste by ID

Get a recipe's taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$id = 69095; // float | The recipe id.

try {
    $result = $apiInstance->getRecipeTasteByID($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->getRecipeTasteByID: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **float**| The recipe id. |

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## getShoppingList

> object getShoppingList($username, $hash)

Get Shopping List

Get the current shopping list for the given user.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$username = dsky; // string | The username.
$hash = 4b5v4398573406; // string | The private hash for the username.

try {
    $result = $apiInstance->getShoppingList($username, $hash);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->getShoppingList: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username. |
 **hash** | **string**| The private hash for the username. |

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## getSimilarRecipes

> object getSimilarRecipes($id, $number, $limit_license)

Get Similar Recipes

Find recipes which are similar to the given one.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$id = 715538; // float | The id of the source recipe for which similar recipes should be found.
$number = 1; // float | The number of random recipes to be returned (between 1 and 100).
$limit_license = true; // bool | Whether the recipes should have an open license that allows display with proper attribution.

try {
    $result = $apiInstance->getSimilarRecipes($id, $number, $limit_license);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->getSimilarRecipes: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **float**| The id of the source recipe for which similar recipes should be found. |
 **number** | **float**| The number of random recipes to be returned (between 1 and 100). | [optional]
 **limit_license** | **bool**| Whether the recipes should have an open license that allows display with proper attribution. | [optional]

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## getWineDescription

> object getWineDescription($wine)

Get Wine Description

Get a simple description of a certain wine, e.g. \"malbec\", \"riesling\", or \"merlot\".

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$wine = merlot; // string | The name of the wine that should be paired, e.g. \"merlot\", \"riesling\", or \"malbec\".

try {
    $result = $apiInstance->getWineDescription($wine);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->getWineDescription: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wine** | **string**| The name of the wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;. |

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## getWinePairing

> object getWinePairing($food, $max_price)

Get Wine Pairing

Find a wine that goes well with a food. Food can be a dish name (\"steak\"), an ingredient name (\"salmon\"), or a cuisine (\"italian\").

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$food = steak; // string | The food to get a pairing for. This can be a dish (\"steak\"), an ingredient (\"salmon\"), or a cuisine (\"italian\").
$max_price = 50; // float | The maximum price for the specific wine recommendation in USD.

try {
    $result = $apiInstance->getWinePairing($food, $max_price);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->getWinePairing: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **food** | **string**| The food to get a pairing for. This can be a dish (\&quot;steak\&quot;), an ingredient (\&quot;salmon\&quot;), or a cuisine (\&quot;italian\&quot;). |
 **max_price** | **float**| The maximum price for the specific wine recommendation in USD. | [optional]

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## getWineRecommendation

> object getWineRecommendation($wine, $max_price, $min_rating, $number)

Get Wine Recommendation

Get a specific wine recommendation (concrete product) for a given wine type, e.g. \"merlot\".

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$wine = merlot; // string | The type of wine to get a specific product recommendation for.
$max_price = 50; // float | The maximum price for the specific wine recommendation in USD.
$min_rating = 0.7; // float | The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars.
$number = 3; // float | The number of wine recommendations expected (between 1 and 100).

try {
    $result = $apiInstance->getWineRecommendation($wine, $max_price, $min_rating, $number);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->getWineRecommendation: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wine** | **string**| The type of wine to get a specific product recommendation for. |
 **max_price** | **float**| The maximum price for the specific wine recommendation in USD. | [optional]
 **min_rating** | **float**| The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars. | [optional]
 **number** | **float**| The number of wine recommendations expected (between 1 and 100). | [optional]

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## guessNutritionByDishName

> object guessNutritionByDishName($title)

Guess Nutrition by Dish Name

Estimate the macronutrients of a dish based on its title.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$title = Spaghetti Aglio et Olio; // string | The title of the dish.

try {
    $result = $apiInstance->guessNutritionByDishName($title);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->guessNutritionByDishName: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **string**| The title of the dish. |

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## imageAnalysisByURL

> object imageAnalysisByURL($image_url)

Image Analysis by URL

Analyze a food image. The API tries to classify the image, guess the nutrition, and find a matching recipes. You can play around with that endpoint!

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$image_url = https://spoonacular.com/recipeImages/635350-240x150.jpg; // string | The URL of the image to be analyzed.

try {
    $result = $apiInstance->imageAnalysisByURL($image_url);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->imageAnalysisByURL: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_url** | **string**| The URL of the image to be analyzed. |

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## imageClassificationByURL

> object imageClassificationByURL($image_url)

Image Classification by URL

Classify a food image. You can play around with that endpoint!

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$image_url = https://spoonacular.com/recipeImages/635350-240x150.jpg; // string | The URL of the image to be classified.

try {
    $result = $apiInstance->imageClassificationByURL($image_url);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->imageClassificationByURL: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_url** | **string**| The URL of the image to be classified. |

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## ingredientSearch

> object ingredientSearch($query, $add_children, $min_protein_percent, $max_protein_percent, $min_fat_percent, $max_fat_percent, $min_carbs_percent, $max_carbs_percent, $meta_information, $intolerances, $sort, $sort_direction, $offset, $number)

Ingredient Search

Search for simple whole foods (e.g. fruits, vegetables, nuts, grains, meat, fish, dairy etc.).

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$query = apple; // string | The partial or full ingredient name.
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
$offset = 0; // float | The number of results to skip (between 0 and 990).
$number = 10; // float | The number of expected results (between 1 and 100).

try {
    $result = $apiInstance->ingredientSearch($query, $add_children, $min_protein_percent, $max_protein_percent, $min_fat_percent, $max_fat_percent, $min_carbs_percent, $max_carbs_percent, $meta_information, $intolerances, $sort, $sort_direction, $offset, $number);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->ingredientSearch: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The partial or full ingredient name. |
 **add_children** | **bool**| Whether to add children of found foods. | [optional]
 **min_protein_percent** | **float**| The minimum percentage of protein the food must have (between 0 and 100). | [optional]
 **max_protein_percent** | **float**| The maximum percentage of protein the food can have (between 0 and 100). | [optional]
 **min_fat_percent** | **float**| The minimum percentage of fat the food must have (between 0 and 100). | [optional]
 **max_fat_percent** | **float**| The maximum percentage of fat the food can have (between 0 and 100). | [optional]
 **min_carbs_percent** | **float**| The minimum percentage of carbs the food must have (between 0 and 100). | [optional]
 **max_carbs_percent** | **float**| The maximum percentage of carbs the food can have (between 0 and 100). | [optional]
 **meta_information** | **bool**| Whether to return more meta information about the ingredients. | [optional]
 **intolerances** | **string**| A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. | [optional]
 **sort** | **string**| The strategy to sort recipes by. See a full list of supported sorting options. | [optional]
 **sort_direction** | **string**| The direction in which to sort. Must be either &#39;asc&#39; (ascending) or &#39;desc&#39; (descending). | [optional]
 **offset** | **float**| The number of results to skip (between 0 and 990). | [optional]
 **number** | **float**| The number of expected results (between 1 and 100). | [optional]

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## mapIngredientsToGroceryProducts

> object mapIngredientsToGroceryProducts($body)

Map Ingredients to Grocery Products

Map a set of ingredients to products you can buy in the grocery store.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$body = new \stdClass; // object | 

try {
    $result = $apiInstance->mapIngredientsToGroceryProducts($body);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->mapIngredientsToGroceryProducts: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **object**|  |

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## parseIngredients

> object parseIngredients($ingredient_list, $servings, $include_nutrition)

Parse Ingredients

Extract an ingredient from plain text.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$ingredient_list = 'ingredient_list_example'; // string | The ingredient list of the recipe, one ingredient per line.
$servings = 3.4; // float | The number of servings that you can make from the ingredients.
$include_nutrition = True; // bool | Whether nutrition data should be added to correctly parsed ingredients.

try {
    $result = $apiInstance->parseIngredients($ingredient_list, $servings, $include_nutrition);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->parseIngredients: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredient_list** | **string**| The ingredient list of the recipe, one ingredient per line. |
 **servings** | **float**| The number of servings that you can make from the ingredients. |
 **include_nutrition** | **bool**| Whether nutrition data should be added to correctly parsed ingredients. | [optional]

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## quickAnswer

> object quickAnswer($q)

Quick Answer

Answer a nutrition related natural language question.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$q = How much vitamin c is in 2 apples?; // string | The nutrition related question.

try {
    $result = $apiInstance->quickAnswer($q);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->quickAnswer: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **string**| The nutrition related question. |

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## searchAllFood

> object searchAllFood($query, $offset, $number)

Search All Food

Search all food content with one call. That includes recipes, grocery products, menu items, simple foods (ingredients), and food videos.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$query = apple; // string | The search query.
$offset = 0; // float | The number of results to skip (between 0 and 990).
$number = 10; // float | The number of expected results (between 1 and 100).

try {
    $result = $apiInstance->searchAllFood($query, $offset, $number);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->searchAllFood: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The search query. |
 **offset** | **float**| The number of results to skip (between 0 and 990). | [optional]
 **number** | **float**| The number of expected results (between 1 and 100). | [optional]

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## searchCustomFoods

> object searchCustomFoods($query, $username, $hash, $offset, $number)

Search Custom Foods

Search custom foods in a user's account.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$query = brat; // string | The search query.
$username = dsky; // string | The username.
$hash = 4b5v4398573406; // string | The private hash for the username.
$offset = 0; // float | The number of results to skip (between 0 and 990).
$number = 10; // float | The number of expected results (between 1 and 100).

try {
    $result = $apiInstance->searchCustomFoods($query, $username, $hash, $offset, $number);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->searchCustomFoods: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The search query. |
 **username** | **string**| The username. |
 **hash** | **string**| The private hash for the username. |
 **offset** | **float**| The number of results to skip (between 0 and 990). | [optional]
 **number** | **float**| The number of expected results (between 1 and 100). | [optional]

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## searchFoodVideos

> object searchFoodVideos($query, $type, $cuisine, $diet, $include_ingredients, $exclude_ingredients, $min_length, $max_length, $offset, $number)

Search Food Videos

Find recipe and other food related videos.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$query = chicken soup; // string | The search query.
$type = main course; // string | The type of the recipes. See a full list of supported meal types.
$cuisine = italian; // string | The cuisine(s) of the recipes. One or more, comma separated. See a full list of supported cuisines.
$diet = vegetarian; // string | The diet for which the recipes must be suitable. See a full list of supported diets.
$include_ingredients = tomato,cheese; // string | A comma-separated list of ingredients that the recipes should contain.
$exclude_ingredients = eggs; // string | A comma-separated list of ingredients or ingredient types that the recipes must not contain.
$min_length = 0; // float | Minimum video length in seconds.
$max_length = 999; // float | Maximum video length in seconds.
$offset = 0; // float | The number of results to skip (between 0 and 900).
$number = 10; // float | The number of results to return (between 1 and 100).

try {
    $result = $apiInstance->searchFoodVideos($query, $type, $cuisine, $diet, $include_ingredients, $exclude_ingredients, $min_length, $max_length, $offset, $number);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->searchFoodVideos: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The search query. |
 **type** | **string**| The type of the recipes. See a full list of supported meal types. | [optional]
 **cuisine** | **string**| The cuisine(s) of the recipes. One or more, comma separated. See a full list of supported cuisines. | [optional]
 **diet** | **string**| The diet for which the recipes must be suitable. See a full list of supported diets. | [optional]
 **include_ingredients** | **string**| A comma-separated list of ingredients that the recipes should contain. | [optional]
 **exclude_ingredients** | **string**| A comma-separated list of ingredients or ingredient types that the recipes must not contain. | [optional]
 **min_length** | **float**| Minimum video length in seconds. | [optional]
 **max_length** | **float**| Maximum video length in seconds. | [optional]
 **offset** | **float**| The number of results to skip (between 0 and 900). | [optional]
 **number** | **float**| The number of results to return (between 1 and 100). | [optional]

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## searchGroceryProducts

> object searchGroceryProducts($query, $min_calories, $max_calories, $min_carbs, $max_carbs, $min_protein, $max_protein, $min_fat, $max_fat, $offset, $number)

Search Grocery Products

Search packaged food products, such as frozen pizza or Greek yogurt.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$query = greek yogurt; // string | The search query.
$min_calories = 50; // float | The minimum amount of calories the product must have.
$max_calories = 800; // float | The maximum amount of calories the product can have.
$min_carbs = 10; // float | The minimum amount of carbohydrates in grams the product must have.
$max_carbs = 100; // float | The maximum amount of carbohydrates in grams the product can have.
$min_protein = 10; // float | The minimum amount of protein in grams the product must have.
$max_protein = 100; // float | The maximum amount of protein in grams the product can have.
$min_fat = 1; // float | The minimum amount of fat in grams the product must have.
$max_fat = 100; // float | The maximum amount of fat in grams the product can have.
$offset = 0; // float | The number of results to skip (between 0 and 990).
$number = 10; // float | The number of expected results (between 1 and 100).

try {
    $result = $apiInstance->searchGroceryProducts($query, $min_calories, $max_calories, $min_carbs, $max_carbs, $min_protein, $max_protein, $min_fat, $max_fat, $offset, $number);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->searchGroceryProducts: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The search query. |
 **min_calories** | **float**| The minimum amount of calories the product must have. | [optional]
 **max_calories** | **float**| The maximum amount of calories the product can have. | [optional]
 **min_carbs** | **float**| The minimum amount of carbohydrates in grams the product must have. | [optional]
 **max_carbs** | **float**| The maximum amount of carbohydrates in grams the product can have. | [optional]
 **min_protein** | **float**| The minimum amount of protein in grams the product must have. | [optional]
 **max_protein** | **float**| The maximum amount of protein in grams the product can have. | [optional]
 **min_fat** | **float**| The minimum amount of fat in grams the product must have. | [optional]
 **max_fat** | **float**| The maximum amount of fat in grams the product can have. | [optional]
 **offset** | **float**| The number of results to skip (between 0 and 990). | [optional]
 **number** | **float**| The number of expected results (between 1 and 100). | [optional]

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## searchGroceryProductsByUPC

> object searchGroceryProductsByUPC($upc)

Search Grocery Products by UPC

Get information about a packaged food using its UPC.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$upc = 41631000564; // float | The product's UPC.

try {
    $result = $apiInstance->searchGroceryProductsByUPC($upc);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->searchGroceryProductsByUPC: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **upc** | **float**| The product&#39;s UPC. |

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## searchMenuItems

> object searchMenuItems($query, $min_calories, $max_calories, $min_carbs, $max_carbs, $min_protein, $max_protein, $min_fat, $max_fat, $offset, $number)

Search Menu Items

Search over 115,000 menu items from over 800 fast food and chain restaurants. For example, McDonald's Big Mac or Starbucks Mocha.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$query = snickers; // string | The search query.
$min_calories = 50; // float | The minimum amount of calories the menu item must have.
$max_calories = 800; // float | The maximum amount of calories the menu item can have.
$min_carbs = 10; // float | The minimum amount of carbohydrates in grams the menu item must have.
$max_carbs = 100; // float | The maximum amount of carbohydrates in grams the menu item can have.
$min_protein = 10; // float | The minimum amount of protein in grams the menu item must have.
$max_protein = 100; // float | The maximum amount of protein in grams the menu item can have.
$min_fat = 1; // float | The minimum amount of fat in grams the menu item must have.
$max_fat = 100; // float | The maximum amount of fat in grams the menu item can have.
$offset = 0; // float | The offset number for paging (between 0 and 990).
$number = 100; // float | The number of expected results (between 1 and 10).

try {
    $result = $apiInstance->searchMenuItems($query, $min_calories, $max_calories, $min_carbs, $max_carbs, $min_protein, $max_protein, $min_fat, $max_fat, $offset, $number);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->searchMenuItems: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The search query. |
 **min_calories** | **float**| The minimum amount of calories the menu item must have. | [optional]
 **max_calories** | **float**| The maximum amount of calories the menu item can have. | [optional]
 **min_carbs** | **float**| The minimum amount of carbohydrates in grams the menu item must have. | [optional]
 **max_carbs** | **float**| The maximum amount of carbohydrates in grams the menu item can have. | [optional]
 **min_protein** | **float**| The minimum amount of protein in grams the menu item must have. | [optional]
 **max_protein** | **float**| The maximum amount of protein in grams the menu item can have. | [optional]
 **min_fat** | **float**| The minimum amount of fat in grams the menu item must have. | [optional]
 **max_fat** | **float**| The maximum amount of fat in grams the menu item can have. | [optional]
 **offset** | **float**| The offset number for paging (between 0 and 990). | [optional]
 **number** | **float**| The number of expected results (between 1 and 10). | [optional]

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## searchRecipes

> object searchRecipes($query, $cuisine, $exclude_cuisine, $diet, $intolerances, $equipment, $include_ingredients, $exclude_ingredients, $type, $instructions_required, $fill_ingredients, $add_recipe_information, $add_recipe_nutrition, $author, $tags, $recipe_box_id, $title_match, $max_ready_time, $ignore_pantry, $sort, $sort_direction, $min_carbs, $max_carbs, $min_protein, $max_protein, $min_calories, $max_calories, $min_fat, $max_fat, $min_alcohol, $max_alcohol, $min_caffeine, $max_caffeine, $min_copper, $max_copper, $min_calcium, $max_calcium, $min_choline, $max_choline, $min_cholesterol, $max_cholesterol, $min_fluoride, $max_fluoride, $min_saturated_fat, $max_saturated_fat, $min_vitamin_a, $max_vitamin_a, $min_vitamin_c, $max_vitamin_c, $min_vitamin_d, $max_vitamin_d, $min_vitamin_e, $max_vitamin_e, $min_vitamin_k, $max_vitamin_k, $min_vitamin_b1, $max_vitamin_b1, $min_vitamin_b2, $max_vitamin_b2, $min_vitamin_b5, $max_vitamin_b5, $min_vitamin_b3, $max_vitamin_b3, $min_vitamin_b6, $max_vitamin_b6, $min_vitamin_b12, $max_vitamin_b12, $min_fiber, $max_fiber, $min_folate, $max_folate, $min_folic_acid, $max_folic_acid, $min_iodine, $max_iodine, $min_iron, $max_iron, $min_magnesium, $max_magnesium, $min_manganese, $max_manganese, $min_phosphorus, $max_phosphorus, $min_potassium, $max_potassium, $min_selenium, $max_selenium, $min_sodium, $max_sodium, $min_sugar, $max_sugar, $min_zinc, $max_zinc, $offset, $number, $limit_license)

Search Recipes

Search through hundreds of thousands of recipes using advanced filtering and ranking. NOTE: This method combines searching by query, by ingredients, and by nutrients into one endpoint.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$query = pasta; // string | The (natural language) recipe search query.
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
$tags = myCustomTag; // string | User defined tags that have to match. The author param has to be set.
$recipe_box_id = 2468; // float | The id of the recipe box to which the search should be limited to.
$title_match = Crock Pot; // string | Enter text that must be found in the title of the recipes.
$max_ready_time = 20; // float | The maximum time in minutes it should take to prepare and cook the recipe.
$ignore_pantry = true; // bool | Whether to ignore typical pantry items, such as water, salt, flour, etc.
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
$offset = 0; // float | The number of results to skip (between 0 and 900).
$number = 10; // float | The number of expected results (between 1 and 100).
$limit_license = true; // bool | Whether the recipes should have an open license that allows display with proper attribution.

try {
    $result = $apiInstance->searchRecipes($query, $cuisine, $exclude_cuisine, $diet, $intolerances, $equipment, $include_ingredients, $exclude_ingredients, $type, $instructions_required, $fill_ingredients, $add_recipe_information, $add_recipe_nutrition, $author, $tags, $recipe_box_id, $title_match, $max_ready_time, $ignore_pantry, $sort, $sort_direction, $min_carbs, $max_carbs, $min_protein, $max_protein, $min_calories, $max_calories, $min_fat, $max_fat, $min_alcohol, $max_alcohol, $min_caffeine, $max_caffeine, $min_copper, $max_copper, $min_calcium, $max_calcium, $min_choline, $max_choline, $min_cholesterol, $max_cholesterol, $min_fluoride, $max_fluoride, $min_saturated_fat, $max_saturated_fat, $min_vitamin_a, $max_vitamin_a, $min_vitamin_c, $max_vitamin_c, $min_vitamin_d, $max_vitamin_d, $min_vitamin_e, $max_vitamin_e, $min_vitamin_k, $max_vitamin_k, $min_vitamin_b1, $max_vitamin_b1, $min_vitamin_b2, $max_vitamin_b2, $min_vitamin_b5, $max_vitamin_b5, $min_vitamin_b3, $max_vitamin_b3, $min_vitamin_b6, $max_vitamin_b6, $min_vitamin_b12, $max_vitamin_b12, $min_fiber, $max_fiber, $min_folate, $max_folate, $min_folic_acid, $max_folic_acid, $min_iodine, $max_iodine, $min_iron, $max_iron, $min_magnesium, $max_magnesium, $min_manganese, $max_manganese, $min_phosphorus, $max_phosphorus, $min_potassium, $max_potassium, $min_selenium, $max_selenium, $min_sodium, $max_sodium, $min_sugar, $max_sugar, $min_zinc, $max_zinc, $offset, $number, $limit_license);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->searchRecipes: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The (natural language) recipe search query. |
 **cuisine** | **string**| The cuisine(s) of the recipes. One or more, comma separated (will be interpreted as &#39;OR&#39;). See a full list of supported cuisines. | [optional]
 **exclude_cuisine** | **string**| The cuisine(s) the recipes must not match. One or more, comma separated (will be interpreted as &#39;AND&#39;). See a full list of supported cuisines. | [optional]
 **diet** | **string**| The diet for which the recipes must be suitable. See a full list of supported diets. | [optional]
 **intolerances** | **string**| A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. | [optional]
 **equipment** | **string**| The equipment required. Multiple values will be interpreted as &#39;or&#39;. For example, value could be \&quot;blender, frying pan, bowl\&quot;. | [optional]
 **include_ingredients** | **string**| A comma-separated list of ingredients that should/must be used in the recipes. | [optional]
 **exclude_ingredients** | **string**| A comma-separated list of ingredients or ingredient types that the recipes must not contain. | [optional]
 **type** | **string**| The type of recipe. See a full list of supported meal types. | [optional]
 **instructions_required** | **bool**| Whether the recipes must have instructions. | [optional]
 **fill_ingredients** | **bool**| Add information about the ingredients and whether they are used or missing in relation to the query. | [optional]
 **add_recipe_information** | **bool**| If set to true, you get more information about the recipes returned. | [optional]
 **add_recipe_nutrition** | **bool**| If set to true, you get nutritional information about each recipes returned. | [optional]
 **author** | **string**| The username of the recipe author. | [optional]
 **tags** | **string**| User defined tags that have to match. The author param has to be set. | [optional]
 **recipe_box_id** | **float**| The id of the recipe box to which the search should be limited to. | [optional]
 **title_match** | **string**| Enter text that must be found in the title of the recipes. | [optional]
 **max_ready_time** | **float**| The maximum time in minutes it should take to prepare and cook the recipe. | [optional]
 **ignore_pantry** | **bool**| Whether to ignore typical pantry items, such as water, salt, flour, etc. | [optional]
 **sort** | **string**| The strategy to sort recipes by. See a full list of supported sorting options. | [optional]
 **sort_direction** | **string**| The direction in which to sort. Must be either &#39;asc&#39; (ascending) or &#39;desc&#39; (descending). | [optional]
 **min_carbs** | **float**| The minimum amount of carbohydrates in grams the recipe must have. | [optional]
 **max_carbs** | **float**| The maximum amount of carbohydrates in grams the recipe can have. | [optional]
 **min_protein** | **float**| The minimum amount of protein in grams the recipe must have. | [optional]
 **max_protein** | **float**| The maximum amount of protein in grams the recipe can have. | [optional]
 **min_calories** | **float**| The minimum amount of calories the recipe must have. | [optional]
 **max_calories** | **float**| The maximum amount of calories the recipe can have. | [optional]
 **min_fat** | **float**| The minimum amount of fat in grams the recipe must have. | [optional]
 **max_fat** | **float**| The maximum amount of fat in grams the recipe can have. | [optional]
 **min_alcohol** | **float**| The minimum amount of alcohol in grams the recipe must have. | [optional]
 **max_alcohol** | **float**| The maximum amount of alcohol in grams the recipe can have. | [optional]
 **min_caffeine** | **float**| The minimum amount of caffeine in milligrams the recipe must have. | [optional]
 **max_caffeine** | **float**| The maximum amount of caffeine in milligrams the recipe can have. | [optional]
 **min_copper** | **float**| The minimum amount of copper in milligrams the recipe must have. | [optional]
 **max_copper** | **float**| The maximum amount of copper in milligrams the recipe can have. | [optional]
 **min_calcium** | **float**| The minimum amount of calcium in milligrams the recipe must have. | [optional]
 **max_calcium** | **float**| The maximum amount of calcium in milligrams the recipe can have. | [optional]
 **min_choline** | **float**| The minimum amount of choline in milligrams the recipe must have. | [optional]
 **max_choline** | **float**| The maximum amount of choline in milligrams the recipe can have. | [optional]
 **min_cholesterol** | **float**| The minimum amount of cholesterol in milligrams the recipe must have. | [optional]
 **max_cholesterol** | **float**| The maximum amount of cholesterol in milligrams the recipe can have. | [optional]
 **min_fluoride** | **float**| The minimum amount of fluoride in milligrams the recipe must have. | [optional]
 **max_fluoride** | **float**| The maximum amount of fluoride in milligrams the recipe can have. | [optional]
 **min_saturated_fat** | **float**| The minimum amount of saturated fat in grams the recipe must have. | [optional]
 **max_saturated_fat** | **float**| The maximum amount of saturated fat in grams the recipe can have. | [optional]
 **min_vitamin_a** | **float**| The minimum amount of Vitamin A in IU the recipe must have. | [optional]
 **max_vitamin_a** | **float**| The maximum amount of Vitamin A in IU the recipe can have. | [optional]
 **min_vitamin_c** | **float**| The minimum amount of Vitamin C milligrams the recipe must have. | [optional]
 **max_vitamin_c** | **float**| The maximum amount of Vitamin C in milligrams the recipe can have. | [optional]
 **min_vitamin_d** | **float**| The minimum amount of Vitamin D in micrograms the recipe must have. | [optional]
 **max_vitamin_d** | **float**| The maximum amount of Vitamin D in micrograms the recipe can have. | [optional]
 **min_vitamin_e** | **float**| The minimum amount of Vitamin E in milligrams the recipe must have. | [optional]
 **max_vitamin_e** | **float**| The maximum amount of Vitamin E in milligrams the recipe can have. | [optional]
 **min_vitamin_k** | **float**| The minimum amount of Vitamin K in micrograms the recipe must have. | [optional]
 **max_vitamin_k** | **float**| The maximum amount of Vitamin K in micrograms the recipe can have. | [optional]
 **min_vitamin_b1** | **float**| The minimum amount of Vitamin B1 in milligrams the recipe must have. | [optional]
 **max_vitamin_b1** | **float**| The maximum amount of Vitamin B1 in milligrams the recipe can have. | [optional]
 **min_vitamin_b2** | **float**| The minimum amount of Vitamin B2 in milligrams the recipe must have. | [optional]
 **max_vitamin_b2** | **float**| The maximum amount of Vitamin B2 in milligrams the recipe can have. | [optional]
 **min_vitamin_b5** | **float**| The minimum amount of Vitamin B5 in milligrams the recipe must have. | [optional]
 **max_vitamin_b5** | **float**| The maximum amount of Vitamin B5 in milligrams the recipe can have. | [optional]
 **min_vitamin_b3** | **float**| The minimum amount of Vitamin B3 in milligrams the recipe must have. | [optional]
 **max_vitamin_b3** | **float**| The maximum amount of Vitamin B3 in milligrams the recipe can have. | [optional]
 **min_vitamin_b6** | **float**| The minimum amount of Vitamin B6 in milligrams the recipe must have. | [optional]
 **max_vitamin_b6** | **float**| The maximum amount of Vitamin B6 in milligrams the recipe can have. | [optional]
 **min_vitamin_b12** | **float**| The minimum amount of Vitamin B12 in micrograms the recipe must have. | [optional]
 **max_vitamin_b12** | **float**| The maximum amount of Vitamin B12 in micrograms the recipe can have. | [optional]
 **min_fiber** | **float**| The minimum amount of fiber in grams the recipe must have. | [optional]
 **max_fiber** | **float**| The maximum amount of fiber in grams the recipe can have. | [optional]
 **min_folate** | **float**| The minimum amount of folate in micrograms the recipe must have. | [optional]
 **max_folate** | **float**| The maximum amount of folate in micrograms the recipe can have. | [optional]
 **min_folic_acid** | **float**| The minimum amount of folic acid in micrograms the recipe must have. | [optional]
 **max_folic_acid** | **float**| The maximum amount of folic acid in micrograms the recipe can have. | [optional]
 **min_iodine** | **float**| The minimum amount of iodine in micrograms the recipe must have. | [optional]
 **max_iodine** | **float**| The maximum amount of iodine in micrograms the recipe can have. | [optional]
 **min_iron** | **float**| The minimum amount of iron in milligrams the recipe must have. | [optional]
 **max_iron** | **float**| The maximum amount of iron in milligrams the recipe can have. | [optional]
 **min_magnesium** | **float**| The minimum amount of magnesium in milligrams the recipe must have. | [optional]
 **max_magnesium** | **float**| The maximum amount of magnesium in milligrams the recipe can have. | [optional]
 **min_manganese** | **float**| The minimum amount of manganese in milligrams the recipe must have. | [optional]
 **max_manganese** | **float**| The maximum amount of manganese in milligrams the recipe can have. | [optional]
 **min_phosphorus** | **float**| The minimum amount of phosphorus in milligrams the recipe must have. | [optional]
 **max_phosphorus** | **float**| The maximum amount of phosphorus in milligrams the recipe can have. | [optional]
 **min_potassium** | **float**| The minimum amount of potassium in milligrams the recipe must have. | [optional]
 **max_potassium** | **float**| The maximum amount of potassium in milligrams the recipe can have. | [optional]
 **min_selenium** | **float**| The minimum amount of selenium in micrograms the recipe must have. | [optional]
 **max_selenium** | **float**| The maximum amount of selenium in micrograms the recipe can have. | [optional]
 **min_sodium** | **float**| The minimum amount of sodium in milligrams the recipe must have. | [optional]
 **max_sodium** | **float**| The maximum amount of sodium in milligrams the recipe can have. | [optional]
 **min_sugar** | **float**| The minimum amount of sugar in grams the recipe must have. | [optional]
 **max_sugar** | **float**| The maximum amount of sugar in grams the recipe can have. | [optional]
 **min_zinc** | **float**| The minimum amount of zinc in milligrams the recipe must have. | [optional]
 **max_zinc** | **float**| The maximum amount of zinc in milligrams the recipe can have. | [optional]
 **offset** | **float**| The number of results to skip (between 0 and 900). | [optional]
 **number** | **float**| The number of expected results (between 1 and 100). | [optional]
 **limit_license** | **bool**| Whether the recipes should have an open license that allows display with proper attribution. | [optional]

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## searchRecipesByIngredients

> object searchRecipesByIngredients($ingredients, $number, $limit_license, $ranking, $ignore_pantry)

Search Recipes by Ingredients

Ever wondered what recipes you can cook with the ingredients you have in your fridge or pantry? This endpoint lets you find recipes that either maximize the usage of ingredients you have at hand (pre shopping) or minimize the ingredients that you don't currently have (post shopping).

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$ingredients = apples,flour,sugar; // string | A comma-separated list of ingredients that the recipes should contain.
$number = 10; // float | The maximum number of recipes to return (between 1 and 100). Defaults to 10.
$limit_license = true; // bool | Whether the recipes should have an open license that allows display with proper attribution.
$ranking = 1; // float | Whether to maximize used ingredients (1) or minimize missing ingredients (2) first.
$ignore_pantry = true; // bool | Whether to ignore typical pantry items, such as water, salt, flour, etc.

try {
    $result = $apiInstance->searchRecipesByIngredients($ingredients, $number, $limit_license, $ranking, $ignore_pantry);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->searchRecipesByIngredients: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredients** | **string**| A comma-separated list of ingredients that the recipes should contain. |
 **number** | **float**| The maximum number of recipes to return (between 1 and 100). Defaults to 10. | [optional]
 **limit_license** | **bool**| Whether the recipes should have an open license that allows display with proper attribution. | [optional]
 **ranking** | **float**| Whether to maximize used ingredients (1) or minimize missing ingredients (2) first. | [optional]
 **ignore_pantry** | **bool**| Whether to ignore typical pantry items, such as water, salt, flour, etc. | [optional]

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## searchRecipesByNutrients

> object searchRecipesByNutrients($min_carbs, $max_carbs, $min_protein, $max_protein, $min_calories, $max_calories, $min_fat, $max_fat, $min_alcohol, $max_alcohol, $min_caffeine, $max_caffeine, $min_copper, $max_copper, $min_calcium, $max_calcium, $min_choline, $max_choline, $min_cholesterol, $max_cholesterol, $min_fluoride, $max_fluoride, $min_saturated_fat, $max_saturated_fat, $min_vitamin_a, $max_vitamin_a, $min_vitamin_c, $max_vitamin_c, $min_vitamin_d, $max_vitamin_d, $min_vitamin_e, $max_vitamin_e, $min_vitamin_k, $max_vitamin_k, $min_vitamin_b1, $max_vitamin_b1, $min_vitamin_b2, $max_vitamin_b2, $min_vitamin_b5, $max_vitamin_b5, $min_vitamin_b3, $max_vitamin_b3, $min_vitamin_b6, $max_vitamin_b6, $min_vitamin_b12, $max_vitamin_b12, $min_fiber, $max_fiber, $min_folate, $max_folate, $min_folic_acid, $max_folic_acid, $min_iodine, $max_iodine, $min_iron, $max_iron, $min_magnesium, $max_magnesium, $min_manganese, $max_manganese, $min_phosphorus, $max_phosphorus, $min_potassium, $max_potassium, $min_selenium, $max_selenium, $min_sodium, $max_sodium, $min_sugar, $max_sugar, $min_zinc, $max_zinc, $offset, $number, $random, $limit_license)

Search Recipes by Nutrients

Find a set of recipes that adhere to the given nutritional limits. You may set limits for macronutrients (calories, protein, fat, and carbohydrate) and/or many micronutrients.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
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
$offset = 0; // float | The number of results to skip (between 0 and 900).
$number = 10; // float | The number of expected results (between 1 and 100).
$random = false; // bool | If true, every request will give you a random set of recipes within the requested limits.
$limit_license = true; // bool | Whether the recipes should have an open license that allows display with proper attribution.

try {
    $result = $apiInstance->searchRecipesByNutrients($min_carbs, $max_carbs, $min_protein, $max_protein, $min_calories, $max_calories, $min_fat, $max_fat, $min_alcohol, $max_alcohol, $min_caffeine, $max_caffeine, $min_copper, $max_copper, $min_calcium, $max_calcium, $min_choline, $max_choline, $min_cholesterol, $max_cholesterol, $min_fluoride, $max_fluoride, $min_saturated_fat, $max_saturated_fat, $min_vitamin_a, $max_vitamin_a, $min_vitamin_c, $max_vitamin_c, $min_vitamin_d, $max_vitamin_d, $min_vitamin_e, $max_vitamin_e, $min_vitamin_k, $max_vitamin_k, $min_vitamin_b1, $max_vitamin_b1, $min_vitamin_b2, $max_vitamin_b2, $min_vitamin_b5, $max_vitamin_b5, $min_vitamin_b3, $max_vitamin_b3, $min_vitamin_b6, $max_vitamin_b6, $min_vitamin_b12, $max_vitamin_b12, $min_fiber, $max_fiber, $min_folate, $max_folate, $min_folic_acid, $max_folic_acid, $min_iodine, $max_iodine, $min_iron, $max_iron, $min_magnesium, $max_magnesium, $min_manganese, $max_manganese, $min_phosphorus, $max_phosphorus, $min_potassium, $max_potassium, $min_selenium, $max_selenium, $min_sodium, $max_sodium, $min_sugar, $max_sugar, $min_zinc, $max_zinc, $offset, $number, $random, $limit_license);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->searchRecipesByNutrients: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **min_carbs** | **float**| The minimum amount of carbohydrates in grams the recipe must have. | [optional]
 **max_carbs** | **float**| The maximum amount of carbohydrates in grams the recipe can have. | [optional]
 **min_protein** | **float**| The minimum amount of protein in grams the recipe must have. | [optional]
 **max_protein** | **float**| The maximum amount of protein in grams the recipe can have. | [optional]
 **min_calories** | **float**| The minimum amount of calories the recipe must have. | [optional]
 **max_calories** | **float**| The maximum amount of calories the recipe can have. | [optional]
 **min_fat** | **float**| The minimum amount of fat in grams the recipe must have. | [optional]
 **max_fat** | **float**| The maximum amount of fat in grams the recipe can have. | [optional]
 **min_alcohol** | **float**| The minimum amount of alcohol in grams the recipe must have. | [optional]
 **max_alcohol** | **float**| The maximum amount of alcohol in grams the recipe can have. | [optional]
 **min_caffeine** | **float**| The minimum amount of caffeine in milligrams the recipe must have. | [optional]
 **max_caffeine** | **float**| The maximum amount of caffeine in milligrams the recipe can have. | [optional]
 **min_copper** | **float**| The minimum amount of copper in milligrams the recipe must have. | [optional]
 **max_copper** | **float**| The maximum amount of copper in milligrams the recipe can have. | [optional]
 **min_calcium** | **float**| The minimum amount of calcium in milligrams the recipe must have. | [optional]
 **max_calcium** | **float**| The maximum amount of calcium in milligrams the recipe can have. | [optional]
 **min_choline** | **float**| The minimum amount of choline in milligrams the recipe must have. | [optional]
 **max_choline** | **float**| The maximum amount of choline in milligrams the recipe can have. | [optional]
 **min_cholesterol** | **float**| The minimum amount of cholesterol in milligrams the recipe must have. | [optional]
 **max_cholesterol** | **float**| The maximum amount of cholesterol in milligrams the recipe can have. | [optional]
 **min_fluoride** | **float**| The minimum amount of fluoride in milligrams the recipe must have. | [optional]
 **max_fluoride** | **float**| The maximum amount of fluoride in milligrams the recipe can have. | [optional]
 **min_saturated_fat** | **float**| The minimum amount of saturated fat in grams the recipe must have. | [optional]
 **max_saturated_fat** | **float**| The maximum amount of saturated fat in grams the recipe can have. | [optional]
 **min_vitamin_a** | **float**| The minimum amount of Vitamin A in IU the recipe must have. | [optional]
 **max_vitamin_a** | **float**| The maximum amount of Vitamin A in IU the recipe can have. | [optional]
 **min_vitamin_c** | **float**| The minimum amount of Vitamin C in milligrams the recipe must have. | [optional]
 **max_vitamin_c** | **float**| The maximum amount of Vitamin C in milligrams the recipe can have. | [optional]
 **min_vitamin_d** | **float**| The minimum amount of Vitamin D in micrograms the recipe must have. | [optional]
 **max_vitamin_d** | **float**| The maximum amount of Vitamin D in micrograms the recipe can have. | [optional]
 **min_vitamin_e** | **float**| The minimum amount of Vitamin E in milligrams the recipe must have. | [optional]
 **max_vitamin_e** | **float**| The maximum amount of Vitamin E in milligrams the recipe can have. | [optional]
 **min_vitamin_k** | **float**| The minimum amount of Vitamin K in micrograms the recipe must have. | [optional]
 **max_vitamin_k** | **float**| The maximum amount of Vitamin K in micrograms the recipe can have. | [optional]
 **min_vitamin_b1** | **float**| The minimum amount of Vitamin B1 in milligrams the recipe must have. | [optional]
 **max_vitamin_b1** | **float**| The maximum amount of Vitamin B1 in milligrams the recipe can have. | [optional]
 **min_vitamin_b2** | **float**| The minimum amount of Vitamin B2 in milligrams the recipe must have. | [optional]
 **max_vitamin_b2** | **float**| The maximum amount of Vitamin B2 in milligrams the recipe can have. | [optional]
 **min_vitamin_b5** | **float**| The minimum amount of Vitamin B5 in milligrams the recipe must have. | [optional]
 **max_vitamin_b5** | **float**| The maximum amount of Vitamin B5 in milligrams the recipe can have. | [optional]
 **min_vitamin_b3** | **float**| The minimum amount of Vitamin B3 in milligrams the recipe must have. | [optional]
 **max_vitamin_b3** | **float**| The maximum amount of Vitamin B3 in milligrams the recipe can have. | [optional]
 **min_vitamin_b6** | **float**| The minimum amount of Vitamin B6 in milligrams the recipe must have. | [optional]
 **max_vitamin_b6** | **float**| The maximum amount of Vitamin B6 in milligrams the recipe can have. | [optional]
 **min_vitamin_b12** | **float**| The minimum amount of Vitamin B12 in micrograms the recipe must have. | [optional]
 **max_vitamin_b12** | **float**| The maximum amount of Vitamin B12 in micrograms the recipe can have. | [optional]
 **min_fiber** | **float**| The minimum amount of fiber in grams the recipe must have. | [optional]
 **max_fiber** | **float**| The maximum amount of fiber in grams the recipe can have. | [optional]
 **min_folate** | **float**| The minimum amount of folate in micrograms the recipe must have. | [optional]
 **max_folate** | **float**| The maximum amount of folate in micrograms the recipe can have. | [optional]
 **min_folic_acid** | **float**| The minimum amount of folic acid in micrograms the recipe must have. | [optional]
 **max_folic_acid** | **float**| The maximum amount of folic acid in micrograms the recipe can have. | [optional]
 **min_iodine** | **float**| The minimum amount of iodine in micrograms the recipe must have. | [optional]
 **max_iodine** | **float**| The maximum amount of iodine in micrograms the recipe can have. | [optional]
 **min_iron** | **float**| The minimum amount of iron in milligrams the recipe must have. | [optional]
 **max_iron** | **float**| The maximum amount of iron in milligrams the recipe can have. | [optional]
 **min_magnesium** | **float**| The minimum amount of magnesium in milligrams the recipe must have. | [optional]
 **max_magnesium** | **float**| The maximum amount of magnesium in milligrams the recipe can have. | [optional]
 **min_manganese** | **float**| The minimum amount of manganese in milligrams the recipe must have. | [optional]
 **max_manganese** | **float**| The maximum amount of manganese in milligrams the recipe can have. | [optional]
 **min_phosphorus** | **float**| The minimum amount of phosphorus in milligrams the recipe must have. | [optional]
 **max_phosphorus** | **float**| The maximum amount of phosphorus in milligrams the recipe can have. | [optional]
 **min_potassium** | **float**| The minimum amount of potassium in milligrams the recipe must have. | [optional]
 **max_potassium** | **float**| The maximum amount of potassium in milligrams the recipe can have. | [optional]
 **min_selenium** | **float**| The minimum amount of selenium in micrograms the recipe must have. | [optional]
 **max_selenium** | **float**| The maximum amount of selenium in micrograms the recipe can have. | [optional]
 **min_sodium** | **float**| The minimum amount of sodium in milligrams the recipe must have. | [optional]
 **max_sodium** | **float**| The maximum amount of sodium in milligrams the recipe can have. | [optional]
 **min_sugar** | **float**| The minimum amount of sugar in grams the recipe must have. | [optional]
 **max_sugar** | **float**| The maximum amount of sugar in grams the recipe can have. | [optional]
 **min_zinc** | **float**| The minimum amount of zinc in milligrams the recipe must have. | [optional]
 **max_zinc** | **float**| The maximum amount of zinc in milligrams the recipe can have. | [optional]
 **offset** | **float**| The number of results to skip (between 0 and 900). | [optional]
 **number** | **float**| The number of expected results (between 1 and 100). | [optional]
 **random** | **bool**| If true, every request will give you a random set of recipes within the requested limits. | [optional]
 **limit_license** | **bool**| Whether the recipes should have an open license that allows display with proper attribution. | [optional]

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## searchSiteContent

> object searchSiteContent($query)

Search Site Content

Search spoonacular's site content. You'll be able to find everything that you could also find using the search suggestions on spoonacular.com. This is a suggest API so you can send partial strings as queries.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$query = past; // string | The query to search for. You can also use partial queries such as \"spagh\" to already find spaghetti recipes, articles, grocery products, and other content.

try {
    $result = $apiInstance->searchSiteContent($query);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->searchSiteContent: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The query to search for. You can also use partial queries such as \&quot;spagh\&quot; to already find spaghetti recipes, articles, grocery products, and other content. |

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## summarizeRecipe

> object summarizeRecipe($id)

Summarize Recipe

Automatically generate a short description that summarizes key information about the recipe.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$id = 4632; // float | The recipe id.

try {
    $result = $apiInstance->summarizeRecipe($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->summarizeRecipe: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **float**| The recipe id. |

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## talkToChatbot

> object talkToChatbot($text, $context_id)

Talk to Chatbot

This endpoint can be used to have a conversation about food with the spoonacular chatbot. Use the \"Get Conversation Suggests\" endpoint to show your user what he or she can say.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$text = donut recipes; // string | The request / question / answer from the user to the chatbot.
$context_id = 342938; // string | An arbitrary globally unique id for your conversation. The conversation can contain states so you should pass your context id if you want the bot to be able to remember the conversation.

try {
    $result = $apiInstance->talkToChatbot($text, $context_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->talkToChatbot: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **string**| The request / question / answer from the user to the chatbot. |
 **context_id** | **string**| An arbitrary globally unique id for your conversation. The conversation can contain states so you should pass your context id if you want the bot to be able to remember the conversation. | [optional]

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## visualizeEquipment

> string visualizeEquipment($instructions, $view, $default_css, $show_backlink)

Visualize Equipment

Visualize the equipment used to make a recipe. You can play around with that endpoint!

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$instructions = 'instructions_example'; // string | The recipe's instructions.
$view = 'view_example'; // string | How to visualize the equipment, either \\\"grid\\\" or \\\"list\\\".
$default_css = True; // bool | Whether the default CSS should be added to the response.
$show_backlink = True; // bool | Whether to show a backlink to spoonacular. If set false, this call counts against your quota.

try {
    $result = $apiInstance->visualizeEquipment($instructions, $view, $default_css, $show_backlink);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->visualizeEquipment: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instructions** | **string**| The recipe&#39;s instructions. |
 **view** | **string**| How to visualize the equipment, either \\\&quot;grid\\\&quot; or \\\&quot;list\\\&quot;. | [optional]
 **default_css** | **bool**| Whether the default CSS should be added to the response. | [optional]
 **show_backlink** | **bool**| Whether to show a backlink to spoonacular. If set false, this call counts against your quota. | [optional]

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## visualizeIngredients

> string visualizeIngredients($ingredient_list, $servings, $measure, $view, $default_css, $show_backlink)

Visualize Ingredients

Visualize ingredients of a recipe. You can play around with that endpoint!

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$ingredient_list = 'ingredient_list_example'; // string | The ingredient list of the recipe, one ingredient per line.
$servings = 3.4; // float | The number of servings.
$measure = 'measure_example'; // string | The original system of measurement, either \\\"metric\\\" or \\\"us\\\".
$view = 'view_example'; // string | How to visualize the ingredients, either \\\"grid\\\" or \\\"list\\\".
$default_css = True; // bool | Whether the default CSS should be added to the response.
$show_backlink = True; // bool | Whether to show a backlink to spoonacular. If set false, this call counts against your quota.

try {
    $result = $apiInstance->visualizeIngredients($ingredient_list, $servings, $measure, $view, $default_css, $show_backlink);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->visualizeIngredients: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredient_list** | **string**| The ingredient list of the recipe, one ingredient per line. |
 **servings** | **float**| The number of servings. |
 **measure** | **string**| The original system of measurement, either \\\&quot;metric\\\&quot; or \\\&quot;us\\\&quot;. | [optional]
 **view** | **string**| How to visualize the ingredients, either \\\&quot;grid\\\&quot; or \\\&quot;list\\\&quot;. | [optional]
 **default_css** | **bool**| Whether the default CSS should be added to the response. | [optional]
 **show_backlink** | **bool**| Whether to show a backlink to spoonacular. If set false, this call counts against your quota. | [optional]

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## visualizeMenuItemNutritionByID

> string visualizeMenuItemNutritionByID($id, $default_css)

Visualize Menu Item Nutrition by ID

Visualize a menu item's nutritional information as HTML including CSS.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$id = 1003464; // float | The menu item id.
$default_css = true; // bool | Whether the default CSS should be added to the response.

try {
    $result = $apiInstance->visualizeMenuItemNutritionByID($id, $default_css);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->visualizeMenuItemNutritionByID: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **float**| The menu item id. |
 **default_css** | **bool**| Whether the default CSS should be added to the response. | [optional]

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## visualizePriceBreakdown

> string visualizePriceBreakdown($ingredient_list, $servings, $mode, $default_css, $show_backlink)

Visualize Price Breakdown

Visualize the price breakdown of a recipe. You can play around with that endpoint!

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$ingredient_list = 'ingredient_list_example'; // string | The ingredient list of the recipe, one ingredient per line.
$servings = 3.4; // float | The number of servings.
$mode = 3.4; // float | The mode in which the widget should be delivered. 1 = separate views (compact), 2 = all in one view (full).
$default_css = True; // bool | Whether the default CSS should be added to the response.
$show_backlink = True; // bool | Whether to show a backlink to spoonacular. If set false, this call counts against your quota.

try {
    $result = $apiInstance->visualizePriceBreakdown($ingredient_list, $servings, $mode, $default_css, $show_backlink);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->visualizePriceBreakdown: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredient_list** | **string**| The ingredient list of the recipe, one ingredient per line. |
 **servings** | **float**| The number of servings. |
 **mode** | **float**| The mode in which the widget should be delivered. 1 &#x3D; separate views (compact), 2 &#x3D; all in one view (full). | [optional]
 **default_css** | **bool**| Whether the default CSS should be added to the response. | [optional]
 **show_backlink** | **bool**| Whether to show a backlink to spoonacular. If set false, this call counts against your quota. | [optional]

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## visualizeProductNutritionByID

> string visualizeProductNutritionByID($id, $default_css)

Visualize Product Nutrition by ID

Visualize a product's nutritional information as HTML including CSS.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$id = 7657; // float | The id of the product.
$default_css = true; // bool | Whether the default CSS should be added to the response.

try {
    $result = $apiInstance->visualizeProductNutritionByID($id, $default_css);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->visualizeProductNutritionByID: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **float**| The id of the product. |
 **default_css** | **bool**| Whether the default CSS should be added to the response. | [optional]

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## visualizeRecipeEquipmentByID

> string visualizeRecipeEquipmentByID($id, $default_css)

Visualize Recipe Equipment by ID

Visualize a recipe's equipment list.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$id = 44860; // float | The recipe id.
$default_css = true; // bool | Whether the default CSS should be added to the response.

try {
    $result = $apiInstance->visualizeRecipeEquipmentByID($id, $default_css);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->visualizeRecipeEquipmentByID: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **float**| The recipe id. |
 **default_css** | **bool**| Whether the default CSS should be added to the response. | [optional]

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## visualizeRecipeIngredientsByID

> string visualizeRecipeIngredientsByID($id, $default_css)

Visualize Recipe Ingredients by ID

Visualize a recipe's ingredient list.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$id = 1082038; // float | The recipe id.
$default_css = true; // bool | Whether the default CSS should be added to the response.

try {
    $result = $apiInstance->visualizeRecipeIngredientsByID($id, $default_css);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->visualizeRecipeIngredientsByID: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **float**| The recipe id. |
 **default_css** | **bool**| Whether the default CSS should be added to the response. | [optional]

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## visualizeRecipeNutrition

> string visualizeRecipeNutrition($ingredient_list, $servings, $default_css, $show_backlink)

Visualize Recipe Nutrition

Visualize a recipe's nutritional information as HTML including CSS. You can play around with that endpoint!

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$ingredient_list = 'ingredient_list_example'; // string | The ingredient list of the recipe, one ingredient per line.
$servings = 3.4; // float | The number of servings.
$default_css = True; // bool | Whether the default CSS should be added to the response.
$show_backlink = True; // bool | Whether to show a backlink to spoonacular. If set false, this call counts against your quota.

try {
    $result = $apiInstance->visualizeRecipeNutrition($ingredient_list, $servings, $default_css, $show_backlink);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->visualizeRecipeNutrition: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredient_list** | **string**| The ingredient list of the recipe, one ingredient per line. |
 **servings** | **float**| The number of servings. |
 **default_css** | **bool**| Whether the default CSS should be added to the response. | [optional]
 **show_backlink** | **bool**| Whether to show a backlink to spoonacular. If set false, this call counts against your quota. | [optional]

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## visualizeRecipeNutritionByID

> string visualizeRecipeNutritionByID($id, $default_css)

Visualize Recipe Nutrition by ID

Visualize a recipe's nutritional information as HTML including CSS.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$id = 1082038; // float | The recipe id.
$default_css = true; // bool | Whether the default CSS should be added to the response.

try {
    $result = $apiInstance->visualizeRecipeNutritionByID($id, $default_css);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->visualizeRecipeNutritionByID: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **float**| The recipe id. |
 **default_css** | **bool**| Whether the default CSS should be added to the response. | [optional]

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## visualizeRecipePriceBreakdownByID

> string visualizeRecipePriceBreakdownByID($id, $default_css)

Visualize Recipe Price Breakdown by ID

Visualize a recipe's price breakdown.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$id = 1082038; // float | The recipe id.
$default_css = true; // bool | Whether the default CSS should be added to the response.

try {
    $result = $apiInstance->visualizeRecipePriceBreakdownByID($id, $default_css);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->visualizeRecipePriceBreakdownByID: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **float**| The recipe id. |
 **default_css** | **bool**| Whether the default CSS should be added to the response. | [optional]

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## visualizeRecipeTaste

> string visualizeRecipeTaste($ingredient_list)

Visualize Recipe Taste

Visualize a recipe's taste information as HTML including CSS. You can play around with that endpoint!

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$ingredient_list = 'ingredient_list_example'; // string | The ingredient list of the recipe, one ingredient per line.

try {
    $result = $apiInstance->visualizeRecipeTaste($ingredient_list);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->visualizeRecipeTaste: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredient_list** | **string**| The ingredient list of the recipe, one ingredient per line. |

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## visualizeRecipeTasteByID

> string visualizeRecipeTasteByID($id)

Visualize Recipe Taste by ID

Get a recipe's taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new com.spoonacular.client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$id = 69095; // float | The recipe id.

try {
    $result = $apiInstance->visualizeRecipeTasteByID($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->visualizeRecipeTasteByID: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **float**| The recipe id. |

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)

