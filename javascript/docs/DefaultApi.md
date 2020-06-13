# SpoonacularApi.DefaultApi

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
[**getShoppingList**](DefaultApi.md#getShoppingList) | **GET** /mealplanner/{username}/shopping-list | Get Shopping List
[**getSimilarRecipes**](DefaultApi.md#getSimilarRecipes) | **GET** /recipes/{id}/similar | Get Similar Recipes
[**getWineDescription**](DefaultApi.md#getWineDescription) | **GET** /food/wine/description | Get Wine Description
[**getWinePairing**](DefaultApi.md#getWinePairing) | **GET** /food/wine/pairing | Get Wine Pairing
[**getWineRecommendation**](DefaultApi.md#getWineRecommendation) | **GET** /food/wine/recommendation | Get Wine Recommendation
[**guessNutritionByDishName**](DefaultApi.md#guessNutritionByDishName) | **GET** /recipes/guessNutrition | Guess Nutrition by Dish Name
[**imageAnalysisByURL**](DefaultApi.md#imageAnalysisByURL) | **GET** /food/images/analyze | Image Analysis by URL
[**imageClassificationByURL**](DefaultApi.md#imageClassificationByURL) | **GET** /food/images/classify | Image Classification by URL
[**mapIngredientsToGroceryProducts**](DefaultApi.md#mapIngredientsToGroceryProducts) | **POST** /food/ingredients/map | Map Ingredients to Grocery Products
[**parseIngredients**](DefaultApi.md#parseIngredients) | **POST** /recipes/parseIngredients | Parse Ingredients
[**quickAnswer**](DefaultApi.md#quickAnswer) | **GET** /recipes/quickAnswer | Quick Answer
[**searchCustomFoods**](DefaultApi.md#searchCustomFoods) | **GET** /food/customFoods/search | Search Custom Foods
[**searchFoodVideos**](DefaultApi.md#searchFoodVideos) | **GET** /food/videos/search | Search Food Videos
[**searchGroceryProducts**](DefaultApi.md#searchGroceryProducts) | **GET** /food/products/search | Search Grocery Products
[**searchGroceryProductsByUPC**](DefaultApi.md#searchGroceryProductsByUPC) | **GET** /food/products/upc/{upc} | Search Grocery Products by UPC
[**searchMenuItems**](DefaultApi.md#searchMenuItems) | **GET** /food/menuItems/search | Search Menu Items
[**searchRecipes**](DefaultApi.md#searchRecipes) | **GET** /recipes/search | Search Recipes
[**searchRecipesByIngredients**](DefaultApi.md#searchRecipesByIngredients) | **GET** /recipes/findByIngredients | Search Recipes by Ingredients
[**searchRecipesByNutrients**](DefaultApi.md#searchRecipesByNutrients) | **GET** /recipes/findByNutrients | Search Recipes by Nutrients
[**searchRecipesComplex**](DefaultApi.md#searchRecipesComplex) | **GET** /recipes/complexSearch | Search Recipes Complex
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



## addToMealPlan

> Object addToMealPlan(username, hash, inlineObject9)

Add to Meal Plan

Add an item to the user&#39;s meal plan.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let username = dsky; // String | The username.
let hash = 4b5v4398573406; // String | The private hash for the username.
let inlineObject9 = new SpoonacularApi.InlineObject9(); // InlineObject9 | 
apiInstance.addToMealPlan(username, hash, inlineObject9, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | 
 **hash** | **String**| The private hash for the username. | 
 **inlineObject9** | [**InlineObject9**](InlineObject9.md)|  | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: 
- **Accept**: application/json


## addToShoppingList

> Object addToShoppingList(username, hash, inlineObject12)

Add to Shopping List

Add an item to the current shopping list of a user.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let username = dsky; // String | The username.
let hash = 4b5v4398573406; // String | The private hash for the username.
let inlineObject12 = new SpoonacularApi.InlineObject12(); // InlineObject12 | 
apiInstance.addToShoppingList(username, hash, inlineObject12, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | 
 **hash** | **String**| The private hash for the username. | 
 **inlineObject12** | [**InlineObject12**](InlineObject12.md)|  | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: 
- **Accept**: application/json


## analyzeARecipeSearchQuery

> Object analyzeARecipeSearchQuery(q)

Analyze a Recipe Search Query

Parse a recipe search query to find out its intention.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let q = salmon with fusilli and no nuts; // String | The recipe search query.
apiInstance.analyzeARecipeSearchQuery(q, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| The recipe search query. | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## analyzeRecipeInstructions

> Object analyzeRecipeInstructions(instructions)

Analyze Recipe Instructions

Extract ingredients and equipment from the recipe&#39;s instructions.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let instructions = "instructions_example"; // String | The instructions to be analyzed.
apiInstance.analyzeRecipeInstructions(instructions, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instructions** | **String**| The instructions to be analyzed. | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## autocompleteIngredientSearch

> Object autocompleteIngredientSearch(query, opts)

Autocomplete Ingredient Search

Autocomplete the entry of an ingredient.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let query = appl; // String | The partial or full ingredient name.
let opts = {
  '_number': 10, // Number | The number of results to return (between 1 and 100).
  'metaInformation': false, // Boolean | Whether to return more meta information about the ingredients.
  'intolerances': false // Boolean | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.
};
apiInstance.autocompleteIngredientSearch(query, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The partial or full ingredient name. | 
 **_number** | **Number**| The number of results to return (between 1 and 100). | [optional] 
 **metaInformation** | **Boolean**| Whether to return more meta information about the ingredients. | [optional] 
 **intolerances** | **Boolean**| A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## autocompleteMenuItemSearch

> Object autocompleteMenuItemSearch(query, opts)

Autocomplete Menu Item Search

Generate suggestions for menu items based on a (partial) query. The matches will be found by looking in the title only.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let query = chicke; // String | The (partial) search query.
let opts = {
  '_number': 10 // Number | The number of results to return (between 1 and 25).
};
apiInstance.autocompleteMenuItemSearch(query, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The (partial) search query. | 
 **_number** | **Number**| The number of results to return (between 1 and 25). | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## autocompleteProductSearch

> Object autocompleteProductSearch(query, opts)

Autocomplete Product Search

Generate suggestions for grocery products based on a (partial) query. The matches will be found by looking in the title only.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let query = chicke; // String | The (partial) search query.
let opts = {
  '_number': 10 // Number | The number of results to return (between 1 and 25).
};
apiInstance.autocompleteProductSearch(query, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The (partial) search query. | 
 **_number** | **Number**| The number of results to return (between 1 and 25). | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## autocompleteRecipeSearch

> Object autocompleteRecipeSearch(query, opts)

Autocomplete Recipe Search

Autocomplete a partial input to suggest possible recipe names.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let query = burger; // String | The query to be autocompleted.
let opts = {
  '_number': 10 // Number | The number of results to return (between 1 and 25).
};
apiInstance.autocompleteRecipeSearch(query, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The query to be autocompleted. | 
 **_number** | **Number**| The number of results to return (between 1 and 25). | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## classifyCuisine

> Object classifyCuisine(title, ingredientList)

Classify Cuisine

Classify the recipe&#39;s cuisine.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let title = "title_example"; // String | The title of the recipe.
let ingredientList = "ingredientList_example"; // String | The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n).
apiInstance.classifyCuisine(title, ingredientList, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **String**| The title of the recipe. | 
 **ingredientList** | **String**| The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n). | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## classifyGroceryProduct

> Object classifyGroceryProduct(inlineObject8, opts)

Classify Grocery Product

This endpoint allows you to match a packaged food to a basic category, e.g. a specific brand of milk to the category milk.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let inlineObject8 = new SpoonacularApi.InlineObject8(); // InlineObject8 | 
let opts = {
  'locale': en_US // String | The display name of the returned category, supported is en_US (for American English) and en_GB (for British English).
};
apiInstance.classifyGroceryProduct(inlineObject8, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inlineObject8** | [**InlineObject8**](InlineObject8.md)|  | 
 **locale** | **String**| The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## classifyGroceryProductBulk

> Object classifyGroceryProductBulk(body, opts)

Classify Grocery Product Bulk

Provide a set of product jsons, get back classified products.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let body = null; // Object | 
let opts = {
  'locale': en_US // String | The display name of the returned category, supported is en_US (for American English) and en_GB (for British English).
};
apiInstance.classifyGroceryProductBulk(body, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **Object**|  | 
 **locale** | **String**| The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## convertAmounts

> Object convertAmounts(ingredientName, sourceAmount, sourceUnit, targetUnit)

Convert Amounts

Convert amounts like \&quot;2 cups of flour to grams\&quot;.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let ingredientName = flour; // String | The ingredient which you want to convert.
let sourceAmount = 2.5; // Number | The amount from which you want to convert, e.g. the 2.5 in \"2.5 cups of flour to grams\".
let sourceUnit = cups; // String | The unit from which you want to convert, e.g. the grams in \"2.5 cups of flour to grams\". You can also use \"piece\", e.g. \"3.4 oz tomatoes to piece\"
let targetUnit = grams; // String | The unit to which you want to convert, e.g. the grams in \"2.5 cups of flour to grams\". You can also use \"piece\", e.g. \"3.4 oz tomatoes to piece\"
apiInstance.convertAmounts(ingredientName, sourceAmount, sourceUnit, targetUnit, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredientName** | **String**| The ingredient which you want to convert. | 
 **sourceAmount** | **Number**| The amount from which you want to convert, e.g. the 2.5 in \&quot;2.5 cups of flour to grams\&quot;. | 
 **sourceUnit** | **String**| The unit from which you want to convert, e.g. the grams in \&quot;2.5 cups of flour to grams\&quot;. You can also use \&quot;piece\&quot;, e.g. \&quot;3.4 oz tomatoes to piece\&quot; | 
 **targetUnit** | **String**| The unit to which you want to convert, e.g. the grams in \&quot;2.5 cups of flour to grams\&quot;. You can also use \&quot;piece\&quot;, e.g. \&quot;3.4 oz tomatoes to piece\&quot; | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## createRecipeCard

> Object createRecipeCard(title, image, ingredients, instructions, readyInMinutes, servings, mask, backgroundImage, opts)

Create Recipe Card

Generate a recipe card for a recipe.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let title = "title_example"; // String | The title of the recipe.
let image = "/path/to/file"; // File | The binary image of the recipe as jpg.
let ingredients = "ingredients_example"; // String | The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n).
let instructions = "instructions_example"; // String | The instructions to make the recipe. One step per line (separate lines with \\\\n).
let readyInMinutes = 3.4; // Number | The number of minutes it takes to get the recipe on the table.
let servings = 3.4; // Number | The number of servings the recipe makes.
let mask = "mask_example"; // String | The mask to put over the recipe image (\\\"ellipseMask\\\", \\\"diamondMask\\\", \\\"starMask\\\", \\\"heartMask\\\", \\\"potMask\\\", \\\"fishMask\\\").
let backgroundImage = "backgroundImage_example"; // String | The background image (\\\"none\\\",\\\"background1\\\", or \\\"background2\\\").
let opts = {
  'author': "author_example", // String | The author of the recipe.
  'backgroundColor': "backgroundColor_example", // String | The background color for the recipe card as a hex-string.
  'fontColor': "fontColor_example", // String | The font color for the recipe card as a hex-string.
  'source': "source_example" // String | The source of the recipe.
};
apiInstance.createRecipeCard(title, image, ingredients, instructions, readyInMinutes, servings, mask, backgroundImage, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **String**| The title of the recipe. | 
 **image** | **File**| The binary image of the recipe as jpg. | 
 **ingredients** | **String**| The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n). | 
 **instructions** | **String**| The instructions to make the recipe. One step per line (separate lines with \\\\n). | 
 **readyInMinutes** | **Number**| The number of minutes it takes to get the recipe on the table. | 
 **servings** | **Number**| The number of servings the recipe makes. | 
 **mask** | **String**| The mask to put over the recipe image (\\\&quot;ellipseMask\\\&quot;, \\\&quot;diamondMask\\\&quot;, \\\&quot;starMask\\\&quot;, \\\&quot;heartMask\\\&quot;, \\\&quot;potMask\\\&quot;, \\\&quot;fishMask\\\&quot;). | 
 **backgroundImage** | **String**| The background image (\\\&quot;none\\\&quot;,\\\&quot;background1\\\&quot;, or \\\&quot;background2\\\&quot;). | 
 **author** | **String**| The author of the recipe. | [optional] 
 **backgroundColor** | **String**| The background color for the recipe card as a hex-string. | [optional] 
 **fontColor** | **String**| The font color for the recipe card as a hex-string. | [optional] 
 **source** | **String**| The source of the recipe. | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## deleteFromMealPlan

> Object deleteFromMealPlan(username, id, hash, inlineObject10)

Delete from Meal Plan

Delete an item from the user&#39;s meal plan.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let username = dsky; // String | The username.
let id = 15678; // Number | The shopping list item id.
let hash = 4b5v4398573406; // String | The private hash for the username.
let inlineObject10 = new SpoonacularApi.InlineObject10(); // InlineObject10 | 
apiInstance.deleteFromMealPlan(username, id, hash, inlineObject10, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | 
 **id** | **Number**| The shopping list item id. | 
 **hash** | **String**| The private hash for the username. | 
 **inlineObject10** | [**InlineObject10**](InlineObject10.md)|  | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: 
- **Accept**: application/json


## deleteFromShoppingList

> Object deleteFromShoppingList(username, id, hash, inlineObject13)

Delete from Shopping List

Delete an item from the current shopping list of the user.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let username = dsky; // String | The username.
let id = 15678; // Number | The shopping list item id.
let hash = 4b5v4398573406; // String | The private hash for the username.
let inlineObject13 = new SpoonacularApi.InlineObject13(); // InlineObject13 | 
apiInstance.deleteFromShoppingList(username, id, hash, inlineObject13, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | 
 **id** | **Number**| The shopping list item id. | 
 **hash** | **String**| The private hash for the username. | 
 **inlineObject13** | [**InlineObject13**](InlineObject13.md)|  | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: 
- **Accept**: application/json


## detectFoodInText

> Object detectFoodInText(text)

Detect Food in Text

Take any text and find all mentions of food contained within it. This task is also called Named Entity Recognition (NER). In this case, the entities are foods. Either dishes, such as pizza or cheeseburger, or ingredients, such as cucumber or almonds.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let text = "text_example"; // String | The text in which food items, such as dish names and ingredients, should be detected in.
apiInstance.detectFoodInText(text, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **String**| The text in which food items, such as dish names and ingredients, should be detected in. | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## extractRecipeFromWebsite

> Object extractRecipeFromWebsite(url, opts)

Extract Recipe from Website

This endpoint lets you extract recipe data such as title, ingredients, and instructions from any properly formatted Website.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let url = https://foodista.com/recipe/ZHK4KPB6/chocolate-crinkle-cookies; // String | The URL of the recipe page.
let opts = {
  'forceExtraction': true, // Boolean | If true, the extraction will be triggered whether we already know the recipe or not. Use this only if information is missing as this operation is slower.
  'analyze': false // Boolean | If true, the recipe will be analyzed and classified resolving in more data such as cuisines, dish types, and more.
};
apiInstance.extractRecipeFromWebsite(url, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **String**| The URL of the recipe page. | 
 **forceExtraction** | **Boolean**| If true, the extraction will be triggered whether we already know the recipe or not. Use this only if information is missing as this operation is slower. | [optional] 
 **analyze** | **Boolean**| If true, the recipe will be analyzed and classified resolving in more data such as cuisines, dish types, and more. | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## generateMealPlan

> Object generateMealPlan(opts)

Generate Meal Plan

Generate a meal plan with three meals per day (breakfast, lunch, and dinner).

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let opts = {
  'timeFrame': day, // String | Either for one \"day\" or an entire \"week\".
  'targetCalories': 2000, // Number | What is the caloric target for one day? The meal plan generator will try to get as close as possible to that goal.
  'diet': vegetarian, // String | Enter a diet that the meal plan has to adhere to. See a full list of supported diets.
  'exclude': shellfish, olives // String | A comma-separated list of allergens or ingredients that must be excluded.
};
apiInstance.generateMealPlan(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timeFrame** | **String**| Either for one \&quot;day\&quot; or an entire \&quot;week\&quot;. | [optional] 
 **targetCalories** | **Number**| What is the caloric target for one day? The meal plan generator will try to get as close as possible to that goal. | [optional] 
 **diet** | **String**| Enter a diet that the meal plan has to adhere to. See a full list of supported diets. | [optional] 
 **exclude** | **String**| A comma-separated list of allergens or ingredients that must be excluded. | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## generateShoppingList

> Object generateShoppingList(username, startDate, endDate, hash, inlineObject11)

Generate Shopping List

Generate the shopping list for a user from the meal planner in a given time frame.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let username = dsky; // String | The username.
let startDate = 2020-06-01; // String | The start date in the format yyyy-mm-dd.
let endDate = 2020-06-07; // String | The end date in the format yyyy-mm-dd.
let hash = 4b5v4398573406; // String | The private hash for the username.
let inlineObject11 = new SpoonacularApi.InlineObject11(); // InlineObject11 | 
apiInstance.generateShoppingList(username, startDate, endDate, hash, inlineObject11, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | 
 **startDate** | **String**| The start date in the format yyyy-mm-dd. | 
 **endDate** | **String**| The end date in the format yyyy-mm-dd. | 
 **hash** | **String**| The private hash for the username. | 
 **inlineObject11** | [**InlineObject11**](InlineObject11.md)|  | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: 
- **Accept**: application/json


## getARandomFoodJoke

> Object getARandomFoodJoke()

Get a Random Food Joke

Get a random joke that is related to food. Caution: this is an endpoint for adults!

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
apiInstance.getARandomFoodJoke((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

This endpoint does not need any parameter.

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getAnalyzedRecipeInstructions

> Object getAnalyzedRecipeInstructions(id, opts)

Get Analyzed Recipe Instructions

Get an analyzed breakdown of a recipe&#39;s instructions. Each step is enriched with the ingredients and equipment required.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let id = 324694; // Number | The recipe id.
let opts = {
  'stepBreakdown': true // Boolean | Whether to break down the recipe steps even more.
};
apiInstance.getAnalyzedRecipeInstructions(id, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Number**| The recipe id. | 
 **stepBreakdown** | **Boolean**| Whether to break down the recipe steps even more. | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getComparableProducts

> Object getComparableProducts(upc)

Get Comparable Products

Find comparable products to the given one.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let upc = 33698816271; // Number | The UPC of the product for which you want to find comparable products.
apiInstance.getComparableProducts(upc, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **upc** | **Number**| The UPC of the product for which you want to find comparable products. | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getConversationSuggests

> Object getConversationSuggests(query, opts)

Get Conversation Suggests

This endpoint returns suggestions for things the user can say or ask the chatbot.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let query = tell; // String | A (partial) query from the user. The endpoint will return if it matches topics it can talk about.
let opts = {
  '_number': 5 // Number | The number of suggestions to return (between 1 and 25).
};
apiInstance.getConversationSuggests(query, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| A (partial) query from the user. The endpoint will return if it matches topics it can talk about. | 
 **_number** | **Number**| The number of suggestions to return (between 1 and 25). | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getDishPairingForWine

> Object getDishPairingForWine(wine)

Get Dish Pairing for Wine

Find a dish that goes well with a given wine.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let wine = malbec; // String | The type of wine that should be paired, e.g. \"merlot\", \"riesling\", or \"malbec\".
apiInstance.getDishPairingForWine(wine, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wine** | **String**| The type of wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;. | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getIngredientInformation

> Object getIngredientInformation(id, opts)

Get Ingredient Information

Use an ingredient id to get all available information about an ingredient, such as its image and supermarket aisle.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let id = 9266; // Number | The ingredient id.
let opts = {
  'amount': 150, // Number | The amount of this ingredient.
  'unit': grams // String | The unit for the given amount.
};
apiInstance.getIngredientInformation(id, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Number**| The ingredient id. | 
 **amount** | **Number**| The amount of this ingredient. | [optional] 
 **unit** | **String**| The unit for the given amount. | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getIngredientSubstitutes

> Object getIngredientSubstitutes(ingredientName)

Get Ingredient Substitutes

Search for substitutes for a given ingredient.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let ingredientName = butter; // String | The name of the ingredient you want to replace.
apiInstance.getIngredientSubstitutes(ingredientName, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredientName** | **String**| The name of the ingredient you want to replace. | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getIngredientSubstitutesByID

> Object getIngredientSubstitutesByID(id)

Get Ingredient Substitutes by ID

Search for substitutes for a given ingredient.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let id = 1001; // Number | The id of the ingredient you want substitutes for.
apiInstance.getIngredientSubstitutesByID(id, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Number**| The id of the ingredient you want substitutes for. | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getMealPlanTemplate

> Object getMealPlanTemplate(username, id, hash)

Get Meal Plan Template

Get information about a meal plan template.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let username = dsky; // String | The username.
let id = 15678; // Number | The shopping list item id.
let hash = 4b5v4398573406; // String | The private hash for the username.
apiInstance.getMealPlanTemplate(username, id, hash, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | 
 **id** | **Number**| The shopping list item id. | 
 **hash** | **String**| The private hash for the username. | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getMealPlanTemplates

> Object getMealPlanTemplates(username, hash)

Get Meal Plan Templates

Get meal plan templates from user or public ones.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let username = dsky; // String | The username.
let hash = 4b5v4398573406; // String | The private hash for the username.
apiInstance.getMealPlanTemplates(username, hash, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | 
 **hash** | **String**| The private hash for the username. | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getMealPlanWeek

> Object getMealPlanWeek(username, startDate, hash)

Get Meal Plan Week

Retrieve a meal planned week for the given user. The username must be a spoonacular user and the hash must the the user&#39;s hash that can be found in his/her account.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let username = dsky; // String | The username.
let startDate = 2020-06-01; // String | The start date of the meal planned week in the format yyyy-mm-dd.
let hash = 4b5v4398573406; // String | The private hash for the username.
apiInstance.getMealPlanWeek(username, startDate, hash, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | 
 **startDate** | **String**| The start date of the meal planned week in the format yyyy-mm-dd. | 
 **hash** | **String**| The private hash for the username. | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getMenuItemInformation

> Object getMenuItemInformation(id)

Get Menu Item Information

Use a menu item id to get all available information about a menu item, such as nutrition.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let id = 424571; // Number | The menu item id.
apiInstance.getMenuItemInformation(id, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Number**| The menu item id. | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getProductInformation

> Object getProductInformation(id)

Get Product Information

Use a product id to get full information about a product, such as ingredients, nutrition, etc. The nutritional information is per serving.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let id = 22347; // Number | The id of the packaged food.
apiInstance.getProductInformation(id, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Number**| The id of the packaged food. | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getRandomFoodTrivia

> Object getRandomFoodTrivia()

Get Random Food Trivia

Returns random food trivia.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
apiInstance.getRandomFoodTrivia((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

This endpoint does not need any parameter.

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getRandomRecipes

> Object getRandomRecipes(opts)

Get Random Recipes

Find random (popular) recipes. If you need to filter recipes by diet, nutrition etc. you might want to consider using the complex recipe search endpoint and set the sort request parameter to random.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let opts = {
  'limitLicense': true, // Boolean | Whether the recipes should have an open license that allows display with proper attribution.
  'tags': vegetarian, dessert, // String | The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have.
  '_number': 1 // Number | The number of random recipes to be returned (between 1 and 100).
};
apiInstance.getRandomRecipes(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limitLicense** | **Boolean**| Whether the recipes should have an open license that allows display with proper attribution. | [optional] 
 **tags** | **String**| The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have. | [optional] 
 **_number** | **Number**| The number of random recipes to be returned (between 1 and 100). | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getRecipeEquipmentByID

> Object getRecipeEquipmentByID(id)

Get Recipe Equipment by ID

Get a recipe&#39;s equipment list.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let id = 1003464; // Number | The recipe id.
apiInstance.getRecipeEquipmentByID(id, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Number**| The recipe id. | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getRecipeInformation

> Object getRecipeInformation(id, opts)

Get Recipe Information

Use a recipe id to get full information about a recipe, such as ingredients, nutrition, diet and allergen information, etc.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let id = 716429; // Number | The id of the recipe.
let opts = {
  'includeNutrition': false // Boolean | Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings.
};
apiInstance.getRecipeInformation(id, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Number**| The id of the recipe. | 
 **includeNutrition** | **Boolean**| Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getRecipeInformationBulk

> Object getRecipeInformationBulk(ids, opts)

Get Recipe Information Bulk

Get information about multiple recipes at once. This is equivalent to calling the Get Recipe Information endpoint multiple times, but faster.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let ids = 715538,716429; // String | A comma-separated list of recipe ids.
let opts = {
  'includeNutrition': false // Boolean | Include nutrition data to the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings.
};
apiInstance.getRecipeInformationBulk(ids, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | **String**| A comma-separated list of recipe ids. | 
 **includeNutrition** | **Boolean**| Include nutrition data to the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getRecipeIngredientsByID

> Object getRecipeIngredientsByID(id)

Get Recipe Ingredients by ID

Get a recipe&#39;s ingredient list.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let id = 1003464; // Number | The recipe id.
apiInstance.getRecipeIngredientsByID(id, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Number**| The recipe id. | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getRecipeNutritionWidgetByID

> Object getRecipeNutritionWidgetByID(id)

Get Recipe Nutrition Widget by ID

Get a recipe&#39;s nutrition widget data.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let id = 1003464; // Number | The recipe id.
apiInstance.getRecipeNutritionWidgetByID(id, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Number**| The recipe id. | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getRecipePriceBreakdownByID

> Object getRecipePriceBreakdownByID(id)

Get Recipe Price Breakdown by ID

Get a recipe&#39;s price breakdown data.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let id = 1003464; // Number | The recipe id.
apiInstance.getRecipePriceBreakdownByID(id, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Number**| The recipe id. | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getShoppingList

> Object getShoppingList(username, hash)

Get Shopping List

Get the current shopping list for the given user.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let username = dsky; // String | The username.
let hash = 4b5v4398573406; // String | The private hash for the username.
apiInstance.getShoppingList(username, hash, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | 
 **hash** | **String**| The private hash for the username. | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getSimilarRecipes

> Object getSimilarRecipes(id, opts)

Get Similar Recipes

Find recipes which are similar to the given one.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let id = 715538; // Number | The id of the source recipe for which similar recipes should be found.
let opts = {
  '_number': 1, // Number | The number of random recipes to be returned (between 1 and 100).
  'limitLicense': true // Boolean | Whether the recipes should have an open license that allows display with proper attribution.
};
apiInstance.getSimilarRecipes(id, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Number**| The id of the source recipe for which similar recipes should be found. | 
 **_number** | **Number**| The number of random recipes to be returned (between 1 and 100). | [optional] 
 **limitLicense** | **Boolean**| Whether the recipes should have an open license that allows display with proper attribution. | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getWineDescription

> Object getWineDescription(wine)

Get Wine Description

Get a simple description of a certain wine, e.g. \&quot;malbec\&quot;, \&quot;riesling\&quot;, or \&quot;merlot\&quot;.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let wine = merlot; // String | The name of the wine that should be paired, e.g. \"merlot\", \"riesling\", or \"malbec\".
apiInstance.getWineDescription(wine, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wine** | **String**| The name of the wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;. | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getWinePairing

> Object getWinePairing(food, opts)

Get Wine Pairing

Find a wine that goes well with a food. Food can be a dish name (\&quot;steak\&quot;), an ingredient name (\&quot;salmon\&quot;), or a cuisine (\&quot;italian\&quot;).

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let food = steak; // String | The food to get a pairing for. This can be a dish (\"steak\"), an ingredient (\"salmon\"), or a cuisine (\"italian\").
let opts = {
  'maxPrice': 50 // Number | The maximum price for the specific wine recommendation in USD.
};
apiInstance.getWinePairing(food, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **food** | **String**| The food to get a pairing for. This can be a dish (\&quot;steak\&quot;), an ingredient (\&quot;salmon\&quot;), or a cuisine (\&quot;italian\&quot;). | 
 **maxPrice** | **Number**| The maximum price for the specific wine recommendation in USD. | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getWineRecommendation

> Object getWineRecommendation(wine, opts)

Get Wine Recommendation

Get a specific wine recommendation (concrete product) for a given wine type, e.g. \&quot;merlot\&quot;.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let wine = merlot; // String | The type of wine to get a specific product recommendation for.
let opts = {
  'maxPrice': 50, // Number | The maximum price for the specific wine recommendation in USD.
  'minRating': 0.7, // Number | The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars.
  '_number': 3 // Number | The number of wine recommendations expected (between 1 and 100).
};
apiInstance.getWineRecommendation(wine, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wine** | **String**| The type of wine to get a specific product recommendation for. | 
 **maxPrice** | **Number**| The maximum price for the specific wine recommendation in USD. | [optional] 
 **minRating** | **Number**| The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars. | [optional] 
 **_number** | **Number**| The number of wine recommendations expected (between 1 and 100). | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## guessNutritionByDishName

> Object guessNutritionByDishName(title)

Guess Nutrition by Dish Name

Estimate the macronutrients of a dish based on its title.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let title = Spaghetti Aglio et Olio; // String | The title of the dish.
apiInstance.guessNutritionByDishName(title, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **String**| The title of the dish. | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## imageAnalysisByURL

> Object imageAnalysisByURL(imageUrl)

Image Analysis by URL

Analyze a food image. The API tries to classify the image, guess the nutrition, and find a matching recipes. You can play around with that endpoint!

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let imageUrl = https://spoonacular.com/recipeImages/635350-240x150.jpg; // String | The URL of the image to be analyzed.
apiInstance.imageAnalysisByURL(imageUrl, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imageUrl** | **String**| The URL of the image to be analyzed. | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## imageClassificationByURL

> Object imageClassificationByURL(imageUrl)

Image Classification by URL

Classify a food image. You can play around with that endpoint!

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let imageUrl = https://spoonacular.com/recipeImages/635350-240x150.jpg; // String | The URL of the image to be classified.
apiInstance.imageClassificationByURL(imageUrl, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imageUrl** | **String**| The URL of the image to be classified. | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## mapIngredientsToGroceryProducts

> Object mapIngredientsToGroceryProducts(body)

Map Ingredients to Grocery Products

Map a set of ingredients to products you can buy in the grocery store.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let body = null; // Object | 
apiInstance.mapIngredientsToGroceryProducts(body, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **Object**|  | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## parseIngredients

> Object parseIngredients(ingredientList, servings, opts)

Parse Ingredients

Extract an ingredient from plain text.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let ingredientList = "ingredientList_example"; // String | The ingredient list of the recipe, one ingredient per line.
let servings = 3.4; // Number | The number of servings that you can make from the ingredients.
let opts = {
  'includeNutrition': true // Boolean | Whether nutrition data should be added to correctly parsed ingredients.
};
apiInstance.parseIngredients(ingredientList, servings, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredientList** | **String**| The ingredient list of the recipe, one ingredient per line. | 
 **servings** | **Number**| The number of servings that you can make from the ingredients. | 
 **includeNutrition** | **Boolean**| Whether nutrition data should be added to correctly parsed ingredients. | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## quickAnswer

> Object quickAnswer(q)

Quick Answer

Answer a nutrition related natural language question.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let q = How much vitamin c is in 2 apples?; // String | The nutrition related question.
apiInstance.quickAnswer(q, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| The nutrition related question. | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## searchCustomFoods

> Object searchCustomFoods(query, username, hash, opts)

Search Custom Foods

Search custom foods in a user&#39;s account.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let query = brat; // String | The search query.
let username = dsky; // String | The username.
let hash = 4b5v4398573406; // String | The private hash for the username.
let opts = {
  'offset': 0, // Number | The number of results to skip (between 0 and 990).
  '_number': 10 // Number | The number of expected results (between 1 and 100).
};
apiInstance.searchCustomFoods(query, username, hash, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The search query. | 
 **username** | **String**| The username. | 
 **hash** | **String**| The private hash for the username. | 
 **offset** | **Number**| The number of results to skip (between 0 and 990). | [optional] 
 **_number** | **Number**| The number of expected results (between 1 and 100). | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## searchFoodVideos

> Object searchFoodVideos(query, opts)

Search Food Videos

Find recipe and other food related videos.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let query = chicken soup; // String | The search query.
let opts = {
  'type': main course, // String | The type of the recipes. See a full list of supported meal types.
  'cuisine': italian, // String | The cuisine(s) of the recipes. One or more, comma separated. See a full list of supported cuisines.
  'diet': vegetarian, // String | The diet for which the recipes must be suitable. See a full list of supported diets.
  'includeIngredients': tomato,cheese, // String | A comma-separated list of ingredients that the recipes should contain.
  'excludeIngredients': eggs, // String | A comma-separated list of ingredients or ingredient types that the recipes must not contain.
  'minLength': 0, // Number | Minimum video length in seconds.
  'maxLength': 999, // Number | Maximum video length in seconds.
  'offset': 0, // Number | The number of results to skip (between 0 and 900).
  '_number': 10 // Number | The number of results to return (between 1 and 100).
};
apiInstance.searchFoodVideos(query, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The search query. | 
 **type** | **String**| The type of the recipes. See a full list of supported meal types. | [optional] 
 **cuisine** | **String**| The cuisine(s) of the recipes. One or more, comma separated. See a full list of supported cuisines. | [optional] 
 **diet** | **String**| The diet for which the recipes must be suitable. See a full list of supported diets. | [optional] 
 **includeIngredients** | **String**| A comma-separated list of ingredients that the recipes should contain. | [optional] 
 **excludeIngredients** | **String**| A comma-separated list of ingredients or ingredient types that the recipes must not contain. | [optional] 
 **minLength** | **Number**| Minimum video length in seconds. | [optional] 
 **maxLength** | **Number**| Maximum video length in seconds. | [optional] 
 **offset** | **Number**| The number of results to skip (between 0 and 900). | [optional] 
 **_number** | **Number**| The number of results to return (between 1 and 100). | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## searchGroceryProducts

> Object searchGroceryProducts(query, opts)

Search Grocery Products

Search packaged food products, such as frozen pizza or Greek yogurt.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let query = greek yogurt; // String | The search query.
let opts = {
  'minCalories': 50, // Number | The minimum amount of calories the product must have.
  'maxCalories': 800, // Number | The maximum amount of calories the product can have.
  'minCarbs': 10, // Number | The minimum amount of carbohydrates in grams the product must have.
  'maxCarbs': 100, // Number | The maximum amount of carbohydrates in grams the product can have.
  'minProtein': 10, // Number | The minimum amount of protein in grams the product must have.
  'maxProtein': 100, // Number | The maximum amount of protein in grams the product can have.
  'minFat': 1, // Number | The minimum amount of fat in grams the product must have.
  'maxFat': 100, // Number | The maximum amount of fat in grams the product can have.
  'offset': 0, // Number | The number of results to skip (between 0 and 990).
  '_number': 10 // Number | The number of expected results (between 1 and 100).
};
apiInstance.searchGroceryProducts(query, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The search query. | 
 **minCalories** | **Number**| The minimum amount of calories the product must have. | [optional] 
 **maxCalories** | **Number**| The maximum amount of calories the product can have. | [optional] 
 **minCarbs** | **Number**| The minimum amount of carbohydrates in grams the product must have. | [optional] 
 **maxCarbs** | **Number**| The maximum amount of carbohydrates in grams the product can have. | [optional] 
 **minProtein** | **Number**| The minimum amount of protein in grams the product must have. | [optional] 
 **maxProtein** | **Number**| The maximum amount of protein in grams the product can have. | [optional] 
 **minFat** | **Number**| The minimum amount of fat in grams the product must have. | [optional] 
 **maxFat** | **Number**| The maximum amount of fat in grams the product can have. | [optional] 
 **offset** | **Number**| The number of results to skip (between 0 and 990). | [optional] 
 **_number** | **Number**| The number of expected results (between 1 and 100). | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## searchGroceryProductsByUPC

> Object searchGroceryProductsByUPC(upc)

Search Grocery Products by UPC

Get information about a packaged food using its UPC.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let upc = 41631000564; // Number | The product's UPC.
apiInstance.searchGroceryProductsByUPC(upc, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **upc** | **Number**| The product&#39;s UPC. | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## searchMenuItems

> Object searchMenuItems(query, opts)

Search Menu Items

Search over 115,000 menu items from over 800 fast food and chain restaurants. For example, McDonald&#39;s Big Mac or Starbucks Mocha.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let query = snickers; // String | The search query.
let opts = {
  'minCalories': 50, // Number | The minimum amount of calories the menu item must have.
  'maxCalories': 800, // Number | The maximum amount of calories the menu item can have.
  'minCarbs': 10, // Number | The minimum amount of carbohydrates in grams the menu item must have.
  'maxCarbs': 100, // Number | The maximum amount of carbohydrates in grams the menu item can have.
  'minProtein': 10, // Number | The minimum amount of protein in grams the menu item must have.
  'maxProtein': 100, // Number | The maximum amount of protein in grams the menu item can have.
  'minFat': 1, // Number | The minimum amount of fat in grams the menu item must have.
  'maxFat': 100, // Number | The maximum amount of fat in grams the menu item can have.
  'offset': 0, // Number | The offset number for paging (between 0 and 990).
  '_number': 100 // Number | The number of expected results (between 1 and 10).
};
apiInstance.searchMenuItems(query, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The search query. | 
 **minCalories** | **Number**| The minimum amount of calories the menu item must have. | [optional] 
 **maxCalories** | **Number**| The maximum amount of calories the menu item can have. | [optional] 
 **minCarbs** | **Number**| The minimum amount of carbohydrates in grams the menu item must have. | [optional] 
 **maxCarbs** | **Number**| The maximum amount of carbohydrates in grams the menu item can have. | [optional] 
 **minProtein** | **Number**| The minimum amount of protein in grams the menu item must have. | [optional] 
 **maxProtein** | **Number**| The maximum amount of protein in grams the menu item can have. | [optional] 
 **minFat** | **Number**| The minimum amount of fat in grams the menu item must have. | [optional] 
 **maxFat** | **Number**| The maximum amount of fat in grams the menu item can have. | [optional] 
 **offset** | **Number**| The offset number for paging (between 0 and 990). | [optional] 
 **_number** | **Number**| The number of expected results (between 1 and 10). | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## searchRecipes

> Object searchRecipes(query, opts)

Search Recipes

Our recipe API includes over 360,000 recipes as well as an open source recipe database. Consider using the \&quot;Search Recipes Complex\&quot; endpoint for much more flexibility.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let query = burger; // String | The (natural language) recipe search query.
let opts = {
  'cuisine': italian, // String | The cuisine(s) of the recipes. One or more comma separated. See a full list of supported cuisines.
  'diet': vegetarian, // String | The diet for which the recipes must be suitable. See a full list of supported diets.
  'excludeIngredients': eggs, // String | A comma-separated list of ingredients or ingredient types that the recipes must not contain.
  'intolerances': gluten, // String | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. Please note: due to the automatic nature of the recipe analysis, the API cannot be 100% accurate in all cases. Please advise your users to seek professional help with medical issues.
  'offset': 0, // Number | The number of results to skip (between 0 and 900).
  '_number': 10, // Number | The number of results to return (between 1 and 100).
  'limitLicense': true, // Boolean | Whether the recipes should have an open license that allows display with proper attribution.
  'instructionsRequired': true // Boolean | Whether the recipes must have instructions.
};
apiInstance.searchRecipes(query, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The (natural language) recipe search query. | 
 **cuisine** | **String**| The cuisine(s) of the recipes. One or more comma separated. See a full list of supported cuisines. | [optional] 
 **diet** | **String**| The diet for which the recipes must be suitable. See a full list of supported diets. | [optional] 
 **excludeIngredients** | **String**| A comma-separated list of ingredients or ingredient types that the recipes must not contain. | [optional] 
 **intolerances** | **String**| A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. Please note: due to the automatic nature of the recipe analysis, the API cannot be 100% accurate in all cases. Please advise your users to seek professional help with medical issues. | [optional] 
 **offset** | **Number**| The number of results to skip (between 0 and 900). | [optional] 
 **_number** | **Number**| The number of results to return (between 1 and 100). | [optional] 
 **limitLicense** | **Boolean**| Whether the recipes should have an open license that allows display with proper attribution. | [optional] 
 **instructionsRequired** | **Boolean**| Whether the recipes must have instructions. | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## searchRecipesByIngredients

> Object searchRecipesByIngredients(ingredients, opts)

Search Recipes by Ingredients

             Ever wondered what recipes you can cook with the ingredients you have in your fridge or pantry? This endpoint lets you find recipes that either maximize the usage of ingredients you have at hand (pre shopping) or minimize the ingredients that you don&#39;t currently have (post shopping).         

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let ingredients = apples,flour,sugar; // String | A comma-separated list of ingredients that the recipes should contain.
let opts = {
  '_number': 10, // Number | The maximum number of recipes to return (between 1 and 100). Defaults to 10.
  'limitLicense': true, // Boolean | Whether the recipes should have an open license that allows display with proper attribution.
  'ranking': 1, // Number | Whether to maximize used ingredients (1) or minimize missing ingredients (2) first.
  'ignorePantry': true // Boolean | Whether to ignore typical pantry items, such as water, salt, flour, etc.
};
apiInstance.searchRecipesByIngredients(ingredients, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredients** | **String**| A comma-separated list of ingredients that the recipes should contain. | 
 **_number** | **Number**| The maximum number of recipes to return (between 1 and 100). Defaults to 10. | [optional] 
 **limitLicense** | **Boolean**| Whether the recipes should have an open license that allows display with proper attribution. | [optional] 
 **ranking** | **Number**| Whether to maximize used ingredients (1) or minimize missing ingredients (2) first. | [optional] 
 **ignorePantry** | **Boolean**| Whether to ignore typical pantry items, such as water, salt, flour, etc. | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## searchRecipesByNutrients

> Object searchRecipesByNutrients(opts)

Search Recipes by Nutrients

Find a set of recipes that adhere to the given nutritional limits. You may set limits for macronutrients (calories, protein, fat, and carbohydrate) and/or many micronutrients.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let opts = {
  'minCarbs': 10, // Number | The minimum amount of carbohydrates in grams the recipe must have.
  'maxCarbs': 100, // Number | The maximum amount of carbohydrates in grams the recipe can have.
  'minProtein': 10, // Number | The minimum amount of protein in grams the recipe must have.
  'maxProtein': 100, // Number | The maximum amount of protein in grams the recipe can have.
  'minCalories': 50, // Number | The minimum amount of calories the recipe must have.
  'maxCalories': 800, // Number | The maximum amount of calories the recipe can have.
  'minFat': 1, // Number | The minimum amount of fat in grams the recipe must have.
  'maxFat': 100, // Number | The maximum amount of fat in grams the recipe can have.
  'minAlcohol': 0, // Number | The minimum amount of alcohol in grams the recipe must have.
  'maxAlcohol': 100, // Number | The maximum amount of alcohol in grams the recipe can have.
  'minCaffeine': 0, // Number | The minimum amount of caffeine in milligrams the recipe must have.
  'maxCaffeine': 100, // Number | The maximum amount of caffeine in milligrams the recipe can have.
  'minCopper': 0, // Number | The minimum amount of copper in milligrams the recipe must have.
  'maxCopper': 100, // Number | The maximum amount of copper in milligrams the recipe can have.
  'minCalcium': 0, // Number | The minimum amount of calcium in milligrams the recipe must have.
  'maxCalcium': 100, // Number | The maximum amount of calcium in milligrams the recipe can have.
  'minCholine': 0, // Number | The minimum amount of choline in milligrams the recipe must have.
  'maxCholine': 100, // Number | The maximum amount of choline in milligrams the recipe can have.
  'minCholesterol': 0, // Number | The minimum amount of cholesterol in milligrams the recipe must have.
  'maxCholesterol': 100, // Number | The maximum amount of cholesterol in milligrams the recipe can have.
  'minFluoride': 0, // Number | The minimum amount of fluoride in milligrams the recipe must have.
  'maxFluoride': 100, // Number | The maximum amount of fluoride in milligrams the recipe can have.
  'minSaturatedFat': 0, // Number | The minimum amount of saturated fat in grams the recipe must have.
  'maxSaturatedFat': 100, // Number | The maximum amount of saturated fat in grams the recipe can have.
  'minVitaminA': 0, // Number | The minimum amount of Vitamin A in IU the recipe must have.
  'maxVitaminA': 100, // Number | The maximum amount of Vitamin A in IU the recipe can have.
  'minVitaminC': 0, // Number | The minimum amount of Vitamin C in milligrams the recipe must have.
  'maxVitaminC': 100, // Number | The maximum amount of Vitamin C in milligrams the recipe can have.
  'minVitaminD': 0, // Number | The minimum amount of Vitamin D in micrograms the recipe must have.
  'maxVitaminD': 100, // Number | The maximum amount of Vitamin D in micrograms the recipe can have.
  'minVitaminE': 0, // Number | The minimum amount of Vitamin E in milligrams the recipe must have.
  'maxVitaminE': 100, // Number | The maximum amount of Vitamin E in milligrams the recipe can have.
  'minVitaminK': 0, // Number | The minimum amount of Vitamin K in micrograms the recipe must have.
  'maxVitaminK': 100, // Number | The maximum amount of Vitamin K in micrograms the recipe can have.
  'minVitaminB1': 0, // Number | The minimum amount of Vitamin B1 in milligrams the recipe must have.
  'maxVitaminB1': 100, // Number | The maximum amount of Vitamin B1 in milligrams the recipe can have.
  'minVitaminB2': 0, // Number | The minimum amount of Vitamin B2 in milligrams the recipe must have.
  'maxVitaminB2': 100, // Number | The maximum amount of Vitamin B2 in milligrams the recipe can have.
  'minVitaminB5': 0, // Number | The minimum amount of Vitamin B5 in milligrams the recipe must have.
  'maxVitaminB5': 100, // Number | The maximum amount of Vitamin B5 in milligrams the recipe can have.
  'minVitaminB3': 0, // Number | The minimum amount of Vitamin B3 in milligrams the recipe must have.
  'maxVitaminB3': 100, // Number | The maximum amount of Vitamin B3 in milligrams the recipe can have.
  'minVitaminB6': 0, // Number | The minimum amount of Vitamin B6 in milligrams the recipe must have.
  'maxVitaminB6': 100, // Number | The maximum amount of Vitamin B6 in milligrams the recipe can have.
  'minVitaminB12': 0, // Number | The minimum amount of Vitamin B12 in micrograms the recipe must have.
  'maxVitaminB12': 100, // Number | The maximum amount of Vitamin B12 in micrograms the recipe can have.
  'minFiber': 0, // Number | The minimum amount of fiber in grams the recipe must have.
  'maxFiber': 100, // Number | The maximum amount of fiber in grams the recipe can have.
  'minFolate': 0, // Number | The minimum amount of folate in grams the recipe must have.
  'maxFolate': 100, // Number | The maximum amount of folate in grams the recipe can have.
  'minFolicAcid': 0, // Number | The minimum amount of folic acid in grams the recipe must have.
  'maxFolicAcid': 100, // Number | The maximum amount of folic acid in grams the recipe can have.
  'minIodine': 0, // Number | The minimum amount of iodine in grams the recipe must have.
  'maxIodine': 100, // Number | The maximum amount of iodine in grams the recipe can have.
  'minIron': 0, // Number | The minimum amount of iron in milligrams the recipe must have.
  'maxIron': 100, // Number | The maximum amount of iron in milligrams the recipe can have.
  'minMagnesium': 0, // Number | The minimum amount of magnesium in milligrams the recipe must have.
  'maxMagnesium': 100, // Number | The maximum amount of magnesium in milligrams the recipe can have.
  'minManganese': 0, // Number | The minimum amount of manganese in milligrams the recipe must have.
  'maxManganese': 100, // Number | The maximum amount of manganese in milligrams the recipe can have.
  'minPhosphorus': 0, // Number | The minimum amount of phosphorus in milligrams the recipe must have.
  'maxPhosphorus': 100, // Number | The maximum amount of phosphorus in milligrams the recipe can have.
  'minPotassium': 0, // Number | The minimum amount of potassium in milligrams the recipe must have.
  'maxPotassium': 100, // Number | The maximum amount of potassium in milligrams the recipe can have.
  'minSelenium': 0, // Number | The minimum amount of selenium in grams the recipe must have.
  'maxSelenium': 100, // Number | The maximum amount of selenium in grams the recipe can have.
  'minSodium': 0, // Number | The minimum amount of sodium in milligrams the recipe must have.
  'maxSodium': 100, // Number | The maximum amount of sodium in milligrams the recipe can have.
  'minSugar': 0, // Number | The minimum amount of sugar in grams the recipe must have.
  'maxSugar': 100, // Number | The maximum amount of sugar in grams the recipe can have.
  'minZinc': 0, // Number | The minimum amount of zinc in milligrams the recipe must have.
  'maxZinc': 100, // Number | The maximum amount of zinc in milligrams the recipe can have.
  'offset': 0, // Number | The number of results to skip (between 0 and 900).
  '_number': 10, // Number | The number of expected results (between 1 and 100).
  'random': false, // Boolean | If true, every request will give you a random set of recipes within the requested limits.
  'limitLicense': true // Boolean | Whether the recipes should have an open license that allows display with proper attribution.
};
apiInstance.searchRecipesByNutrients(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **minCarbs** | **Number**| The minimum amount of carbohydrates in grams the recipe must have. | [optional] 
 **maxCarbs** | **Number**| The maximum amount of carbohydrates in grams the recipe can have. | [optional] 
 **minProtein** | **Number**| The minimum amount of protein in grams the recipe must have. | [optional] 
 **maxProtein** | **Number**| The maximum amount of protein in grams the recipe can have. | [optional] 
 **minCalories** | **Number**| The minimum amount of calories the recipe must have. | [optional] 
 **maxCalories** | **Number**| The maximum amount of calories the recipe can have. | [optional] 
 **minFat** | **Number**| The minimum amount of fat in grams the recipe must have. | [optional] 
 **maxFat** | **Number**| The maximum amount of fat in grams the recipe can have. | [optional] 
 **minAlcohol** | **Number**| The minimum amount of alcohol in grams the recipe must have. | [optional] 
 **maxAlcohol** | **Number**| The maximum amount of alcohol in grams the recipe can have. | [optional] 
 **minCaffeine** | **Number**| The minimum amount of caffeine in milligrams the recipe must have. | [optional] 
 **maxCaffeine** | **Number**| The maximum amount of caffeine in milligrams the recipe can have. | [optional] 
 **minCopper** | **Number**| The minimum amount of copper in milligrams the recipe must have. | [optional] 
 **maxCopper** | **Number**| The maximum amount of copper in milligrams the recipe can have. | [optional] 
 **minCalcium** | **Number**| The minimum amount of calcium in milligrams the recipe must have. | [optional] 
 **maxCalcium** | **Number**| The maximum amount of calcium in milligrams the recipe can have. | [optional] 
 **minCholine** | **Number**| The minimum amount of choline in milligrams the recipe must have. | [optional] 
 **maxCholine** | **Number**| The maximum amount of choline in milligrams the recipe can have. | [optional] 
 **minCholesterol** | **Number**| The minimum amount of cholesterol in milligrams the recipe must have. | [optional] 
 **maxCholesterol** | **Number**| The maximum amount of cholesterol in milligrams the recipe can have. | [optional] 
 **minFluoride** | **Number**| The minimum amount of fluoride in milligrams the recipe must have. | [optional] 
 **maxFluoride** | **Number**| The maximum amount of fluoride in milligrams the recipe can have. | [optional] 
 **minSaturatedFat** | **Number**| The minimum amount of saturated fat in grams the recipe must have. | [optional] 
 **maxSaturatedFat** | **Number**| The maximum amount of saturated fat in grams the recipe can have. | [optional] 
 **minVitaminA** | **Number**| The minimum amount of Vitamin A in IU the recipe must have. | [optional] 
 **maxVitaminA** | **Number**| The maximum amount of Vitamin A in IU the recipe can have. | [optional] 
 **minVitaminC** | **Number**| The minimum amount of Vitamin C in milligrams the recipe must have. | [optional] 
 **maxVitaminC** | **Number**| The maximum amount of Vitamin C in milligrams the recipe can have. | [optional] 
 **minVitaminD** | **Number**| The minimum amount of Vitamin D in micrograms the recipe must have. | [optional] 
 **maxVitaminD** | **Number**| The maximum amount of Vitamin D in micrograms the recipe can have. | [optional] 
 **minVitaminE** | **Number**| The minimum amount of Vitamin E in milligrams the recipe must have. | [optional] 
 **maxVitaminE** | **Number**| The maximum amount of Vitamin E in milligrams the recipe can have. | [optional] 
 **minVitaminK** | **Number**| The minimum amount of Vitamin K in micrograms the recipe must have. | [optional] 
 **maxVitaminK** | **Number**| The maximum amount of Vitamin K in micrograms the recipe can have. | [optional] 
 **minVitaminB1** | **Number**| The minimum amount of Vitamin B1 in milligrams the recipe must have. | [optional] 
 **maxVitaminB1** | **Number**| The maximum amount of Vitamin B1 in milligrams the recipe can have. | [optional] 
 **minVitaminB2** | **Number**| The minimum amount of Vitamin B2 in milligrams the recipe must have. | [optional] 
 **maxVitaminB2** | **Number**| The maximum amount of Vitamin B2 in milligrams the recipe can have. | [optional] 
 **minVitaminB5** | **Number**| The minimum amount of Vitamin B5 in milligrams the recipe must have. | [optional] 
 **maxVitaminB5** | **Number**| The maximum amount of Vitamin B5 in milligrams the recipe can have. | [optional] 
 **minVitaminB3** | **Number**| The minimum amount of Vitamin B3 in milligrams the recipe must have. | [optional] 
 **maxVitaminB3** | **Number**| The maximum amount of Vitamin B3 in milligrams the recipe can have. | [optional] 
 **minVitaminB6** | **Number**| The minimum amount of Vitamin B6 in milligrams the recipe must have. | [optional] 
 **maxVitaminB6** | **Number**| The maximum amount of Vitamin B6 in milligrams the recipe can have. | [optional] 
 **minVitaminB12** | **Number**| The minimum amount of Vitamin B12 in micrograms the recipe must have. | [optional] 
 **maxVitaminB12** | **Number**| The maximum amount of Vitamin B12 in micrograms the recipe can have. | [optional] 
 **minFiber** | **Number**| The minimum amount of fiber in grams the recipe must have. | [optional] 
 **maxFiber** | **Number**| The maximum amount of fiber in grams the recipe can have. | [optional] 
 **minFolate** | **Number**| The minimum amount of folate in grams the recipe must have. | [optional] 
 **maxFolate** | **Number**| The maximum amount of folate in grams the recipe can have. | [optional] 
 **minFolicAcid** | **Number**| The minimum amount of folic acid in grams the recipe must have. | [optional] 
 **maxFolicAcid** | **Number**| The maximum amount of folic acid in grams the recipe can have. | [optional] 
 **minIodine** | **Number**| The minimum amount of iodine in grams the recipe must have. | [optional] 
 **maxIodine** | **Number**| The maximum amount of iodine in grams the recipe can have. | [optional] 
 **minIron** | **Number**| The minimum amount of iron in milligrams the recipe must have. | [optional] 
 **maxIron** | **Number**| The maximum amount of iron in milligrams the recipe can have. | [optional] 
 **minMagnesium** | **Number**| The minimum amount of magnesium in milligrams the recipe must have. | [optional] 
 **maxMagnesium** | **Number**| The maximum amount of magnesium in milligrams the recipe can have. | [optional] 
 **minManganese** | **Number**| The minimum amount of manganese in milligrams the recipe must have. | [optional] 
 **maxManganese** | **Number**| The maximum amount of manganese in milligrams the recipe can have. | [optional] 
 **minPhosphorus** | **Number**| The minimum amount of phosphorus in milligrams the recipe must have. | [optional] 
 **maxPhosphorus** | **Number**| The maximum amount of phosphorus in milligrams the recipe can have. | [optional] 
 **minPotassium** | **Number**| The minimum amount of potassium in milligrams the recipe must have. | [optional] 
 **maxPotassium** | **Number**| The maximum amount of potassium in milligrams the recipe can have. | [optional] 
 **minSelenium** | **Number**| The minimum amount of selenium in grams the recipe must have. | [optional] 
 **maxSelenium** | **Number**| The maximum amount of selenium in grams the recipe can have. | [optional] 
 **minSodium** | **Number**| The minimum amount of sodium in milligrams the recipe must have. | [optional] 
 **maxSodium** | **Number**| The maximum amount of sodium in milligrams the recipe can have. | [optional] 
 **minSugar** | **Number**| The minimum amount of sugar in grams the recipe must have. | [optional] 
 **maxSugar** | **Number**| The maximum amount of sugar in grams the recipe can have. | [optional] 
 **minZinc** | **Number**| The minimum amount of zinc in milligrams the recipe must have. | [optional] 
 **maxZinc** | **Number**| The maximum amount of zinc in milligrams the recipe can have. | [optional] 
 **offset** | **Number**| The number of results to skip (between 0 and 900). | [optional] 
 **_number** | **Number**| The number of expected results (between 1 and 100). | [optional] 
 **random** | **Boolean**| If true, every request will give you a random set of recipes within the requested limits. | [optional] 
 **limitLicense** | **Boolean**| Whether the recipes should have an open license that allows display with proper attribution. | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## searchRecipesComplex

> Object searchRecipesComplex(query, opts)

Search Recipes Complex

Search through hundreds of thousands of recipes using advanced filtering and ranking. NOTE: This method combines searching by query, by ingredients, and by nutrients into one endpoint.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let query = pasta; // String | The (natural language) recipe search query.
let opts = {
  'cuisine': italian, // String | The cuisine(s) of the recipes. One or more, comma separated (will be interpreted as 'OR'). See a full list of supported cuisines.
  'excludeCuisine': greek, // String | The cuisine(s) the recipes must not match. One or more, comma separated (will be interpreted as 'AND'). See a full list of supported cuisines.
  'diet': vegetarian, // String | The diet for which the recipes must be suitable. See a full list of supported diets.
  'intolerances': gluten, // String | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.
  'equipment': pan, // String | The equipment required. Multiple values will be interpreted as 'or'. For example, value could be \"blender, frying pan, bowl\".
  'includeIngredients': tomato,cheese, // String | A comma-separated list of ingredients that should/must be used in the recipes.
  'excludeIngredients': eggs, // String | A comma-separated list of ingredients or ingredient types that the recipes must not contain.
  'type': main course, // String | The type of recipe. See a full list of supported meal types.
  'instructionsRequired': true, // Boolean | Whether the recipes must have instructions.
  'fillIngredients': false, // Boolean | Add information about the ingredients and whether they are used or missing in relation to the query.
  'addRecipeInformation': false, // Boolean | If set to true, you get more information about the recipes returned.
  'addRecipeNutrition': false, // Boolean | If set to true, you get nutritional information about each recipes returned.
  'author': coffeebean, // String | The username of the recipe author.
  'tags': myCustomTag, // String | User defined tags that have to match. The author param has to be set.
  'recipeBoxId': 2468, // Number | The id of the recipe box to which the search should be limited to.
  'titleMatch': Crock Pot, // String | Enter text that must be found in the title of the recipes.
  'maxReadyTime': 20, // Number | The maximum time in minutes it should take to prepare and cook the recipe.
  'ignorePantry': true, // Boolean | Whether to ignore typical pantry items, such as water, salt, flour, etc.
  'sort': calories, // String | The strategy to sort recipes by. See a full list of supported sorting options.
  'sortDirection': asc, // String | The direction in which to sort. Must be either 'asc' (ascending) or 'desc' (descending).
  'minCarbs': 10, // Number | The minimum amount of carbohydrates in grams the recipe must have.
  'maxCarbs': 100, // Number | The maximum amount of carbohydrates in grams the recipe can have.
  'minProtein': 10, // Number | The minimum amount of protein in grams the recipe must have.
  'maxProtein': 100, // Number | The maximum amount of protein in grams the recipe can have.
  'minCalories': 50, // Number | The minimum amount of calories the recipe must have.
  'maxCalories': 800, // Number | The maximum amount of calories the recipe can have.
  'minFat': 1, // Number | The minimum amount of fat in grams the recipe must have.
  'maxFat': 100, // Number | The maximum amount of fat in grams the recipe can have.
  'minAlcohol': 0, // Number | The minimum amount of alcohol in grams the recipe must have.
  'maxAlcohol': 100, // Number | The maximum amount of alcohol in grams the recipe can have.
  'minCaffeine': 0, // Number | The minimum amount of caffeine in milligrams the recipe must have.
  'maxCaffeine': 100, // Number | The maximum amount of caffeine in milligrams the recipe can have.
  'minCopper': 0, // Number | The minimum amount of copper in milligrams the recipe must have.
  'maxCopper': 100, // Number | The maximum amount of copper in milligrams the recipe can have.
  'minCalcium': 0, // Number | The minimum amount of calcium in milligrams the recipe must have.
  'maxCalcium': 100, // Number | The maximum amount of calcium in milligrams the recipe can have.
  'minCholine': 0, // Number | The minimum amount of choline in milligrams the recipe must have.
  'maxCholine': 100, // Number | The maximum amount of choline in milligrams the recipe can have.
  'minCholesterol': 0, // Number | The minimum amount of cholesterol in milligrams the recipe must have.
  'maxCholesterol': 100, // Number | The maximum amount of cholesterol in milligrams the recipe can have.
  'minFluoride': 0, // Number | The minimum amount of fluoride in milligrams the recipe must have.
  'maxFluoride': 100, // Number | The maximum amount of fluoride in milligrams the recipe can have.
  'minSaturatedFat': 0, // Number | The minimum amount of saturated fat in grams the recipe must have.
  'maxSaturatedFat': 100, // Number | The maximum amount of saturated fat in grams the recipe can have.
  'minVitaminA': 0, // Number | The minimum amount of Vitamin A in IU the recipe must have.
  'maxVitaminA': 100, // Number | The maximum amount of Vitamin A in IU the recipe can have.
  'minVitaminC': 0, // Number | The minimum amount of Vitamin C milligrams the recipe must have.
  'maxVitaminC': 100, // Number | The maximum amount of Vitamin C in milligrams the recipe can have.
  'minVitaminD': 0, // Number | The minimum amount of Vitamin D in micrograms the recipe must have.
  'maxVitaminD': 100, // Number | The maximum amount of Vitamin D in micrograms the recipe can have.
  'minVitaminE': 0, // Number | The minimum amount of Vitamin E in milligrams the recipe must have.
  'maxVitaminE': 100, // Number | The maximum amount of Vitamin E in milligrams the recipe can have.
  'minVitaminK': 0, // Number | The minimum amount of Vitamin K in micrograms the recipe must have.
  'maxVitaminK': 100, // Number | The maximum amount of Vitamin K in micrograms the recipe can have.
  'minVitaminB1': 0, // Number | The minimum amount of Vitamin B1 in milligrams the recipe must have.
  'maxVitaminB1': 100, // Number | The maximum amount of Vitamin B1 in milligrams the recipe can have.
  'minVitaminB2': 0, // Number | The minimum amount of Vitamin B2 in milligrams the recipe must have.
  'maxVitaminB2': 100, // Number | The maximum amount of Vitamin B2 in milligrams the recipe can have.
  'minVitaminB5': 0, // Number | The minimum amount of Vitamin B5 in milligrams the recipe must have.
  'maxVitaminB5': 100, // Number | The maximum amount of Vitamin B5 in milligrams the recipe can have.
  'minVitaminB3': 0, // Number | The minimum amount of Vitamin B3 in milligrams the recipe must have.
  'maxVitaminB3': 100, // Number | The maximum amount of Vitamin B3 in milligrams the recipe can have.
  'minVitaminB6': 0, // Number | The minimum amount of Vitamin B6 in milligrams the recipe must have.
  'maxVitaminB6': 100, // Number | The maximum amount of Vitamin B6 in milligrams the recipe can have.
  'minVitaminB12': 0, // Number | The minimum amount of Vitamin B12 in micrograms the recipe must have.
  'maxVitaminB12': 100, // Number | The maximum amount of Vitamin B12 in micrograms the recipe can have.
  'minFiber': 0, // Number | The minimum amount of fiber in grams the recipe must have.
  'maxFiber': 100, // Number | The maximum amount of fiber in grams the recipe can have.
  'minFolate': 0, // Number | The minimum amount of folate in grams the recipe must have.
  'maxFolate': 100, // Number | The maximum amount of folate in grams the recipe can have.
  'minFolicAcid': 0, // Number | The minimum amount of folic acid in grams the recipe must have.
  'maxFolicAcid': 100, // Number | The maximum amount of folic acid in grams the recipe can have.
  'minIodine': 0, // Number | The minimum amount of iodine in grams the recipe must have.
  'maxIodine': 100, // Number | The maximum amount of iodine in grams the recipe can have.
  'minIron': 0, // Number | The minimum amount of iron in milligrams the recipe must have.
  'maxIron': 100, // Number | The maximum amount of iron in milligrams the recipe can have.
  'minMagnesium': 0, // Number | The minimum amount of magnesium in milligrams the recipe must have.
  'maxMagnesium': 100, // Number | The maximum amount of magnesium in milligrams the recipe can have.
  'minManganese': 0, // Number | The minimum amount of manganese in milligrams the recipe must have.
  'maxManganese': 100, // Number | The maximum amount of manganese in milligrams the recipe can have.
  'minPhosphorus': 0, // Number | The minimum amount of phosphorus in milligrams the recipe must have.
  'maxPhosphorus': 100, // Number | The maximum amount of phosphorus in milligrams the recipe can have.
  'minPotassium': 0, // Number | The minimum amount of potassium in milligrams the recipe must have.
  'maxPotassium': 100, // Number | The maximum amount of potassium in milligrams the recipe can have.
  'minSelenium': 0, // Number | The minimum amount of selenium in grams the recipe must have.
  'maxSelenium': 100, // Number | The maximum amount of selenium in grams the recipe can have.
  'minSodium': 0, // Number | The minimum amount of sodium in milligrams the recipe must have.
  'maxSodium': 100, // Number | The maximum amount of sodium in milligrams the recipe can have.
  'minSugar': 0, // Number | The minimum amount of sugar in grams the recipe must have.
  'maxSugar': 100, // Number | The maximum amount of sugar in grams the recipe can have.
  'minZinc': 0, // Number | The minimum amount of zinc in milligrams the recipe must have.
  'maxZinc': 100, // Number | The maximum amount of zinc in milligrams the recipe can have.
  'offset': 0, // Number | The number of results to skip (between 0 and 900).
  '_number': 10, // Number | The number of expected results (between 1 and 100).
  'limitLicense': true // Boolean | Whether the recipes should have an open license that allows display with proper attribution.
};
apiInstance.searchRecipesComplex(query, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The (natural language) recipe search query. | 
 **cuisine** | **String**| The cuisine(s) of the recipes. One or more, comma separated (will be interpreted as &#39;OR&#39;). See a full list of supported cuisines. | [optional] 
 **excludeCuisine** | **String**| The cuisine(s) the recipes must not match. One or more, comma separated (will be interpreted as &#39;AND&#39;). See a full list of supported cuisines. | [optional] 
 **diet** | **String**| The diet for which the recipes must be suitable. See a full list of supported diets. | [optional] 
 **intolerances** | **String**| A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. | [optional] 
 **equipment** | **String**| The equipment required. Multiple values will be interpreted as &#39;or&#39;. For example, value could be \&quot;blender, frying pan, bowl\&quot;. | [optional] 
 **includeIngredients** | **String**| A comma-separated list of ingredients that should/must be used in the recipes. | [optional] 
 **excludeIngredients** | **String**| A comma-separated list of ingredients or ingredient types that the recipes must not contain. | [optional] 
 **type** | **String**| The type of recipe. See a full list of supported meal types. | [optional] 
 **instructionsRequired** | **Boolean**| Whether the recipes must have instructions. | [optional] 
 **fillIngredients** | **Boolean**| Add information about the ingredients and whether they are used or missing in relation to the query. | [optional] 
 **addRecipeInformation** | **Boolean**| If set to true, you get more information about the recipes returned. | [optional] 
 **addRecipeNutrition** | **Boolean**| If set to true, you get nutritional information about each recipes returned. | [optional] 
 **author** | **String**| The username of the recipe author. | [optional] 
 **tags** | **String**| User defined tags that have to match. The author param has to be set. | [optional] 
 **recipeBoxId** | **Number**| The id of the recipe box to which the search should be limited to. | [optional] 
 **titleMatch** | **String**| Enter text that must be found in the title of the recipes. | [optional] 
 **maxReadyTime** | **Number**| The maximum time in minutes it should take to prepare and cook the recipe. | [optional] 
 **ignorePantry** | **Boolean**| Whether to ignore typical pantry items, such as water, salt, flour, etc. | [optional] 
 **sort** | **String**| The strategy to sort recipes by. See a full list of supported sorting options. | [optional] 
 **sortDirection** | **String**| The direction in which to sort. Must be either &#39;asc&#39; (ascending) or &#39;desc&#39; (descending). | [optional] 
 **minCarbs** | **Number**| The minimum amount of carbohydrates in grams the recipe must have. | [optional] 
 **maxCarbs** | **Number**| The maximum amount of carbohydrates in grams the recipe can have. | [optional] 
 **minProtein** | **Number**| The minimum amount of protein in grams the recipe must have. | [optional] 
 **maxProtein** | **Number**| The maximum amount of protein in grams the recipe can have. | [optional] 
 **minCalories** | **Number**| The minimum amount of calories the recipe must have. | [optional] 
 **maxCalories** | **Number**| The maximum amount of calories the recipe can have. | [optional] 
 **minFat** | **Number**| The minimum amount of fat in grams the recipe must have. | [optional] 
 **maxFat** | **Number**| The maximum amount of fat in grams the recipe can have. | [optional] 
 **minAlcohol** | **Number**| The minimum amount of alcohol in grams the recipe must have. | [optional] 
 **maxAlcohol** | **Number**| The maximum amount of alcohol in grams the recipe can have. | [optional] 
 **minCaffeine** | **Number**| The minimum amount of caffeine in milligrams the recipe must have. | [optional] 
 **maxCaffeine** | **Number**| The maximum amount of caffeine in milligrams the recipe can have. | [optional] 
 **minCopper** | **Number**| The minimum amount of copper in milligrams the recipe must have. | [optional] 
 **maxCopper** | **Number**| The maximum amount of copper in milligrams the recipe can have. | [optional] 
 **minCalcium** | **Number**| The minimum amount of calcium in milligrams the recipe must have. | [optional] 
 **maxCalcium** | **Number**| The maximum amount of calcium in milligrams the recipe can have. | [optional] 
 **minCholine** | **Number**| The minimum amount of choline in milligrams the recipe must have. | [optional] 
 **maxCholine** | **Number**| The maximum amount of choline in milligrams the recipe can have. | [optional] 
 **minCholesterol** | **Number**| The minimum amount of cholesterol in milligrams the recipe must have. | [optional] 
 **maxCholesterol** | **Number**| The maximum amount of cholesterol in milligrams the recipe can have. | [optional] 
 **minFluoride** | **Number**| The minimum amount of fluoride in milligrams the recipe must have. | [optional] 
 **maxFluoride** | **Number**| The maximum amount of fluoride in milligrams the recipe can have. | [optional] 
 **minSaturatedFat** | **Number**| The minimum amount of saturated fat in grams the recipe must have. | [optional] 
 **maxSaturatedFat** | **Number**| The maximum amount of saturated fat in grams the recipe can have. | [optional] 
 **minVitaminA** | **Number**| The minimum amount of Vitamin A in IU the recipe must have. | [optional] 
 **maxVitaminA** | **Number**| The maximum amount of Vitamin A in IU the recipe can have. | [optional] 
 **minVitaminC** | **Number**| The minimum amount of Vitamin C milligrams the recipe must have. | [optional] 
 **maxVitaminC** | **Number**| The maximum amount of Vitamin C in milligrams the recipe can have. | [optional] 
 **minVitaminD** | **Number**| The minimum amount of Vitamin D in micrograms the recipe must have. | [optional] 
 **maxVitaminD** | **Number**| The maximum amount of Vitamin D in micrograms the recipe can have. | [optional] 
 **minVitaminE** | **Number**| The minimum amount of Vitamin E in milligrams the recipe must have. | [optional] 
 **maxVitaminE** | **Number**| The maximum amount of Vitamin E in milligrams the recipe can have. | [optional] 
 **minVitaminK** | **Number**| The minimum amount of Vitamin K in micrograms the recipe must have. | [optional] 
 **maxVitaminK** | **Number**| The maximum amount of Vitamin K in micrograms the recipe can have. | [optional] 
 **minVitaminB1** | **Number**| The minimum amount of Vitamin B1 in milligrams the recipe must have. | [optional] 
 **maxVitaminB1** | **Number**| The maximum amount of Vitamin B1 in milligrams the recipe can have. | [optional] 
 **minVitaminB2** | **Number**| The minimum amount of Vitamin B2 in milligrams the recipe must have. | [optional] 
 **maxVitaminB2** | **Number**| The maximum amount of Vitamin B2 in milligrams the recipe can have. | [optional] 
 **minVitaminB5** | **Number**| The minimum amount of Vitamin B5 in milligrams the recipe must have. | [optional] 
 **maxVitaminB5** | **Number**| The maximum amount of Vitamin B5 in milligrams the recipe can have. | [optional] 
 **minVitaminB3** | **Number**| The minimum amount of Vitamin B3 in milligrams the recipe must have. | [optional] 
 **maxVitaminB3** | **Number**| The maximum amount of Vitamin B3 in milligrams the recipe can have. | [optional] 
 **minVitaminB6** | **Number**| The minimum amount of Vitamin B6 in milligrams the recipe must have. | [optional] 
 **maxVitaminB6** | **Number**| The maximum amount of Vitamin B6 in milligrams the recipe can have. | [optional] 
 **minVitaminB12** | **Number**| The minimum amount of Vitamin B12 in micrograms the recipe must have. | [optional] 
 **maxVitaminB12** | **Number**| The maximum amount of Vitamin B12 in micrograms the recipe can have. | [optional] 
 **minFiber** | **Number**| The minimum amount of fiber in grams the recipe must have. | [optional] 
 **maxFiber** | **Number**| The maximum amount of fiber in grams the recipe can have. | [optional] 
 **minFolate** | **Number**| The minimum amount of folate in grams the recipe must have. | [optional] 
 **maxFolate** | **Number**| The maximum amount of folate in grams the recipe can have. | [optional] 
 **minFolicAcid** | **Number**| The minimum amount of folic acid in grams the recipe must have. | [optional] 
 **maxFolicAcid** | **Number**| The maximum amount of folic acid in grams the recipe can have. | [optional] 
 **minIodine** | **Number**| The minimum amount of iodine in grams the recipe must have. | [optional] 
 **maxIodine** | **Number**| The maximum amount of iodine in grams the recipe can have. | [optional] 
 **minIron** | **Number**| The minimum amount of iron in milligrams the recipe must have. | [optional] 
 **maxIron** | **Number**| The maximum amount of iron in milligrams the recipe can have. | [optional] 
 **minMagnesium** | **Number**| The minimum amount of magnesium in milligrams the recipe must have. | [optional] 
 **maxMagnesium** | **Number**| The maximum amount of magnesium in milligrams the recipe can have. | [optional] 
 **minManganese** | **Number**| The minimum amount of manganese in milligrams the recipe must have. | [optional] 
 **maxManganese** | **Number**| The maximum amount of manganese in milligrams the recipe can have. | [optional] 
 **minPhosphorus** | **Number**| The minimum amount of phosphorus in milligrams the recipe must have. | [optional] 
 **maxPhosphorus** | **Number**| The maximum amount of phosphorus in milligrams the recipe can have. | [optional] 
 **minPotassium** | **Number**| The minimum amount of potassium in milligrams the recipe must have. | [optional] 
 **maxPotassium** | **Number**| The maximum amount of potassium in milligrams the recipe can have. | [optional] 
 **minSelenium** | **Number**| The minimum amount of selenium in grams the recipe must have. | [optional] 
 **maxSelenium** | **Number**| The maximum amount of selenium in grams the recipe can have. | [optional] 
 **minSodium** | **Number**| The minimum amount of sodium in milligrams the recipe must have. | [optional] 
 **maxSodium** | **Number**| The maximum amount of sodium in milligrams the recipe can have. | [optional] 
 **minSugar** | **Number**| The minimum amount of sugar in grams the recipe must have. | [optional] 
 **maxSugar** | **Number**| The maximum amount of sugar in grams the recipe can have. | [optional] 
 **minZinc** | **Number**| The minimum amount of zinc in milligrams the recipe must have. | [optional] 
 **maxZinc** | **Number**| The maximum amount of zinc in milligrams the recipe can have. | [optional] 
 **offset** | **Number**| The number of results to skip (between 0 and 900). | [optional] 
 **_number** | **Number**| The number of expected results (between 1 and 100). | [optional] 
 **limitLicense** | **Boolean**| Whether the recipes should have an open license that allows display with proper attribution. | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## searchSiteContent

> Object searchSiteContent(query)

Search Site Content

Search spoonacular&#39;s site content. You&#39;ll be able to find everything that you could also find using the search suggestions on spoonacular.com. This is a suggest API so you can send partial strings as queries.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let query = past; // String | The query to search for. You can also use partial queries such as \"spagh\" to already find spaghetti recipes, articles, grocery products, and other content.
apiInstance.searchSiteContent(query, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The query to search for. You can also use partial queries such as \&quot;spagh\&quot; to already find spaghetti recipes, articles, grocery products, and other content. | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## summarizeRecipe

> Object summarizeRecipe(id)

Summarize Recipe

Automatically generate a short description that summarizes key information about the recipe.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let id = 4632; // Number | The recipe id.
apiInstance.summarizeRecipe(id, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Number**| The recipe id. | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## talkToChatbot

> Object talkToChatbot(text, opts)

Talk to Chatbot

This endpoint can be used to have a conversation about food with the spoonacular chatbot. Use the \&quot;Get Conversation Suggests\&quot; endpoint to show your user what he or she can say.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let text = donut recipes; // String | The request / question / answer from the user to the chatbot.
let opts = {
  'contextId': 342938 // String | An arbitrary globally unique id for your conversation. The conversation can contain states so you should pass your context id if you want the bot to be able to remember the conversation.
};
apiInstance.talkToChatbot(text, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **String**| The request / question / answer from the user to the chatbot. | 
 **contextId** | **String**| An arbitrary globally unique id for your conversation. The conversation can contain states so you should pass your context id if you want the bot to be able to remember the conversation. | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## visualizeEquipment

> String visualizeEquipment(ingredientList, servings, opts)

Visualize Equipment

Visualize the equipment used to make a recipe.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let ingredientList = "ingredientList_example"; // String | The ingredient list of the recipe, one ingredient per line.
let servings = 3.4; // Number | The number of servings.
let opts = {
  'view': "view_example", // String | How to visualize the equipment, either \\\"grid\\\" or \\\"list\\\".
  'defaultCss': true, // Boolean | Whether the default CSS should be added to the response.
  'showBacklink': true // Boolean | Whether to show a backlink to spoonacular. If set false, this call counts against your quota.
};
apiInstance.visualizeEquipment(ingredientList, servings, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredientList** | **String**| The ingredient list of the recipe, one ingredient per line. | 
 **servings** | **Number**| The number of servings. | 
 **view** | **String**| How to visualize the equipment, either \\\&quot;grid\\\&quot; or \\\&quot;list\\\&quot;. | [optional] 
 **defaultCss** | **Boolean**| Whether the default CSS should be added to the response. | [optional] 
 **showBacklink** | **Boolean**| Whether to show a backlink to spoonacular. If set false, this call counts against your quota. | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: text/html


## visualizeIngredients

> String visualizeIngredients(ingredientList, servings, opts)

Visualize Ingredients

Visualize ingredients of a recipe.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let ingredientList = "ingredientList_example"; // String | The ingredient list of the recipe, one ingredient per line.
let servings = 3.4; // Number | The number of servings.
let opts = {
  'measure': "measure_example", // String | The original system of measurement, either \\\"metric\\\" or \\\"us\\\".
  'view': "view_example", // String | How to visualize the ingredients, either \\\"grid\\\" or \\\"list\\\".
  'defaultCss': true, // Boolean | Whether the default CSS should be added to the response.
  'showBacklink': true // Boolean | Whether to show a backlink to spoonacular. If set false, this call counts against your quota.
};
apiInstance.visualizeIngredients(ingredientList, servings, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredientList** | **String**| The ingredient list of the recipe, one ingredient per line. | 
 **servings** | **Number**| The number of servings. | 
 **measure** | **String**| The original system of measurement, either \\\&quot;metric\\\&quot; or \\\&quot;us\\\&quot;. | [optional] 
 **view** | **String**| How to visualize the ingredients, either \\\&quot;grid\\\&quot; or \\\&quot;list\\\&quot;. | [optional] 
 **defaultCss** | **Boolean**| Whether the default CSS should be added to the response. | [optional] 
 **showBacklink** | **Boolean**| Whether to show a backlink to spoonacular. If set false, this call counts against your quota. | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: text/html


## visualizeMenuItemNutritionByID

> String visualizeMenuItemNutritionByID(id, opts)

Visualize Menu Item Nutrition by ID

Visualize a menu item&#39;s nutritional information as HTML including CSS.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let id = 1003464; // Number | The menu item id.
let opts = {
  'defaultCss': true // Boolean | Whether the default CSS should be added to the response.
};
apiInstance.visualizeMenuItemNutritionByID(id, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Number**| The menu item id. | 
 **defaultCss** | **Boolean**| Whether the default CSS should be added to the response. | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html


## visualizePriceBreakdown

> String visualizePriceBreakdown(ingredientList, servings, opts)

Visualize Price Breakdown

Visualize the price breakdown of a recipe.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let ingredientList = "ingredientList_example"; // String | The ingredient list of the recipe, one ingredient per line.
let servings = 3.4; // Number | The number of servings.
let opts = {
  'mode': 3.4, // Number | The mode in which the widget should be delivered. 1 = separate views (compact), 2 = all in one view (full).
  'defaultCss': true, // Boolean | Whether the default CSS should be added to the response.
  'showBacklink': true // Boolean | Whether to show a backlink to spoonacular. If set false, this call counts against your quota.
};
apiInstance.visualizePriceBreakdown(ingredientList, servings, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredientList** | **String**| The ingredient list of the recipe, one ingredient per line. | 
 **servings** | **Number**| The number of servings. | 
 **mode** | **Number**| The mode in which the widget should be delivered. 1 &#x3D; separate views (compact), 2 &#x3D; all in one view (full). | [optional] 
 **defaultCss** | **Boolean**| Whether the default CSS should be added to the response. | [optional] 
 **showBacklink** | **Boolean**| Whether to show a backlink to spoonacular. If set false, this call counts against your quota. | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: text/html


## visualizeProductNutritionByID

> String visualizeProductNutritionByID(id, opts)

Visualize Product Nutrition by ID

Visualize a product&#39;s nutritional information as HTML including CSS.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let id = 7657; // Number | The id of the product.
let opts = {
  'defaultCss': true // Boolean | Whether the default CSS should be added to the response.
};
apiInstance.visualizeProductNutritionByID(id, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Number**| The id of the product. | 
 **defaultCss** | **Boolean**| Whether the default CSS should be added to the response. | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html


## visualizeRecipeEquipmentByID

> String visualizeRecipeEquipmentByID(id, opts)

Visualize Recipe Equipment by ID

Visualize a recipe&#39;s equipment list.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let id = 44860; // Number | The recipe id.
let opts = {
  'defaultCss': true // Boolean | Whether the default CSS should be added to the response.
};
apiInstance.visualizeRecipeEquipmentByID(id, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Number**| The recipe id. | 
 **defaultCss** | **Boolean**| Whether the default CSS should be added to the response. | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html


## visualizeRecipeIngredientsByID

> String visualizeRecipeIngredientsByID(id, opts)

Visualize Recipe Ingredients by ID

Visualize a recipe&#39;s ingredient list.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let id = 1082038; // Number | The recipe id.
let opts = {
  'defaultCss': true // Boolean | Whether the default CSS should be added to the response.
};
apiInstance.visualizeRecipeIngredientsByID(id, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Number**| The recipe id. | 
 **defaultCss** | **Boolean**| Whether the default CSS should be added to the response. | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html


## visualizeRecipeNutrition

> String visualizeRecipeNutrition(ingredientList, servings, opts)

Visualize Recipe Nutrition

Visualize a recipe&#39;s nutritional information as HTML including CSS

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let ingredientList = "ingredientList_example"; // String | The ingredient list of the recipe, one ingredient per line.
let servings = 3.4; // Number | The number of servings.
let opts = {
  'defaultCss': true, // Boolean | Whether the default CSS should be added to the response.
  'showBacklink': true // Boolean | Whether to show a backlink to spoonacular. If set false, this call counts against your quota.
};
apiInstance.visualizeRecipeNutrition(ingredientList, servings, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredientList** | **String**| The ingredient list of the recipe, one ingredient per line. | 
 **servings** | **Number**| The number of servings. | 
 **defaultCss** | **Boolean**| Whether the default CSS should be added to the response. | [optional] 
 **showBacklink** | **Boolean**| Whether to show a backlink to spoonacular. If set false, this call counts against your quota. | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: text/html


## visualizeRecipeNutritionByID

> String visualizeRecipeNutritionByID(id, opts)

Visualize Recipe Nutrition by ID

Visualize a recipe&#39;s nutritional information as HTML including CSS.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let id = 1082038; // Number | The recipe id.
let opts = {
  'defaultCss': true // Boolean | Whether the default CSS should be added to the response.
};
apiInstance.visualizeRecipeNutritionByID(id, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Number**| The recipe id. | 
 **defaultCss** | **Boolean**| Whether the default CSS should be added to the response. | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html


## visualizeRecipePriceBreakdownByID

> String visualizeRecipePriceBreakdownByID(id, opts)

Visualize Recipe Price Breakdown by ID

Visualize a recipe&#39;s price breakdown.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';

let apiInstance = new SpoonacularApi.DefaultApi();
let id = 1082038; // Number | The recipe id.
let opts = {
  'defaultCss': true // Boolean | Whether the default CSS should be added to the response.
};
apiInstance.visualizeRecipePriceBreakdownByID(id, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Number**| The recipe id. | 
 **defaultCss** | **Boolean**| Whether the default CSS should be added to the response. | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

