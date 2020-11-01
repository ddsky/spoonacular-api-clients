# openapi.api.DefaultApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

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


# **addToMealPlan**
> Object addToMealPlan(username, hash, inlineObject11)

Add to Meal Plan

Add an item to the user's meal plan.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var username = dsky; // String | The username.
var hash = 4b5v4398573406; // String | The private hash for the username.
var inlineObject11 = new InlineObject11(); // InlineObject11 | 

try { 
    var result = api_instance.addToMealPlan(username, hash, inlineObject11);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->addToMealPlan: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | [default to null]
 **hash** | **String**| The private hash for the username. | [default to null]
 **inlineObject11** | [**InlineObject11**](InlineObject11.md)|  | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addToShoppingList**
> Object addToShoppingList(username, hash, inlineObject14)

Add to Shopping List

Add an item to the current shopping list of a user.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var username = dsky; // String | The username.
var hash = 4b5v4398573406; // String | The private hash for the username.
var inlineObject14 = new InlineObject14(); // InlineObject14 | 

try { 
    var result = api_instance.addToShoppingList(username, hash, inlineObject14);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->addToShoppingList: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | [default to null]
 **hash** | **String**| The private hash for the username. | [default to null]
 **inlineObject14** | [**InlineObject14**](InlineObject14.md)|  | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **analyzeARecipeSearchQuery**
> Object analyzeARecipeSearchQuery(q)

Analyze a Recipe Search Query

Parse a recipe search query to find out its intention.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var q = salmon with fusilli and no nuts; // String | The recipe search query.

try { 
    var result = api_instance.analyzeARecipeSearchQuery(q);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->analyzeARecipeSearchQuery: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| The recipe search query. | [default to null]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **analyzeRecipeInstructions**
> Object analyzeRecipeInstructions(instructions)

Analyze Recipe Instructions

This endpoint allows you to break down instructions into atomic steps. Furthermore, each step will contain the ingredients and equipment required. Additionally, all ingredients and equipment from the recipe's instructions will be extracted independently of the step they're used in.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var instructions = instructions_example; // String | The instructions to be analyzed.

try { 
    var result = api_instance.analyzeRecipeInstructions(instructions);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->analyzeRecipeInstructions: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instructions** | **String**| The instructions to be analyzed. | [default to null]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **autocompleteIngredientSearch**
> Object autocompleteIngredientSearch(query, number, metaInformation, intolerances)

Autocomplete Ingredient Search

Autocomplete the entry of an ingredient.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var query = appl; // String | The partial or full ingredient name.
var number = 10; // num | The number of results to return (between 1 and 100).
var metaInformation = false; // bool | Whether to return more meta information about the ingredients.
var intolerances = egg; // String | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.

try { 
    var result = api_instance.autocompleteIngredientSearch(query, number, metaInformation, intolerances);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->autocompleteIngredientSearch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The partial or full ingredient name. | [default to null]
 **number** | **num**| The number of results to return (between 1 and 100). | [optional] [default to null]
 **metaInformation** | **bool**| Whether to return more meta information about the ingredients. | [optional] [default to null]
 **intolerances** | **String**| A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. | [optional] [default to null]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **autocompleteMenuItemSearch**
> Object autocompleteMenuItemSearch(query, number)

Autocomplete Menu Item Search

Generate suggestions for menu items based on a (partial) query. The matches will be found by looking in the title only.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var query = chicke; // String | The (partial) search query.
var number = 10; // num | The number of results to return (between 1 and 25).

try { 
    var result = api_instance.autocompleteMenuItemSearch(query, number);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->autocompleteMenuItemSearch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The (partial) search query. | [default to null]
 **number** | **num**| The number of results to return (between 1 and 25). | [optional] [default to null]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **autocompleteProductSearch**
> Object autocompleteProductSearch(query, number)

Autocomplete Product Search

Generate suggestions for grocery products based on a (partial) query. The matches will be found by looking in the title only.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var query = chicke; // String | The (partial) search query.
var number = 10; // num | The number of results to return (between 1 and 25).

try { 
    var result = api_instance.autocompleteProductSearch(query, number);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->autocompleteProductSearch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The (partial) search query. | [default to null]
 **number** | **num**| The number of results to return (between 1 and 25). | [optional] [default to null]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **autocompleteRecipeSearch**
> Object autocompleteRecipeSearch(query, number)

Autocomplete Recipe Search

Autocomplete a partial input to suggest possible recipe names.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var query = burger; // String | The query to be autocompleted.
var number = 10; // num | The number of results to return (between 1 and 25).

try { 
    var result = api_instance.autocompleteRecipeSearch(query, number);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->autocompleteRecipeSearch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The query to be autocompleted. | [default to null]
 **number** | **num**| The number of results to return (between 1 and 25). | [optional] [default to null]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **classifyCuisine**
> Object classifyCuisine(title, ingredientList)

Classify Cuisine

Classify the recipe's cuisine.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var title = title_example; // String | The title of the recipe.
var ingredientList = ingredientList_example; // String | The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n).

try { 
    var result = api_instance.classifyCuisine(title, ingredientList);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->classifyCuisine: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **String**| The title of the recipe. | [default to null]
 **ingredientList** | **String**| The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n). | [default to null]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **classifyGroceryProduct**
> Object classifyGroceryProduct(inlineObject9, locale)

Classify Grocery Product

This endpoint allows you to match a packaged food to a basic category, e.g. a specific brand of milk to the category milk.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var inlineObject9 = new InlineObject9(); // InlineObject9 | 
var locale = en_US; // String | The display name of the returned category, supported is en_US (for American English) and en_GB (for British English).

try { 
    var result = api_instance.classifyGroceryProduct(inlineObject9, locale);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->classifyGroceryProduct: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inlineObject9** | [**InlineObject9**](InlineObject9.md)|  | 
 **locale** | **String**| The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). | [optional] [default to null]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **classifyGroceryProductBulk**
> Object classifyGroceryProductBulk(body, locale)

Classify Grocery Product Bulk

Provide a set of product jsons, get back classified products.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var body = new Object(); // Object | 
var locale = en_US; // String | The display name of the returned category, supported is en_US (for American English) and en_GB (for British English).

try { 
    var result = api_instance.classifyGroceryProductBulk(body, locale);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->classifyGroceryProductBulk: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **Object**|  | 
 **locale** | **String**| The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). | [optional] [default to null]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **clearMealPlanDay**
> Object clearMealPlanDay(username, date, hash, inlineObject10)

Clear Meal Plan Day

Delete all planned items from the user's meal plan for a specific day.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var username = dsky; // String | The username.
var date = 2020-06-01; // String | The date in the format yyyy-mm-dd.
var hash = 4b5v4398573406; // String | The private hash for the username.
var inlineObject10 = new InlineObject10(); // InlineObject10 | 

try { 
    var result = api_instance.clearMealPlanDay(username, date, hash, inlineObject10);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->clearMealPlanDay: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | [default to null]
 **date** | **String**| The date in the format yyyy-mm-dd. | [default to null]
 **hash** | **String**| The private hash for the username. | [default to null]
 **inlineObject10** | [**InlineObject10**](InlineObject10.md)|  | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **computeGlycemicLoad**
> Object computeGlycemicLoad(body)

Compute Glycemic Load

Retrieve the glycemic index for a list of ingredients and compute the individual and total glycemic load.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var body = new Object(); // Object | 

try { 
    var result = api_instance.computeGlycemicLoad(body);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->computeGlycemicLoad: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **Object**|  | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **connectUser**
> Object connectUser(body)

Connect User

In order to call user-specific endpoints, you need to connect your app's users to spoonacular users.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var body = new Object(); // Object | 

try { 
    var result = api_instance.connectUser(body);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->connectUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **Object**|  | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **convertAmounts**
> Object convertAmounts(ingredientName, sourceAmount, sourceUnit, targetUnit)

Convert Amounts

Convert amounts like \"2 cups of flour to grams\".

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var ingredientName = flour; // String | The ingredient which you want to convert.
var sourceAmount = 2.5; // num | The amount from which you want to convert, e.g. the 2.5 in \"2.5 cups of flour to grams\".
var sourceUnit = cups; // String | The unit from which you want to convert, e.g. the grams in \"2.5 cups of flour to grams\". You can also use \"piece\", e.g. \"3.4 oz tomatoes to piece\"
var targetUnit = grams; // String | The unit to which you want to convert, e.g. the grams in \"2.5 cups of flour to grams\". You can also use \"piece\", e.g. \"3.4 oz tomatoes to piece\"

try { 
    var result = api_instance.convertAmounts(ingredientName, sourceAmount, sourceUnit, targetUnit);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->convertAmounts: $e\n");
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

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createRecipeCard**
> Object createRecipeCard(title, image, ingredients, instructions, readyInMinutes, servings, mask, backgroundImage, author, backgroundColor, fontColor, source)

Create Recipe Card

Generate a recipe card for a recipe.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var title = title_example; // String | The title of the recipe.
var image = BINARY_DATA_HERE; // MultipartFile | The binary image of the recipe as jpg.
var ingredients = ingredients_example; // String | The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n).
var instructions = instructions_example; // String | The instructions to make the recipe. One step per line (separate lines with \\\\n).
var readyInMinutes = 8.14; // num | The number of minutes it takes to get the recipe on the table.
var servings = 8.14; // num | The number of servings the recipe makes.
var mask = mask_example; // String | The mask to put over the recipe image (\\\"ellipseMask\\\", \\\"diamondMask\\\", \\\"starMask\\\", \\\"heartMask\\\", \\\"potMask\\\", \\\"fishMask\\\").
var backgroundImage = backgroundImage_example; // String | The background image (\\\"none\\\",\\\"background1\\\", or \\\"background2\\\").
var author = author_example; // String | The author of the recipe.
var backgroundColor = backgroundColor_example; // String | The background color for the recipe card as a hex-string.
var fontColor = fontColor_example; // String | The font color for the recipe card as a hex-string.
var source = source_example; // String | The source of the recipe.

try { 
    var result = api_instance.createRecipeCard(title, image, ingredients, instructions, readyInMinutes, servings, mask, backgroundImage, author, backgroundColor, fontColor, source);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->createRecipeCard: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **String**| The title of the recipe. | [default to null]
 **image** | **MultipartFile**| The binary image of the recipe as jpg. | [default to null]
 **ingredients** | **String**| The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n). | [default to null]
 **instructions** | **String**| The instructions to make the recipe. One step per line (separate lines with \\\\n). | [default to null]
 **readyInMinutes** | **num**| The number of minutes it takes to get the recipe on the table. | [default to null]
 **servings** | **num**| The number of servings the recipe makes. | [default to null]
 **mask** | **String**| The mask to put over the recipe image (\\\&quot;ellipseMask\\\&quot;, \\\&quot;diamondMask\\\&quot;, \\\&quot;starMask\\\&quot;, \\\&quot;heartMask\\\&quot;, \\\&quot;potMask\\\&quot;, \\\&quot;fishMask\\\&quot;). | [default to null]
 **backgroundImage** | **String**| The background image (\\\&quot;none\\\&quot;,\\\&quot;background1\\\&quot;, or \\\&quot;background2\\\&quot;). | [default to null]
 **author** | **String**| The author of the recipe. | [optional] [default to null]
 **backgroundColor** | **String**| The background color for the recipe card as a hex-string. | [optional] [default to null]
 **fontColor** | **String**| The font color for the recipe card as a hex-string. | [optional] [default to null]
 **source** | **String**| The source of the recipe. | [optional] [default to null]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteFromMealPlan**
> Object deleteFromMealPlan(username, id, hash, inlineObject12)

Delete from Meal Plan

Delete an item from the user's meal plan.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var username = dsky; // String | The username.
var id = 15678; // num | The shopping list item id.
var hash = 4b5v4398573406; // String | The private hash for the username.
var inlineObject12 = new InlineObject12(); // InlineObject12 | 

try { 
    var result = api_instance.deleteFromMealPlan(username, id, hash, inlineObject12);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->deleteFromMealPlan: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | [default to null]
 **id** | **num**| The shopping list item id. | [default to null]
 **hash** | **String**| The private hash for the username. | [default to null]
 **inlineObject12** | [**InlineObject12**](InlineObject12.md)|  | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteFromShoppingList**
> Object deleteFromShoppingList(username, id, hash, inlineObject15)

Delete from Shopping List

Delete an item from the current shopping list of the user.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var username = dsky; // String | The username.
var id = 15678; // num | The shopping list item id.
var hash = 4b5v4398573406; // String | The private hash for the username.
var inlineObject15 = new InlineObject15(); // InlineObject15 | 

try { 
    var result = api_instance.deleteFromShoppingList(username, id, hash, inlineObject15);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->deleteFromShoppingList: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | [default to null]
 **id** | **num**| The shopping list item id. | [default to null]
 **hash** | **String**| The private hash for the username. | [default to null]
 **inlineObject15** | [**InlineObject15**](InlineObject15.md)|  | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **detectFoodInText**
> Object detectFoodInText(text)

Detect Food in Text

Take any text and find all mentions of food contained within it. This task is also called Named Entity Recognition (NER). In this case, the entities are foods. Either dishes, such as pizza or cheeseburger, or ingredients, such as cucumber or almonds.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var text = text_example; // String | The text in which food items, such as dish names and ingredients, should be detected in.

try { 
    var result = api_instance.detectFoodInText(text);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->detectFoodInText: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **String**| The text in which food items, such as dish names and ingredients, should be detected in. | [default to null]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **extractRecipeFromWebsite**
> Object extractRecipeFromWebsite(url, forceExtraction, analyze)

Extract Recipe from Website

This endpoint lets you extract recipe data such as title, ingredients, and instructions from any properly formatted Website.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var url = https://foodista.com/recipe/ZHK4KPB6/chocolate-crinkle-cookies; // String | The URL of the recipe page.
var forceExtraction = true; // bool | If true, the extraction will be triggered whether we already know the recipe or not. Use this only if information is missing as this operation is slower.
var analyze = false; // bool | If true, the recipe will be analyzed and classified resolving in more data such as cuisines, dish types, and more.

try { 
    var result = api_instance.extractRecipeFromWebsite(url, forceExtraction, analyze);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->extractRecipeFromWebsite: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **String**| The URL of the recipe page. | [default to null]
 **forceExtraction** | **bool**| If true, the extraction will be triggered whether we already know the recipe or not. Use this only if information is missing as this operation is slower. | [optional] [default to null]
 **analyze** | **bool**| If true, the recipe will be analyzed and classified resolving in more data such as cuisines, dish types, and more. | [optional] [default to null]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generateMealPlan**
> Object generateMealPlan(timeFrame, targetCalories, diet, exclude)

Generate Meal Plan

Generate a meal plan with three meals per day (breakfast, lunch, and dinner).

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var timeFrame = day; // String | Either for one \"day\" or an entire \"week\".
var targetCalories = 2000; // num | What is the caloric target for one day? The meal plan generator will try to get as close as possible to that goal.
var diet = vegetarian; // String | Enter a diet that the meal plan has to adhere to. See a full list of supported diets.
var exclude = shellfish, olives; // String | A comma-separated list of allergens or ingredients that must be excluded.

try { 
    var result = api_instance.generateMealPlan(timeFrame, targetCalories, diet, exclude);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->generateMealPlan: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timeFrame** | **String**| Either for one \&quot;day\&quot; or an entire \&quot;week\&quot;. | [optional] [default to null]
 **targetCalories** | **num**| What is the caloric target for one day? The meal plan generator will try to get as close as possible to that goal. | [optional] [default to null]
 **diet** | **String**| Enter a diet that the meal plan has to adhere to. See a full list of supported diets. | [optional] [default to null]
 **exclude** | **String**| A comma-separated list of allergens or ingredients that must be excluded. | [optional] [default to null]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generateShoppingList**
> Object generateShoppingList(username, startDate, endDate, hash, inlineObject13)

Generate Shopping List

Generate the shopping list for a user from the meal planner in a given time frame.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var username = dsky; // String | The username.
var startDate = 2020-06-01; // String | The start date in the format yyyy-mm-dd.
var endDate = 2020-06-07; // String | The end date in the format yyyy-mm-dd.
var hash = 4b5v4398573406; // String | The private hash for the username.
var inlineObject13 = new InlineObject13(); // InlineObject13 | 

try { 
    var result = api_instance.generateShoppingList(username, startDate, endDate, hash, inlineObject13);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->generateShoppingList: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | [default to null]
 **startDate** | **String**| The start date in the format yyyy-mm-dd. | [default to null]
 **endDate** | **String**| The end date in the format yyyy-mm-dd. | [default to null]
 **hash** | **String**| The private hash for the username. | [default to null]
 **inlineObject13** | [**InlineObject13**](InlineObject13.md)|  | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getARandomFoodJoke**
> Object getARandomFoodJoke()

Get a Random Food Joke

Get a random joke that is related to food. Caution: this is an endpoint for adults!

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();

try { 
    var result = api_instance.getARandomFoodJoke();
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getARandomFoodJoke: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAnalyzedRecipeInstructions**
> Object getAnalyzedRecipeInstructions(id, stepBreakdown)

Get Analyzed Recipe Instructions

Get an analyzed breakdown of a recipe's instructions. Each step is enriched with the ingredients and equipment required.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var id = 324694; // num | The recipe id.
var stepBreakdown = true; // bool | Whether to break down the recipe steps even more.

try { 
    var result = api_instance.getAnalyzedRecipeInstructions(id, stepBreakdown);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getAnalyzedRecipeInstructions: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **num**| The recipe id. | [default to null]
 **stepBreakdown** | **bool**| Whether to break down the recipe steps even more. | [optional] [default to null]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getComparableProducts**
> Object getComparableProducts(upc)

Get Comparable Products

Find comparable products to the given one.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var upc = 33698816271; // num | The UPC of the product for which you want to find comparable products.

try { 
    var result = api_instance.getComparableProducts(upc);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getComparableProducts: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **upc** | **num**| The UPC of the product for which you want to find comparable products. | [default to null]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getConversationSuggests**
> Object getConversationSuggests(query, number)

Get Conversation Suggests

This endpoint returns suggestions for things the user can say or ask the chatbot.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var query = tell; // String | A (partial) query from the user. The endpoint will return if it matches topics it can talk about.
var number = 5; // num | The number of suggestions to return (between 1 and 25).

try { 
    var result = api_instance.getConversationSuggests(query, number);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getConversationSuggests: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| A (partial) query from the user. The endpoint will return if it matches topics it can talk about. | [default to null]
 **number** | **num**| The number of suggestions to return (between 1 and 25). | [optional] [default to null]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDishPairingForWine**
> Object getDishPairingForWine(wine)

Get Dish Pairing for Wine

Find a dish that goes well with a given wine.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var wine = malbec; // String | The type of wine that should be paired, e.g. \"merlot\", \"riesling\", or \"malbec\".

try { 
    var result = api_instance.getDishPairingForWine(wine);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getDishPairingForWine: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wine** | **String**| The type of wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;. | [default to null]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIngredientInformation**
> Object getIngredientInformation(id, amount, unit)

Get Ingredient Information

Use an ingredient id to get all available information about an ingredient, such as its image and supermarket aisle.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var id = 9266; // num | The ingredient id.
var amount = 150; // num | The amount of this ingredient.
var unit = grams; // String | The unit for the given amount.

try { 
    var result = api_instance.getIngredientInformation(id, amount, unit);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getIngredientInformation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **num**| The ingredient id. | [default to null]
 **amount** | **num**| The amount of this ingredient. | [optional] [default to null]
 **unit** | **String**| The unit for the given amount. | [optional] [default to null]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIngredientSubstitutes**
> Object getIngredientSubstitutes(ingredientName)

Get Ingredient Substitutes

Search for substitutes for a given ingredient.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var ingredientName = butter; // String | The name of the ingredient you want to replace.

try { 
    var result = api_instance.getIngredientSubstitutes(ingredientName);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getIngredientSubstitutes: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredientName** | **String**| The name of the ingredient you want to replace. | [default to null]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIngredientSubstitutesByID**
> Object getIngredientSubstitutesByID(id)

Get Ingredient Substitutes by ID

Search for substitutes for a given ingredient.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var id = 1001; // num | The id of the ingredient you want substitutes for.

try { 
    var result = api_instance.getIngredientSubstitutesByID(id);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getIngredientSubstitutesByID: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **num**| The id of the ingredient you want substitutes for. | [default to null]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMealPlanTemplate**
> Object getMealPlanTemplate(username, id, hash)

Get Meal Plan Template

Get information about a meal plan template.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var username = dsky; // String | The username.
var id = 15678; // num | The shopping list item id.
var hash = 4b5v4398573406; // String | The private hash for the username.

try { 
    var result = api_instance.getMealPlanTemplate(username, id, hash);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getMealPlanTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | [default to null]
 **id** | **num**| The shopping list item id. | [default to null]
 **hash** | **String**| The private hash for the username. | [default to null]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMealPlanTemplates**
> Object getMealPlanTemplates(username, hash)

Get Meal Plan Templates

Get meal plan templates from user or public ones.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var username = dsky; // String | The username.
var hash = 4b5v4398573406; // String | The private hash for the username.

try { 
    var result = api_instance.getMealPlanTemplates(username, hash);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getMealPlanTemplates: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | [default to null]
 **hash** | **String**| The private hash for the username. | [default to null]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMealPlanWeek**
> Object getMealPlanWeek(username, startDate, hash)

Get Meal Plan Week

Retrieve a meal planned week for the given user. The username must be a spoonacular user and the hash must the the user's hash that can be found in his/her account.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var username = dsky; // String | The username.
var startDate = 2020-06-01; // String | The start date of the meal planned week in the format yyyy-mm-dd.
var hash = 4b5v4398573406; // String | The private hash for the username.

try { 
    var result = api_instance.getMealPlanWeek(username, startDate, hash);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getMealPlanWeek: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | [default to null]
 **startDate** | **String**| The start date of the meal planned week in the format yyyy-mm-dd. | [default to null]
 **hash** | **String**| The private hash for the username. | [default to null]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMenuItemInformation**
> Object getMenuItemInformation(id)

Get Menu Item Information

Use a menu item id to get all available information about a menu item, such as nutrition.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var id = 424571; // num | The menu item id.

try { 
    var result = api_instance.getMenuItemInformation(id);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getMenuItemInformation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **num**| The menu item id. | [default to null]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProductInformation**
> Object getProductInformation(id)

Get Product Information

Use a product id to get full information about a product, such as ingredients, nutrition, etc. The nutritional information is per serving.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var id = 22347; // num | The id of the packaged food.

try { 
    var result = api_instance.getProductInformation(id);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getProductInformation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **num**| The id of the packaged food. | [default to null]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRandomFoodTrivia**
> Object getRandomFoodTrivia()

Get Random Food Trivia

Returns random food trivia.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();

try { 
    var result = api_instance.getRandomFoodTrivia();
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getRandomFoodTrivia: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRandomRecipes**
> Object getRandomRecipes(limitLicense, tags, number)

Get Random Recipes

Find random (popular) recipes. If you need to filter recipes by diet, nutrition etc. you might want to consider using the complex recipe search endpoint and set the sort request parameter to random.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var limitLicense = true; // bool | Whether the recipes should have an open license that allows display with proper attribution.
var tags = vegetarian, dessert; // String | The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have.
var number = 1; // num | The number of random recipes to be returned (between 1 and 100).

try { 
    var result = api_instance.getRandomRecipes(limitLicense, tags, number);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getRandomRecipes: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limitLicense** | **bool**| Whether the recipes should have an open license that allows display with proper attribution. | [optional] [default to null]
 **tags** | **String**| The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have. | [optional] [default to null]
 **number** | **num**| The number of random recipes to be returned (between 1 and 100). | [optional] [default to null]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRecipeEquipmentByID**
> Object getRecipeEquipmentByID(id)

Get Recipe Equipment by ID

Get a recipe's equipment list.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var id = 1003464; // num | The recipe id.

try { 
    var result = api_instance.getRecipeEquipmentByID(id);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getRecipeEquipmentByID: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **num**| The recipe id. | [default to null]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRecipeInformation**
> Object getRecipeInformation(id, includeNutrition)

Get Recipe Information

Use a recipe id to get full information about a recipe, such as ingredients, nutrition, diet and allergen information, etc.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var id = 716429; // num | The id of the recipe.
var includeNutrition = false; // bool | Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings.

try { 
    var result = api_instance.getRecipeInformation(id, includeNutrition);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getRecipeInformation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **num**| The id of the recipe. | [default to null]
 **includeNutrition** | **bool**| Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. | [optional] [default to null]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRecipeInformationBulk**
> Object getRecipeInformationBulk(ids, includeNutrition)

Get Recipe Information Bulk

Get information about multiple recipes at once. This is equivalent to calling the Get Recipe Information endpoint multiple times, but faster.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var ids = 715538,716429; // String | A comma-separated list of recipe ids.
var includeNutrition = false; // bool | Include nutrition data to the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings.

try { 
    var result = api_instance.getRecipeInformationBulk(ids, includeNutrition);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getRecipeInformationBulk: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | **String**| A comma-separated list of recipe ids. | [default to null]
 **includeNutrition** | **bool**| Include nutrition data to the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. | [optional] [default to null]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRecipeIngredientsByID**
> Object getRecipeIngredientsByID(id)

Get Recipe Ingredients by ID

Get a recipe's ingredient list.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var id = 1003464; // num | The recipe id.

try { 
    var result = api_instance.getRecipeIngredientsByID(id);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getRecipeIngredientsByID: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **num**| The recipe id. | [default to null]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRecipeNutritionWidgetByID**
> Object getRecipeNutritionWidgetByID(id)

Get Recipe Nutrition Widget by ID

Get a recipe's nutrition widget data.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var id = 1003464; // num | The recipe id.

try { 
    var result = api_instance.getRecipeNutritionWidgetByID(id);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getRecipeNutritionWidgetByID: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **num**| The recipe id. | [default to null]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRecipePriceBreakdownByID**
> Object getRecipePriceBreakdownByID(id)

Get Recipe Price Breakdown by ID

Get a recipe's price breakdown data.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var id = 1003464; // num | The recipe id.

try { 
    var result = api_instance.getRecipePriceBreakdownByID(id);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getRecipePriceBreakdownByID: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **num**| The recipe id. | [default to null]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRecipeTasteByID**
> Object getRecipeTasteByID(id)

Get Recipe Taste by ID

Get a recipe's taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var id = 69095; // num | The recipe id.

try { 
    var result = api_instance.getRecipeTasteByID(id);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getRecipeTasteByID: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **num**| The recipe id. | [default to null]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getShoppingList**
> Object getShoppingList(username, hash)

Get Shopping List

Get the current shopping list for the given user.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var username = dsky; // String | The username.
var hash = 4b5v4398573406; // String | The private hash for the username.

try { 
    var result = api_instance.getShoppingList(username, hash);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getShoppingList: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | [default to null]
 **hash** | **String**| The private hash for the username. | [default to null]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSimilarRecipes**
> Object getSimilarRecipes(id, number, limitLicense)

Get Similar Recipes

Find recipes which are similar to the given one.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var id = 715538; // num | The id of the source recipe for which similar recipes should be found.
var number = 1; // num | The number of random recipes to be returned (between 1 and 100).
var limitLicense = true; // bool | Whether the recipes should have an open license that allows display with proper attribution.

try { 
    var result = api_instance.getSimilarRecipes(id, number, limitLicense);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getSimilarRecipes: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **num**| The id of the source recipe for which similar recipes should be found. | [default to null]
 **number** | **num**| The number of random recipes to be returned (between 1 and 100). | [optional] [default to null]
 **limitLicense** | **bool**| Whether the recipes should have an open license that allows display with proper attribution. | [optional] [default to null]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWineDescription**
> Object getWineDescription(wine)

Get Wine Description

Get a simple description of a certain wine, e.g. \"malbec\", \"riesling\", or \"merlot\".

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var wine = merlot; // String | The name of the wine that should be paired, e.g. \"merlot\", \"riesling\", or \"malbec\".

try { 
    var result = api_instance.getWineDescription(wine);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getWineDescription: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wine** | **String**| The name of the wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;. | [default to null]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWinePairing**
> Object getWinePairing(food, maxPrice)

Get Wine Pairing

Find a wine that goes well with a food. Food can be a dish name (\"steak\"), an ingredient name (\"salmon\"), or a cuisine (\"italian\").

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var food = steak; // String | The food to get a pairing for. This can be a dish (\"steak\"), an ingredient (\"salmon\"), or a cuisine (\"italian\").
var maxPrice = 50; // num | The maximum price for the specific wine recommendation in USD.

try { 
    var result = api_instance.getWinePairing(food, maxPrice);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getWinePairing: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **food** | **String**| The food to get a pairing for. This can be a dish (\&quot;steak\&quot;), an ingredient (\&quot;salmon\&quot;), or a cuisine (\&quot;italian\&quot;). | [default to null]
 **maxPrice** | **num**| The maximum price for the specific wine recommendation in USD. | [optional] [default to null]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWineRecommendation**
> Object getWineRecommendation(wine, maxPrice, minRating, number)

Get Wine Recommendation

Get a specific wine recommendation (concrete product) for a given wine type, e.g. \"merlot\".

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var wine = merlot; // String | The type of wine to get a specific product recommendation for.
var maxPrice = 50; // num | The maximum price for the specific wine recommendation in USD.
var minRating = 0.7; // num | The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars.
var number = 3; // num | The number of wine recommendations expected (between 1 and 100).

try { 
    var result = api_instance.getWineRecommendation(wine, maxPrice, minRating, number);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getWineRecommendation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wine** | **String**| The type of wine to get a specific product recommendation for. | [default to null]
 **maxPrice** | **num**| The maximum price for the specific wine recommendation in USD. | [optional] [default to null]
 **minRating** | **num**| The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars. | [optional] [default to null]
 **number** | **num**| The number of wine recommendations expected (between 1 and 100). | [optional] [default to null]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **guessNutritionByDishName**
> Object guessNutritionByDishName(title)

Guess Nutrition by Dish Name

Estimate the macronutrients of a dish based on its title.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var title = Spaghetti Aglio et Olio; // String | The title of the dish.

try { 
    var result = api_instance.guessNutritionByDishName(title);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->guessNutritionByDishName: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **String**| The title of the dish. | [default to null]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **imageAnalysisByURL**
> Object imageAnalysisByURL(imageUrl)

Image Analysis by URL

Analyze a food image. The API tries to classify the image, guess the nutrition, and find a matching recipes. You can play around with that endpoint!

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var imageUrl = https://spoonacular.com/recipeImages/635350-240x150.jpg; // String | The URL of the image to be analyzed.

try { 
    var result = api_instance.imageAnalysisByURL(imageUrl);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->imageAnalysisByURL: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imageUrl** | **String**| The URL of the image to be analyzed. | [default to null]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **imageClassificationByURL**
> Object imageClassificationByURL(imageUrl)

Image Classification by URL

Classify a food image. You can play around with that endpoint!

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var imageUrl = https://spoonacular.com/recipeImages/635350-240x150.jpg; // String | The URL of the image to be classified.

try { 
    var result = api_instance.imageClassificationByURL(imageUrl);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->imageClassificationByURL: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imageUrl** | **String**| The URL of the image to be classified. | [default to null]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ingredientSearch**
> Object ingredientSearch(query, addChildren, minProteinPercent, maxProteinPercent, minFatPercent, maxFatPercent, minCarbsPercent, maxCarbsPercent, metaInformation, intolerances, sort, sortDirection, offset, number)

Ingredient Search

Search for simple whole foods (e.g. fruits, vegetables, nuts, grains, meat, fish, dairy etc.).

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var query = apple; // String | The partial or full ingredient name.
var addChildren = true; // bool | Whether to add children of found foods.
var minProteinPercent = 10; // num | The minimum percentage of protein the food must have (between 0 and 100).
var maxProteinPercent = 90; // num | The maximum percentage of protein the food can have (between 0 and 100).
var minFatPercent = 10; // num | The minimum percentage of fat the food must have (between 0 and 100).
var maxFatPercent = 90; // num | The maximum percentage of fat the food can have (between 0 and 100).
var minCarbsPercent = 10; // num | The minimum percentage of carbs the food must have (between 0 and 100).
var maxCarbsPercent = 90; // num | The maximum percentage of carbs the food can have (between 0 and 100).
var metaInformation = false; // bool | Whether to return more meta information about the ingredients.
var intolerances = egg; // String | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.
var sort = calories; // String | The strategy to sort recipes by. See a full list of supported sorting options.
var sortDirection = asc; // String | The direction in which to sort. Must be either 'asc' (ascending) or 'desc' (descending).
var offset = 0; // num | The number of results to skip (between 0 and 990).
var number = 10; // num | The number of expected results (between 1 and 100).

try { 
    var result = api_instance.ingredientSearch(query, addChildren, minProteinPercent, maxProteinPercent, minFatPercent, maxFatPercent, minCarbsPercent, maxCarbsPercent, metaInformation, intolerances, sort, sortDirection, offset, number);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->ingredientSearch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The partial or full ingredient name. | [default to null]
 **addChildren** | **bool**| Whether to add children of found foods. | [optional] [default to null]
 **minProteinPercent** | **num**| The minimum percentage of protein the food must have (between 0 and 100). | [optional] [default to null]
 **maxProteinPercent** | **num**| The maximum percentage of protein the food can have (between 0 and 100). | [optional] [default to null]
 **minFatPercent** | **num**| The minimum percentage of fat the food must have (between 0 and 100). | [optional] [default to null]
 **maxFatPercent** | **num**| The maximum percentage of fat the food can have (between 0 and 100). | [optional] [default to null]
 **minCarbsPercent** | **num**| The minimum percentage of carbs the food must have (between 0 and 100). | [optional] [default to null]
 **maxCarbsPercent** | **num**| The maximum percentage of carbs the food can have (between 0 and 100). | [optional] [default to null]
 **metaInformation** | **bool**| Whether to return more meta information about the ingredients. | [optional] [default to null]
 **intolerances** | **String**| A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. | [optional] [default to null]
 **sort** | **String**| The strategy to sort recipes by. See a full list of supported sorting options. | [optional] [default to null]
 **sortDirection** | **String**| The direction in which to sort. Must be either &#39;asc&#39; (ascending) or &#39;desc&#39; (descending). | [optional] [default to null]
 **offset** | **num**| The number of results to skip (between 0 and 990). | [optional] [default to null]
 **number** | **num**| The number of expected results (between 1 and 100). | [optional] [default to null]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mapIngredientsToGroceryProducts**
> Object mapIngredientsToGroceryProducts(body)

Map Ingredients to Grocery Products

Map a set of ingredients to products you can buy in the grocery store.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var body = new Object(); // Object | 

try { 
    var result = api_instance.mapIngredientsToGroceryProducts(body);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->mapIngredientsToGroceryProducts: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **Object**|  | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **parseIngredients**
> Object parseIngredients(ingredientList, servings, includeNutrition)

Parse Ingredients

Extract an ingredient from plain text.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var ingredientList = ingredientList_example; // String | The ingredient list of the recipe, one ingredient per line.
var servings = 8.14; // num | The number of servings that you can make from the ingredients.
var includeNutrition = true; // bool | Whether nutrition data should be added to correctly parsed ingredients.

try { 
    var result = api_instance.parseIngredients(ingredientList, servings, includeNutrition);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->parseIngredients: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredientList** | **String**| The ingredient list of the recipe, one ingredient per line. | [default to null]
 **servings** | **num**| The number of servings that you can make from the ingredients. | [default to null]
 **includeNutrition** | **bool**| Whether nutrition data should be added to correctly parsed ingredients. | [optional] [default to null]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **quickAnswer**
> Object quickAnswer(q)

Quick Answer

Answer a nutrition related natural language question.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var q = How much vitamin c is in 2 apples?; // String | The nutrition related question.

try { 
    var result = api_instance.quickAnswer(q);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->quickAnswer: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| The nutrition related question. | [default to null]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchAllFood**
> Object searchAllFood(query, offset, number)

Search All Food

Search all food content with one call. That includes recipes, grocery products, menu items, simple foods (ingredients), and food videos.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var query = apple; // String | The search query.
var offset = 0; // num | The number of results to skip (between 0 and 990).
var number = 10; // num | The number of expected results (between 1 and 100).

try { 
    var result = api_instance.searchAllFood(query, offset, number);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->searchAllFood: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The search query. | [default to null]
 **offset** | **num**| The number of results to skip (between 0 and 990). | [optional] [default to null]
 **number** | **num**| The number of expected results (between 1 and 100). | [optional] [default to null]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchCustomFoods**
> Object searchCustomFoods(query, username, hash, offset, number)

Search Custom Foods

Search custom foods in a user's account.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var query = brat; // String | The search query.
var username = dsky; // String | The username.
var hash = 4b5v4398573406; // String | The private hash for the username.
var offset = 0; // num | The number of results to skip (between 0 and 990).
var number = 10; // num | The number of expected results (between 1 and 100).

try { 
    var result = api_instance.searchCustomFoods(query, username, hash, offset, number);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->searchCustomFoods: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The search query. | [default to null]
 **username** | **String**| The username. | [default to null]
 **hash** | **String**| The private hash for the username. | [default to null]
 **offset** | **num**| The number of results to skip (between 0 and 990). | [optional] [default to null]
 **number** | **num**| The number of expected results (between 1 and 100). | [optional] [default to null]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchFoodVideos**
> Object searchFoodVideos(query, type, cuisine, diet, includeIngredients, excludeIngredients, minLength, maxLength, offset, number)

Search Food Videos

Find recipe and other food related videos.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var query = chicken soup; // String | The search query.
var type = main course; // String | The type of the recipes. See a full list of supported meal types.
var cuisine = italian; // String | The cuisine(s) of the recipes. One or more, comma separated. See a full list of supported cuisines.
var diet = vegetarian; // String | The diet for which the recipes must be suitable. See a full list of supported diets.
var includeIngredients = tomato,cheese; // String | A comma-separated list of ingredients that the recipes should contain.
var excludeIngredients = eggs; // String | A comma-separated list of ingredients or ingredient types that the recipes must not contain.
var minLength = 0; // num | Minimum video length in seconds.
var maxLength = 999; // num | Maximum video length in seconds.
var offset = 0; // num | The number of results to skip (between 0 and 900).
var number = 10; // num | The number of results to return (between 1 and 100).

try { 
    var result = api_instance.searchFoodVideos(query, type, cuisine, diet, includeIngredients, excludeIngredients, minLength, maxLength, offset, number);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->searchFoodVideos: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The search query. | [default to null]
 **type** | **String**| The type of the recipes. See a full list of supported meal types. | [optional] [default to null]
 **cuisine** | **String**| The cuisine(s) of the recipes. One or more, comma separated. See a full list of supported cuisines. | [optional] [default to null]
 **diet** | **String**| The diet for which the recipes must be suitable. See a full list of supported diets. | [optional] [default to null]
 **includeIngredients** | **String**| A comma-separated list of ingredients that the recipes should contain. | [optional] [default to null]
 **excludeIngredients** | **String**| A comma-separated list of ingredients or ingredient types that the recipes must not contain. | [optional] [default to null]
 **minLength** | **num**| Minimum video length in seconds. | [optional] [default to null]
 **maxLength** | **num**| Maximum video length in seconds. | [optional] [default to null]
 **offset** | **num**| The number of results to skip (between 0 and 900). | [optional] [default to null]
 **number** | **num**| The number of results to return (between 1 and 100). | [optional] [default to null]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchGroceryProducts**
> Object searchGroceryProducts(query, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, offset, number)

Search Grocery Products

Search packaged food products, such as frozen pizza or Greek yogurt.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var query = greek yogurt; // String | The search query.
var minCalories = 50; // num | The minimum amount of calories the product must have.
var maxCalories = 800; // num | The maximum amount of calories the product can have.
var minCarbs = 10; // num | The minimum amount of carbohydrates in grams the product must have.
var maxCarbs = 100; // num | The maximum amount of carbohydrates in grams the product can have.
var minProtein = 10; // num | The minimum amount of protein in grams the product must have.
var maxProtein = 100; // num | The maximum amount of protein in grams the product can have.
var minFat = 1; // num | The minimum amount of fat in grams the product must have.
var maxFat = 100; // num | The maximum amount of fat in grams the product can have.
var offset = 0; // num | The number of results to skip (between 0 and 990).
var number = 10; // num | The number of expected results (between 1 and 100).

try { 
    var result = api_instance.searchGroceryProducts(query, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, offset, number);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->searchGroceryProducts: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The search query. | [default to null]
 **minCalories** | **num**| The minimum amount of calories the product must have. | [optional] [default to null]
 **maxCalories** | **num**| The maximum amount of calories the product can have. | [optional] [default to null]
 **minCarbs** | **num**| The minimum amount of carbohydrates in grams the product must have. | [optional] [default to null]
 **maxCarbs** | **num**| The maximum amount of carbohydrates in grams the product can have. | [optional] [default to null]
 **minProtein** | **num**| The minimum amount of protein in grams the product must have. | [optional] [default to null]
 **maxProtein** | **num**| The maximum amount of protein in grams the product can have. | [optional] [default to null]
 **minFat** | **num**| The minimum amount of fat in grams the product must have. | [optional] [default to null]
 **maxFat** | **num**| The maximum amount of fat in grams the product can have. | [optional] [default to null]
 **offset** | **num**| The number of results to skip (between 0 and 990). | [optional] [default to null]
 **number** | **num**| The number of expected results (between 1 and 100). | [optional] [default to null]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchGroceryProductsByUPC**
> Object searchGroceryProductsByUPC(upc)

Search Grocery Products by UPC

Get information about a packaged food using its UPC.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var upc = 41631000564; // num | The product's UPC.

try { 
    var result = api_instance.searchGroceryProductsByUPC(upc);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->searchGroceryProductsByUPC: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **upc** | **num**| The product&#39;s UPC. | [default to null]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchMenuItems**
> Object searchMenuItems(query, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, offset, number)

Search Menu Items

Search over 115,000 menu items from over 800 fast food and chain restaurants. For example, McDonald's Big Mac or Starbucks Mocha.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var query = snickers; // String | The search query.
var minCalories = 50; // num | The minimum amount of calories the menu item must have.
var maxCalories = 800; // num | The maximum amount of calories the menu item can have.
var minCarbs = 10; // num | The minimum amount of carbohydrates in grams the menu item must have.
var maxCarbs = 100; // num | The maximum amount of carbohydrates in grams the menu item can have.
var minProtein = 10; // num | The minimum amount of protein in grams the menu item must have.
var maxProtein = 100; // num | The maximum amount of protein in grams the menu item can have.
var minFat = 1; // num | The minimum amount of fat in grams the menu item must have.
var maxFat = 100; // num | The maximum amount of fat in grams the menu item can have.
var offset = 0; // num | The offset number for paging (between 0 and 990).
var number = 100; // num | The number of expected results (between 1 and 10).

try { 
    var result = api_instance.searchMenuItems(query, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, offset, number);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->searchMenuItems: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The search query. | [default to null]
 **minCalories** | **num**| The minimum amount of calories the menu item must have. | [optional] [default to null]
 **maxCalories** | **num**| The maximum amount of calories the menu item can have. | [optional] [default to null]
 **minCarbs** | **num**| The minimum amount of carbohydrates in grams the menu item must have. | [optional] [default to null]
 **maxCarbs** | **num**| The maximum amount of carbohydrates in grams the menu item can have. | [optional] [default to null]
 **minProtein** | **num**| The minimum amount of protein in grams the menu item must have. | [optional] [default to null]
 **maxProtein** | **num**| The maximum amount of protein in grams the menu item can have. | [optional] [default to null]
 **minFat** | **num**| The minimum amount of fat in grams the menu item must have. | [optional] [default to null]
 **maxFat** | **num**| The maximum amount of fat in grams the menu item can have. | [optional] [default to null]
 **offset** | **num**| The offset number for paging (between 0 and 990). | [optional] [default to null]
 **number** | **num**| The number of expected results (between 1 and 10). | [optional] [default to null]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchRecipes**
> Object searchRecipes(query, cuisine, excludeCuisine, diet, intolerances, equipment, includeIngredients, excludeIngredients, type, instructionsRequired, fillIngredients, addRecipeInformation, addRecipeNutrition, author, tags, recipeBoxId, titleMatch, maxReadyTime, ignorePantry, sort, sortDirection, minCarbs, maxCarbs, minProtein, maxProtein, minCalories, maxCalories, minFat, maxFat, minAlcohol, maxAlcohol, minCaffeine, maxCaffeine, minCopper, maxCopper, minCalcium, maxCalcium, minCholine, maxCholine, minCholesterol, maxCholesterol, minFluoride, maxFluoride, minSaturatedFat, maxSaturatedFat, minVitaminA, maxVitaminA, minVitaminC, maxVitaminC, minVitaminD, maxVitaminD, minVitaminE, maxVitaminE, minVitaminK, maxVitaminK, minVitaminB1, maxVitaminB1, minVitaminB2, maxVitaminB2, minVitaminB5, maxVitaminB5, minVitaminB3, maxVitaminB3, minVitaminB6, maxVitaminB6, minVitaminB12, maxVitaminB12, minFiber, maxFiber, minFolate, maxFolate, minFolicAcid, maxFolicAcid, minIodine, maxIodine, minIron, maxIron, minMagnesium, maxMagnesium, minManganese, maxManganese, minPhosphorus, maxPhosphorus, minPotassium, maxPotassium, minSelenium, maxSelenium, minSodium, maxSodium, minSugar, maxSugar, minZinc, maxZinc, offset, number, limitLicense)

Search Recipes

Search through hundreds of thousands of recipes using advanced filtering and ranking. NOTE: This method combines searching by query, by ingredients, and by nutrients into one endpoint.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var query = pasta; // String | The (natural language) recipe search query.
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
var tags = myCustomTag; // String | User defined tags that have to match. The author param has to be set.
var recipeBoxId = 2468; // num | The id of the recipe box to which the search should be limited to.
var titleMatch = Crock Pot; // String | Enter text that must be found in the title of the recipes.
var maxReadyTime = 20; // num | The maximum time in minutes it should take to prepare and cook the recipe.
var ignorePantry = true; // bool | Whether to ignore typical pantry items, such as water, salt, flour, etc.
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
var offset = 0; // num | The number of results to skip (between 0 and 900).
var number = 10; // num | The number of expected results (between 1 and 100).
var limitLicense = true; // bool | Whether the recipes should have an open license that allows display with proper attribution.

try { 
    var result = api_instance.searchRecipes(query, cuisine, excludeCuisine, diet, intolerances, equipment, includeIngredients, excludeIngredients, type, instructionsRequired, fillIngredients, addRecipeInformation, addRecipeNutrition, author, tags, recipeBoxId, titleMatch, maxReadyTime, ignorePantry, sort, sortDirection, minCarbs, maxCarbs, minProtein, maxProtein, minCalories, maxCalories, minFat, maxFat, minAlcohol, maxAlcohol, minCaffeine, maxCaffeine, minCopper, maxCopper, minCalcium, maxCalcium, minCholine, maxCholine, minCholesterol, maxCholesterol, minFluoride, maxFluoride, minSaturatedFat, maxSaturatedFat, minVitaminA, maxVitaminA, minVitaminC, maxVitaminC, minVitaminD, maxVitaminD, minVitaminE, maxVitaminE, minVitaminK, maxVitaminK, minVitaminB1, maxVitaminB1, minVitaminB2, maxVitaminB2, minVitaminB5, maxVitaminB5, minVitaminB3, maxVitaminB3, minVitaminB6, maxVitaminB6, minVitaminB12, maxVitaminB12, minFiber, maxFiber, minFolate, maxFolate, minFolicAcid, maxFolicAcid, minIodine, maxIodine, minIron, maxIron, minMagnesium, maxMagnesium, minManganese, maxManganese, minPhosphorus, maxPhosphorus, minPotassium, maxPotassium, minSelenium, maxSelenium, minSodium, maxSodium, minSugar, maxSugar, minZinc, maxZinc, offset, number, limitLicense);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->searchRecipes: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The (natural language) recipe search query. | [default to null]
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
 **tags** | **String**| User defined tags that have to match. The author param has to be set. | [optional] [default to null]
 **recipeBoxId** | **num**| The id of the recipe box to which the search should be limited to. | [optional] [default to null]
 **titleMatch** | **String**| Enter text that must be found in the title of the recipes. | [optional] [default to null]
 **maxReadyTime** | **num**| The maximum time in minutes it should take to prepare and cook the recipe. | [optional] [default to null]
 **ignorePantry** | **bool**| Whether to ignore typical pantry items, such as water, salt, flour, etc. | [optional] [default to null]
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
 **offset** | **num**| The number of results to skip (between 0 and 900). | [optional] [default to null]
 **number** | **num**| The number of expected results (between 1 and 100). | [optional] [default to null]
 **limitLicense** | **bool**| Whether the recipes should have an open license that allows display with proper attribution. | [optional] [default to null]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchRecipesByIngredients**
> Object searchRecipesByIngredients(ingredients, number, limitLicense, ranking, ignorePantry)

Search Recipes by Ingredients

             Ever wondered what recipes you can cook with the ingredients you have in your fridge or pantry? This endpoint lets you find recipes that either maximize the usage of ingredients you have at hand (pre shopping) or minimize the ingredients that you don't currently have (post shopping).         

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var ingredients = apples,flour,sugar; // String | A comma-separated list of ingredients that the recipes should contain.
var number = 10; // num | The maximum number of recipes to return (between 1 and 100). Defaults to 10.
var limitLicense = true; // bool | Whether the recipes should have an open license that allows display with proper attribution.
var ranking = 1; // num | Whether to maximize used ingredients (1) or minimize missing ingredients (2) first.
var ignorePantry = true; // bool | Whether to ignore typical pantry items, such as water, salt, flour, etc.

try { 
    var result = api_instance.searchRecipesByIngredients(ingredients, number, limitLicense, ranking, ignorePantry);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->searchRecipesByIngredients: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredients** | **String**| A comma-separated list of ingredients that the recipes should contain. | [default to null]
 **number** | **num**| The maximum number of recipes to return (between 1 and 100). Defaults to 10. | [optional] [default to null]
 **limitLicense** | **bool**| Whether the recipes should have an open license that allows display with proper attribution. | [optional] [default to null]
 **ranking** | **num**| Whether to maximize used ingredients (1) or minimize missing ingredients (2) first. | [optional] [default to null]
 **ignorePantry** | **bool**| Whether to ignore typical pantry items, such as water, salt, flour, etc. | [optional] [default to null]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchRecipesByNutrients**
> Object searchRecipesByNutrients(minCarbs, maxCarbs, minProtein, maxProtein, minCalories, maxCalories, minFat, maxFat, minAlcohol, maxAlcohol, minCaffeine, maxCaffeine, minCopper, maxCopper, minCalcium, maxCalcium, minCholine, maxCholine, minCholesterol, maxCholesterol, minFluoride, maxFluoride, minSaturatedFat, maxSaturatedFat, minVitaminA, maxVitaminA, minVitaminC, maxVitaminC, minVitaminD, maxVitaminD, minVitaminE, maxVitaminE, minVitaminK, maxVitaminK, minVitaminB1, maxVitaminB1, minVitaminB2, maxVitaminB2, minVitaminB5, maxVitaminB5, minVitaminB3, maxVitaminB3, minVitaminB6, maxVitaminB6, minVitaminB12, maxVitaminB12, minFiber, maxFiber, minFolate, maxFolate, minFolicAcid, maxFolicAcid, minIodine, maxIodine, minIron, maxIron, minMagnesium, maxMagnesium, minManganese, maxManganese, minPhosphorus, maxPhosphorus, minPotassium, maxPotassium, minSelenium, maxSelenium, minSodium, maxSodium, minSugar, maxSugar, minZinc, maxZinc, offset, number, random, limitLicense)

Search Recipes by Nutrients

Find a set of recipes that adhere to the given nutritional limits. You may set limits for macronutrients (calories, protein, fat, and carbohydrate) and/or many micronutrients.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
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
var offset = 0; // num | The number of results to skip (between 0 and 900).
var number = 10; // num | The number of expected results (between 1 and 100).
var random = false; // bool | If true, every request will give you a random set of recipes within the requested limits.
var limitLicense = true; // bool | Whether the recipes should have an open license that allows display with proper attribution.

try { 
    var result = api_instance.searchRecipesByNutrients(minCarbs, maxCarbs, minProtein, maxProtein, minCalories, maxCalories, minFat, maxFat, minAlcohol, maxAlcohol, minCaffeine, maxCaffeine, minCopper, maxCopper, minCalcium, maxCalcium, minCholine, maxCholine, minCholesterol, maxCholesterol, minFluoride, maxFluoride, minSaturatedFat, maxSaturatedFat, minVitaminA, maxVitaminA, minVitaminC, maxVitaminC, minVitaminD, maxVitaminD, minVitaminE, maxVitaminE, minVitaminK, maxVitaminK, minVitaminB1, maxVitaminB1, minVitaminB2, maxVitaminB2, minVitaminB5, maxVitaminB5, minVitaminB3, maxVitaminB3, minVitaminB6, maxVitaminB6, minVitaminB12, maxVitaminB12, minFiber, maxFiber, minFolate, maxFolate, minFolicAcid, maxFolicAcid, minIodine, maxIodine, minIron, maxIron, minMagnesium, maxMagnesium, minManganese, maxManganese, minPhosphorus, maxPhosphorus, minPotassium, maxPotassium, minSelenium, maxSelenium, minSodium, maxSodium, minSugar, maxSugar, minZinc, maxZinc, offset, number, random, limitLicense);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->searchRecipesByNutrients: $e\n");
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
 **offset** | **num**| The number of results to skip (between 0 and 900). | [optional] [default to null]
 **number** | **num**| The number of expected results (between 1 and 100). | [optional] [default to null]
 **random** | **bool**| If true, every request will give you a random set of recipes within the requested limits. | [optional] [default to null]
 **limitLicense** | **bool**| Whether the recipes should have an open license that allows display with proper attribution. | [optional] [default to null]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchSiteContent**
> Object searchSiteContent(query)

Search Site Content

Search spoonacular's site content. You'll be able to find everything that you could also find using the search suggestions on spoonacular.com. This is a suggest API so you can send partial strings as queries.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var query = past; // String | The query to search for. You can also use partial queries such as \"spagh\" to already find spaghetti recipes, articles, grocery products, and other content.

try { 
    var result = api_instance.searchSiteContent(query);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->searchSiteContent: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The query to search for. You can also use partial queries such as \&quot;spagh\&quot; to already find spaghetti recipes, articles, grocery products, and other content. | [default to null]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **summarizeRecipe**
> Object summarizeRecipe(id)

Summarize Recipe

Automatically generate a short description that summarizes key information about the recipe.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var id = 4632; // num | The recipe id.

try { 
    var result = api_instance.summarizeRecipe(id);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->summarizeRecipe: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **num**| The recipe id. | [default to null]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **talkToChatbot**
> Object talkToChatbot(text, contextId)

Talk to Chatbot

This endpoint can be used to have a conversation about food with the spoonacular chatbot. Use the \"Get Conversation Suggests\" endpoint to show your user what he or she can say.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var text = donut recipes; // String | The request / question / answer from the user to the chatbot.
var contextId = 342938; // String | An arbitrary globally unique id for your conversation. The conversation can contain states so you should pass your context id if you want the bot to be able to remember the conversation.

try { 
    var result = api_instance.talkToChatbot(text, contextId);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->talkToChatbot: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **String**| The request / question / answer from the user to the chatbot. | [default to null]
 **contextId** | **String**| An arbitrary globally unique id for your conversation. The conversation can contain states so you should pass your context id if you want the bot to be able to remember the conversation. | [optional] [default to null]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualizeEquipment**
> String visualizeEquipment(instructions, view, defaultCss, showBacklink)

Visualize Equipment

Visualize the equipment used to make a recipe. You can play around with that endpoint!

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var instructions = instructions_example; // String | The recipe's instructions.
var view = view_example; // String | How to visualize the equipment, either \\\"grid\\\" or \\\"list\\\".
var defaultCss = true; // bool | Whether the default CSS should be added to the response.
var showBacklink = true; // bool | Whether to show a backlink to spoonacular. If set false, this call counts against your quota.

try { 
    var result = api_instance.visualizeEquipment(instructions, view, defaultCss, showBacklink);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->visualizeEquipment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instructions** | **String**| The recipe&#39;s instructions. | [default to null]
 **view** | **String**| How to visualize the equipment, either \\\&quot;grid\\\&quot; or \\\&quot;list\\\&quot;. | [optional] [default to null]
 **defaultCss** | **bool**| Whether the default CSS should be added to the response. | [optional] [default to null]
 **showBacklink** | **bool**| Whether to show a backlink to spoonacular. If set false, this call counts against your quota. | [optional] [default to null]

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualizeIngredients**
> String visualizeIngredients(ingredientList, servings, measure, view, defaultCss, showBacklink)

Visualize Ingredients

Visualize ingredients of a recipe. You can play around with that endpoint!

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var ingredientList = ingredientList_example; // String | The ingredient list of the recipe, one ingredient per line.
var servings = 8.14; // num | The number of servings.
var measure = measure_example; // String | The original system of measurement, either \\\"metric\\\" or \\\"us\\\".
var view = view_example; // String | How to visualize the ingredients, either \\\"grid\\\" or \\\"list\\\".
var defaultCss = true; // bool | Whether the default CSS should be added to the response.
var showBacklink = true; // bool | Whether to show a backlink to spoonacular. If set false, this call counts against your quota.

try { 
    var result = api_instance.visualizeIngredients(ingredientList, servings, measure, view, defaultCss, showBacklink);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->visualizeIngredients: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredientList** | **String**| The ingredient list of the recipe, one ingredient per line. | [default to null]
 **servings** | **num**| The number of servings. | [default to null]
 **measure** | **String**| The original system of measurement, either \\\&quot;metric\\\&quot; or \\\&quot;us\\\&quot;. | [optional] [default to null]
 **view** | **String**| How to visualize the ingredients, either \\\&quot;grid\\\&quot; or \\\&quot;list\\\&quot;. | [optional] [default to null]
 **defaultCss** | **bool**| Whether the default CSS should be added to the response. | [optional] [default to null]
 **showBacklink** | **bool**| Whether to show a backlink to spoonacular. If set false, this call counts against your quota. | [optional] [default to null]

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualizeMenuItemNutritionByID**
> String visualizeMenuItemNutritionByID(id, defaultCss)

Visualize Menu Item Nutrition by ID

Visualize a menu item's nutritional information as HTML including CSS.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var id = 1003464; // num | The menu item id.
var defaultCss = true; // bool | Whether the default CSS should be added to the response.

try { 
    var result = api_instance.visualizeMenuItemNutritionByID(id, defaultCss);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->visualizeMenuItemNutritionByID: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **num**| The menu item id. | [default to null]
 **defaultCss** | **bool**| Whether the default CSS should be added to the response. | [optional] [default to null]

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualizePriceBreakdown**
> String visualizePriceBreakdown(ingredientList, servings, mode, defaultCss, showBacklink)

Visualize Price Breakdown

Visualize the price breakdown of a recipe. You can play around with that endpoint!

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var ingredientList = ingredientList_example; // String | The ingredient list of the recipe, one ingredient per line.
var servings = 8.14; // num | The number of servings.
var mode = 8.14; // num | The mode in which the widget should be delivered. 1 = separate views (compact), 2 = all in one view (full).
var defaultCss = true; // bool | Whether the default CSS should be added to the response.
var showBacklink = true; // bool | Whether to show a backlink to spoonacular. If set false, this call counts against your quota.

try { 
    var result = api_instance.visualizePriceBreakdown(ingredientList, servings, mode, defaultCss, showBacklink);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->visualizePriceBreakdown: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredientList** | **String**| The ingredient list of the recipe, one ingredient per line. | [default to null]
 **servings** | **num**| The number of servings. | [default to null]
 **mode** | **num**| The mode in which the widget should be delivered. 1 &#x3D; separate views (compact), 2 &#x3D; all in one view (full). | [optional] [default to null]
 **defaultCss** | **bool**| Whether the default CSS should be added to the response. | [optional] [default to null]
 **showBacklink** | **bool**| Whether to show a backlink to spoonacular. If set false, this call counts against your quota. | [optional] [default to null]

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualizeProductNutritionByID**
> String visualizeProductNutritionByID(id, defaultCss)

Visualize Product Nutrition by ID

Visualize a product's nutritional information as HTML including CSS.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var id = 7657; // num | The id of the product.
var defaultCss = true; // bool | Whether the default CSS should be added to the response.

try { 
    var result = api_instance.visualizeProductNutritionByID(id, defaultCss);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->visualizeProductNutritionByID: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **num**| The id of the product. | [default to null]
 **defaultCss** | **bool**| Whether the default CSS should be added to the response. | [optional] [default to null]

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualizeRecipeEquipmentByID**
> String visualizeRecipeEquipmentByID(id, defaultCss)

Visualize Recipe Equipment by ID

Visualize a recipe's equipment list.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var id = 44860; // num | The recipe id.
var defaultCss = true; // bool | Whether the default CSS should be added to the response.

try { 
    var result = api_instance.visualizeRecipeEquipmentByID(id, defaultCss);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->visualizeRecipeEquipmentByID: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **num**| The recipe id. | [default to null]
 **defaultCss** | **bool**| Whether the default CSS should be added to the response. | [optional] [default to null]

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualizeRecipeIngredientsByID**
> String visualizeRecipeIngredientsByID(id, defaultCss)

Visualize Recipe Ingredients by ID

Visualize a recipe's ingredient list.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var id = 1082038; // num | The recipe id.
var defaultCss = true; // bool | Whether the default CSS should be added to the response.

try { 
    var result = api_instance.visualizeRecipeIngredientsByID(id, defaultCss);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->visualizeRecipeIngredientsByID: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **num**| The recipe id. | [default to null]
 **defaultCss** | **bool**| Whether the default CSS should be added to the response. | [optional] [default to null]

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualizeRecipeNutrition**
> String visualizeRecipeNutrition(ingredientList, servings, defaultCss, showBacklink)

Visualize Recipe Nutrition

Visualize a recipe's nutritional information as HTML including CSS. You can play around with that endpoint!

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var ingredientList = ingredientList_example; // String | The ingredient list of the recipe, one ingredient per line.
var servings = 8.14; // num | The number of servings.
var defaultCss = true; // bool | Whether the default CSS should be added to the response.
var showBacklink = true; // bool | Whether to show a backlink to spoonacular. If set false, this call counts against your quota.

try { 
    var result = api_instance.visualizeRecipeNutrition(ingredientList, servings, defaultCss, showBacklink);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->visualizeRecipeNutrition: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredientList** | **String**| The ingredient list of the recipe, one ingredient per line. | [default to null]
 **servings** | **num**| The number of servings. | [default to null]
 **defaultCss** | **bool**| Whether the default CSS should be added to the response. | [optional] [default to null]
 **showBacklink** | **bool**| Whether to show a backlink to spoonacular. If set false, this call counts against your quota. | [optional] [default to null]

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualizeRecipeNutritionByID**
> String visualizeRecipeNutritionByID(id, defaultCss)

Visualize Recipe Nutrition by ID

Visualize a recipe's nutritional information as HTML including CSS.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var id = 1082038; // num | The recipe id.
var defaultCss = true; // bool | Whether the default CSS should be added to the response.

try { 
    var result = api_instance.visualizeRecipeNutritionByID(id, defaultCss);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->visualizeRecipeNutritionByID: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **num**| The recipe id. | [default to null]
 **defaultCss** | **bool**| Whether the default CSS should be added to the response. | [optional] [default to null]

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualizeRecipePriceBreakdownByID**
> String visualizeRecipePriceBreakdownByID(id, defaultCss)

Visualize Recipe Price Breakdown by ID

Visualize a recipe's price breakdown.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var id = 1082038; // num | The recipe id.
var defaultCss = true; // bool | Whether the default CSS should be added to the response.

try { 
    var result = api_instance.visualizeRecipePriceBreakdownByID(id, defaultCss);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->visualizeRecipePriceBreakdownByID: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **num**| The recipe id. | [default to null]
 **defaultCss** | **bool**| Whether the default CSS should be added to the response. | [optional] [default to null]

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualizeRecipeTaste**
> String visualizeRecipeTaste(ingredientList)

Visualize Recipe Taste

Visualize a recipe's taste information as HTML including CSS. You can play around with that endpoint!

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var ingredientList = ingredientList_example; // String | The ingredient list of the recipe, one ingredient per line.

try { 
    var result = api_instance.visualizeRecipeTaste(ingredientList);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->visualizeRecipeTaste: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredientList** | **String**| The ingredient list of the recipe, one ingredient per line. | [default to null]

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualizeRecipeTasteByID**
> String visualizeRecipeTasteByID(id)

Visualize Recipe Taste by ID

Get a recipe's taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DefaultApi();
var id = 69095; // num | The recipe id.

try { 
    var result = api_instance.visualizeRecipeTasteByID(id);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->visualizeRecipeTasteByID: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **num**| The recipe id. | [default to null]

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

