# openapi.api.RecipesApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**analyzeARecipeSearchQuery**](RecipesApi.md#analyzeARecipeSearchQuery) | **GET** /recipes/queries/analyze | Analyze a Recipe Search Query
[**analyzeRecipeInstructions**](RecipesApi.md#analyzeRecipeInstructions) | **POST** /recipes/analyzeInstructions | Analyze Recipe Instructions
[**autocompleteRecipeSearch**](RecipesApi.md#autocompleteRecipeSearch) | **GET** /recipes/autocomplete | Autocomplete Recipe Search
[**classifyCuisine**](RecipesApi.md#classifyCuisine) | **POST** /recipes/cuisine | Classify Cuisine
[**computeGlycemicLoad**](RecipesApi.md#computeGlycemicLoad) | **POST** /food/ingredients/glycemicLoad | Compute Glycemic Load
[**convertAmounts**](RecipesApi.md#convertAmounts) | **GET** /recipes/convert | Convert Amounts
[**createRecipeCard**](RecipesApi.md#createRecipeCard) | **POST** /recipes/visualizeRecipe | Create Recipe Card
[**equipmentByIDImage**](RecipesApi.md#equipmentByIDImage) | **GET** /recipes/{id}/equipmentWidget.png | Equipment by ID Image
[**extractRecipeFromWebsite**](RecipesApi.md#extractRecipeFromWebsite) | **GET** /recipes/extract | Extract Recipe from Website
[**getAnalyzedRecipeInstructions**](RecipesApi.md#getAnalyzedRecipeInstructions) | **GET** /recipes/{id}/analyzedInstructions | Get Analyzed Recipe Instructions
[**getRandomRecipes**](RecipesApi.md#getRandomRecipes) | **GET** /recipes/random | Get Random Recipes
[**getRecipeEquipmentByID**](RecipesApi.md#getRecipeEquipmentByID) | **GET** /recipes/{id}/equipmentWidget.json | Equipment by ID
[**getRecipeInformation**](RecipesApi.md#getRecipeInformation) | **GET** /recipes/{id}/information | Get Recipe Information
[**getRecipeInformationBulk**](RecipesApi.md#getRecipeInformationBulk) | **GET** /recipes/informationBulk | Get Recipe Information Bulk
[**getRecipeIngredientsByID**](RecipesApi.md#getRecipeIngredientsByID) | **GET** /recipes/{id}/ingredientWidget.json | Ingredients by ID
[**getRecipeNutritionWidgetByID**](RecipesApi.md#getRecipeNutritionWidgetByID) | **GET** /recipes/{id}/nutritionWidget.json | Nutrition by ID
[**getRecipePriceBreakdownByID**](RecipesApi.md#getRecipePriceBreakdownByID) | **GET** /recipes/{id}/priceBreakdownWidget.json | Price Breakdown by ID
[**getRecipeTasteByID**](RecipesApi.md#getRecipeTasteByID) | **GET** /recipes/{id}/tasteWidget.json | Taste by ID
[**getSimilarRecipes**](RecipesApi.md#getSimilarRecipes) | **GET** /recipes/{id}/similar | Get Similar Recipes
[**guessNutritionByDishName**](RecipesApi.md#guessNutritionByDishName) | **GET** /recipes/guessNutrition | Guess Nutrition by Dish Name
[**ingredientsByIDImage**](RecipesApi.md#ingredientsByIDImage) | **GET** /recipes/{id}/ingredientWidget.png | Ingredients by ID Image
[**parseIngredients**](RecipesApi.md#parseIngredients) | **POST** /recipes/parseIngredients | Parse Ingredients
[**priceBreakdownByIDImage**](RecipesApi.md#priceBreakdownByIDImage) | **GET** /recipes/{id}/priceBreakdownWidget.png | Price Breakdown by ID Image
[**quickAnswer**](RecipesApi.md#quickAnswer) | **GET** /recipes/quickAnswer | Quick Answer
[**recipeNutritionByIDImage**](RecipesApi.md#recipeNutritionByIDImage) | **GET** /recipes/{id}/nutritionWidget.png | Recipe Nutrition by ID Image
[**recipeNutritionLabelImage**](RecipesApi.md#recipeNutritionLabelImage) | **GET** /recipes/{id}/nutritionLabel.png | Recipe Nutrition Label Image
[**recipeNutritionLabelWidget**](RecipesApi.md#recipeNutritionLabelWidget) | **GET** /recipes/{id}/nutritionLabel | Recipe Nutrition Label Widget
[**recipeTasteByIDImage**](RecipesApi.md#recipeTasteByIDImage) | **GET** /recipes/{id}/tasteWidget.png | Recipe Taste by ID Image
[**searchRecipes**](RecipesApi.md#searchRecipes) | **GET** /recipes/complexSearch | Search Recipes
[**searchRecipesByIngredients**](RecipesApi.md#searchRecipesByIngredients) | **GET** /recipes/findByIngredients | Search Recipes by Ingredients
[**searchRecipesByNutrients**](RecipesApi.md#searchRecipesByNutrients) | **GET** /recipes/findByNutrients | Search Recipes by Nutrients
[**summarizeRecipe**](RecipesApi.md#summarizeRecipe) | **GET** /recipes/{id}/summary | Summarize Recipe
[**visualizeEquipment**](RecipesApi.md#visualizeEquipment) | **POST** /recipes/visualizeEquipment | Equipment Widget
[**visualizePriceBreakdown**](RecipesApi.md#visualizePriceBreakdown) | **POST** /recipes/visualizePriceEstimator | Price Breakdown Widget
[**visualizeRecipeEquipmentByID**](RecipesApi.md#visualizeRecipeEquipmentByID) | **GET** /recipes/{id}/equipmentWidget | Equipment by ID Widget
[**visualizeRecipeIngredientsByID**](RecipesApi.md#visualizeRecipeIngredientsByID) | **GET** /recipes/{id}/ingredientWidget | Ingredients by ID Widget
[**visualizeRecipeNutrition**](RecipesApi.md#visualizeRecipeNutrition) | **POST** /recipes/visualizeNutrition | Recipe Nutrition Widget
[**visualizeRecipeNutritionByID**](RecipesApi.md#visualizeRecipeNutritionByID) | **GET** /recipes/{id}/nutritionWidget | Recipe Nutrition by ID Widget
[**visualizeRecipePriceBreakdownByID**](RecipesApi.md#visualizeRecipePriceBreakdownByID) | **GET** /recipes/{id}/priceBreakdownWidget | Price Breakdown by ID Widget
[**visualizeRecipeTaste**](RecipesApi.md#visualizeRecipeTaste) | **POST** /recipes/visualizeTaste | Recipe Taste Widget
[**visualizeRecipeTasteByID**](RecipesApi.md#visualizeRecipeTasteByID) | **GET** /recipes/{id}/tasteWidget | Recipe Taste by ID Widget


# **analyzeARecipeSearchQuery**
> InlineResponse20018 analyzeARecipeSearchQuery(q)

Analyze a Recipe Search Query

Parse a recipe search query to find out its intention.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new RecipesApi();
var q = salmon with fusilli and no nuts; // String | The recipe search query.

try { 
    var result = api_instance.analyzeARecipeSearchQuery(q);
    print(result);
} catch (e) {
    print("Exception when calling RecipesApi->analyzeARecipeSearchQuery: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| The recipe search query. | [default to null]

### Return type

[**InlineResponse20018**](InlineResponse20018.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **analyzeRecipeInstructions**
> InlineResponse20016 analyzeRecipeInstructions(contentType)

Analyze Recipe Instructions

This endpoint allows you to break down instructions into atomic steps. Furthermore, each step will contain the ingredients and equipment required. Additionally, all ingredients and equipment from the recipe's instructions will be extracted independently of the step they're used in.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new RecipesApi();
var contentType = application/json; // String | The content type.

try { 
    var result = api_instance.analyzeRecipeInstructions(contentType);
    print(result);
} catch (e) {
    print("Exception when calling RecipesApi->analyzeRecipeInstructions: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentType** | **String**| The content type. | [optional] [default to null]

### Return type

[**InlineResponse20016**](InlineResponse20016.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **autocompleteRecipeSearch**
> List<InlineResponse2007> autocompleteRecipeSearch(query, number)

Autocomplete Recipe Search

Autocomplete a partial input to suggest possible recipe names.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new RecipesApi();
var query = burger; // String | The (natural language) search query.
var number = 10; // int | The maximum number of items to return (between 1 and 100). Defaults to 10.

try { 
    var result = api_instance.autocompleteRecipeSearch(query, number);
    print(result);
} catch (e) {
    print("Exception when calling RecipesApi->autocompleteRecipeSearch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The (natural language) search query. | [optional] [default to null]
 **number** | **int**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]

### Return type

[**List<InlineResponse2007>**](InlineResponse2007.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **classifyCuisine**
> InlineResponse20017 classifyCuisine(contentType)

Classify Cuisine

Classify the recipe's cuisine.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new RecipesApi();
var contentType = application/json; // String | The content type.

try { 
    var result = api_instance.classifyCuisine(contentType);
    print(result);
} catch (e) {
    print("Exception when calling RecipesApi->classifyCuisine: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentType** | **String**| The content type. | [optional] [default to null]

### Return type

[**InlineResponse20017**](InlineResponse20017.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **computeGlycemicLoad**
> InlineResponse20023 computeGlycemicLoad(inlineObject, language)

Compute Glycemic Load

Retrieve the glycemic index for a list of ingredients and compute the individual and total glycemic load.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new RecipesApi();
var inlineObject = new InlineObject(); // InlineObject | 
var language = en; // String | The language of the input. Either 'en' or 'de'.

try { 
    var result = api_instance.computeGlycemicLoad(inlineObject, language);
    print(result);
} catch (e) {
    print("Exception when calling RecipesApi->computeGlycemicLoad: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inlineObject** | [**InlineObject**](InlineObject.md)|  | 
 **language** | **String**| The language of the input. Either &#39;en&#39; or &#39;de&#39;. | [optional] [default to null]

### Return type

[**InlineResponse20023**](InlineResponse20023.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **convertAmounts**
> InlineResponse20019 convertAmounts(ingredientName, sourceAmount, sourceUnit, targetUnit)

Convert Amounts

Convert amounts like \"2 cups of flour to grams\".

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new RecipesApi();
var ingredientName = flour; // String | The ingredient which you want to convert.
var sourceAmount = 2.5; // num | The amount from which you want to convert, e.g. the 2.5 in \"2.5 cups of flour to grams\".
var sourceUnit = cups; // String | The unit from which you want to convert, e.g. the grams in \"2.5 cups of flour to grams\". You can also use \"piece\", e.g. \"3.4 oz tomatoes to piece\"
var targetUnit = grams; // String | The unit to which you want to convert, e.g. the grams in \"2.5 cups of flour to grams\". You can also use \"piece\", e.g. \"3.4 oz tomatoes to piece\"

try { 
    var result = api_instance.convertAmounts(ingredientName, sourceAmount, sourceUnit, targetUnit);
    print(result);
} catch (e) {
    print("Exception when calling RecipesApi->convertAmounts: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredientName** | **String**| The ingredient which you want to convert. | [default to null]
 **sourceAmount** | **num**| The amount from which you want to convert, e.g. the 2.5 in \&quot;2.5 cups of flour to grams\&quot;. | [default to null]
 **sourceUnit** | **String**| The unit from which you want to convert, e.g. the grams in \&quot;2.5 cups of flour to grams\&quot;. You can also use \&quot;piece\&quot;, e.g. \&quot;3.4 oz tomatoes to piece\&quot; | [default to null]
 **targetUnit** | **String**| The unit to which you want to convert, e.g. the grams in \&quot;2.5 cups of flour to grams\&quot;. You can also use \&quot;piece\&quot;, e.g. \&quot;3.4 oz tomatoes to piece\&quot; | [default to null]

### Return type

[**InlineResponse20019**](InlineResponse20019.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createRecipeCard**
> InlineResponse20015 createRecipeCard(contentType)

Create Recipe Card

Generate a recipe card for a recipe.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new RecipesApi();
var contentType = application/json; // String | The content type.

try { 
    var result = api_instance.createRecipeCard(contentType);
    print(result);
} catch (e) {
    print("Exception when calling RecipesApi->createRecipeCard: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentType** | **String**| The content type. | [optional] [default to null]

### Return type

[**InlineResponse20015**](InlineResponse20015.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **equipmentByIDImage**
> Object equipmentByIDImage(id)

Equipment by ID Image

Visualize a recipe's equipment list as an image.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new RecipesApi();
var id = 44860; // num | The recipe id.

try { 
    var result = api_instance.equipmentByIDImage(id);
    print(result);
} catch (e) {
    print("Exception when calling RecipesApi->equipmentByIDImage: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **num**| The recipe id. | [default to null]

### Return type

[**Object**](Object.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **extractRecipeFromWebsite**
> InlineResponse2003 extractRecipeFromWebsite(url, forceExtraction, analyze, includeNutrition, includeTaste)

Extract Recipe from Website

This endpoint lets you extract recipe data such as title, ingredients, and instructions from any properly formatted Website.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new RecipesApi();
var url = https://foodista.com/recipe/ZHK4KPB6/chocolate-crinkle-cookies; // String | The URL of the recipe page.
var forceExtraction = true; // bool | If true, the extraction will be triggered whether we already know the recipe or not. Use this only if information is missing as this operation is slower.
var analyze = false; // bool | If true, the recipe will be analyzed and classified resolving in more data such as cuisines, dish types, and more.
var includeNutrition = true; // bool | Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings.
var includeTaste = false; // bool | Whether taste data should be added to correctly parsed ingredients.

try { 
    var result = api_instance.extractRecipeFromWebsite(url, forceExtraction, analyze, includeNutrition, includeTaste);
    print(result);
} catch (e) {
    print("Exception when calling RecipesApi->extractRecipeFromWebsite: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **String**| The URL of the recipe page. | [default to null]
 **forceExtraction** | **bool**| If true, the extraction will be triggered whether we already know the recipe or not. Use this only if information is missing as this operation is slower. | [optional] [default to null]
 **analyze** | **bool**| If true, the recipe will be analyzed and classified resolving in more data such as cuisines, dish types, and more. | [optional] [default to null]
 **includeNutrition** | **bool**| Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. | [optional] [default to false]
 **includeTaste** | **bool**| Whether taste data should be added to correctly parsed ingredients. | [optional] [default to false]

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAnalyzedRecipeInstructions**
> InlineResponse20013 getAnalyzedRecipeInstructions(id, stepBreakdown)

Get Analyzed Recipe Instructions

Get an analyzed breakdown of a recipe's instructions. Each step is enriched with the ingredients and equipment required.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new RecipesApi();
var id = 1; // int | The item's id.
var stepBreakdown = true; // bool | Whether to break down the recipe steps even more.

try { 
    var result = api_instance.getAnalyzedRecipeInstructions(id, stepBreakdown);
    print(result);
} catch (e) {
    print("Exception when calling RecipesApi->getAnalyzedRecipeInstructions: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The item&#39;s id. | [default to null]
 **stepBreakdown** | **bool**| Whether to break down the recipe steps even more. | [optional] [default to null]

### Return type

[**InlineResponse20013**](InlineResponse20013.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRandomRecipes**
> InlineResponse2006 getRandomRecipes(limitLicense, tags, number)

Get Random Recipes

Find random (popular) recipes. If you need to filter recipes by diet, nutrition etc. you might want to consider using the complex recipe search endpoint and set the sort request parameter to random.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new RecipesApi();
var limitLicense = true; // bool | Whether the recipes should have an open license that allows display with proper attribution.
var tags = tags_example; // String | The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have.
var number = 10; // int | The maximum number of items to return (between 1 and 100). Defaults to 10.

try { 
    var result = api_instance.getRandomRecipes(limitLicense, tags, number);
    print(result);
} catch (e) {
    print("Exception when calling RecipesApi->getRandomRecipes: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limitLicense** | **bool**| Whether the recipes should have an open license that allows display with proper attribution. | [optional] [default to true]
 **tags** | **String**| The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have. | [optional] [default to null]
 **number** | **int**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRecipeEquipmentByID**
> InlineResponse2009 getRecipeEquipmentByID(id)

Equipment by ID

Get a recipe's equipment list.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new RecipesApi();
var id = 1; // int | The item's id.

try { 
    var result = api_instance.getRecipeEquipmentByID(id);
    print(result);
} catch (e) {
    print("Exception when calling RecipesApi->getRecipeEquipmentByID: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The item&#39;s id. | [default to null]

### Return type

[**InlineResponse2009**](InlineResponse2009.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRecipeInformation**
> InlineResponse2003 getRecipeInformation(id, includeNutrition)

Get Recipe Information

Use a recipe id to get full information about a recipe, such as ingredients, nutrition, diet and allergen information, etc.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new RecipesApi();
var id = 1; // int | The item's id.
var includeNutrition = true; // bool | Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings.

try { 
    var result = api_instance.getRecipeInformation(id, includeNutrition);
    print(result);
} catch (e) {
    print("Exception when calling RecipesApi->getRecipeInformation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The item&#39;s id. | [default to null]
 **includeNutrition** | **bool**| Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. | [optional] [default to false]

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRecipeInformationBulk**
> List<InlineResponse2004> getRecipeInformationBulk(ids, includeNutrition)

Get Recipe Information Bulk

Get information about multiple recipes at once. This is equivalent to calling the Get Recipe Information endpoint multiple times, but faster.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new RecipesApi();
var ids = 715538,716429; // String | A comma-separated list of recipe ids.
var includeNutrition = true; // bool | Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings.

try { 
    var result = api_instance.getRecipeInformationBulk(ids, includeNutrition);
    print(result);
} catch (e) {
    print("Exception when calling RecipesApi->getRecipeInformationBulk: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | **String**| A comma-separated list of recipe ids. | [default to null]
 **includeNutrition** | **bool**| Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. | [optional] [default to false]

### Return type

[**List<InlineResponse2004>**](InlineResponse2004.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRecipeIngredientsByID**
> InlineResponse20011 getRecipeIngredientsByID(id)

Ingredients by ID

Get a recipe's ingredient list.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new RecipesApi();
var id = 1; // int | The item's id.

try { 
    var result = api_instance.getRecipeIngredientsByID(id);
    print(result);
} catch (e) {
    print("Exception when calling RecipesApi->getRecipeIngredientsByID: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The item&#39;s id. | [default to null]

### Return type

[**InlineResponse20011**](InlineResponse20011.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRecipeNutritionWidgetByID**
> InlineResponse20012 getRecipeNutritionWidgetByID(id)

Nutrition by ID

Get a recipe's nutrition data.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new RecipesApi();
var id = 1; // int | The item's id.

try { 
    var result = api_instance.getRecipeNutritionWidgetByID(id);
    print(result);
} catch (e) {
    print("Exception when calling RecipesApi->getRecipeNutritionWidgetByID: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The item&#39;s id. | [default to null]

### Return type

[**InlineResponse20012**](InlineResponse20012.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRecipePriceBreakdownByID**
> InlineResponse20010 getRecipePriceBreakdownByID(id)

Price Breakdown by ID

Get a recipe's price breakdown data.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new RecipesApi();
var id = 1; // int | The item's id.

try { 
    var result = api_instance.getRecipePriceBreakdownByID(id);
    print(result);
} catch (e) {
    print("Exception when calling RecipesApi->getRecipePriceBreakdownByID: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The item&#39;s id. | [default to null]

### Return type

[**InlineResponse20010**](InlineResponse20010.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRecipeTasteByID**
> InlineResponse2008 getRecipeTasteByID(id, normalize)

Taste by ID

Get a recipe's taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new RecipesApi();
var id = 1; // int | The item's id.
var normalize = true; // bool | Normalize to the strongest taste.

try { 
    var result = api_instance.getRecipeTasteByID(id, normalize);
    print(result);
} catch (e) {
    print("Exception when calling RecipesApi->getRecipeTasteByID: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The item&#39;s id. | [default to null]
 **normalize** | **bool**| Normalize to the strongest taste. | [optional] [default to true]

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSimilarRecipes**
> List<InlineResponse2005> getSimilarRecipes(id, number, limitLicense)

Get Similar Recipes

Find recipes which are similar to the given one.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new RecipesApi();
var id = 1; // int | The item's id.
var number = 10; // int | The maximum number of items to return (between 1 and 100). Defaults to 10.
var limitLicense = true; // bool | Whether the recipes should have an open license that allows display with proper attribution.

try { 
    var result = api_instance.getSimilarRecipes(id, number, limitLicense);
    print(result);
} catch (e) {
    print("Exception when calling RecipesApi->getSimilarRecipes: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The item&#39;s id. | [default to null]
 **number** | **int**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]
 **limitLicense** | **bool**| Whether the recipes should have an open license that allows display with proper attribution. | [optional] [default to true]

### Return type

[**List<InlineResponse2005>**](InlineResponse2005.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **guessNutritionByDishName**
> InlineResponse20021 guessNutritionByDishName(title)

Guess Nutrition by Dish Name

Estimate the macronutrients of a dish based on its title.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new RecipesApi();
var title = Spaghetti Aglio et Olio; // String | The title of the dish.

try { 
    var result = api_instance.guessNutritionByDishName(title);
    print(result);
} catch (e) {
    print("Exception when calling RecipesApi->guessNutritionByDishName: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **String**| The title of the dish. | [default to null]

### Return type

[**InlineResponse20021**](InlineResponse20021.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ingredientsByIDImage**
> Object ingredientsByIDImage(id, measure)

Ingredients by ID Image

Visualize a recipe's ingredient list.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new RecipesApi();
var id = 1082038; // num | The recipe id.
var measure = metric; // String | Whether the the measures should be 'us' or 'metric'.

try { 
    var result = api_instance.ingredientsByIDImage(id, measure);
    print(result);
} catch (e) {
    print("Exception when calling RecipesApi->ingredientsByIDImage: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **num**| The recipe id. | [default to null]
 **measure** | **String**| Whether the the measures should be &#39;us&#39; or &#39;metric&#39;. | [optional] [default to null]

### Return type

[**Object**](Object.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **parseIngredients**
> List<InlineResponse20020> parseIngredients(contentType, language)

Parse Ingredients

Extract an ingredient from plain text.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new RecipesApi();
var contentType = application/json; // String | The content type.
var language = en; // String | The language of the input. Either 'en' or 'de'.

try { 
    var result = api_instance.parseIngredients(contentType, language);
    print(result);
} catch (e) {
    print("Exception when calling RecipesApi->parseIngredients: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentType** | **String**| The content type. | [optional] [default to null]
 **language** | **String**| The language of the input. Either &#39;en&#39; or &#39;de&#39;. | [optional] [default to null]

### Return type

[**List<InlineResponse20020>**](InlineResponse20020.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **priceBreakdownByIDImage**
> Object priceBreakdownByIDImage(id)

Price Breakdown by ID Image

Visualize a recipe's price breakdown.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new RecipesApi();
var id = 1082038; // num | The recipe id.

try { 
    var result = api_instance.priceBreakdownByIDImage(id);
    print(result);
} catch (e) {
    print("Exception when calling RecipesApi->priceBreakdownByIDImage: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **num**| The recipe id. | [default to null]

### Return type

[**Object**](Object.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **quickAnswer**
> InlineResponse20050 quickAnswer(q)

Quick Answer

Answer a nutrition related natural language question.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new RecipesApi();
var q = How much vitamin c is in 2 apples?; // String | The nutrition related question.

try { 
    var result = api_instance.quickAnswer(q);
    print(result);
} catch (e) {
    print("Exception when calling RecipesApi->quickAnswer: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| The nutrition related question. | [default to null]

### Return type

[**InlineResponse20050**](InlineResponse20050.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recipeNutritionByIDImage**
> Object recipeNutritionByIDImage(id)

Recipe Nutrition by ID Image

Visualize a recipe's nutritional information as an image.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new RecipesApi();
var id = 1082038; // num | The recipe id.

try { 
    var result = api_instance.recipeNutritionByIDImage(id);
    print(result);
} catch (e) {
    print("Exception when calling RecipesApi->recipeNutritionByIDImage: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **num**| The recipe id. | [default to null]

### Return type

[**Object**](Object.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recipeNutritionLabelImage**
> Object recipeNutritionLabelImage(id, showOptionalNutrients, showZeroValues, showIngredients)

Recipe Nutrition Label Image

Get a recipe's nutrition label as an image.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new RecipesApi();
var id = 641166; // num | The recipe id.
var showOptionalNutrients = false; // bool | Whether to show optional nutrients.
var showZeroValues = false; // bool | Whether to show zero values.
var showIngredients = false; // bool | Whether to show a list of ingredients.

try { 
    var result = api_instance.recipeNutritionLabelImage(id, showOptionalNutrients, showZeroValues, showIngredients);
    print(result);
} catch (e) {
    print("Exception when calling RecipesApi->recipeNutritionLabelImage: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **num**| The recipe id. | [default to null]
 **showOptionalNutrients** | **bool**| Whether to show optional nutrients. | [optional] [default to null]
 **showZeroValues** | **bool**| Whether to show zero values. | [optional] [default to null]
 **showIngredients** | **bool**| Whether to show a list of ingredients. | [optional] [default to null]

### Return type

[**Object**](Object.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recipeNutritionLabelWidget**
> String recipeNutritionLabelWidget(id, defaultCss, showOptionalNutrients, showZeroValues, showIngredients)

Recipe Nutrition Label Widget

Get a recipe's nutrition label as an HTML widget.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new RecipesApi();
var id = 641166; // num | The recipe id.
var defaultCss = false; // bool | Whether the default CSS should be added to the response.
var showOptionalNutrients = false; // bool | Whether to show optional nutrients.
var showZeroValues = false; // bool | Whether to show zero values.
var showIngredients = false; // bool | Whether to show a list of ingredients.

try { 
    var result = api_instance.recipeNutritionLabelWidget(id, defaultCss, showOptionalNutrients, showZeroValues, showIngredients);
    print(result);
} catch (e) {
    print("Exception when calling RecipesApi->recipeNutritionLabelWidget: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **num**| The recipe id. | [default to null]
 **defaultCss** | **bool**| Whether the default CSS should be added to the response. | [optional] [default to true]
 **showOptionalNutrients** | **bool**| Whether to show optional nutrients. | [optional] [default to null]
 **showZeroValues** | **bool**| Whether to show zero values. | [optional] [default to null]
 **showIngredients** | **bool**| Whether to show a list of ingredients. | [optional] [default to null]

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recipeTasteByIDImage**
> Object recipeTasteByIDImage(id, normalize, rgb)

Recipe Taste by ID Image

Get a recipe's taste as an image. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new RecipesApi();
var id = 69095; // num | The recipe id.
var normalize = false; // bool | Normalize to the strongest taste.
var rgb = 75,192,192; // String | Red, green, blue values for the chart color.

try { 
    var result = api_instance.recipeTasteByIDImage(id, normalize, rgb);
    print(result);
} catch (e) {
    print("Exception when calling RecipesApi->recipeTasteByIDImage: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **num**| The recipe id. | [default to null]
 **normalize** | **bool**| Normalize to the strongest taste. | [optional] [default to null]
 **rgb** | **String**| Red, green, blue values for the chart color. | [optional] [default to null]

### Return type

[**Object**](Object.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchRecipes**
> InlineResponse200 searchRecipes(query, cuisine, excludeCuisine, diet, intolerances, equipment, includeIngredients, excludeIngredients, type, instructionsRequired, fillIngredients, addRecipeInformation, addRecipeNutrition, author, tags, recipeBoxId, titleMatch, maxReadyTime, ignorePantry, sort, sortDirection, minCarbs, maxCarbs, minProtein, maxProtein, minCalories, maxCalories, minFat, maxFat, minAlcohol, maxAlcohol, minCaffeine, maxCaffeine, minCopper, maxCopper, minCalcium, maxCalcium, minCholine, maxCholine, minCholesterol, maxCholesterol, minFluoride, maxFluoride, minSaturatedFat, maxSaturatedFat, minVitaminA, maxVitaminA, minVitaminC, maxVitaminC, minVitaminD, maxVitaminD, minVitaminE, maxVitaminE, minVitaminK, maxVitaminK, minVitaminB1, maxVitaminB1, minVitaminB2, maxVitaminB2, minVitaminB5, maxVitaminB5, minVitaminB3, maxVitaminB3, minVitaminB6, maxVitaminB6, minVitaminB12, maxVitaminB12, minFiber, maxFiber, minFolate, maxFolate, minFolicAcid, maxFolicAcid, minIodine, maxIodine, minIron, maxIron, minMagnesium, maxMagnesium, minManganese, maxManganese, minPhosphorus, maxPhosphorus, minPotassium, maxPotassium, minSelenium, maxSelenium, minSodium, maxSodium, minSugar, maxSugar, minZinc, maxZinc, offset, number, limitLicense)

Search Recipes

Search through hundreds of thousands of recipes using advanced filtering and ranking. NOTE: This method combines searching by query, by ingredients, and by nutrients into one endpoint.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new RecipesApi();
var query = burger; // String | The (natural language) search query.
var cuisine = italian; // String | The cuisine(s) of the recipes. One or more, comma separated (will be interpreted as 'OR'). See a full list of supported cuisines.
var excludeCuisine = greek; // String | The cuisine(s) the recipes must not match. One or more, comma separated (will be interpreted as 'AND'). See a full list of supported cuisines.
var diet = vegetarian; // String | The diet for which the recipes must be suitable. See a full list of supported diets.
var intolerances = gluten; // String | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.
var equipment = pan; // String | The equipment required. Multiple values will be interpreted as 'or'. For example, value could be \"blender, frying pan, bowl\".
var includeIngredients = tomato,cheese; // String | A comma-separated list of ingredients that should/must be used in the recipes.
var excludeIngredients = eggs; // String | A comma-separated list of ingredients or ingredient types that the recipes must not contain.
var type = main course; // String | The type of recipe. See a full list of supported meal types.
var instructionsRequired = true; // bool | Whether the recipes must have instructions.
var fillIngredients = false; // bool | Add information about the ingredients and whether they are used or missing in relation to the query.
var addRecipeInformation = false; // bool | If set to true, you get more information about the recipes returned.
var addRecipeNutrition = false; // bool | If set to true, you get nutritional information about each recipes returned.
var author = coffeebean; // String | The username of the recipe author.
var tags = tags_example; // String | The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have.
var recipeBoxId = 2468; // num | The id of the recipe box to which the search should be limited to.
var titleMatch = Crock Pot; // String | Enter text that must be found in the title of the recipes.
var maxReadyTime = 20; // num | The maximum time in minutes it should take to prepare and cook the recipe.
var ignorePantry = false; // bool | Whether to ignore typical pantry items, such as water, salt, flour, etc.
var sort = calories; // String | The strategy to sort recipes by. See a full list of supported sorting options.
var sortDirection = asc; // String | The direction in which to sort. Must be either 'asc' (ascending) or 'desc' (descending).
var minCarbs = 10; // num | The minimum amount of carbohydrates in grams the recipe must have.
var maxCarbs = 100; // num | The maximum amount of carbohydrates in grams the recipe can have.
var minProtein = 10; // num | The minimum amount of protein in grams the recipe must have.
var maxProtein = 100; // num | The maximum amount of protein in grams the recipe can have.
var minCalories = 50; // num | The minimum amount of calories the recipe must have.
var maxCalories = 800; // num | The maximum amount of calories the recipe can have.
var minFat = 1; // num | The minimum amount of fat in grams the recipe must have.
var maxFat = 100; // num | The maximum amount of fat in grams the recipe can have.
var minAlcohol = 0; // num | The minimum amount of alcohol in grams the recipe must have.
var maxAlcohol = 100; // num | The maximum amount of alcohol in grams the recipe can have.
var minCaffeine = 0; // num | The minimum amount of caffeine in milligrams the recipe must have.
var maxCaffeine = 100; // num | The maximum amount of caffeine in milligrams the recipe can have.
var minCopper = 0; // num | The minimum amount of copper in milligrams the recipe must have.
var maxCopper = 100; // num | The maximum amount of copper in milligrams the recipe can have.
var minCalcium = 0; // num | The minimum amount of calcium in milligrams the recipe must have.
var maxCalcium = 100; // num | The maximum amount of calcium in milligrams the recipe can have.
var minCholine = 0; // num | The minimum amount of choline in milligrams the recipe must have.
var maxCholine = 100; // num | The maximum amount of choline in milligrams the recipe can have.
var minCholesterol = 0; // num | The minimum amount of cholesterol in milligrams the recipe must have.
var maxCholesterol = 100; // num | The maximum amount of cholesterol in milligrams the recipe can have.
var minFluoride = 0; // num | The minimum amount of fluoride in milligrams the recipe must have.
var maxFluoride = 100; // num | The maximum amount of fluoride in milligrams the recipe can have.
var minSaturatedFat = 0; // num | The minimum amount of saturated fat in grams the recipe must have.
var maxSaturatedFat = 100; // num | The maximum amount of saturated fat in grams the recipe can have.
var minVitaminA = 0; // num | The minimum amount of Vitamin A in IU the recipe must have.
var maxVitaminA = 100; // num | The maximum amount of Vitamin A in IU the recipe can have.
var minVitaminC = 0; // num | The minimum amount of Vitamin C milligrams the recipe must have.
var maxVitaminC = 100; // num | The maximum amount of Vitamin C in milligrams the recipe can have.
var minVitaminD = 0; // num | The minimum amount of Vitamin D in micrograms the recipe must have.
var maxVitaminD = 100; // num | The maximum amount of Vitamin D in micrograms the recipe can have.
var minVitaminE = 0; // num | The minimum amount of Vitamin E in milligrams the recipe must have.
var maxVitaminE = 100; // num | The maximum amount of Vitamin E in milligrams the recipe can have.
var minVitaminK = 0; // num | The minimum amount of Vitamin K in micrograms the recipe must have.
var maxVitaminK = 100; // num | The maximum amount of Vitamin K in micrograms the recipe can have.
var minVitaminB1 = 0; // num | The minimum amount of Vitamin B1 in milligrams the recipe must have.
var maxVitaminB1 = 100; // num | The maximum amount of Vitamin B1 in milligrams the recipe can have.
var minVitaminB2 = 0; // num | The minimum amount of Vitamin B2 in milligrams the recipe must have.
var maxVitaminB2 = 100; // num | The maximum amount of Vitamin B2 in milligrams the recipe can have.
var minVitaminB5 = 0; // num | The minimum amount of Vitamin B5 in milligrams the recipe must have.
var maxVitaminB5 = 100; // num | The maximum amount of Vitamin B5 in milligrams the recipe can have.
var minVitaminB3 = 0; // num | The minimum amount of Vitamin B3 in milligrams the recipe must have.
var maxVitaminB3 = 100; // num | The maximum amount of Vitamin B3 in milligrams the recipe can have.
var minVitaminB6 = 0; // num | The minimum amount of Vitamin B6 in milligrams the recipe must have.
var maxVitaminB6 = 100; // num | The maximum amount of Vitamin B6 in milligrams the recipe can have.
var minVitaminB12 = 0; // num | The minimum amount of Vitamin B12 in micrograms the recipe must have.
var maxVitaminB12 = 100; // num | The maximum amount of Vitamin B12 in micrograms the recipe can have.
var minFiber = 0; // num | The minimum amount of fiber in grams the recipe must have.
var maxFiber = 100; // num | The maximum amount of fiber in grams the recipe can have.
var minFolate = 0; // num | The minimum amount of folate in micrograms the recipe must have.
var maxFolate = 100; // num | The maximum amount of folate in micrograms the recipe can have.
var minFolicAcid = 0; // num | The minimum amount of folic acid in micrograms the recipe must have.
var maxFolicAcid = 100; // num | The maximum amount of folic acid in micrograms the recipe can have.
var minIodine = 0; // num | The minimum amount of iodine in micrograms the recipe must have.
var maxIodine = 100; // num | The maximum amount of iodine in micrograms the recipe can have.
var minIron = 0; // num | The minimum amount of iron in milligrams the recipe must have.
var maxIron = 100; // num | The maximum amount of iron in milligrams the recipe can have.
var minMagnesium = 0; // num | The minimum amount of magnesium in milligrams the recipe must have.
var maxMagnesium = 100; // num | The maximum amount of magnesium in milligrams the recipe can have.
var minManganese = 0; // num | The minimum amount of manganese in milligrams the recipe must have.
var maxManganese = 100; // num | The maximum amount of manganese in milligrams the recipe can have.
var minPhosphorus = 0; // num | The minimum amount of phosphorus in milligrams the recipe must have.
var maxPhosphorus = 100; // num | The maximum amount of phosphorus in milligrams the recipe can have.
var minPotassium = 0; // num | The minimum amount of potassium in milligrams the recipe must have.
var maxPotassium = 100; // num | The maximum amount of potassium in milligrams the recipe can have.
var minSelenium = 0; // num | The minimum amount of selenium in micrograms the recipe must have.
var maxSelenium = 100; // num | The maximum amount of selenium in micrograms the recipe can have.
var minSodium = 0; // num | The minimum amount of sodium in milligrams the recipe must have.
var maxSodium = 100; // num | The maximum amount of sodium in milligrams the recipe can have.
var minSugar = 0; // num | The minimum amount of sugar in grams the recipe must have.
var maxSugar = 100; // num | The maximum amount of sugar in grams the recipe can have.
var minZinc = 0; // num | The minimum amount of zinc in milligrams the recipe must have.
var maxZinc = 100; // num | The maximum amount of zinc in milligrams the recipe can have.
var offset = 56; // int | The number of results to skip (between 0 and 900).
var number = 10; // int | The maximum number of items to return (between 1 and 100). Defaults to 10.
var limitLicense = true; // bool | Whether the recipes should have an open license that allows display with proper attribution.

try { 
    var result = api_instance.searchRecipes(query, cuisine, excludeCuisine, diet, intolerances, equipment, includeIngredients, excludeIngredients, type, instructionsRequired, fillIngredients, addRecipeInformation, addRecipeNutrition, author, tags, recipeBoxId, titleMatch, maxReadyTime, ignorePantry, sort, sortDirection, minCarbs, maxCarbs, minProtein, maxProtein, minCalories, maxCalories, minFat, maxFat, minAlcohol, maxAlcohol, minCaffeine, maxCaffeine, minCopper, maxCopper, minCalcium, maxCalcium, minCholine, maxCholine, minCholesterol, maxCholesterol, minFluoride, maxFluoride, minSaturatedFat, maxSaturatedFat, minVitaminA, maxVitaminA, minVitaminC, maxVitaminC, minVitaminD, maxVitaminD, minVitaminE, maxVitaminE, minVitaminK, maxVitaminK, minVitaminB1, maxVitaminB1, minVitaminB2, maxVitaminB2, minVitaminB5, maxVitaminB5, minVitaminB3, maxVitaminB3, minVitaminB6, maxVitaminB6, minVitaminB12, maxVitaminB12, minFiber, maxFiber, minFolate, maxFolate, minFolicAcid, maxFolicAcid, minIodine, maxIodine, minIron, maxIron, minMagnesium, maxMagnesium, minManganese, maxManganese, minPhosphorus, maxPhosphorus, minPotassium, maxPotassium, minSelenium, maxSelenium, minSodium, maxSodium, minSugar, maxSugar, minZinc, maxZinc, offset, number, limitLicense);
    print(result);
} catch (e) {
    print("Exception when calling RecipesApi->searchRecipes: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The (natural language) search query. | [optional] [default to null]
 **cuisine** | **String**| The cuisine(s) of the recipes. One or more, comma separated (will be interpreted as &#39;OR&#39;). See a full list of supported cuisines. | [optional] [default to null]
 **excludeCuisine** | **String**| The cuisine(s) the recipes must not match. One or more, comma separated (will be interpreted as &#39;AND&#39;). See a full list of supported cuisines. | [optional] [default to null]
 **diet** | **String**| The diet for which the recipes must be suitable. See a full list of supported diets. | [optional] [default to null]
 **intolerances** | **String**| A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. | [optional] [default to null]
 **equipment** | **String**| The equipment required. Multiple values will be interpreted as &#39;or&#39;. For example, value could be \&quot;blender, frying pan, bowl\&quot;. | [optional] [default to null]
 **includeIngredients** | **String**| A comma-separated list of ingredients that should/must be used in the recipes. | [optional] [default to null]
 **excludeIngredients** | **String**| A comma-separated list of ingredients or ingredient types that the recipes must not contain. | [optional] [default to null]
 **type** | **String**| The type of recipe. See a full list of supported meal types. | [optional] [default to null]
 **instructionsRequired** | **bool**| Whether the recipes must have instructions. | [optional] [default to null]
 **fillIngredients** | **bool**| Add information about the ingredients and whether they are used or missing in relation to the query. | [optional] [default to null]
 **addRecipeInformation** | **bool**| If set to true, you get more information about the recipes returned. | [optional] [default to null]
 **addRecipeNutrition** | **bool**| If set to true, you get nutritional information about each recipes returned. | [optional] [default to null]
 **author** | **String**| The username of the recipe author. | [optional] [default to null]
 **tags** | **String**| The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have. | [optional] [default to null]
 **recipeBoxId** | **num**| The id of the recipe box to which the search should be limited to. | [optional] [default to null]
 **titleMatch** | **String**| Enter text that must be found in the title of the recipes. | [optional] [default to null]
 **maxReadyTime** | **num**| The maximum time in minutes it should take to prepare and cook the recipe. | [optional] [default to null]
 **ignorePantry** | **bool**| Whether to ignore typical pantry items, such as water, salt, flour, etc. | [optional] [default to false]
 **sort** | **String**| The strategy to sort recipes by. See a full list of supported sorting options. | [optional] [default to null]
 **sortDirection** | **String**| The direction in which to sort. Must be either &#39;asc&#39; (ascending) or &#39;desc&#39; (descending). | [optional] [default to null]
 **minCarbs** | **num**| The minimum amount of carbohydrates in grams the recipe must have. | [optional] [default to null]
 **maxCarbs** | **num**| The maximum amount of carbohydrates in grams the recipe can have. | [optional] [default to null]
 **minProtein** | **num**| The minimum amount of protein in grams the recipe must have. | [optional] [default to null]
 **maxProtein** | **num**| The maximum amount of protein in grams the recipe can have. | [optional] [default to null]
 **minCalories** | **num**| The minimum amount of calories the recipe must have. | [optional] [default to null]
 **maxCalories** | **num**| The maximum amount of calories the recipe can have. | [optional] [default to null]
 **minFat** | **num**| The minimum amount of fat in grams the recipe must have. | [optional] [default to null]
 **maxFat** | **num**| The maximum amount of fat in grams the recipe can have. | [optional] [default to null]
 **minAlcohol** | **num**| The minimum amount of alcohol in grams the recipe must have. | [optional] [default to null]
 **maxAlcohol** | **num**| The maximum amount of alcohol in grams the recipe can have. | [optional] [default to null]
 **minCaffeine** | **num**| The minimum amount of caffeine in milligrams the recipe must have. | [optional] [default to null]
 **maxCaffeine** | **num**| The maximum amount of caffeine in milligrams the recipe can have. | [optional] [default to null]
 **minCopper** | **num**| The minimum amount of copper in milligrams the recipe must have. | [optional] [default to null]
 **maxCopper** | **num**| The maximum amount of copper in milligrams the recipe can have. | [optional] [default to null]
 **minCalcium** | **num**| The minimum amount of calcium in milligrams the recipe must have. | [optional] [default to null]
 **maxCalcium** | **num**| The maximum amount of calcium in milligrams the recipe can have. | [optional] [default to null]
 **minCholine** | **num**| The minimum amount of choline in milligrams the recipe must have. | [optional] [default to null]
 **maxCholine** | **num**| The maximum amount of choline in milligrams the recipe can have. | [optional] [default to null]
 **minCholesterol** | **num**| The minimum amount of cholesterol in milligrams the recipe must have. | [optional] [default to null]
 **maxCholesterol** | **num**| The maximum amount of cholesterol in milligrams the recipe can have. | [optional] [default to null]
 **minFluoride** | **num**| The minimum amount of fluoride in milligrams the recipe must have. | [optional] [default to null]
 **maxFluoride** | **num**| The maximum amount of fluoride in milligrams the recipe can have. | [optional] [default to null]
 **minSaturatedFat** | **num**| The minimum amount of saturated fat in grams the recipe must have. | [optional] [default to null]
 **maxSaturatedFat** | **num**| The maximum amount of saturated fat in grams the recipe can have. | [optional] [default to null]
 **minVitaminA** | **num**| The minimum amount of Vitamin A in IU the recipe must have. | [optional] [default to null]
 **maxVitaminA** | **num**| The maximum amount of Vitamin A in IU the recipe can have. | [optional] [default to null]
 **minVitaminC** | **num**| The minimum amount of Vitamin C milligrams the recipe must have. | [optional] [default to null]
 **maxVitaminC** | **num**| The maximum amount of Vitamin C in milligrams the recipe can have. | [optional] [default to null]
 **minVitaminD** | **num**| The minimum amount of Vitamin D in micrograms the recipe must have. | [optional] [default to null]
 **maxVitaminD** | **num**| The maximum amount of Vitamin D in micrograms the recipe can have. | [optional] [default to null]
 **minVitaminE** | **num**| The minimum amount of Vitamin E in milligrams the recipe must have. | [optional] [default to null]
 **maxVitaminE** | **num**| The maximum amount of Vitamin E in milligrams the recipe can have. | [optional] [default to null]
 **minVitaminK** | **num**| The minimum amount of Vitamin K in micrograms the recipe must have. | [optional] [default to null]
 **maxVitaminK** | **num**| The maximum amount of Vitamin K in micrograms the recipe can have. | [optional] [default to null]
 **minVitaminB1** | **num**| The minimum amount of Vitamin B1 in milligrams the recipe must have. | [optional] [default to null]
 **maxVitaminB1** | **num**| The maximum amount of Vitamin B1 in milligrams the recipe can have. | [optional] [default to null]
 **minVitaminB2** | **num**| The minimum amount of Vitamin B2 in milligrams the recipe must have. | [optional] [default to null]
 **maxVitaminB2** | **num**| The maximum amount of Vitamin B2 in milligrams the recipe can have. | [optional] [default to null]
 **minVitaminB5** | **num**| The minimum amount of Vitamin B5 in milligrams the recipe must have. | [optional] [default to null]
 **maxVitaminB5** | **num**| The maximum amount of Vitamin B5 in milligrams the recipe can have. | [optional] [default to null]
 **minVitaminB3** | **num**| The minimum amount of Vitamin B3 in milligrams the recipe must have. | [optional] [default to null]
 **maxVitaminB3** | **num**| The maximum amount of Vitamin B3 in milligrams the recipe can have. | [optional] [default to null]
 **minVitaminB6** | **num**| The minimum amount of Vitamin B6 in milligrams the recipe must have. | [optional] [default to null]
 **maxVitaminB6** | **num**| The maximum amount of Vitamin B6 in milligrams the recipe can have. | [optional] [default to null]
 **minVitaminB12** | **num**| The minimum amount of Vitamin B12 in micrograms the recipe must have. | [optional] [default to null]
 **maxVitaminB12** | **num**| The maximum amount of Vitamin B12 in micrograms the recipe can have. | [optional] [default to null]
 **minFiber** | **num**| The minimum amount of fiber in grams the recipe must have. | [optional] [default to null]
 **maxFiber** | **num**| The maximum amount of fiber in grams the recipe can have. | [optional] [default to null]
 **minFolate** | **num**| The minimum amount of folate in micrograms the recipe must have. | [optional] [default to null]
 **maxFolate** | **num**| The maximum amount of folate in micrograms the recipe can have. | [optional] [default to null]
 **minFolicAcid** | **num**| The minimum amount of folic acid in micrograms the recipe must have. | [optional] [default to null]
 **maxFolicAcid** | **num**| The maximum amount of folic acid in micrograms the recipe can have. | [optional] [default to null]
 **minIodine** | **num**| The minimum amount of iodine in micrograms the recipe must have. | [optional] [default to null]
 **maxIodine** | **num**| The maximum amount of iodine in micrograms the recipe can have. | [optional] [default to null]
 **minIron** | **num**| The minimum amount of iron in milligrams the recipe must have. | [optional] [default to null]
 **maxIron** | **num**| The maximum amount of iron in milligrams the recipe can have. | [optional] [default to null]
 **minMagnesium** | **num**| The minimum amount of magnesium in milligrams the recipe must have. | [optional] [default to null]
 **maxMagnesium** | **num**| The maximum amount of magnesium in milligrams the recipe can have. | [optional] [default to null]
 **minManganese** | **num**| The minimum amount of manganese in milligrams the recipe must have. | [optional] [default to null]
 **maxManganese** | **num**| The maximum amount of manganese in milligrams the recipe can have. | [optional] [default to null]
 **minPhosphorus** | **num**| The minimum amount of phosphorus in milligrams the recipe must have. | [optional] [default to null]
 **maxPhosphorus** | **num**| The maximum amount of phosphorus in milligrams the recipe can have. | [optional] [default to null]
 **minPotassium** | **num**| The minimum amount of potassium in milligrams the recipe must have. | [optional] [default to null]
 **maxPotassium** | **num**| The maximum amount of potassium in milligrams the recipe can have. | [optional] [default to null]
 **minSelenium** | **num**| The minimum amount of selenium in micrograms the recipe must have. | [optional] [default to null]
 **maxSelenium** | **num**| The maximum amount of selenium in micrograms the recipe can have. | [optional] [default to null]
 **minSodium** | **num**| The minimum amount of sodium in milligrams the recipe must have. | [optional] [default to null]
 **maxSodium** | **num**| The maximum amount of sodium in milligrams the recipe can have. | [optional] [default to null]
 **minSugar** | **num**| The minimum amount of sugar in grams the recipe must have. | [optional] [default to null]
 **maxSugar** | **num**| The maximum amount of sugar in grams the recipe can have. | [optional] [default to null]
 **minZinc** | **num**| The minimum amount of zinc in milligrams the recipe must have. | [optional] [default to null]
 **maxZinc** | **num**| The maximum amount of zinc in milligrams the recipe can have. | [optional] [default to null]
 **offset** | **int**| The number of results to skip (between 0 and 900). | [optional] [default to null]
 **number** | **int**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]
 **limitLicense** | **bool**| Whether the recipes should have an open license that allows display with proper attribution. | [optional] [default to true]

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchRecipesByIngredients**
> List<InlineResponse2001> searchRecipesByIngredients(ingredients, number, limitLicense, ranking, ignorePantry)

Search Recipes by Ingredients

 Ever wondered what recipes you can cook with the ingredients you have in your fridge or pantry? This endpoint lets you find recipes that either maximize the usage of ingredients you have at hand (pre shopping) or minimize the ingredients that you don't currently have (post shopping).         

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new RecipesApi();
var ingredients = carrots,tomatoes; // String | A comma-separated list of ingredients that the recipes should contain.
var number = 10; // int | The maximum number of items to return (between 1 and 100). Defaults to 10.
var limitLicense = true; // bool | Whether the recipes should have an open license that allows display with proper attribution.
var ranking = 1; // num | Whether to maximize used ingredients (1) or minimize missing ingredients (2) first.
var ignorePantry = false; // bool | Whether to ignore typical pantry items, such as water, salt, flour, etc.

try { 
    var result = api_instance.searchRecipesByIngredients(ingredients, number, limitLicense, ranking, ignorePantry);
    print(result);
} catch (e) {
    print("Exception when calling RecipesApi->searchRecipesByIngredients: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredients** | **String**| A comma-separated list of ingredients that the recipes should contain. | [optional] [default to null]
 **number** | **int**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]
 **limitLicense** | **bool**| Whether the recipes should have an open license that allows display with proper attribution. | [optional] [default to true]
 **ranking** | **num**| Whether to maximize used ingredients (1) or minimize missing ingredients (2) first. | [optional] [default to null]
 **ignorePantry** | **bool**| Whether to ignore typical pantry items, such as water, salt, flour, etc. | [optional] [default to false]

### Return type

[**List<InlineResponse2001>**](InlineResponse2001.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchRecipesByNutrients**
> List<InlineResponse2002> searchRecipesByNutrients(minCarbs, maxCarbs, minProtein, maxProtein, minCalories, maxCalories, minFat, maxFat, minAlcohol, maxAlcohol, minCaffeine, maxCaffeine, minCopper, maxCopper, minCalcium, maxCalcium, minCholine, maxCholine, minCholesterol, maxCholesterol, minFluoride, maxFluoride, minSaturatedFat, maxSaturatedFat, minVitaminA, maxVitaminA, minVitaminC, maxVitaminC, minVitaminD, maxVitaminD, minVitaminE, maxVitaminE, minVitaminK, maxVitaminK, minVitaminB1, maxVitaminB1, minVitaminB2, maxVitaminB2, minVitaminB5, maxVitaminB5, minVitaminB3, maxVitaminB3, minVitaminB6, maxVitaminB6, minVitaminB12, maxVitaminB12, minFiber, maxFiber, minFolate, maxFolate, minFolicAcid, maxFolicAcid, minIodine, maxIodine, minIron, maxIron, minMagnesium, maxMagnesium, minManganese, maxManganese, minPhosphorus, maxPhosphorus, minPotassium, maxPotassium, minSelenium, maxSelenium, minSodium, maxSodium, minSugar, maxSugar, minZinc, maxZinc, offset, number, random, limitLicense)

Search Recipes by Nutrients

Find a set of recipes that adhere to the given nutritional limits. You may set limits for macronutrients (calories, protein, fat, and carbohydrate) and/or many micronutrients.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new RecipesApi();
var minCarbs = 10; // num | The minimum amount of carbohydrates in grams the recipe must have.
var maxCarbs = 100; // num | The maximum amount of carbohydrates in grams the recipe can have.
var minProtein = 10; // num | The minimum amount of protein in grams the recipe must have.
var maxProtein = 100; // num | The maximum amount of protein in grams the recipe can have.
var minCalories = 50; // num | The minimum amount of calories the recipe must have.
var maxCalories = 800; // num | The maximum amount of calories the recipe can have.
var minFat = 1; // num | The minimum amount of fat in grams the recipe must have.
var maxFat = 100; // num | The maximum amount of fat in grams the recipe can have.
var minAlcohol = 0; // num | The minimum amount of alcohol in grams the recipe must have.
var maxAlcohol = 100; // num | The maximum amount of alcohol in grams the recipe can have.
var minCaffeine = 0; // num | The minimum amount of caffeine in milligrams the recipe must have.
var maxCaffeine = 100; // num | The maximum amount of caffeine in milligrams the recipe can have.
var minCopper = 0; // num | The minimum amount of copper in milligrams the recipe must have.
var maxCopper = 100; // num | The maximum amount of copper in milligrams the recipe can have.
var minCalcium = 0; // num | The minimum amount of calcium in milligrams the recipe must have.
var maxCalcium = 100; // num | The maximum amount of calcium in milligrams the recipe can have.
var minCholine = 0; // num | The minimum amount of choline in milligrams the recipe must have.
var maxCholine = 100; // num | The maximum amount of choline in milligrams the recipe can have.
var minCholesterol = 0; // num | The minimum amount of cholesterol in milligrams the recipe must have.
var maxCholesterol = 100; // num | The maximum amount of cholesterol in milligrams the recipe can have.
var minFluoride = 0; // num | The minimum amount of fluoride in milligrams the recipe must have.
var maxFluoride = 100; // num | The maximum amount of fluoride in milligrams the recipe can have.
var minSaturatedFat = 0; // num | The minimum amount of saturated fat in grams the recipe must have.
var maxSaturatedFat = 100; // num | The maximum amount of saturated fat in grams the recipe can have.
var minVitaminA = 0; // num | The minimum amount of Vitamin A in IU the recipe must have.
var maxVitaminA = 100; // num | The maximum amount of Vitamin A in IU the recipe can have.
var minVitaminC = 0; // num | The minimum amount of Vitamin C in milligrams the recipe must have.
var maxVitaminC = 100; // num | The maximum amount of Vitamin C in milligrams the recipe can have.
var minVitaminD = 0; // num | The minimum amount of Vitamin D in micrograms the recipe must have.
var maxVitaminD = 100; // num | The maximum amount of Vitamin D in micrograms the recipe can have.
var minVitaminE = 0; // num | The minimum amount of Vitamin E in milligrams the recipe must have.
var maxVitaminE = 100; // num | The maximum amount of Vitamin E in milligrams the recipe can have.
var minVitaminK = 0; // num | The minimum amount of Vitamin K in micrograms the recipe must have.
var maxVitaminK = 100; // num | The maximum amount of Vitamin K in micrograms the recipe can have.
var minVitaminB1 = 0; // num | The minimum amount of Vitamin B1 in milligrams the recipe must have.
var maxVitaminB1 = 100; // num | The maximum amount of Vitamin B1 in milligrams the recipe can have.
var minVitaminB2 = 0; // num | The minimum amount of Vitamin B2 in milligrams the recipe must have.
var maxVitaminB2 = 100; // num | The maximum amount of Vitamin B2 in milligrams the recipe can have.
var minVitaminB5 = 0; // num | The minimum amount of Vitamin B5 in milligrams the recipe must have.
var maxVitaminB5 = 100; // num | The maximum amount of Vitamin B5 in milligrams the recipe can have.
var minVitaminB3 = 0; // num | The minimum amount of Vitamin B3 in milligrams the recipe must have.
var maxVitaminB3 = 100; // num | The maximum amount of Vitamin B3 in milligrams the recipe can have.
var minVitaminB6 = 0; // num | The minimum amount of Vitamin B6 in milligrams the recipe must have.
var maxVitaminB6 = 100; // num | The maximum amount of Vitamin B6 in milligrams the recipe can have.
var minVitaminB12 = 0; // num | The minimum amount of Vitamin B12 in micrograms the recipe must have.
var maxVitaminB12 = 100; // num | The maximum amount of Vitamin B12 in micrograms the recipe can have.
var minFiber = 0; // num | The minimum amount of fiber in grams the recipe must have.
var maxFiber = 100; // num | The maximum amount of fiber in grams the recipe can have.
var minFolate = 0; // num | The minimum amount of folate in micrograms the recipe must have.
var maxFolate = 100; // num | The maximum amount of folate in micrograms the recipe can have.
var minFolicAcid = 0; // num | The minimum amount of folic acid in micrograms the recipe must have.
var maxFolicAcid = 100; // num | The maximum amount of folic acid in micrograms the recipe can have.
var minIodine = 0; // num | The minimum amount of iodine in micrograms the recipe must have.
var maxIodine = 100; // num | The maximum amount of iodine in micrograms the recipe can have.
var minIron = 0; // num | The minimum amount of iron in milligrams the recipe must have.
var maxIron = 100; // num | The maximum amount of iron in milligrams the recipe can have.
var minMagnesium = 0; // num | The minimum amount of magnesium in milligrams the recipe must have.
var maxMagnesium = 100; // num | The maximum amount of magnesium in milligrams the recipe can have.
var minManganese = 0; // num | The minimum amount of manganese in milligrams the recipe must have.
var maxManganese = 100; // num | The maximum amount of manganese in milligrams the recipe can have.
var minPhosphorus = 0; // num | The minimum amount of phosphorus in milligrams the recipe must have.
var maxPhosphorus = 100; // num | The maximum amount of phosphorus in milligrams the recipe can have.
var minPotassium = 0; // num | The minimum amount of potassium in milligrams the recipe must have.
var maxPotassium = 100; // num | The maximum amount of potassium in milligrams the recipe can have.
var minSelenium = 0; // num | The minimum amount of selenium in micrograms the recipe must have.
var maxSelenium = 100; // num | The maximum amount of selenium in micrograms the recipe can have.
var minSodium = 0; // num | The minimum amount of sodium in milligrams the recipe must have.
var maxSodium = 100; // num | The maximum amount of sodium in milligrams the recipe can have.
var minSugar = 0; // num | The minimum amount of sugar in grams the recipe must have.
var maxSugar = 100; // num | The maximum amount of sugar in grams the recipe can have.
var minZinc = 0; // num | The minimum amount of zinc in milligrams the recipe must have.
var maxZinc = 100; // num | The maximum amount of zinc in milligrams the recipe can have.
var offset = 56; // int | The number of results to skip (between 0 and 900).
var number = 10; // int | The maximum number of items to return (between 1 and 100). Defaults to 10.
var random = false; // bool | If true, every request will give you a random set of recipes within the requested limits.
var limitLicense = true; // bool | Whether the recipes should have an open license that allows display with proper attribution.

try { 
    var result = api_instance.searchRecipesByNutrients(minCarbs, maxCarbs, minProtein, maxProtein, minCalories, maxCalories, minFat, maxFat, minAlcohol, maxAlcohol, minCaffeine, maxCaffeine, minCopper, maxCopper, minCalcium, maxCalcium, minCholine, maxCholine, minCholesterol, maxCholesterol, minFluoride, maxFluoride, minSaturatedFat, maxSaturatedFat, minVitaminA, maxVitaminA, minVitaminC, maxVitaminC, minVitaminD, maxVitaminD, minVitaminE, maxVitaminE, minVitaminK, maxVitaminK, minVitaminB1, maxVitaminB1, minVitaminB2, maxVitaminB2, minVitaminB5, maxVitaminB5, minVitaminB3, maxVitaminB3, minVitaminB6, maxVitaminB6, minVitaminB12, maxVitaminB12, minFiber, maxFiber, minFolate, maxFolate, minFolicAcid, maxFolicAcid, minIodine, maxIodine, minIron, maxIron, minMagnesium, maxMagnesium, minManganese, maxManganese, minPhosphorus, maxPhosphorus, minPotassium, maxPotassium, minSelenium, maxSelenium, minSodium, maxSodium, minSugar, maxSugar, minZinc, maxZinc, offset, number, random, limitLicense);
    print(result);
} catch (e) {
    print("Exception when calling RecipesApi->searchRecipesByNutrients: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **minCarbs** | **num**| The minimum amount of carbohydrates in grams the recipe must have. | [optional] [default to null]
 **maxCarbs** | **num**| The maximum amount of carbohydrates in grams the recipe can have. | [optional] [default to null]
 **minProtein** | **num**| The minimum amount of protein in grams the recipe must have. | [optional] [default to null]
 **maxProtein** | **num**| The maximum amount of protein in grams the recipe can have. | [optional] [default to null]
 **minCalories** | **num**| The minimum amount of calories the recipe must have. | [optional] [default to null]
 **maxCalories** | **num**| The maximum amount of calories the recipe can have. | [optional] [default to null]
 **minFat** | **num**| The minimum amount of fat in grams the recipe must have. | [optional] [default to null]
 **maxFat** | **num**| The maximum amount of fat in grams the recipe can have. | [optional] [default to null]
 **minAlcohol** | **num**| The minimum amount of alcohol in grams the recipe must have. | [optional] [default to null]
 **maxAlcohol** | **num**| The maximum amount of alcohol in grams the recipe can have. | [optional] [default to null]
 **minCaffeine** | **num**| The minimum amount of caffeine in milligrams the recipe must have. | [optional] [default to null]
 **maxCaffeine** | **num**| The maximum amount of caffeine in milligrams the recipe can have. | [optional] [default to null]
 **minCopper** | **num**| The minimum amount of copper in milligrams the recipe must have. | [optional] [default to null]
 **maxCopper** | **num**| The maximum amount of copper in milligrams the recipe can have. | [optional] [default to null]
 **minCalcium** | **num**| The minimum amount of calcium in milligrams the recipe must have. | [optional] [default to null]
 **maxCalcium** | **num**| The maximum amount of calcium in milligrams the recipe can have. | [optional] [default to null]
 **minCholine** | **num**| The minimum amount of choline in milligrams the recipe must have. | [optional] [default to null]
 **maxCholine** | **num**| The maximum amount of choline in milligrams the recipe can have. | [optional] [default to null]
 **minCholesterol** | **num**| The minimum amount of cholesterol in milligrams the recipe must have. | [optional] [default to null]
 **maxCholesterol** | **num**| The maximum amount of cholesterol in milligrams the recipe can have. | [optional] [default to null]
 **minFluoride** | **num**| The minimum amount of fluoride in milligrams the recipe must have. | [optional] [default to null]
 **maxFluoride** | **num**| The maximum amount of fluoride in milligrams the recipe can have. | [optional] [default to null]
 **minSaturatedFat** | **num**| The minimum amount of saturated fat in grams the recipe must have. | [optional] [default to null]
 **maxSaturatedFat** | **num**| The maximum amount of saturated fat in grams the recipe can have. | [optional] [default to null]
 **minVitaminA** | **num**| The minimum amount of Vitamin A in IU the recipe must have. | [optional] [default to null]
 **maxVitaminA** | **num**| The maximum amount of Vitamin A in IU the recipe can have. | [optional] [default to null]
 **minVitaminC** | **num**| The minimum amount of Vitamin C in milligrams the recipe must have. | [optional] [default to null]
 **maxVitaminC** | **num**| The maximum amount of Vitamin C in milligrams the recipe can have. | [optional] [default to null]
 **minVitaminD** | **num**| The minimum amount of Vitamin D in micrograms the recipe must have. | [optional] [default to null]
 **maxVitaminD** | **num**| The maximum amount of Vitamin D in micrograms the recipe can have. | [optional] [default to null]
 **minVitaminE** | **num**| The minimum amount of Vitamin E in milligrams the recipe must have. | [optional] [default to null]
 **maxVitaminE** | **num**| The maximum amount of Vitamin E in milligrams the recipe can have. | [optional] [default to null]
 **minVitaminK** | **num**| The minimum amount of Vitamin K in micrograms the recipe must have. | [optional] [default to null]
 **maxVitaminK** | **num**| The maximum amount of Vitamin K in micrograms the recipe can have. | [optional] [default to null]
 **minVitaminB1** | **num**| The minimum amount of Vitamin B1 in milligrams the recipe must have. | [optional] [default to null]
 **maxVitaminB1** | **num**| The maximum amount of Vitamin B1 in milligrams the recipe can have. | [optional] [default to null]
 **minVitaminB2** | **num**| The minimum amount of Vitamin B2 in milligrams the recipe must have. | [optional] [default to null]
 **maxVitaminB2** | **num**| The maximum amount of Vitamin B2 in milligrams the recipe can have. | [optional] [default to null]
 **minVitaminB5** | **num**| The minimum amount of Vitamin B5 in milligrams the recipe must have. | [optional] [default to null]
 **maxVitaminB5** | **num**| The maximum amount of Vitamin B5 in milligrams the recipe can have. | [optional] [default to null]
 **minVitaminB3** | **num**| The minimum amount of Vitamin B3 in milligrams the recipe must have. | [optional] [default to null]
 **maxVitaminB3** | **num**| The maximum amount of Vitamin B3 in milligrams the recipe can have. | [optional] [default to null]
 **minVitaminB6** | **num**| The minimum amount of Vitamin B6 in milligrams the recipe must have. | [optional] [default to null]
 **maxVitaminB6** | **num**| The maximum amount of Vitamin B6 in milligrams the recipe can have. | [optional] [default to null]
 **minVitaminB12** | **num**| The minimum amount of Vitamin B12 in micrograms the recipe must have. | [optional] [default to null]
 **maxVitaminB12** | **num**| The maximum amount of Vitamin B12 in micrograms the recipe can have. | [optional] [default to null]
 **minFiber** | **num**| The minimum amount of fiber in grams the recipe must have. | [optional] [default to null]
 **maxFiber** | **num**| The maximum amount of fiber in grams the recipe can have. | [optional] [default to null]
 **minFolate** | **num**| The minimum amount of folate in micrograms the recipe must have. | [optional] [default to null]
 **maxFolate** | **num**| The maximum amount of folate in micrograms the recipe can have. | [optional] [default to null]
 **minFolicAcid** | **num**| The minimum amount of folic acid in micrograms the recipe must have. | [optional] [default to null]
 **maxFolicAcid** | **num**| The maximum amount of folic acid in micrograms the recipe can have. | [optional] [default to null]
 **minIodine** | **num**| The minimum amount of iodine in micrograms the recipe must have. | [optional] [default to null]
 **maxIodine** | **num**| The maximum amount of iodine in micrograms the recipe can have. | [optional] [default to null]
 **minIron** | **num**| The minimum amount of iron in milligrams the recipe must have. | [optional] [default to null]
 **maxIron** | **num**| The maximum amount of iron in milligrams the recipe can have. | [optional] [default to null]
 **minMagnesium** | **num**| The minimum amount of magnesium in milligrams the recipe must have. | [optional] [default to null]
 **maxMagnesium** | **num**| The maximum amount of magnesium in milligrams the recipe can have. | [optional] [default to null]
 **minManganese** | **num**| The minimum amount of manganese in milligrams the recipe must have. | [optional] [default to null]
 **maxManganese** | **num**| The maximum amount of manganese in milligrams the recipe can have. | [optional] [default to null]
 **minPhosphorus** | **num**| The minimum amount of phosphorus in milligrams the recipe must have. | [optional] [default to null]
 **maxPhosphorus** | **num**| The maximum amount of phosphorus in milligrams the recipe can have. | [optional] [default to null]
 **minPotassium** | **num**| The minimum amount of potassium in milligrams the recipe must have. | [optional] [default to null]
 **maxPotassium** | **num**| The maximum amount of potassium in milligrams the recipe can have. | [optional] [default to null]
 **minSelenium** | **num**| The minimum amount of selenium in micrograms the recipe must have. | [optional] [default to null]
 **maxSelenium** | **num**| The maximum amount of selenium in micrograms the recipe can have. | [optional] [default to null]
 **minSodium** | **num**| The minimum amount of sodium in milligrams the recipe must have. | [optional] [default to null]
 **maxSodium** | **num**| The maximum amount of sodium in milligrams the recipe can have. | [optional] [default to null]
 **minSugar** | **num**| The minimum amount of sugar in grams the recipe must have. | [optional] [default to null]
 **maxSugar** | **num**| The maximum amount of sugar in grams the recipe can have. | [optional] [default to null]
 **minZinc** | **num**| The minimum amount of zinc in milligrams the recipe must have. | [optional] [default to null]
 **maxZinc** | **num**| The maximum amount of zinc in milligrams the recipe can have. | [optional] [default to null]
 **offset** | **int**| The number of results to skip (between 0 and 900). | [optional] [default to null]
 **number** | **int**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]
 **random** | **bool**| If true, every request will give you a random set of recipes within the requested limits. | [optional] [default to null]
 **limitLicense** | **bool**| Whether the recipes should have an open license that allows display with proper attribution. | [optional] [default to true]

### Return type

[**List<InlineResponse2002>**](InlineResponse2002.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **summarizeRecipe**
> InlineResponse20014 summarizeRecipe(id)

Summarize Recipe

Automatically generate a short description that summarizes key information about the recipe.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new RecipesApi();
var id = 1; // int | The item's id.

try { 
    var result = api_instance.summarizeRecipe(id);
    print(result);
} catch (e) {
    print("Exception when calling RecipesApi->summarizeRecipe: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The item&#39;s id. | [default to null]

### Return type

[**InlineResponse20014**](InlineResponse20014.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualizeEquipment**
> String visualizeEquipment(contentType, accept)

Equipment Widget

Visualize the equipment used to make a recipe.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new RecipesApi();
var contentType = application/json; // String | The content type.
var accept = application/json; // String | Accept header.

try { 
    var result = api_instance.visualizeEquipment(contentType, accept);
    print(result);
} catch (e) {
    print("Exception when calling RecipesApi->visualizeEquipment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentType** | **String**| The content type. | [optional] [default to null]
 **accept** | **String**| Accept header. | [optional] [default to null]

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualizePriceBreakdown**
> String visualizePriceBreakdown(contentType, accept, language)

Price Breakdown Widget

Visualize the price breakdown of a recipe.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new RecipesApi();
var contentType = application/json; // String | The content type.
var accept = application/json; // String | Accept header.
var language = en; // String | The language of the input. Either 'en' or 'de'.

try { 
    var result = api_instance.visualizePriceBreakdown(contentType, accept, language);
    print(result);
} catch (e) {
    print("Exception when calling RecipesApi->visualizePriceBreakdown: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentType** | **String**| The content type. | [optional] [default to null]
 **accept** | **String**| Accept header. | [optional] [default to null]
 **language** | **String**| The language of the input. Either &#39;en&#39; or &#39;de&#39;. | [optional] [default to null]

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualizeRecipeEquipmentByID**
> String visualizeRecipeEquipmentByID(id, defaultCss)

Equipment by ID Widget

Visualize a recipe's equipment list.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new RecipesApi();
var id = 1; // int | The item's id.
var defaultCss = false; // bool | Whether the default CSS should be added to the response.

try { 
    var result = api_instance.visualizeRecipeEquipmentByID(id, defaultCss);
    print(result);
} catch (e) {
    print("Exception when calling RecipesApi->visualizeRecipeEquipmentByID: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The item&#39;s id. | [default to null]
 **defaultCss** | **bool**| Whether the default CSS should be added to the response. | [optional] [default to true]

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualizeRecipeIngredientsByID**
> String visualizeRecipeIngredientsByID(id, defaultCss, measure)

Ingredients by ID Widget

Visualize a recipe's ingredient list.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new RecipesApi();
var id = 1; // int | The item's id.
var defaultCss = false; // bool | Whether the default CSS should be added to the response.
var measure = metric; // String | Whether the the measures should be 'us' or 'metric'.

try { 
    var result = api_instance.visualizeRecipeIngredientsByID(id, defaultCss, measure);
    print(result);
} catch (e) {
    print("Exception when calling RecipesApi->visualizeRecipeIngredientsByID: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The item&#39;s id. | [default to null]
 **defaultCss** | **bool**| Whether the default CSS should be added to the response. | [optional] [default to true]
 **measure** | **String**| Whether the the measures should be &#39;us&#39; or &#39;metric&#39;. | [optional] [default to null]

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualizeRecipeNutrition**
> String visualizeRecipeNutrition(contentType, accept, language)

Recipe Nutrition Widget

Visualize a recipe's nutritional information as HTML including CSS.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new RecipesApi();
var contentType = application/json; // String | The content type.
var accept = application/json; // String | Accept header.
var language = en; // String | The language of the input. Either 'en' or 'de'.

try { 
    var result = api_instance.visualizeRecipeNutrition(contentType, accept, language);
    print(result);
} catch (e) {
    print("Exception when calling RecipesApi->visualizeRecipeNutrition: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentType** | **String**| The content type. | [optional] [default to null]
 **accept** | **String**| Accept header. | [optional] [default to null]
 **language** | **String**| The language of the input. Either &#39;en&#39; or &#39;de&#39;. | [optional] [default to null]

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualizeRecipeNutritionByID**
> String visualizeRecipeNutritionByID(id, defaultCss, accept)

Recipe Nutrition by ID Widget

Visualize a recipe's nutritional information as HTML including CSS.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new RecipesApi();
var id = 1; // int | The item's id.
var defaultCss = false; // bool | Whether the default CSS should be added to the response.
var accept = application/json; // String | Accept header.

try { 
    var result = api_instance.visualizeRecipeNutritionByID(id, defaultCss, accept);
    print(result);
} catch (e) {
    print("Exception when calling RecipesApi->visualizeRecipeNutritionByID: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The item&#39;s id. | [default to null]
 **defaultCss** | **bool**| Whether the default CSS should be added to the response. | [optional] [default to true]
 **accept** | **String**| Accept header. | [optional] [default to null]

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualizeRecipePriceBreakdownByID**
> String visualizeRecipePriceBreakdownByID(id, defaultCss)

Price Breakdown by ID Widget

Visualize a recipe's price breakdown.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new RecipesApi();
var id = 1; // int | The item's id.
var defaultCss = false; // bool | Whether the default CSS should be added to the response.

try { 
    var result = api_instance.visualizeRecipePriceBreakdownByID(id, defaultCss);
    print(result);
} catch (e) {
    print("Exception when calling RecipesApi->visualizeRecipePriceBreakdownByID: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The item&#39;s id. | [default to null]
 **defaultCss** | **bool**| Whether the default CSS should be added to the response. | [optional] [default to true]

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualizeRecipeTaste**
> String visualizeRecipeTaste(language, contentType, accept, normalize, rgb)

Recipe Taste Widget

Visualize a recipe's taste information as HTML including CSS. You can play around with that endpoint!

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new RecipesApi();
var language = en; // String | The language of the input. Either 'en' or 'de'.
var contentType = application/json; // String | The content type.
var accept = application/json; // String | Accept header.
var normalize = true; // bool | Whether to normalize to the strongest taste.
var rgb = 75,192,192; // String | Red, green, blue values for the chart color.

try { 
    var result = api_instance.visualizeRecipeTaste(language, contentType, accept, normalize, rgb);
    print(result);
} catch (e) {
    print("Exception when calling RecipesApi->visualizeRecipeTaste: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **language** | **String**| The language of the input. Either &#39;en&#39; or &#39;de&#39;. | [optional] [default to null]
 **contentType** | **String**| The content type. | [optional] [default to null]
 **accept** | **String**| Accept header. | [optional] [default to null]
 **normalize** | **bool**| Whether to normalize to the strongest taste. | [optional] [default to null]
 **rgb** | **String**| Red, green, blue values for the chart color. | [optional] [default to null]

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualizeRecipeTasteByID**
> String visualizeRecipeTasteByID(id, normalize, rgb)

Recipe Taste by ID Widget

Get a recipe's taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new RecipesApi();
var id = 1; // int | The item's id.
var normalize = true; // bool | Whether to normalize to the strongest taste.
var rgb = 75,192,192; // String | Red, green, blue values for the chart color.

try { 
    var result = api_instance.visualizeRecipeTasteByID(id, normalize, rgb);
    print(result);
} catch (e) {
    print("Exception when calling RecipesApi->visualizeRecipeTasteByID: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The item&#39;s id. | [default to null]
 **normalize** | **bool**| Whether to normalize to the strongest taste. | [optional] [default to true]
 **rgb** | **String**| Red, green, blue values for the chart color. | [optional] [default to null]

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

