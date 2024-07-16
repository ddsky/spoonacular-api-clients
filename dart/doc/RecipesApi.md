# openapi.api.RecipesApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**analyzeARecipeSearchQuery**](RecipesApi.md#analyzearecipesearchquery) | **GET** /recipes/queries/analyze | Analyze a Recipe Search Query
[**analyzeRecipeInstructions**](RecipesApi.md#analyzerecipeinstructions) | **POST** /recipes/analyzeInstructions | Analyze Recipe Instructions
[**autocompleteRecipeSearch**](RecipesApi.md#autocompleterecipesearch) | **GET** /recipes/autocomplete | Autocomplete Recipe Search
[**classifyCuisine**](RecipesApi.md#classifycuisine) | **POST** /recipes/cuisine | Classify Cuisine
[**computeGlycemicLoad**](RecipesApi.md#computeglycemicload) | **POST** /food/ingredients/glycemicLoad | Compute Glycemic Load
[**convertAmounts**](RecipesApi.md#convertamounts) | **GET** /recipes/convert | Convert Amounts
[**createRecipeCard**](RecipesApi.md#createrecipecard) | **POST** /recipes/visualizeRecipe | Create Recipe Card
[**equipmentByIDImage**](RecipesApi.md#equipmentbyidimage) | **GET** /recipes/{id}/equipmentWidget.png | Equipment by ID Image
[**extractRecipeFromWebsite**](RecipesApi.md#extractrecipefromwebsite) | **GET** /recipes/extract | Extract Recipe from Website
[**getAnalyzedRecipeInstructions**](RecipesApi.md#getanalyzedrecipeinstructions) | **GET** /recipes/{id}/analyzedInstructions | Get Analyzed Recipe Instructions
[**getRandomRecipes**](RecipesApi.md#getrandomrecipes) | **GET** /recipes/random | Get Random Recipes
[**getRecipeEquipmentByID**](RecipesApi.md#getrecipeequipmentbyid) | **GET** /recipes/{id}/equipmentWidget.json | Equipment by ID
[**getRecipeInformation**](RecipesApi.md#getrecipeinformation) | **GET** /recipes/{id}/information | Get Recipe Information
[**getRecipeInformationBulk**](RecipesApi.md#getrecipeinformationbulk) | **GET** /recipes/informationBulk | Get Recipe Information Bulk
[**getRecipeIngredientsByID**](RecipesApi.md#getrecipeingredientsbyid) | **GET** /recipes/{id}/ingredientWidget.json | Ingredients by ID
[**getRecipeNutritionWidgetByID**](RecipesApi.md#getrecipenutritionwidgetbyid) | **GET** /recipes/{id}/nutritionWidget.json | Nutrition by ID
[**getRecipePriceBreakdownByID**](RecipesApi.md#getrecipepricebreakdownbyid) | **GET** /recipes/{id}/priceBreakdownWidget.json | Price Breakdown by ID
[**getRecipeTasteByID**](RecipesApi.md#getrecipetastebyid) | **GET** /recipes/{id}/tasteWidget.json | Taste by ID
[**getSimilarRecipes**](RecipesApi.md#getsimilarrecipes) | **GET** /recipes/{id}/similar | Get Similar Recipes
[**guessNutritionByDishName**](RecipesApi.md#guessnutritionbydishname) | **GET** /recipes/guessNutrition | Guess Nutrition by Dish Name
[**parseIngredients**](RecipesApi.md#parseingredients) | **POST** /recipes/parseIngredients | Parse Ingredients
[**priceBreakdownByIDImage**](RecipesApi.md#pricebreakdownbyidimage) | **GET** /recipes/{id}/priceBreakdownWidget.png | Price Breakdown by ID Image
[**quickAnswer**](RecipesApi.md#quickanswer) | **GET** /recipes/quickAnswer | Quick Answer
[**recipeNutritionByIDImage**](RecipesApi.md#recipenutritionbyidimage) | **GET** /recipes/{id}/nutritionWidget.png | Recipe Nutrition by ID Image
[**recipeNutritionLabelImage**](RecipesApi.md#recipenutritionlabelimage) | **GET** /recipes/{id}/nutritionLabel.png | Recipe Nutrition Label Image
[**recipeNutritionLabelWidget**](RecipesApi.md#recipenutritionlabelwidget) | **GET** /recipes/{id}/nutritionLabel | Recipe Nutrition Label Widget
[**recipeTasteByIDImage**](RecipesApi.md#recipetastebyidimage) | **GET** /recipes/{id}/tasteWidget.png | Recipe Taste by ID Image
[**searchRecipes**](RecipesApi.md#searchrecipes) | **GET** /recipes/complexSearch | Search Recipes
[**searchRecipesByIngredients**](RecipesApi.md#searchrecipesbyingredients) | **GET** /recipes/findByIngredients | Search Recipes by Ingredients
[**searchRecipesByNutrients**](RecipesApi.md#searchrecipesbynutrients) | **GET** /recipes/findByNutrients | Search Recipes by Nutrients
[**summarizeRecipe**](RecipesApi.md#summarizerecipe) | **GET** /recipes/{id}/summary | Summarize Recipe
[**visualizeEquipment**](RecipesApi.md#visualizeequipment) | **POST** /recipes/visualizeEquipment | Equipment Widget
[**visualizePriceBreakdown**](RecipesApi.md#visualizepricebreakdown) | **POST** /recipes/visualizePriceEstimator | Price Breakdown Widget
[**visualizeRecipeEquipmentByID**](RecipesApi.md#visualizerecipeequipmentbyid) | **GET** /recipes/{id}/equipmentWidget | Equipment by ID Widget
[**visualizeRecipeIngredientsByID**](RecipesApi.md#visualizerecipeingredientsbyid) | **GET** /recipes/{id}/ingredientWidget | Ingredients by ID Widget
[**visualizeRecipeNutrition**](RecipesApi.md#visualizerecipenutrition) | **POST** /recipes/visualizeNutrition | Recipe Nutrition Widget
[**visualizeRecipeNutritionByID**](RecipesApi.md#visualizerecipenutritionbyid) | **GET** /recipes/{id}/nutritionWidget | Recipe Nutrition by ID Widget
[**visualizeRecipePriceBreakdownByID**](RecipesApi.md#visualizerecipepricebreakdownbyid) | **GET** /recipes/{id}/priceBreakdownWidget | Price Breakdown by ID Widget
[**visualizeRecipeTaste**](RecipesApi.md#visualizerecipetaste) | **POST** /recipes/visualizeTaste | Recipe Taste Widget
[**visualizeRecipeTasteByID**](RecipesApi.md#visualizerecipetastebyid) | **GET** /recipes/{id}/tasteWidget | Recipe Taste by ID Widget


# **analyzeARecipeSearchQuery**
> AnalyzeARecipeSearchQuery200Response analyzeARecipeSearchQuery(q)

Analyze a Recipe Search Query

Parse a recipe search query to find out its intention.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = RecipesApi();
final q = salmon with fusilli and no nuts; // String | The recipe search query.

try {
    final result = api_instance.analyzeARecipeSearchQuery(q);
    print(result);
} catch (e) {
    print('Exception when calling RecipesApi->analyzeARecipeSearchQuery: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| The recipe search query. | 

### Return type

[**AnalyzeARecipeSearchQuery200Response**](AnalyzeARecipeSearchQuery200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **analyzeRecipeInstructions**
> AnalyzeRecipeInstructions200Response analyzeRecipeInstructions(instructions)

Analyze Recipe Instructions

This endpoint allows you to break down instructions into atomic steps. Furthermore, each step will contain the ingredients and equipment required. Additionally, all ingredients and equipment from the recipe's instructions will be extracted independently of the step they're used in.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = RecipesApi();
final instructions = instructions_example; // String | The recipe's instructions.

try {
    final result = api_instance.analyzeRecipeInstructions(instructions);
    print(result);
} catch (e) {
    print('Exception when calling RecipesApi->analyzeRecipeInstructions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instructions** | **String**| The recipe's instructions. | 

### Return type

[**AnalyzeRecipeInstructions200Response**](AnalyzeRecipeInstructions200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **autocompleteRecipeSearch**
> Set<AutocompleteRecipeSearch200ResponseInner> autocompleteRecipeSearch(query, number)

Autocomplete Recipe Search

Autocomplete a partial input to suggest possible recipe names.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = RecipesApi();
final query = burger; // String | The (natural language) search query.
final number = 10; // int | The maximum number of items to return (between 1 and 100). Defaults to 10.

try {
    final result = api_instance.autocompleteRecipeSearch(query, number);
    print(result);
} catch (e) {
    print('Exception when calling RecipesApi->autocompleteRecipeSearch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The (natural language) search query. | 
 **number** | **int**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]

### Return type

[**Set<AutocompleteRecipeSearch200ResponseInner>**](AutocompleteRecipeSearch200ResponseInner.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **classifyCuisine**
> ClassifyCuisine200Response classifyCuisine(title, ingredientList, language)

Classify Cuisine

Classify the recipe's cuisine.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = RecipesApi();
final title = title_example; // String | The title of the recipe.
final ingredientList = ingredientList_example; // String | The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n).
final language = en; // String | The language of the input. Either 'en' or 'de'.

try {
    final result = api_instance.classifyCuisine(title, ingredientList, language);
    print(result);
} catch (e) {
    print('Exception when calling RecipesApi->classifyCuisine: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **String**| The title of the recipe. | 
 **ingredientList** | **String**| The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n). | 
 **language** | **String**| The language of the input. Either 'en' or 'de'. | [optional] 

### Return type

[**ClassifyCuisine200Response**](ClassifyCuisine200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **computeGlycemicLoad**
> ComputeGlycemicLoad200Response computeGlycemicLoad(computeGlycemicLoadRequest, language)

Compute Glycemic Load

Retrieve the glycemic index for a list of ingredients and compute the individual and total glycemic load.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = RecipesApi();
final computeGlycemicLoadRequest = ComputeGlycemicLoadRequest(); // ComputeGlycemicLoadRequest | 
final language = en; // String | The language of the input. Either 'en' or 'de'.

try {
    final result = api_instance.computeGlycemicLoad(computeGlycemicLoadRequest, language);
    print(result);
} catch (e) {
    print('Exception when calling RecipesApi->computeGlycemicLoad: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **computeGlycemicLoadRequest** | [**ComputeGlycemicLoadRequest**](ComputeGlycemicLoadRequest.md)|  | 
 **language** | **String**| The language of the input. Either 'en' or 'de'. | [optional] 

### Return type

[**ComputeGlycemicLoad200Response**](ComputeGlycemicLoad200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **convertAmounts**
> ConvertAmounts200Response convertAmounts(ingredientName, sourceAmount, sourceUnit, targetUnit)

Convert Amounts

Convert amounts like \"2 cups of flour to grams\".

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = RecipesApi();
final ingredientName = flour; // String | The ingredient which you want to convert.
final sourceAmount = 2.5; // num | The amount from which you want to convert, e.g. the 2.5 in \"2.5 cups of flour to grams\".
final sourceUnit = cups; // String | The unit from which you want to convert, e.g. the grams in \"2.5 cups of flour to grams\". You can also use \"piece\", e.g. \"3.4 oz tomatoes to piece\"
final targetUnit = grams; // String | The unit to which you want to convert, e.g. the grams in \"2.5 cups of flour to grams\". You can also use \"piece\", e.g. \"3.4 oz tomatoes to piece\"

try {
    final result = api_instance.convertAmounts(ingredientName, sourceAmount, sourceUnit, targetUnit);
    print(result);
} catch (e) {
    print('Exception when calling RecipesApi->convertAmounts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredientName** | **String**| The ingredient which you want to convert. | 
 **sourceAmount** | **num**| The amount from which you want to convert, e.g. the 2.5 in \"2.5 cups of flour to grams\". | 
 **sourceUnit** | **String**| The unit from which you want to convert, e.g. the grams in \"2.5 cups of flour to grams\". You can also use \"piece\", e.g. \"3.4 oz tomatoes to piece\" | 
 **targetUnit** | **String**| The unit to which you want to convert, e.g. the grams in \"2.5 cups of flour to grams\". You can also use \"piece\", e.g. \"3.4 oz tomatoes to piece\" | 

### Return type

[**ConvertAmounts200Response**](ConvertAmounts200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createRecipeCard**
> CreateRecipeCard200Response createRecipeCard(title, ingredients, instructions, readyInMinutes, servings, mask, backgroundImage, image, imageUrl, author, backgroundColor, fontColor, source_)

Create Recipe Card

Generate a recipe card for a recipe.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = RecipesApi();
final title = title_example; // String | The title of the recipe.
final ingredients = ingredients_example; // String | The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n).
final instructions = instructions_example; // String | The instructions to make the recipe. One step per line (separate lines with \\\\n).
final readyInMinutes = 8.14; // num | The number of minutes it takes to get the recipe on the table.
final servings = 8.14; // num | The number of servings the recipe makes.
final mask = mask_example; // String | The mask to put over the recipe image ('ellipseMask', 'diamondMask', 'starMask', 'heartMask', 'potMask', 'fishMask').
final backgroundImage = backgroundImage_example; // String | The background image ('none', 'background1', or 'background2').
final image = BINARY_DATA_HERE; // MultipartFile | The binary image of the recipe as jpg.
final imageUrl = imageUrl_example; // String | If you do not sent a binary image you can also pass the image URL.
final author = author_example; // String | The author of the recipe.
final backgroundColor = backgroundColor_example; // String | The background color for the recipe card as a hex-string.
final fontColor = fontColor_example; // String | The font color for the recipe card as a hex-string.
final source_ = source__example; // String | The source of the recipe.

try {
    final result = api_instance.createRecipeCard(title, ingredients, instructions, readyInMinutes, servings, mask, backgroundImage, image, imageUrl, author, backgroundColor, fontColor, source_);
    print(result);
} catch (e) {
    print('Exception when calling RecipesApi->createRecipeCard: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **String**| The title of the recipe. | 
 **ingredients** | **String**| The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n). | 
 **instructions** | **String**| The instructions to make the recipe. One step per line (separate lines with \\\\n). | 
 **readyInMinutes** | **num**| The number of minutes it takes to get the recipe on the table. | 
 **servings** | **num**| The number of servings the recipe makes. | 
 **mask** | **String**| The mask to put over the recipe image ('ellipseMask', 'diamondMask', 'starMask', 'heartMask', 'potMask', 'fishMask'). | 
 **backgroundImage** | **String**| The background image ('none', 'background1', or 'background2'). | 
 **image** | **MultipartFile**| The binary image of the recipe as jpg. | [optional] 
 **imageUrl** | **String**| If you do not sent a binary image you can also pass the image URL. | [optional] 
 **author** | **String**| The author of the recipe. | [optional] 
 **backgroundColor** | **String**| The background color for the recipe card as a hex-string. | [optional] 
 **fontColor** | **String**| The font color for the recipe card as a hex-string. | [optional] 
 **source_** | **String**| The source of the recipe. | [optional] 

### Return type

[**CreateRecipeCard200Response**](CreateRecipeCard200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **equipmentByIDImage**
> MultipartFile equipmentByIDImage(id)

Equipment by ID Image

Visualize a recipe's equipment list as an image.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = RecipesApi();
final id = 44860; // int | The recipe id.

try {
    final result = api_instance.equipmentByIDImage(id);
    print(result);
} catch (e) {
    print('Exception when calling RecipesApi->equipmentByIDImage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The recipe id. | 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **extractRecipeFromWebsite**
> RecipeInformation extractRecipeFromWebsite(url, forceExtraction, analyze, includeNutrition, includeTaste)

Extract Recipe from Website

This endpoint lets you extract recipe data such as title, ingredients, and instructions from any properly formatted Website.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = RecipesApi();
final url = https://foodista.com/recipe/ZHK4KPB6/chocolate-crinkle-cookies; // String | The URL of the recipe page.
final forceExtraction = true; // bool | If true, the extraction will be triggered whether we already know the recipe or not. Use this only if information is missing as this operation is slower.
final analyze = false; // bool | If true, the recipe will be analyzed and classified resolving in more data such as cuisines, dish types, and more.
final includeNutrition = true; // bool | Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings.
final includeTaste = false; // bool | Whether taste data should be added to correctly parsed ingredients.

try {
    final result = api_instance.extractRecipeFromWebsite(url, forceExtraction, analyze, includeNutrition, includeTaste);
    print(result);
} catch (e) {
    print('Exception when calling RecipesApi->extractRecipeFromWebsite: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **String**| The URL of the recipe page. | 
 **forceExtraction** | **bool**| If true, the extraction will be triggered whether we already know the recipe or not. Use this only if information is missing as this operation is slower. | [optional] 
 **analyze** | **bool**| If true, the recipe will be analyzed and classified resolving in more data such as cuisines, dish types, and more. | [optional] 
 **includeNutrition** | **bool**| Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. | [optional] [default to false]
 **includeTaste** | **bool**| Whether taste data should be added to correctly parsed ingredients. | [optional] [default to false]

### Return type

[**RecipeInformation**](RecipeInformation.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAnalyzedRecipeInstructions**
> List<GetAnalyzedRecipeInstructions200ResponseInner> getAnalyzedRecipeInstructions(id, stepBreakdown)

Get Analyzed Recipe Instructions

Get an analyzed breakdown of a recipe's instructions. Each step is enriched with the ingredients and equipment required.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = RecipesApi();
final id = 324694; // int | The recipe id.
final stepBreakdown = true; // bool | Whether to break down the recipe steps even more.

try {
    final result = api_instance.getAnalyzedRecipeInstructions(id, stepBreakdown);
    print(result);
} catch (e) {
    print('Exception when calling RecipesApi->getAnalyzedRecipeInstructions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The recipe id. | 
 **stepBreakdown** | **bool**| Whether to break down the recipe steps even more. | [optional] 

### Return type

[**List<GetAnalyzedRecipeInstructions200ResponseInner>**](GetAnalyzedRecipeInstructions200ResponseInner.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRandomRecipes**
> GetRandomRecipes200Response getRandomRecipes(includeNutrition, includeTags, excludeTags, number)

Get Random Recipes

Find random (popular) recipes. If you need to filter recipes by diet, nutrition etc. you might want to consider using the complex recipe search endpoint and set the sort request parameter to random.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = RecipesApi();
final includeNutrition = true; // bool | Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings.
final includeTags = vegetarian,gluten; // String | A comma-separated list of tags that the random recipe(s) must adhere to.
final excludeTags = meat,dairy; // String | A comma-separated list of tags that the random recipe(s) must not adhere to.
final number = 10; // int | The maximum number of items to return (between 1 and 100). Defaults to 10.

try {
    final result = api_instance.getRandomRecipes(includeNutrition, includeTags, excludeTags, number);
    print(result);
} catch (e) {
    print('Exception when calling RecipesApi->getRandomRecipes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **includeNutrition** | **bool**| Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. | [optional] [default to false]
 **includeTags** | **String**| A comma-separated list of tags that the random recipe(s) must adhere to. | [optional] 
 **excludeTags** | **String**| A comma-separated list of tags that the random recipe(s) must not adhere to. | [optional] 
 **number** | **int**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]

### Return type

[**GetRandomRecipes200Response**](GetRandomRecipes200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRecipeEquipmentByID**
> GetRecipeEquipmentByID200Response getRecipeEquipmentByID(id)

Equipment by ID

Get a recipe's equipment list.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = RecipesApi();
final id = 1003464; // int | The recipe id.

try {
    final result = api_instance.getRecipeEquipmentByID(id);
    print(result);
} catch (e) {
    print('Exception when calling RecipesApi->getRecipeEquipmentByID: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The recipe id. | 

### Return type

[**GetRecipeEquipmentByID200Response**](GetRecipeEquipmentByID200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRecipeInformation**
> RecipeInformation getRecipeInformation(id, includeNutrition, addWinePairing, addTasteData)

Get Recipe Information

Use a recipe id to get full information about a recipe, such as ingredients, nutrition, diet and allergen information, etc.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = RecipesApi();
final id = 716429; // int | The id of the recipe.
final includeNutrition = true; // bool | Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings.
final addWinePairing = false; // bool | Add a wine pairing to the recipe.
final addTasteData = false; // bool | Add taste data to the recipe.

try {
    final result = api_instance.getRecipeInformation(id, includeNutrition, addWinePairing, addTasteData);
    print(result);
} catch (e) {
    print('Exception when calling RecipesApi->getRecipeInformation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the recipe. | 
 **includeNutrition** | **bool**| Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. | [optional] [default to false]
 **addWinePairing** | **bool**| Add a wine pairing to the recipe. | [optional] 
 **addTasteData** | **bool**| Add taste data to the recipe. | [optional] 

### Return type

[**RecipeInformation**](RecipeInformation.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRecipeInformationBulk**
> Set<RecipeInformation> getRecipeInformationBulk(ids, includeNutrition)

Get Recipe Information Bulk

Get information about multiple recipes at once. This is equivalent to calling the Get Recipe Information endpoint multiple times, but faster.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = RecipesApi();
final ids = 715538,716429; // String | A comma-separated list of recipe ids.
final includeNutrition = true; // bool | Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings.

try {
    final result = api_instance.getRecipeInformationBulk(ids, includeNutrition);
    print(result);
} catch (e) {
    print('Exception when calling RecipesApi->getRecipeInformationBulk: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | **String**| A comma-separated list of recipe ids. | 
 **includeNutrition** | **bool**| Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. | [optional] [default to false]

### Return type

[**Set<RecipeInformation>**](RecipeInformation.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRecipeIngredientsByID**
> GetRecipeIngredientsByID200Response getRecipeIngredientsByID(id)

Ingredients by ID

Get a recipe's ingredient list.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = RecipesApi();
final id = 1003464; // int | The recipe id.

try {
    final result = api_instance.getRecipeIngredientsByID(id);
    print(result);
} catch (e) {
    print('Exception when calling RecipesApi->getRecipeIngredientsByID: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The recipe id. | 

### Return type

[**GetRecipeIngredientsByID200Response**](GetRecipeIngredientsByID200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRecipeNutritionWidgetByID**
> GetRecipeNutritionWidgetByID200Response getRecipeNutritionWidgetByID(id)

Nutrition by ID

Get a recipe's nutrition data.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = RecipesApi();
final id = 1003464; // int | The recipe id.

try {
    final result = api_instance.getRecipeNutritionWidgetByID(id);
    print(result);
} catch (e) {
    print('Exception when calling RecipesApi->getRecipeNutritionWidgetByID: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The recipe id. | 

### Return type

[**GetRecipeNutritionWidgetByID200Response**](GetRecipeNutritionWidgetByID200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRecipePriceBreakdownByID**
> GetRecipePriceBreakdownByID200Response getRecipePriceBreakdownByID(id)

Price Breakdown by ID

Get a recipe's price breakdown data.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = RecipesApi();
final id = 1003464; // int | The recipe id.

try {
    final result = api_instance.getRecipePriceBreakdownByID(id);
    print(result);
} catch (e) {
    print('Exception when calling RecipesApi->getRecipePriceBreakdownByID: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The recipe id. | 

### Return type

[**GetRecipePriceBreakdownByID200Response**](GetRecipePriceBreakdownByID200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRecipeTasteByID**
> TasteInformation getRecipeTasteByID(id, normalize)

Taste by ID

Get a recipe's taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = RecipesApi();
final id = 69095; // int | The recipe id.
final normalize = true; // bool | Normalize to the strongest taste.

try {
    final result = api_instance.getRecipeTasteByID(id, normalize);
    print(result);
} catch (e) {
    print('Exception when calling RecipesApi->getRecipeTasteByID: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The recipe id. | 
 **normalize** | **bool**| Normalize to the strongest taste. | [optional] [default to true]

### Return type

[**TasteInformation**](TasteInformation.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSimilarRecipes**
> Set<GetSimilarRecipes200ResponseInner> getSimilarRecipes(id, number)

Get Similar Recipes

Find recipes which are similar to the given one.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = RecipesApi();
final id = 715538; // int | The id of the source recipe for which similar recipes should be found.
final number = 10; // int | The maximum number of items to return (between 1 and 100). Defaults to 10.

try {
    final result = api_instance.getSimilarRecipes(id, number);
    print(result);
} catch (e) {
    print('Exception when calling RecipesApi->getSimilarRecipes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the source recipe for which similar recipes should be found. | 
 **number** | **int**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]

### Return type

[**Set<GetSimilarRecipes200ResponseInner>**](GetSimilarRecipes200ResponseInner.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **guessNutritionByDishName**
> GuessNutritionByDishName200Response guessNutritionByDishName(title)

Guess Nutrition by Dish Name

Estimate the macronutrients of a dish based on its title.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = RecipesApi();
final title = Spaghetti Aglio et Olio; // String | The title of the dish.

try {
    final result = api_instance.guessNutritionByDishName(title);
    print(result);
} catch (e) {
    print('Exception when calling RecipesApi->guessNutritionByDishName: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **String**| The title of the dish. | 

### Return type

[**GuessNutritionByDishName200Response**](GuessNutritionByDishName200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **parseIngredients**
> Set<IngredientInformation> parseIngredients(ingredientList, servings, language, includeNutrition)

Parse Ingredients

Extract an ingredient from plain text.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = RecipesApi();
final ingredientList = ingredientList_example; // String | The ingredient list of the recipe, one ingredient per line.
final servings = 8.14; // num | The number of servings that you can make from the ingredients.
final language = en; // String | The language of the input. Either 'en' or 'de'.
final includeNutrition = true; // bool | Whether nutrition data should be added to correctly parsed ingredients.

try {
    final result = api_instance.parseIngredients(ingredientList, servings, language, includeNutrition);
    print(result);
} catch (e) {
    print('Exception when calling RecipesApi->parseIngredients: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredientList** | **String**| The ingredient list of the recipe, one ingredient per line. | 
 **servings** | **num**| The number of servings that you can make from the ingredients. | 
 **language** | **String**| The language of the input. Either 'en' or 'de'. | [optional] 
 **includeNutrition** | **bool**| Whether nutrition data should be added to correctly parsed ingredients. | [optional] 

### Return type

[**Set<IngredientInformation>**](IngredientInformation.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **priceBreakdownByIDImage**
> MultipartFile priceBreakdownByIDImage(id)

Price Breakdown by ID Image

Visualize a recipe's price breakdown.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = RecipesApi();
final id = 1082038; // int | The recipe id.

try {
    final result = api_instance.priceBreakdownByIDImage(id);
    print(result);
} catch (e) {
    print('Exception when calling RecipesApi->priceBreakdownByIDImage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The recipe id. | 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **quickAnswer**
> QuickAnswer200Response quickAnswer(q)

Quick Answer

Answer a nutrition related natural language question.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = RecipesApi();
final q = How much vitamin c is in 2 apples?; // String | The nutrition related question.

try {
    final result = api_instance.quickAnswer(q);
    print(result);
} catch (e) {
    print('Exception when calling RecipesApi->quickAnswer: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| The nutrition related question. | 

### Return type

[**QuickAnswer200Response**](QuickAnswer200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recipeNutritionByIDImage**
> MultipartFile recipeNutritionByIDImage(id)

Recipe Nutrition by ID Image

Visualize a recipe's nutritional information as an image.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = RecipesApi();
final id = 1082038; // int | The recipe id.

try {
    final result = api_instance.recipeNutritionByIDImage(id);
    print(result);
} catch (e) {
    print('Exception when calling RecipesApi->recipeNutritionByIDImage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The recipe id. | 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recipeNutritionLabelImage**
> MultipartFile recipeNutritionLabelImage(id, showOptionalNutrients, showZeroValues, showIngredients)

Recipe Nutrition Label Image

Get a recipe's nutrition label as an image.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = RecipesApi();
final id = 641166; // int | The recipe id.
final showOptionalNutrients = false; // bool | Whether to show optional nutrients.
final showZeroValues = false; // bool | Whether to show zero values.
final showIngredients = false; // bool | Whether to show a list of ingredients.

try {
    final result = api_instance.recipeNutritionLabelImage(id, showOptionalNutrients, showZeroValues, showIngredients);
    print(result);
} catch (e) {
    print('Exception when calling RecipesApi->recipeNutritionLabelImage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The recipe id. | 
 **showOptionalNutrients** | **bool**| Whether to show optional nutrients. | [optional] 
 **showZeroValues** | **bool**| Whether to show zero values. | [optional] 
 **showIngredients** | **bool**| Whether to show a list of ingredients. | [optional] 

### Return type

[**MultipartFile**](MultipartFile.md)

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

final api_instance = RecipesApi();
final id = 641166; // int | The recipe id.
final defaultCss = false; // bool | Whether the default CSS should be added to the response.
final showOptionalNutrients = false; // bool | Whether to show optional nutrients.
final showZeroValues = false; // bool | Whether to show zero values.
final showIngredients = false; // bool | Whether to show a list of ingredients.

try {
    final result = api_instance.recipeNutritionLabelWidget(id, defaultCss, showOptionalNutrients, showZeroValues, showIngredients);
    print(result);
} catch (e) {
    print('Exception when calling RecipesApi->recipeNutritionLabelWidget: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The recipe id. | 
 **defaultCss** | **bool**| Whether the default CSS should be added to the response. | [optional] [default to true]
 **showOptionalNutrients** | **bool**| Whether to show optional nutrients. | [optional] 
 **showZeroValues** | **bool**| Whether to show zero values. | [optional] 
 **showIngredients** | **bool**| Whether to show a list of ingredients. | [optional] 

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recipeTasteByIDImage**
> MultipartFile recipeTasteByIDImage(id, normalize, rgb)

Recipe Taste by ID Image

Get a recipe's taste as an image. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = RecipesApi();
final id = 69095; // int | The recipe id.
final normalize = false; // bool | Normalize to the strongest taste.
final rgb = 75,192,192; // String | Red, green, blue values for the chart color.

try {
    final result = api_instance.recipeTasteByIDImage(id, normalize, rgb);
    print(result);
} catch (e) {
    print('Exception when calling RecipesApi->recipeTasteByIDImage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The recipe id. | 
 **normalize** | **bool**| Normalize to the strongest taste. | [optional] 
 **rgb** | **String**| Red, green, blue values for the chart color. | [optional] 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchRecipes**
> SearchRecipes200Response searchRecipes(query, cuisine, excludeCuisine, diet, intolerances, equipment, includeIngredients, excludeIngredients, type, instructionsRequired, fillIngredients, addRecipeInformation, addRecipeNutrition, author, tags, recipeBoxId, titleMatch, maxReadyTime, minServings, maxServings, ignorePantry, sort, sortDirection, minCarbs, maxCarbs, minProtein, maxProtein, minCalories, maxCalories, minFat, maxFat, minAlcohol, maxAlcohol, minCaffeine, maxCaffeine, minCopper, maxCopper, minCalcium, maxCalcium, minCholine, maxCholine, minCholesterol, maxCholesterol, minFluoride, maxFluoride, minSaturatedFat, maxSaturatedFat, minVitaminA, maxVitaminA, minVitaminC, maxVitaminC, minVitaminD, maxVitaminD, minVitaminE, maxVitaminE, minVitaminK, maxVitaminK, minVitaminB1, maxVitaminB1, minVitaminB2, maxVitaminB2, minVitaminB5, maxVitaminB5, minVitaminB3, maxVitaminB3, minVitaminB6, maxVitaminB6, minVitaminB12, maxVitaminB12, minFiber, maxFiber, minFolate, maxFolate, minFolicAcid, maxFolicAcid, minIodine, maxIodine, minIron, maxIron, minMagnesium, maxMagnesium, minManganese, maxManganese, minPhosphorus, maxPhosphorus, minPotassium, maxPotassium, minSelenium, maxSelenium, minSodium, maxSodium, minSugar, maxSugar, minZinc, maxZinc, offset, number)

Search Recipes

Search through hundreds of thousands of recipes using advanced filtering and ranking. NOTE: This method combines searching by query, by ingredients, and by nutrients into one endpoint.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = RecipesApi();
final query = burger; // String | The (natural language) search query.
final cuisine = italian; // String | The cuisine(s) of the recipes. One or more, comma separated (will be interpreted as 'OR'). See a full list of supported cuisines.
final excludeCuisine = greek; // String | The cuisine(s) the recipes must not match. One or more, comma separated (will be interpreted as 'AND'). See a full list of supported cuisines.
final diet = vegetarian; // String | The diet for which the recipes must be suitable. See a full list of supported diets.
final intolerances = gluten; // String | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.
final equipment = pan; // String | The equipment required. Multiple values will be interpreted as 'or'. For example, value could be \"blender, frying pan, bowl\".
final includeIngredients = tomato,cheese; // String | A comma-separated list of ingredients that should/must be used in the recipes.
final excludeIngredients = eggs; // String | A comma-separated list of ingredients or ingredient types that the recipes must not contain.
final type = main course; // String | The type of recipe. See a full list of supported meal types.
final instructionsRequired = true; // bool | Whether the recipes must have instructions.
final fillIngredients = false; // bool | Add information about the ingredients and whether they are used or missing in relation to the query.
final addRecipeInformation = false; // bool | If set to true, you get more information about the recipes returned.
final addRecipeNutrition = false; // bool | If set to true, you get nutritional information about each recipes returned.
final author = coffeebean; // String | The username of the recipe author.
final tags = tags_example; // String | The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have.
final recipeBoxId = 2468; // int | The id of the recipe box to which the search should be limited to.
final titleMatch = Crock Pot; // String | Enter text that must be found in the title of the recipes.
final maxReadyTime = 20; // num | The maximum time in minutes it should take to prepare and cook the recipe.
final minServings = 1; // num | The minimum amount of servings the recipe is for.
final maxServings = 8; // num | The maximum amount of servings the recipe is for.
final ignorePantry = false; // bool | Whether to ignore typical pantry items, such as water, salt, flour, etc.
final sort = calories; // String | The strategy to sort recipes by. See a full list of supported sorting options.
final sortDirection = asc; // String | The direction in which to sort. Must be either 'asc' (ascending) or 'desc' (descending).
final minCarbs = 10; // num | The minimum amount of carbohydrates in grams the recipe must have.
final maxCarbs = 100; // num | The maximum amount of carbohydrates in grams the recipe can have.
final minProtein = 10; // num | The minimum amount of protein in grams the recipe must have.
final maxProtein = 100; // num | The maximum amount of protein in grams the recipe can have.
final minCalories = 50; // num | The minimum amount of calories the recipe must have.
final maxCalories = 800; // num | The maximum amount of calories the recipe can have.
final minFat = 1; // num | The minimum amount of fat in grams the recipe must have.
final maxFat = 100; // num | The maximum amount of fat in grams the recipe can have.
final minAlcohol = 0; // num | The minimum amount of alcohol in grams the recipe must have.
final maxAlcohol = 100; // num | The maximum amount of alcohol in grams the recipe can have.
final minCaffeine = 0; // num | The minimum amount of caffeine in milligrams the recipe must have.
final maxCaffeine = 100; // num | The maximum amount of caffeine in milligrams the recipe can have.
final minCopper = 0; // num | The minimum amount of copper in milligrams the recipe must have.
final maxCopper = 100; // num | The maximum amount of copper in milligrams the recipe can have.
final minCalcium = 0; // num | The minimum amount of calcium in milligrams the recipe must have.
final maxCalcium = 100; // num | The maximum amount of calcium in milligrams the recipe can have.
final minCholine = 0; // num | The minimum amount of choline in milligrams the recipe must have.
final maxCholine = 100; // num | The maximum amount of choline in milligrams the recipe can have.
final minCholesterol = 0; // num | The minimum amount of cholesterol in milligrams the recipe must have.
final maxCholesterol = 100; // num | The maximum amount of cholesterol in milligrams the recipe can have.
final minFluoride = 0; // num | The minimum amount of fluoride in milligrams the recipe must have.
final maxFluoride = 100; // num | The maximum amount of fluoride in milligrams the recipe can have.
final minSaturatedFat = 0; // num | The minimum amount of saturated fat in grams the recipe must have.
final maxSaturatedFat = 100; // num | The maximum amount of saturated fat in grams the recipe can have.
final minVitaminA = 0; // num | The minimum amount of Vitamin A in IU the recipe must have.
final maxVitaminA = 100; // num | The maximum amount of Vitamin A in IU the recipe can have.
final minVitaminC = 0; // num | The minimum amount of Vitamin C milligrams the recipe must have.
final maxVitaminC = 100; // num | The maximum amount of Vitamin C in milligrams the recipe can have.
final minVitaminD = 0; // num | The minimum amount of Vitamin D in micrograms the recipe must have.
final maxVitaminD = 100; // num | The maximum amount of Vitamin D in micrograms the recipe can have.
final minVitaminE = 0; // num | The minimum amount of Vitamin E in milligrams the recipe must have.
final maxVitaminE = 100; // num | The maximum amount of Vitamin E in milligrams the recipe can have.
final minVitaminK = 0; // num | The minimum amount of Vitamin K in micrograms the recipe must have.
final maxVitaminK = 100; // num | The maximum amount of Vitamin K in micrograms the recipe can have.
final minVitaminB1 = 0; // num | The minimum amount of Vitamin B1 in milligrams the recipe must have.
final maxVitaminB1 = 100; // num | The maximum amount of Vitamin B1 in milligrams the recipe can have.
final minVitaminB2 = 0; // num | The minimum amount of Vitamin B2 in milligrams the recipe must have.
final maxVitaminB2 = 100; // num | The maximum amount of Vitamin B2 in milligrams the recipe can have.
final minVitaminB5 = 0; // num | The minimum amount of Vitamin B5 in milligrams the recipe must have.
final maxVitaminB5 = 100; // num | The maximum amount of Vitamin B5 in milligrams the recipe can have.
final minVitaminB3 = 0; // num | The minimum amount of Vitamin B3 in milligrams the recipe must have.
final maxVitaminB3 = 100; // num | The maximum amount of Vitamin B3 in milligrams the recipe can have.
final minVitaminB6 = 0; // num | The minimum amount of Vitamin B6 in milligrams the recipe must have.
final maxVitaminB6 = 100; // num | The maximum amount of Vitamin B6 in milligrams the recipe can have.
final minVitaminB12 = 0; // num | The minimum amount of Vitamin B12 in micrograms the recipe must have.
final maxVitaminB12 = 100; // num | The maximum amount of Vitamin B12 in micrograms the recipe can have.
final minFiber = 0; // num | The minimum amount of fiber in grams the recipe must have.
final maxFiber = 100; // num | The maximum amount of fiber in grams the recipe can have.
final minFolate = 0; // num | The minimum amount of folate in micrograms the recipe must have.
final maxFolate = 100; // num | The maximum amount of folate in micrograms the recipe can have.
final minFolicAcid = 0; // num | The minimum amount of folic acid in micrograms the recipe must have.
final maxFolicAcid = 100; // num | The maximum amount of folic acid in micrograms the recipe can have.
final minIodine = 0; // num | The minimum amount of iodine in micrograms the recipe must have.
final maxIodine = 100; // num | The maximum amount of iodine in micrograms the recipe can have.
final minIron = 0; // num | The minimum amount of iron in milligrams the recipe must have.
final maxIron = 100; // num | The maximum amount of iron in milligrams the recipe can have.
final minMagnesium = 0; // num | The minimum amount of magnesium in milligrams the recipe must have.
final maxMagnesium = 100; // num | The maximum amount of magnesium in milligrams the recipe can have.
final minManganese = 0; // num | The minimum amount of manganese in milligrams the recipe must have.
final maxManganese = 100; // num | The maximum amount of manganese in milligrams the recipe can have.
final minPhosphorus = 0; // num | The minimum amount of phosphorus in milligrams the recipe must have.
final maxPhosphorus = 100; // num | The maximum amount of phosphorus in milligrams the recipe can have.
final minPotassium = 0; // num | The minimum amount of potassium in milligrams the recipe must have.
final maxPotassium = 100; // num | The maximum amount of potassium in milligrams the recipe can have.
final minSelenium = 0; // num | The minimum amount of selenium in micrograms the recipe must have.
final maxSelenium = 100; // num | The maximum amount of selenium in micrograms the recipe can have.
final minSodium = 0; // num | The minimum amount of sodium in milligrams the recipe must have.
final maxSodium = 100; // num | The maximum amount of sodium in milligrams the recipe can have.
final minSugar = 0; // num | The minimum amount of sugar in grams the recipe must have.
final maxSugar = 100; // num | The maximum amount of sugar in grams the recipe can have.
final minZinc = 0; // num | The minimum amount of zinc in milligrams the recipe must have.
final maxZinc = 100; // num | The maximum amount of zinc in milligrams the recipe can have.
final offset = 56; // int | The number of results to skip (between 0 and 900).
final number = 10; // int | The maximum number of items to return (between 1 and 100). Defaults to 10.

try {
    final result = api_instance.searchRecipes(query, cuisine, excludeCuisine, diet, intolerances, equipment, includeIngredients, excludeIngredients, type, instructionsRequired, fillIngredients, addRecipeInformation, addRecipeNutrition, author, tags, recipeBoxId, titleMatch, maxReadyTime, minServings, maxServings, ignorePantry, sort, sortDirection, minCarbs, maxCarbs, minProtein, maxProtein, minCalories, maxCalories, minFat, maxFat, minAlcohol, maxAlcohol, minCaffeine, maxCaffeine, minCopper, maxCopper, minCalcium, maxCalcium, minCholine, maxCholine, minCholesterol, maxCholesterol, minFluoride, maxFluoride, minSaturatedFat, maxSaturatedFat, minVitaminA, maxVitaminA, minVitaminC, maxVitaminC, minVitaminD, maxVitaminD, minVitaminE, maxVitaminE, minVitaminK, maxVitaminK, minVitaminB1, maxVitaminB1, minVitaminB2, maxVitaminB2, minVitaminB5, maxVitaminB5, minVitaminB3, maxVitaminB3, minVitaminB6, maxVitaminB6, minVitaminB12, maxVitaminB12, minFiber, maxFiber, minFolate, maxFolate, minFolicAcid, maxFolicAcid, minIodine, maxIodine, minIron, maxIron, minMagnesium, maxMagnesium, minManganese, maxManganese, minPhosphorus, maxPhosphorus, minPotassium, maxPotassium, minSelenium, maxSelenium, minSodium, maxSodium, minSugar, maxSugar, minZinc, maxZinc, offset, number);
    print(result);
} catch (e) {
    print('Exception when calling RecipesApi->searchRecipes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The (natural language) search query. | 
 **cuisine** | **String**| The cuisine(s) of the recipes. One or more, comma separated (will be interpreted as 'OR'). See a full list of supported cuisines. | [optional] 
 **excludeCuisine** | **String**| The cuisine(s) the recipes must not match. One or more, comma separated (will be interpreted as 'AND'). See a full list of supported cuisines. | [optional] 
 **diet** | **String**| The diet for which the recipes must be suitable. See a full list of supported diets. | [optional] 
 **intolerances** | **String**| A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. | [optional] 
 **equipment** | **String**| The equipment required. Multiple values will be interpreted as 'or'. For example, value could be \"blender, frying pan, bowl\". | [optional] 
 **includeIngredients** | **String**| A comma-separated list of ingredients that should/must be used in the recipes. | [optional] 
 **excludeIngredients** | **String**| A comma-separated list of ingredients or ingredient types that the recipes must not contain. | [optional] 
 **type** | **String**| The type of recipe. See a full list of supported meal types. | [optional] 
 **instructionsRequired** | **bool**| Whether the recipes must have instructions. | [optional] 
 **fillIngredients** | **bool**| Add information about the ingredients and whether they are used or missing in relation to the query. | [optional] 
 **addRecipeInformation** | **bool**| If set to true, you get more information about the recipes returned. | [optional] 
 **addRecipeNutrition** | **bool**| If set to true, you get nutritional information about each recipes returned. | [optional] 
 **author** | **String**| The username of the recipe author. | [optional] 
 **tags** | **String**| The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have. | [optional] 
 **recipeBoxId** | **int**| The id of the recipe box to which the search should be limited to. | [optional] 
 **titleMatch** | **String**| Enter text that must be found in the title of the recipes. | [optional] 
 **maxReadyTime** | **num**| The maximum time in minutes it should take to prepare and cook the recipe. | [optional] 
 **minServings** | **num**| The minimum amount of servings the recipe is for. | [optional] 
 **maxServings** | **num**| The maximum amount of servings the recipe is for. | [optional] 
 **ignorePantry** | **bool**| Whether to ignore typical pantry items, such as water, salt, flour, etc. | [optional] [default to false]
 **sort** | **String**| The strategy to sort recipes by. See a full list of supported sorting options. | [optional] 
 **sortDirection** | **String**| The direction in which to sort. Must be either 'asc' (ascending) or 'desc' (descending). | [optional] 
 **minCarbs** | **num**| The minimum amount of carbohydrates in grams the recipe must have. | [optional] 
 **maxCarbs** | **num**| The maximum amount of carbohydrates in grams the recipe can have. | [optional] 
 **minProtein** | **num**| The minimum amount of protein in grams the recipe must have. | [optional] 
 **maxProtein** | **num**| The maximum amount of protein in grams the recipe can have. | [optional] 
 **minCalories** | **num**| The minimum amount of calories the recipe must have. | [optional] 
 **maxCalories** | **num**| The maximum amount of calories the recipe can have. | [optional] 
 **minFat** | **num**| The minimum amount of fat in grams the recipe must have. | [optional] 
 **maxFat** | **num**| The maximum amount of fat in grams the recipe can have. | [optional] 
 **minAlcohol** | **num**| The minimum amount of alcohol in grams the recipe must have. | [optional] 
 **maxAlcohol** | **num**| The maximum amount of alcohol in grams the recipe can have. | [optional] 
 **minCaffeine** | **num**| The minimum amount of caffeine in milligrams the recipe must have. | [optional] 
 **maxCaffeine** | **num**| The maximum amount of caffeine in milligrams the recipe can have. | [optional] 
 **minCopper** | **num**| The minimum amount of copper in milligrams the recipe must have. | [optional] 
 **maxCopper** | **num**| The maximum amount of copper in milligrams the recipe can have. | [optional] 
 **minCalcium** | **num**| The minimum amount of calcium in milligrams the recipe must have. | [optional] 
 **maxCalcium** | **num**| The maximum amount of calcium in milligrams the recipe can have. | [optional] 
 **minCholine** | **num**| The minimum amount of choline in milligrams the recipe must have. | [optional] 
 **maxCholine** | **num**| The maximum amount of choline in milligrams the recipe can have. | [optional] 
 **minCholesterol** | **num**| The minimum amount of cholesterol in milligrams the recipe must have. | [optional] 
 **maxCholesterol** | **num**| The maximum amount of cholesterol in milligrams the recipe can have. | [optional] 
 **minFluoride** | **num**| The minimum amount of fluoride in milligrams the recipe must have. | [optional] 
 **maxFluoride** | **num**| The maximum amount of fluoride in milligrams the recipe can have. | [optional] 
 **minSaturatedFat** | **num**| The minimum amount of saturated fat in grams the recipe must have. | [optional] 
 **maxSaturatedFat** | **num**| The maximum amount of saturated fat in grams the recipe can have. | [optional] 
 **minVitaminA** | **num**| The minimum amount of Vitamin A in IU the recipe must have. | [optional] 
 **maxVitaminA** | **num**| The maximum amount of Vitamin A in IU the recipe can have. | [optional] 
 **minVitaminC** | **num**| The minimum amount of Vitamin C milligrams the recipe must have. | [optional] 
 **maxVitaminC** | **num**| The maximum amount of Vitamin C in milligrams the recipe can have. | [optional] 
 **minVitaminD** | **num**| The minimum amount of Vitamin D in micrograms the recipe must have. | [optional] 
 **maxVitaminD** | **num**| The maximum amount of Vitamin D in micrograms the recipe can have. | [optional] 
 **minVitaminE** | **num**| The minimum amount of Vitamin E in milligrams the recipe must have. | [optional] 
 **maxVitaminE** | **num**| The maximum amount of Vitamin E in milligrams the recipe can have. | [optional] 
 **minVitaminK** | **num**| The minimum amount of Vitamin K in micrograms the recipe must have. | [optional] 
 **maxVitaminK** | **num**| The maximum amount of Vitamin K in micrograms the recipe can have. | [optional] 
 **minVitaminB1** | **num**| The minimum amount of Vitamin B1 in milligrams the recipe must have. | [optional] 
 **maxVitaminB1** | **num**| The maximum amount of Vitamin B1 in milligrams the recipe can have. | [optional] 
 **minVitaminB2** | **num**| The minimum amount of Vitamin B2 in milligrams the recipe must have. | [optional] 
 **maxVitaminB2** | **num**| The maximum amount of Vitamin B2 in milligrams the recipe can have. | [optional] 
 **minVitaminB5** | **num**| The minimum amount of Vitamin B5 in milligrams the recipe must have. | [optional] 
 **maxVitaminB5** | **num**| The maximum amount of Vitamin B5 in milligrams the recipe can have. | [optional] 
 **minVitaminB3** | **num**| The minimum amount of Vitamin B3 in milligrams the recipe must have. | [optional] 
 **maxVitaminB3** | **num**| The maximum amount of Vitamin B3 in milligrams the recipe can have. | [optional] 
 **minVitaminB6** | **num**| The minimum amount of Vitamin B6 in milligrams the recipe must have. | [optional] 
 **maxVitaminB6** | **num**| The maximum amount of Vitamin B6 in milligrams the recipe can have. | [optional] 
 **minVitaminB12** | **num**| The minimum amount of Vitamin B12 in micrograms the recipe must have. | [optional] 
 **maxVitaminB12** | **num**| The maximum amount of Vitamin B12 in micrograms the recipe can have. | [optional] 
 **minFiber** | **num**| The minimum amount of fiber in grams the recipe must have. | [optional] 
 **maxFiber** | **num**| The maximum amount of fiber in grams the recipe can have. | [optional] 
 **minFolate** | **num**| The minimum amount of folate in micrograms the recipe must have. | [optional] 
 **maxFolate** | **num**| The maximum amount of folate in micrograms the recipe can have. | [optional] 
 **minFolicAcid** | **num**| The minimum amount of folic acid in micrograms the recipe must have. | [optional] 
 **maxFolicAcid** | **num**| The maximum amount of folic acid in micrograms the recipe can have. | [optional] 
 **minIodine** | **num**| The minimum amount of iodine in micrograms the recipe must have. | [optional] 
 **maxIodine** | **num**| The maximum amount of iodine in micrograms the recipe can have. | [optional] 
 **minIron** | **num**| The minimum amount of iron in milligrams the recipe must have. | [optional] 
 **maxIron** | **num**| The maximum amount of iron in milligrams the recipe can have. | [optional] 
 **minMagnesium** | **num**| The minimum amount of magnesium in milligrams the recipe must have. | [optional] 
 **maxMagnesium** | **num**| The maximum amount of magnesium in milligrams the recipe can have. | [optional] 
 **minManganese** | **num**| The minimum amount of manganese in milligrams the recipe must have. | [optional] 
 **maxManganese** | **num**| The maximum amount of manganese in milligrams the recipe can have. | [optional] 
 **minPhosphorus** | **num**| The minimum amount of phosphorus in milligrams the recipe must have. | [optional] 
 **maxPhosphorus** | **num**| The maximum amount of phosphorus in milligrams the recipe can have. | [optional] 
 **minPotassium** | **num**| The minimum amount of potassium in milligrams the recipe must have. | [optional] 
 **maxPotassium** | **num**| The maximum amount of potassium in milligrams the recipe can have. | [optional] 
 **minSelenium** | **num**| The minimum amount of selenium in micrograms the recipe must have. | [optional] 
 **maxSelenium** | **num**| The maximum amount of selenium in micrograms the recipe can have. | [optional] 
 **minSodium** | **num**| The minimum amount of sodium in milligrams the recipe must have. | [optional] 
 **maxSodium** | **num**| The maximum amount of sodium in milligrams the recipe can have. | [optional] 
 **minSugar** | **num**| The minimum amount of sugar in grams the recipe must have. | [optional] 
 **maxSugar** | **num**| The maximum amount of sugar in grams the recipe can have. | [optional] 
 **minZinc** | **num**| The minimum amount of zinc in milligrams the recipe must have. | [optional] 
 **maxZinc** | **num**| The maximum amount of zinc in milligrams the recipe can have. | [optional] 
 **offset** | **int**| The number of results to skip (between 0 and 900). | [optional] 
 **number** | **int**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]

### Return type

[**SearchRecipes200Response**](SearchRecipes200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchRecipesByIngredients**
> Set<SearchRecipesByIngredients200ResponseInner> searchRecipesByIngredients(ingredients, number, ranking, ignorePantry)

Search Recipes by Ingredients

 Ever wondered what recipes you can cook with the ingredients you have in your fridge or pantry? This endpoint lets you find recipes that either maximize the usage of ingredients you have at hand (pre shopping) or minimize the ingredients that you don't currently have (post shopping).         

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = RecipesApi();
final ingredients = carrots,tomatoes; // String | A comma-separated list of ingredients that the recipes should contain.
final number = 10; // int | The maximum number of items to return (between 1 and 100). Defaults to 10.
final ranking = 1; // int | Whether to maximize used ingredients (1) or minimize missing ingredients (2) first.
final ignorePantry = false; // bool | Whether to ignore typical pantry items, such as water, salt, flour, etc.

try {
    final result = api_instance.searchRecipesByIngredients(ingredients, number, ranking, ignorePantry);
    print(result);
} catch (e) {
    print('Exception when calling RecipesApi->searchRecipesByIngredients: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredients** | **String**| A comma-separated list of ingredients that the recipes should contain. | 
 **number** | **int**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]
 **ranking** | **int**| Whether to maximize used ingredients (1) or minimize missing ingredients (2) first. | [optional] 
 **ignorePantry** | **bool**| Whether to ignore typical pantry items, such as water, salt, flour, etc. | [optional] [default to false]

### Return type

[**Set<SearchRecipesByIngredients200ResponseInner>**](SearchRecipesByIngredients200ResponseInner.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchRecipesByNutrients**
> Set<SearchRecipesByNutrients200ResponseInner> searchRecipesByNutrients(minCarbs, maxCarbs, minProtein, maxProtein, minCalories, maxCalories, minFat, maxFat, minAlcohol, maxAlcohol, minCaffeine, maxCaffeine, minCopper, maxCopper, minCalcium, maxCalcium, minCholine, maxCholine, minCholesterol, maxCholesterol, minFluoride, maxFluoride, minSaturatedFat, maxSaturatedFat, minVitaminA, maxVitaminA, minVitaminC, maxVitaminC, minVitaminD, maxVitaminD, minVitaminE, maxVitaminE, minVitaminK, maxVitaminK, minVitaminB1, maxVitaminB1, minVitaminB2, maxVitaminB2, minVitaminB5, maxVitaminB5, minVitaminB3, maxVitaminB3, minVitaminB6, maxVitaminB6, minVitaminB12, maxVitaminB12, minFiber, maxFiber, minFolate, maxFolate, minFolicAcid, maxFolicAcid, minIodine, maxIodine, minIron, maxIron, minMagnesium, maxMagnesium, minManganese, maxManganese, minPhosphorus, maxPhosphorus, minPotassium, maxPotassium, minSelenium, maxSelenium, minSodium, maxSodium, minSugar, maxSugar, minZinc, maxZinc, offset, number, random)

Search Recipes by Nutrients

Find a set of recipes that adhere to the given nutritional limits. You may set limits for macronutrients (calories, protein, fat, and carbohydrate) and/or many micronutrients.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = RecipesApi();
final minCarbs = 10; // num | The minimum amount of carbohydrates in grams the recipe must have.
final maxCarbs = 100; // num | The maximum amount of carbohydrates in grams the recipe can have.
final minProtein = 10; // num | The minimum amount of protein in grams the recipe must have.
final maxProtein = 100; // num | The maximum amount of protein in grams the recipe can have.
final minCalories = 50; // num | The minimum amount of calories the recipe must have.
final maxCalories = 800; // num | The maximum amount of calories the recipe can have.
final minFat = 1; // num | The minimum amount of fat in grams the recipe must have.
final maxFat = 100; // num | The maximum amount of fat in grams the recipe can have.
final minAlcohol = 0; // num | The minimum amount of alcohol in grams the recipe must have.
final maxAlcohol = 100; // num | The maximum amount of alcohol in grams the recipe can have.
final minCaffeine = 0; // num | The minimum amount of caffeine in milligrams the recipe must have.
final maxCaffeine = 100; // num | The maximum amount of caffeine in milligrams the recipe can have.
final minCopper = 0; // num | The minimum amount of copper in milligrams the recipe must have.
final maxCopper = 100; // num | The maximum amount of copper in milligrams the recipe can have.
final minCalcium = 0; // num | The minimum amount of calcium in milligrams the recipe must have.
final maxCalcium = 100; // num | The maximum amount of calcium in milligrams the recipe can have.
final minCholine = 0; // num | The minimum amount of choline in milligrams the recipe must have.
final maxCholine = 100; // num | The maximum amount of choline in milligrams the recipe can have.
final minCholesterol = 0; // num | The minimum amount of cholesterol in milligrams the recipe must have.
final maxCholesterol = 100; // num | The maximum amount of cholesterol in milligrams the recipe can have.
final minFluoride = 0; // num | The minimum amount of fluoride in milligrams the recipe must have.
final maxFluoride = 100; // num | The maximum amount of fluoride in milligrams the recipe can have.
final minSaturatedFat = 0; // num | The minimum amount of saturated fat in grams the recipe must have.
final maxSaturatedFat = 100; // num | The maximum amount of saturated fat in grams the recipe can have.
final minVitaminA = 0; // num | The minimum amount of Vitamin A in IU the recipe must have.
final maxVitaminA = 100; // num | The maximum amount of Vitamin A in IU the recipe can have.
final minVitaminC = 0; // num | The minimum amount of Vitamin C in milligrams the recipe must have.
final maxVitaminC = 100; // num | The maximum amount of Vitamin C in milligrams the recipe can have.
final minVitaminD = 0; // num | The minimum amount of Vitamin D in micrograms the recipe must have.
final maxVitaminD = 100; // num | The maximum amount of Vitamin D in micrograms the recipe can have.
final minVitaminE = 0; // num | The minimum amount of Vitamin E in milligrams the recipe must have.
final maxVitaminE = 100; // num | The maximum amount of Vitamin E in milligrams the recipe can have.
final minVitaminK = 0; // num | The minimum amount of Vitamin K in micrograms the recipe must have.
final maxVitaminK = 100; // num | The maximum amount of Vitamin K in micrograms the recipe can have.
final minVitaminB1 = 0; // num | The minimum amount of Vitamin B1 in milligrams the recipe must have.
final maxVitaminB1 = 100; // num | The maximum amount of Vitamin B1 in milligrams the recipe can have.
final minVitaminB2 = 0; // num | The minimum amount of Vitamin B2 in milligrams the recipe must have.
final maxVitaminB2 = 100; // num | The maximum amount of Vitamin B2 in milligrams the recipe can have.
final minVitaminB5 = 0; // num | The minimum amount of Vitamin B5 in milligrams the recipe must have.
final maxVitaminB5 = 100; // num | The maximum amount of Vitamin B5 in milligrams the recipe can have.
final minVitaminB3 = 0; // num | The minimum amount of Vitamin B3 in milligrams the recipe must have.
final maxVitaminB3 = 100; // num | The maximum amount of Vitamin B3 in milligrams the recipe can have.
final minVitaminB6 = 0; // num | The minimum amount of Vitamin B6 in milligrams the recipe must have.
final maxVitaminB6 = 100; // num | The maximum amount of Vitamin B6 in milligrams the recipe can have.
final minVitaminB12 = 0; // num | The minimum amount of Vitamin B12 in micrograms the recipe must have.
final maxVitaminB12 = 100; // num | The maximum amount of Vitamin B12 in micrograms the recipe can have.
final minFiber = 0; // num | The minimum amount of fiber in grams the recipe must have.
final maxFiber = 100; // num | The maximum amount of fiber in grams the recipe can have.
final minFolate = 0; // num | The minimum amount of folate in micrograms the recipe must have.
final maxFolate = 100; // num | The maximum amount of folate in micrograms the recipe can have.
final minFolicAcid = 0; // num | The minimum amount of folic acid in micrograms the recipe must have.
final maxFolicAcid = 100; // num | The maximum amount of folic acid in micrograms the recipe can have.
final minIodine = 0; // num | The minimum amount of iodine in micrograms the recipe must have.
final maxIodine = 100; // num | The maximum amount of iodine in micrograms the recipe can have.
final minIron = 0; // num | The minimum amount of iron in milligrams the recipe must have.
final maxIron = 100; // num | The maximum amount of iron in milligrams the recipe can have.
final minMagnesium = 0; // num | The minimum amount of magnesium in milligrams the recipe must have.
final maxMagnesium = 100; // num | The maximum amount of magnesium in milligrams the recipe can have.
final minManganese = 0; // num | The minimum amount of manganese in milligrams the recipe must have.
final maxManganese = 100; // num | The maximum amount of manganese in milligrams the recipe can have.
final minPhosphorus = 0; // num | The minimum amount of phosphorus in milligrams the recipe must have.
final maxPhosphorus = 100; // num | The maximum amount of phosphorus in milligrams the recipe can have.
final minPotassium = 0; // num | The minimum amount of potassium in milligrams the recipe must have.
final maxPotassium = 100; // num | The maximum amount of potassium in milligrams the recipe can have.
final minSelenium = 0; // num | The minimum amount of selenium in micrograms the recipe must have.
final maxSelenium = 100; // num | The maximum amount of selenium in micrograms the recipe can have.
final minSodium = 0; // num | The minimum amount of sodium in milligrams the recipe must have.
final maxSodium = 100; // num | The maximum amount of sodium in milligrams the recipe can have.
final minSugar = 0; // num | The minimum amount of sugar in grams the recipe must have.
final maxSugar = 100; // num | The maximum amount of sugar in grams the recipe can have.
final minZinc = 0; // num | The minimum amount of zinc in milligrams the recipe must have.
final maxZinc = 100; // num | The maximum amount of zinc in milligrams the recipe can have.
final offset = 56; // int | The number of results to skip (between 0 and 900).
final number = 10; // int | The maximum number of items to return (between 1 and 100). Defaults to 10.
final random = false; // bool | If true, every request will give you a random set of recipes within the requested limits.

try {
    final result = api_instance.searchRecipesByNutrients(minCarbs, maxCarbs, minProtein, maxProtein, minCalories, maxCalories, minFat, maxFat, minAlcohol, maxAlcohol, minCaffeine, maxCaffeine, minCopper, maxCopper, minCalcium, maxCalcium, minCholine, maxCholine, minCholesterol, maxCholesterol, minFluoride, maxFluoride, minSaturatedFat, maxSaturatedFat, minVitaminA, maxVitaminA, minVitaminC, maxVitaminC, minVitaminD, maxVitaminD, minVitaminE, maxVitaminE, minVitaminK, maxVitaminK, minVitaminB1, maxVitaminB1, minVitaminB2, maxVitaminB2, minVitaminB5, maxVitaminB5, minVitaminB3, maxVitaminB3, minVitaminB6, maxVitaminB6, minVitaminB12, maxVitaminB12, minFiber, maxFiber, minFolate, maxFolate, minFolicAcid, maxFolicAcid, minIodine, maxIodine, minIron, maxIron, minMagnesium, maxMagnesium, minManganese, maxManganese, minPhosphorus, maxPhosphorus, minPotassium, maxPotassium, minSelenium, maxSelenium, minSodium, maxSodium, minSugar, maxSugar, minZinc, maxZinc, offset, number, random);
    print(result);
} catch (e) {
    print('Exception when calling RecipesApi->searchRecipesByNutrients: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **minCarbs** | **num**| The minimum amount of carbohydrates in grams the recipe must have. | [optional] 
 **maxCarbs** | **num**| The maximum amount of carbohydrates in grams the recipe can have. | [optional] 
 **minProtein** | **num**| The minimum amount of protein in grams the recipe must have. | [optional] 
 **maxProtein** | **num**| The maximum amount of protein in grams the recipe can have. | [optional] 
 **minCalories** | **num**| The minimum amount of calories the recipe must have. | [optional] 
 **maxCalories** | **num**| The maximum amount of calories the recipe can have. | [optional] 
 **minFat** | **num**| The minimum amount of fat in grams the recipe must have. | [optional] 
 **maxFat** | **num**| The maximum amount of fat in grams the recipe can have. | [optional] 
 **minAlcohol** | **num**| The minimum amount of alcohol in grams the recipe must have. | [optional] 
 **maxAlcohol** | **num**| The maximum amount of alcohol in grams the recipe can have. | [optional] 
 **minCaffeine** | **num**| The minimum amount of caffeine in milligrams the recipe must have. | [optional] 
 **maxCaffeine** | **num**| The maximum amount of caffeine in milligrams the recipe can have. | [optional] 
 **minCopper** | **num**| The minimum amount of copper in milligrams the recipe must have. | [optional] 
 **maxCopper** | **num**| The maximum amount of copper in milligrams the recipe can have. | [optional] 
 **minCalcium** | **num**| The minimum amount of calcium in milligrams the recipe must have. | [optional] 
 **maxCalcium** | **num**| The maximum amount of calcium in milligrams the recipe can have. | [optional] 
 **minCholine** | **num**| The minimum amount of choline in milligrams the recipe must have. | [optional] 
 **maxCholine** | **num**| The maximum amount of choline in milligrams the recipe can have. | [optional] 
 **minCholesterol** | **num**| The minimum amount of cholesterol in milligrams the recipe must have. | [optional] 
 **maxCholesterol** | **num**| The maximum amount of cholesterol in milligrams the recipe can have. | [optional] 
 **minFluoride** | **num**| The minimum amount of fluoride in milligrams the recipe must have. | [optional] 
 **maxFluoride** | **num**| The maximum amount of fluoride in milligrams the recipe can have. | [optional] 
 **minSaturatedFat** | **num**| The minimum amount of saturated fat in grams the recipe must have. | [optional] 
 **maxSaturatedFat** | **num**| The maximum amount of saturated fat in grams the recipe can have. | [optional] 
 **minVitaminA** | **num**| The minimum amount of Vitamin A in IU the recipe must have. | [optional] 
 **maxVitaminA** | **num**| The maximum amount of Vitamin A in IU the recipe can have. | [optional] 
 **minVitaminC** | **num**| The minimum amount of Vitamin C in milligrams the recipe must have. | [optional] 
 **maxVitaminC** | **num**| The maximum amount of Vitamin C in milligrams the recipe can have. | [optional] 
 **minVitaminD** | **num**| The minimum amount of Vitamin D in micrograms the recipe must have. | [optional] 
 **maxVitaminD** | **num**| The maximum amount of Vitamin D in micrograms the recipe can have. | [optional] 
 **minVitaminE** | **num**| The minimum amount of Vitamin E in milligrams the recipe must have. | [optional] 
 **maxVitaminE** | **num**| The maximum amount of Vitamin E in milligrams the recipe can have. | [optional] 
 **minVitaminK** | **num**| The minimum amount of Vitamin K in micrograms the recipe must have. | [optional] 
 **maxVitaminK** | **num**| The maximum amount of Vitamin K in micrograms the recipe can have. | [optional] 
 **minVitaminB1** | **num**| The minimum amount of Vitamin B1 in milligrams the recipe must have. | [optional] 
 **maxVitaminB1** | **num**| The maximum amount of Vitamin B1 in milligrams the recipe can have. | [optional] 
 **minVitaminB2** | **num**| The minimum amount of Vitamin B2 in milligrams the recipe must have. | [optional] 
 **maxVitaminB2** | **num**| The maximum amount of Vitamin B2 in milligrams the recipe can have. | [optional] 
 **minVitaminB5** | **num**| The minimum amount of Vitamin B5 in milligrams the recipe must have. | [optional] 
 **maxVitaminB5** | **num**| The maximum amount of Vitamin B5 in milligrams the recipe can have. | [optional] 
 **minVitaminB3** | **num**| The minimum amount of Vitamin B3 in milligrams the recipe must have. | [optional] 
 **maxVitaminB3** | **num**| The maximum amount of Vitamin B3 in milligrams the recipe can have. | [optional] 
 **minVitaminB6** | **num**| The minimum amount of Vitamin B6 in milligrams the recipe must have. | [optional] 
 **maxVitaminB6** | **num**| The maximum amount of Vitamin B6 in milligrams the recipe can have. | [optional] 
 **minVitaminB12** | **num**| The minimum amount of Vitamin B12 in micrograms the recipe must have. | [optional] 
 **maxVitaminB12** | **num**| The maximum amount of Vitamin B12 in micrograms the recipe can have. | [optional] 
 **minFiber** | **num**| The minimum amount of fiber in grams the recipe must have. | [optional] 
 **maxFiber** | **num**| The maximum amount of fiber in grams the recipe can have. | [optional] 
 **minFolate** | **num**| The minimum amount of folate in micrograms the recipe must have. | [optional] 
 **maxFolate** | **num**| The maximum amount of folate in micrograms the recipe can have. | [optional] 
 **minFolicAcid** | **num**| The minimum amount of folic acid in micrograms the recipe must have. | [optional] 
 **maxFolicAcid** | **num**| The maximum amount of folic acid in micrograms the recipe can have. | [optional] 
 **minIodine** | **num**| The minimum amount of iodine in micrograms the recipe must have. | [optional] 
 **maxIodine** | **num**| The maximum amount of iodine in micrograms the recipe can have. | [optional] 
 **minIron** | **num**| The minimum amount of iron in milligrams the recipe must have. | [optional] 
 **maxIron** | **num**| The maximum amount of iron in milligrams the recipe can have. | [optional] 
 **minMagnesium** | **num**| The minimum amount of magnesium in milligrams the recipe must have. | [optional] 
 **maxMagnesium** | **num**| The maximum amount of magnesium in milligrams the recipe can have. | [optional] 
 **minManganese** | **num**| The minimum amount of manganese in milligrams the recipe must have. | [optional] 
 **maxManganese** | **num**| The maximum amount of manganese in milligrams the recipe can have. | [optional] 
 **minPhosphorus** | **num**| The minimum amount of phosphorus in milligrams the recipe must have. | [optional] 
 **maxPhosphorus** | **num**| The maximum amount of phosphorus in milligrams the recipe can have. | [optional] 
 **minPotassium** | **num**| The minimum amount of potassium in milligrams the recipe must have. | [optional] 
 **maxPotassium** | **num**| The maximum amount of potassium in milligrams the recipe can have. | [optional] 
 **minSelenium** | **num**| The minimum amount of selenium in micrograms the recipe must have. | [optional] 
 **maxSelenium** | **num**| The maximum amount of selenium in micrograms the recipe can have. | [optional] 
 **minSodium** | **num**| The minimum amount of sodium in milligrams the recipe must have. | [optional] 
 **maxSodium** | **num**| The maximum amount of sodium in milligrams the recipe can have. | [optional] 
 **minSugar** | **num**| The minimum amount of sugar in grams the recipe must have. | [optional] 
 **maxSugar** | **num**| The maximum amount of sugar in grams the recipe can have. | [optional] 
 **minZinc** | **num**| The minimum amount of zinc in milligrams the recipe must have. | [optional] 
 **maxZinc** | **num**| The maximum amount of zinc in milligrams the recipe can have. | [optional] 
 **offset** | **int**| The number of results to skip (between 0 and 900). | [optional] 
 **number** | **int**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]
 **random** | **bool**| If true, every request will give you a random set of recipes within the requested limits. | [optional] 

### Return type

[**Set<SearchRecipesByNutrients200ResponseInner>**](SearchRecipesByNutrients200ResponseInner.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **summarizeRecipe**
> SummarizeRecipe200Response summarizeRecipe(id)

Summarize Recipe

Automatically generate a short description that summarizes key information about the recipe.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = RecipesApi();
final id = 4632; // int | The recipe id.

try {
    final result = api_instance.summarizeRecipe(id);
    print(result);
} catch (e) {
    print('Exception when calling RecipesApi->summarizeRecipe: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The recipe id. | 

### Return type

[**SummarizeRecipe200Response**](SummarizeRecipe200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualizeEquipment**
> String visualizeEquipment(instructions, view, defaultCss, showBacklink)

Equipment Widget

Visualize the equipment used to make a recipe.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = RecipesApi();
final instructions = instructions_example; // String | The recipe's instructions.
final view = view_example; // String | How to visualize the ingredients, either 'grid' or 'list'.
final defaultCss = true; // bool | Whether the default CSS should be added to the response.
final showBacklink = true; // bool | Whether to show a backlink to spoonacular. If set false, this call counts against your quota.

try {
    final result = api_instance.visualizeEquipment(instructions, view, defaultCss, showBacklink);
    print(result);
} catch (e) {
    print('Exception when calling RecipesApi->visualizeEquipment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instructions** | **String**| The recipe's instructions. | 
 **view** | **String**| How to visualize the ingredients, either 'grid' or 'list'. | [optional] 
 **defaultCss** | **bool**| Whether the default CSS should be added to the response. | [optional] 
 **showBacklink** | **bool**| Whether to show a backlink to spoonacular. If set false, this call counts against your quota. | [optional] 

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualizePriceBreakdown**
> String visualizePriceBreakdown(ingredientList, servings, language, mode, defaultCss, showBacklink)

Price Breakdown Widget

Visualize the price breakdown of a recipe.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = RecipesApi();
final ingredientList = ingredientList_example; // String | The ingredient list of the recipe, one ingredient per line.
final servings = 8.14; // num | The number of servings.
final language = en; // String | The language of the input. Either 'en' or 'de'.
final mode = 8.14; // num | The mode in which the widget should be delivered. 1 = separate views (compact), 2 = all in one view (full).
final defaultCss = true; // bool | Whether the default CSS should be added to the response.
final showBacklink = true; // bool | Whether to show a backlink to spoonacular. If set false, this call counts against your quota.

try {
    final result = api_instance.visualizePriceBreakdown(ingredientList, servings, language, mode, defaultCss, showBacklink);
    print(result);
} catch (e) {
    print('Exception when calling RecipesApi->visualizePriceBreakdown: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredientList** | **String**| The ingredient list of the recipe, one ingredient per line. | 
 **servings** | **num**| The number of servings. | 
 **language** | **String**| The language of the input. Either 'en' or 'de'. | [optional] 
 **mode** | **num**| The mode in which the widget should be delivered. 1 = separate views (compact), 2 = all in one view (full). | [optional] 
 **defaultCss** | **bool**| Whether the default CSS should be added to the response. | [optional] 
 **showBacklink** | **bool**| Whether to show a backlink to spoonacular. If set false, this call counts against your quota. | [optional] 

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

final api_instance = RecipesApi();
final id = 44860; // int | The recipe id.
final defaultCss = false; // bool | Whether the default CSS should be added to the response.

try {
    final result = api_instance.visualizeRecipeEquipmentByID(id, defaultCss);
    print(result);
} catch (e) {
    print('Exception when calling RecipesApi->visualizeRecipeEquipmentByID: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The recipe id. | 
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

final api_instance = RecipesApi();
final id = 1082038; // int | The recipe id.
final defaultCss = false; // bool | Whether the default CSS should be added to the response.
final measure = metric; // String | Whether the the measures should be 'us' or 'metric'.

try {
    final result = api_instance.visualizeRecipeIngredientsByID(id, defaultCss, measure);
    print(result);
} catch (e) {
    print('Exception when calling RecipesApi->visualizeRecipeIngredientsByID: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The recipe id. | 
 **defaultCss** | **bool**| Whether the default CSS should be added to the response. | [optional] [default to true]
 **measure** | **String**| Whether the the measures should be 'us' or 'metric'. | [optional] 

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualizeRecipeNutrition**
> String visualizeRecipeNutrition(ingredientList, servings, language, defaultCss, showBacklink)

Recipe Nutrition Widget

Visualize a recipe's nutritional information as HTML including CSS.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = RecipesApi();
final ingredientList = ingredientList_example; // String | The ingredient list of the recipe, one ingredient per line.
final servings = 8.14; // num | The number of servings.
final language = en; // String | The language of the input. Either 'en' or 'de'.
final defaultCss = true; // bool | Whether the default CSS should be added to the response.
final showBacklink = true; // bool | Whether to show a backlink to spoonacular. If set false, this call counts against your quota.

try {
    final result = api_instance.visualizeRecipeNutrition(ingredientList, servings, language, defaultCss, showBacklink);
    print(result);
} catch (e) {
    print('Exception when calling RecipesApi->visualizeRecipeNutrition: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredientList** | **String**| The ingredient list of the recipe, one ingredient per line. | 
 **servings** | **num**| The number of servings. | 
 **language** | **String**| The language of the input. Either 'en' or 'de'. | [optional] 
 **defaultCss** | **bool**| Whether the default CSS should be added to the response. | [optional] 
 **showBacklink** | **bool**| Whether to show a backlink to spoonacular. If set false, this call counts against your quota. | [optional] 

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualizeRecipeNutritionByID**
> String visualizeRecipeNutritionByID(id, defaultCss)

Recipe Nutrition by ID Widget

Visualize a recipe's nutritional information as HTML including CSS.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = RecipesApi();
final id = 1082038; // int | The recipe id.
final defaultCss = false; // bool | Whether the default CSS should be added to the response.

try {
    final result = api_instance.visualizeRecipeNutritionByID(id, defaultCss);
    print(result);
} catch (e) {
    print('Exception when calling RecipesApi->visualizeRecipeNutritionByID: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The recipe id. | 
 **defaultCss** | **bool**| Whether the default CSS should be added to the response. | [optional] [default to true]

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

final api_instance = RecipesApi();
final id = 1082038; // int | The recipe id.
final defaultCss = false; // bool | Whether the default CSS should be added to the response.

try {
    final result = api_instance.visualizeRecipePriceBreakdownByID(id, defaultCss);
    print(result);
} catch (e) {
    print('Exception when calling RecipesApi->visualizeRecipePriceBreakdownByID: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The recipe id. | 
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
> String visualizeRecipeTaste(ingredientList, language, normalize, rgb)

Recipe Taste Widget

Visualize a recipe's taste information as HTML including CSS. You can play around with that endpoint!

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = RecipesApi();
final ingredientList = ingredientList_example; // String | The ingredient list of the recipe, one ingredient per line.
final language = en; // String | The language of the input. Either 'en' or 'de'.
final normalize = true; // bool | Normalize to the strongest taste.
final rgb = rgb_example; // String | Red, green, blue values for the chart color.

try {
    final result = api_instance.visualizeRecipeTaste(ingredientList, language, normalize, rgb);
    print(result);
} catch (e) {
    print('Exception when calling RecipesApi->visualizeRecipeTaste: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredientList** | **String**| The ingredient list of the recipe, one ingredient per line. | 
 **language** | **String**| The language of the input. Either 'en' or 'de'. | [optional] 
 **normalize** | **bool**| Normalize to the strongest taste. | [optional] 
 **rgb** | **String**| Red, green, blue values for the chart color. | [optional] 

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

final api_instance = RecipesApi();
final id = 69095; // int | The recipe id.
final normalize = true; // bool | Whether to normalize to the strongest taste.
final rgb = 75,192,192; // String | Red, green, blue values for the chart color.

try {
    final result = api_instance.visualizeRecipeTasteByID(id, normalize, rgb);
    print(result);
} catch (e) {
    print('Exception when calling RecipesApi->visualizeRecipeTasteByID: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The recipe id. | 
 **normalize** | **bool**| Whether to normalize to the strongest taste. | [optional] [default to true]
 **rgb** | **String**| Red, green, blue values for the chart color. | [optional] 

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

