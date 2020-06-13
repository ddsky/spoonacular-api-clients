# DefaultApi

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


<a name="addToMealPlan"></a>
# **addToMealPlan**
> Object addToMealPlan(username, hash, inlineObject9)

Add to Meal Plan

Add an item to the user&#39;s meal plan.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
String username = dsky; // String | The username.
String hash = 4b5v4398573406; // String | The private hash for the username.
InlineObject9 inlineObject9 = new InlineObject9(); // InlineObject9 | 
try {
    Object result = apiInstance.addToMealPlan(username, hash, inlineObject9);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#addToMealPlan");
    e.printStackTrace();
}
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

<a name="addToShoppingList"></a>
# **addToShoppingList**
> Object addToShoppingList(username, hash, inlineObject12)

Add to Shopping List

Add an item to the current shopping list of a user.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
String username = dsky; // String | The username.
String hash = 4b5v4398573406; // String | The private hash for the username.
InlineObject12 inlineObject12 = new InlineObject12(); // InlineObject12 | 
try {
    Object result = apiInstance.addToShoppingList(username, hash, inlineObject12);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#addToShoppingList");
    e.printStackTrace();
}
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

<a name="analyzeARecipeSearchQuery"></a>
# **analyzeARecipeSearchQuery**
> Object analyzeARecipeSearchQuery(q)

Analyze a Recipe Search Query

Parse a recipe search query to find out its intention.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
String q = salmon with fusilli and no nuts; // String | The recipe search query.
try {
    Object result = apiInstance.analyzeARecipeSearchQuery(q);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#analyzeARecipeSearchQuery");
    e.printStackTrace();
}
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

<a name="analyzeRecipeInstructions"></a>
# **analyzeRecipeInstructions**
> Object analyzeRecipeInstructions(instructions)

Analyze Recipe Instructions

Extract ingredients and equipment from the recipe&#39;s instructions.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
String instructions = "instructions_example"; // String | The instructions to be analyzed.
try {
    Object result = apiInstance.analyzeRecipeInstructions(instructions);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#analyzeRecipeInstructions");
    e.printStackTrace();
}
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

<a name="autocompleteIngredientSearch"></a>
# **autocompleteIngredientSearch**
> Object autocompleteIngredientSearch(query, number, metaInformation, intolerances)

Autocomplete Ingredient Search

Autocomplete the entry of an ingredient.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
String query = appl; // String | The partial or full ingredient name.
BigDecimal number = 10; // BigDecimal | The number of results to return (between 1 and 100).
Boolean metaInformation = false; // Boolean | Whether to return more meta information about the ingredients.
Boolean intolerances = false; // Boolean | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.
try {
    Object result = apiInstance.autocompleteIngredientSearch(query, number, metaInformation, intolerances);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#autocompleteIngredientSearch");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The partial or full ingredient name. |
 **number** | **BigDecimal**| The number of results to return (between 1 and 100). | [optional]
 **metaInformation** | **Boolean**| Whether to return more meta information about the ingredients. | [optional]
 **intolerances** | **Boolean**| A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. | [optional]

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="autocompleteMenuItemSearch"></a>
# **autocompleteMenuItemSearch**
> Object autocompleteMenuItemSearch(query, number)

Autocomplete Menu Item Search

Generate suggestions for menu items based on a (partial) query. The matches will be found by looking in the title only.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
String query = chicke; // String | The (partial) search query.
BigDecimal number = 10; // BigDecimal | The number of results to return (between 1 and 25).
try {
    Object result = apiInstance.autocompleteMenuItemSearch(query, number);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#autocompleteMenuItemSearch");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The (partial) search query. |
 **number** | **BigDecimal**| The number of results to return (between 1 and 25). | [optional]

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="autocompleteProductSearch"></a>
# **autocompleteProductSearch**
> Object autocompleteProductSearch(query, number)

Autocomplete Product Search

Generate suggestions for grocery products based on a (partial) query. The matches will be found by looking in the title only.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
String query = chicke; // String | The (partial) search query.
BigDecimal number = 10; // BigDecimal | The number of results to return (between 1 and 25).
try {
    Object result = apiInstance.autocompleteProductSearch(query, number);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#autocompleteProductSearch");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The (partial) search query. |
 **number** | **BigDecimal**| The number of results to return (between 1 and 25). | [optional]

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="autocompleteRecipeSearch"></a>
# **autocompleteRecipeSearch**
> Object autocompleteRecipeSearch(query, number)

Autocomplete Recipe Search

Autocomplete a partial input to suggest possible recipe names.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
String query = burger; // String | The query to be autocompleted.
BigDecimal number = 10; // BigDecimal | The number of results to return (between 1 and 25).
try {
    Object result = apiInstance.autocompleteRecipeSearch(query, number);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#autocompleteRecipeSearch");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The query to be autocompleted. |
 **number** | **BigDecimal**| The number of results to return (between 1 and 25). | [optional]

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="classifyCuisine"></a>
# **classifyCuisine**
> Object classifyCuisine(title, ingredientList)

Classify Cuisine

Classify the recipe&#39;s cuisine.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
String title = "title_example"; // String | The title of the recipe.
String ingredientList = "ingredientList_example"; // String | The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n).
try {
    Object result = apiInstance.classifyCuisine(title, ingredientList);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#classifyCuisine");
    e.printStackTrace();
}
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

<a name="classifyGroceryProduct"></a>
# **classifyGroceryProduct**
> Object classifyGroceryProduct(inlineObject8, locale)

Classify Grocery Product

This endpoint allows you to match a packaged food to a basic category, e.g. a specific brand of milk to the category milk.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
InlineObject8 inlineObject8 = new InlineObject8(); // InlineObject8 | 
String locale = en_US; // String | The display name of the returned category, supported is en_US (for American English) and en_GB (for British English).
try {
    Object result = apiInstance.classifyGroceryProduct(inlineObject8, locale);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#classifyGroceryProduct");
    e.printStackTrace();
}
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

<a name="classifyGroceryProductBulk"></a>
# **classifyGroceryProductBulk**
> Object classifyGroceryProductBulk(body, locale)

Classify Grocery Product Bulk

Provide a set of product jsons, get back classified products.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
Object body = null; // Object | 
String locale = en_US; // String | The display name of the returned category, supported is en_US (for American English) and en_GB (for British English).
try {
    Object result = apiInstance.classifyGroceryProductBulk(body, locale);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#classifyGroceryProductBulk");
    e.printStackTrace();
}
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

<a name="convertAmounts"></a>
# **convertAmounts**
> Object convertAmounts(ingredientName, sourceAmount, sourceUnit, targetUnit)

Convert Amounts

Convert amounts like \&quot;2 cups of flour to grams\&quot;.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
String ingredientName = flour; // String | The ingredient which you want to convert.
BigDecimal sourceAmount = 2.5; // BigDecimal | The amount from which you want to convert, e.g. the 2.5 in \"2.5 cups of flour to grams\".
String sourceUnit = cups; // String | The unit from which you want to convert, e.g. the grams in \"2.5 cups of flour to grams\". You can also use \"piece\", e.g. \"3.4 oz tomatoes to piece\"
String targetUnit = grams; // String | The unit to which you want to convert, e.g. the grams in \"2.5 cups of flour to grams\". You can also use \"piece\", e.g. \"3.4 oz tomatoes to piece\"
try {
    Object result = apiInstance.convertAmounts(ingredientName, sourceAmount, sourceUnit, targetUnit);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#convertAmounts");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredientName** | **String**| The ingredient which you want to convert. |
 **sourceAmount** | **BigDecimal**| The amount from which you want to convert, e.g. the 2.5 in \&quot;2.5 cups of flour to grams\&quot;. |
 **sourceUnit** | **String**| The unit from which you want to convert, e.g. the grams in \&quot;2.5 cups of flour to grams\&quot;. You can also use \&quot;piece\&quot;, e.g. \&quot;3.4 oz tomatoes to piece\&quot; |
 **targetUnit** | **String**| The unit to which you want to convert, e.g. the grams in \&quot;2.5 cups of flour to grams\&quot;. You can also use \&quot;piece\&quot;, e.g. \&quot;3.4 oz tomatoes to piece\&quot; |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="createRecipeCard"></a>
# **createRecipeCard**
> Object createRecipeCard(title, image, ingredients, instructions, readyInMinutes, servings, mask, backgroundImage, author, backgroundColor, fontColor, source)

Create Recipe Card

Generate a recipe card for a recipe.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
String title = "title_example"; // String | The title of the recipe.
File image = new File("/path/to/file"); // File | The binary image of the recipe as jpg.
String ingredients = "ingredients_example"; // String | The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n).
String instructions = "instructions_example"; // String | The instructions to make the recipe. One step per line (separate lines with \\\\n).
BigDecimal readyInMinutes = new BigDecimal(); // BigDecimal | The number of minutes it takes to get the recipe on the table.
BigDecimal servings = new BigDecimal(); // BigDecimal | The number of servings the recipe makes.
String mask = "mask_example"; // String | The mask to put over the recipe image (\\\"ellipseMask\\\", \\\"diamondMask\\\", \\\"starMask\\\", \\\"heartMask\\\", \\\"potMask\\\", \\\"fishMask\\\").
String backgroundImage = "backgroundImage_example"; // String | The background image (\\\"none\\\",\\\"background1\\\", or \\\"background2\\\").
String author = "author_example"; // String | The author of the recipe.
String backgroundColor = "backgroundColor_example"; // String | The background color for the recipe card as a hex-string.
String fontColor = "fontColor_example"; // String | The font color for the recipe card as a hex-string.
String source = "source_example"; // String | The source of the recipe.
try {
    Object result = apiInstance.createRecipeCard(title, image, ingredients, instructions, readyInMinutes, servings, mask, backgroundImage, author, backgroundColor, fontColor, source);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#createRecipeCard");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **String**| The title of the recipe. |
 **image** | **File**| The binary image of the recipe as jpg. |
 **ingredients** | **String**| The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n). |
 **instructions** | **String**| The instructions to make the recipe. One step per line (separate lines with \\\\n). |
 **readyInMinutes** | **BigDecimal**| The number of minutes it takes to get the recipe on the table. |
 **servings** | **BigDecimal**| The number of servings the recipe makes. |
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

<a name="deleteFromMealPlan"></a>
# **deleteFromMealPlan**
> Object deleteFromMealPlan(username, id, hash, inlineObject10)

Delete from Meal Plan

Delete an item from the user&#39;s meal plan.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
String username = dsky; // String | The username.
BigDecimal id = 15678; // BigDecimal | The shopping list item id.
String hash = 4b5v4398573406; // String | The private hash for the username.
InlineObject10 inlineObject10 = new InlineObject10(); // InlineObject10 | 
try {
    Object result = apiInstance.deleteFromMealPlan(username, id, hash, inlineObject10);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#deleteFromMealPlan");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. |
 **id** | **BigDecimal**| The shopping list item id. |
 **hash** | **String**| The private hash for the username. |
 **inlineObject10** | [**InlineObject10**](InlineObject10.md)|  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

<a name="deleteFromShoppingList"></a>
# **deleteFromShoppingList**
> Object deleteFromShoppingList(username, id, hash, inlineObject13)

Delete from Shopping List

Delete an item from the current shopping list of the user.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
String username = dsky; // String | The username.
BigDecimal id = 15678; // BigDecimal | The shopping list item id.
String hash = 4b5v4398573406; // String | The private hash for the username.
InlineObject13 inlineObject13 = new InlineObject13(); // InlineObject13 | 
try {
    Object result = apiInstance.deleteFromShoppingList(username, id, hash, inlineObject13);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#deleteFromShoppingList");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. |
 **id** | **BigDecimal**| The shopping list item id. |
 **hash** | **String**| The private hash for the username. |
 **inlineObject13** | [**InlineObject13**](InlineObject13.md)|  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

<a name="detectFoodInText"></a>
# **detectFoodInText**
> Object detectFoodInText(text)

Detect Food in Text

Take any text and find all mentions of food contained within it. This task is also called Named Entity Recognition (NER). In this case, the entities are foods. Either dishes, such as pizza or cheeseburger, or ingredients, such as cucumber or almonds.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
String text = "text_example"; // String | The text in which food items, such as dish names and ingredients, should be detected in.
try {
    Object result = apiInstance.detectFoodInText(text);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#detectFoodInText");
    e.printStackTrace();
}
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

<a name="extractRecipeFromWebsite"></a>
# **extractRecipeFromWebsite**
> Object extractRecipeFromWebsite(url, forceExtraction, analyze)

Extract Recipe from Website

This endpoint lets you extract recipe data such as title, ingredients, and instructions from any properly formatted Website.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
String url = https://foodista.com/recipe/ZHK4KPB6/chocolate-crinkle-cookies; // String | The URL of the recipe page.
Boolean forceExtraction = true; // Boolean | If true, the extraction will be triggered whether we already know the recipe or not. Use this only if information is missing as this operation is slower.
Boolean analyze = false; // Boolean | If true, the recipe will be analyzed and classified resolving in more data such as cuisines, dish types, and more.
try {
    Object result = apiInstance.extractRecipeFromWebsite(url, forceExtraction, analyze);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#extractRecipeFromWebsite");
    e.printStackTrace();
}
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

<a name="generateMealPlan"></a>
# **generateMealPlan**
> Object generateMealPlan(timeFrame, targetCalories, diet, exclude)

Generate Meal Plan

Generate a meal plan with three meals per day (breakfast, lunch, and dinner).

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
String timeFrame = day; // String | Either for one \"day\" or an entire \"week\".
BigDecimal targetCalories = 2000; // BigDecimal | What is the caloric target for one day? The meal plan generator will try to get as close as possible to that goal.
String diet = vegetarian; // String | Enter a diet that the meal plan has to adhere to. See a full list of supported diets.
String exclude = shellfish, olives; // String | A comma-separated list of allergens or ingredients that must be excluded.
try {
    Object result = apiInstance.generateMealPlan(timeFrame, targetCalories, diet, exclude);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#generateMealPlan");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timeFrame** | **String**| Either for one \&quot;day\&quot; or an entire \&quot;week\&quot;. | [optional]
 **targetCalories** | **BigDecimal**| What is the caloric target for one day? The meal plan generator will try to get as close as possible to that goal. | [optional]
 **diet** | **String**| Enter a diet that the meal plan has to adhere to. See a full list of supported diets. | [optional]
 **exclude** | **String**| A comma-separated list of allergens or ingredients that must be excluded. | [optional]

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="generateShoppingList"></a>
# **generateShoppingList**
> Object generateShoppingList(username, startDate, endDate, hash, inlineObject11)

Generate Shopping List

Generate the shopping list for a user from the meal planner in a given time frame.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
String username = dsky; // String | The username.
String startDate = 2020-06-01; // String | The start date in the format yyyy-mm-dd.
String endDate = 2020-06-07; // String | The end date in the format yyyy-mm-dd.
String hash = 4b5v4398573406; // String | The private hash for the username.
InlineObject11 inlineObject11 = new InlineObject11(); // InlineObject11 | 
try {
    Object result = apiInstance.generateShoppingList(username, startDate, endDate, hash, inlineObject11);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#generateShoppingList");
    e.printStackTrace();
}
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

<a name="getARandomFoodJoke"></a>
# **getARandomFoodJoke**
> Object getARandomFoodJoke()

Get a Random Food Joke

Get a random joke that is related to food. Caution: this is an endpoint for adults!

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
try {
    Object result = apiInstance.getARandomFoodJoke();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#getARandomFoodJoke");
    e.printStackTrace();
}
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

<a name="getAnalyzedRecipeInstructions"></a>
# **getAnalyzedRecipeInstructions**
> Object getAnalyzedRecipeInstructions(id, stepBreakdown)

Get Analyzed Recipe Instructions

Get an analyzed breakdown of a recipe&#39;s instructions. Each step is enriched with the ingredients and equipment required.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
BigDecimal id = 324694; // BigDecimal | The recipe id.
Boolean stepBreakdown = true; // Boolean | Whether to break down the recipe steps even more.
try {
    Object result = apiInstance.getAnalyzedRecipeInstructions(id, stepBreakdown);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#getAnalyzedRecipeInstructions");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **BigDecimal**| The recipe id. |
 **stepBreakdown** | **Boolean**| Whether to break down the recipe steps even more. | [optional]

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getComparableProducts"></a>
# **getComparableProducts**
> Object getComparableProducts(upc)

Get Comparable Products

Find comparable products to the given one.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
BigDecimal upc = 33698816271; // BigDecimal | The UPC of the product for which you want to find comparable products.
try {
    Object result = apiInstance.getComparableProducts(upc);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#getComparableProducts");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **upc** | **BigDecimal**| The UPC of the product for which you want to find comparable products. |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getConversationSuggests"></a>
# **getConversationSuggests**
> Object getConversationSuggests(query, number)

Get Conversation Suggests

This endpoint returns suggestions for things the user can say or ask the chatbot.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
String query = tell; // String | A (partial) query from the user. The endpoint will return if it matches topics it can talk about.
BigDecimal number = 5; // BigDecimal | The number of suggestions to return (between 1 and 25).
try {
    Object result = apiInstance.getConversationSuggests(query, number);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#getConversationSuggests");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| A (partial) query from the user. The endpoint will return if it matches topics it can talk about. |
 **number** | **BigDecimal**| The number of suggestions to return (between 1 and 25). | [optional]

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getDishPairingForWine"></a>
# **getDishPairingForWine**
> Object getDishPairingForWine(wine)

Get Dish Pairing for Wine

Find a dish that goes well with a given wine.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
String wine = malbec; // String | The type of wine that should be paired, e.g. \"merlot\", \"riesling\", or \"malbec\".
try {
    Object result = apiInstance.getDishPairingForWine(wine);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#getDishPairingForWine");
    e.printStackTrace();
}
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

<a name="getIngredientInformation"></a>
# **getIngredientInformation**
> Object getIngredientInformation(id, amount, unit)

Get Ingredient Information

Use an ingredient id to get all available information about an ingredient, such as its image and supermarket aisle.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
BigDecimal id = 9266; // BigDecimal | The ingredient id.
BigDecimal amount = 150; // BigDecimal | The amount of this ingredient.
String unit = grams; // String | The unit for the given amount.
try {
    Object result = apiInstance.getIngredientInformation(id, amount, unit);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#getIngredientInformation");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **BigDecimal**| The ingredient id. |
 **amount** | **BigDecimal**| The amount of this ingredient. | [optional]
 **unit** | **String**| The unit for the given amount. | [optional]

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getIngredientSubstitutes"></a>
# **getIngredientSubstitutes**
> Object getIngredientSubstitutes(ingredientName)

Get Ingredient Substitutes

Search for substitutes for a given ingredient.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
String ingredientName = butter; // String | The name of the ingredient you want to replace.
try {
    Object result = apiInstance.getIngredientSubstitutes(ingredientName);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#getIngredientSubstitutes");
    e.printStackTrace();
}
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

<a name="getIngredientSubstitutesByID"></a>
# **getIngredientSubstitutesByID**
> Object getIngredientSubstitutesByID(id)

Get Ingredient Substitutes by ID

Search for substitutes for a given ingredient.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
BigDecimal id = 1001; // BigDecimal | The id of the ingredient you want substitutes for.
try {
    Object result = apiInstance.getIngredientSubstitutesByID(id);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#getIngredientSubstitutesByID");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **BigDecimal**| The id of the ingredient you want substitutes for. |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getMealPlanTemplate"></a>
# **getMealPlanTemplate**
> Object getMealPlanTemplate(username, id, hash)

Get Meal Plan Template

Get information about a meal plan template.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
String username = dsky; // String | The username.
BigDecimal id = 15678; // BigDecimal | The shopping list item id.
String hash = 4b5v4398573406; // String | The private hash for the username.
try {
    Object result = apiInstance.getMealPlanTemplate(username, id, hash);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#getMealPlanTemplate");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. |
 **id** | **BigDecimal**| The shopping list item id. |
 **hash** | **String**| The private hash for the username. |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getMealPlanTemplates"></a>
# **getMealPlanTemplates**
> Object getMealPlanTemplates(username, hash)

Get Meal Plan Templates

Get meal plan templates from user or public ones.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
String username = dsky; // String | The username.
String hash = 4b5v4398573406; // String | The private hash for the username.
try {
    Object result = apiInstance.getMealPlanTemplates(username, hash);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#getMealPlanTemplates");
    e.printStackTrace();
}
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

<a name="getMealPlanWeek"></a>
# **getMealPlanWeek**
> Object getMealPlanWeek(username, startDate, hash)

Get Meal Plan Week

Retrieve a meal planned week for the given user. The username must be a spoonacular user and the hash must the the user&#39;s hash that can be found in his/her account.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
String username = dsky; // String | The username.
String startDate = 2020-06-01; // String | The start date of the meal planned week in the format yyyy-mm-dd.
String hash = 4b5v4398573406; // String | The private hash for the username.
try {
    Object result = apiInstance.getMealPlanWeek(username, startDate, hash);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#getMealPlanWeek");
    e.printStackTrace();
}
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

<a name="getMenuItemInformation"></a>
# **getMenuItemInformation**
> Object getMenuItemInformation(id)

Get Menu Item Information

Use a menu item id to get all available information about a menu item, such as nutrition.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
BigDecimal id = 424571; // BigDecimal | The menu item id.
try {
    Object result = apiInstance.getMenuItemInformation(id);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#getMenuItemInformation");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **BigDecimal**| The menu item id. |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getProductInformation"></a>
# **getProductInformation**
> Object getProductInformation(id)

Get Product Information

Use a product id to get full information about a product, such as ingredients, nutrition, etc. The nutritional information is per serving.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
BigDecimal id = 22347; // BigDecimal | The id of the packaged food.
try {
    Object result = apiInstance.getProductInformation(id);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#getProductInformation");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **BigDecimal**| The id of the packaged food. |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getRandomFoodTrivia"></a>
# **getRandomFoodTrivia**
> Object getRandomFoodTrivia()

Get Random Food Trivia

Returns random food trivia.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
try {
    Object result = apiInstance.getRandomFoodTrivia();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#getRandomFoodTrivia");
    e.printStackTrace();
}
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

<a name="getRandomRecipes"></a>
# **getRandomRecipes**
> Object getRandomRecipes(limitLicense, tags, number)

Get Random Recipes

Find random (popular) recipes. If you need to filter recipes by diet, nutrition etc. you might want to consider using the complex recipe search endpoint and set the sort request parameter to random.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
Boolean limitLicense = true; // Boolean | Whether the recipes should have an open license that allows display with proper attribution.
String tags = vegetarian, dessert; // String | The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have.
BigDecimal number = 1; // BigDecimal | The number of random recipes to be returned (between 1 and 100).
try {
    Object result = apiInstance.getRandomRecipes(limitLicense, tags, number);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#getRandomRecipes");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limitLicense** | **Boolean**| Whether the recipes should have an open license that allows display with proper attribution. | [optional]
 **tags** | **String**| The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have. | [optional]
 **number** | **BigDecimal**| The number of random recipes to be returned (between 1 and 100). | [optional]

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getRecipeEquipmentByID"></a>
# **getRecipeEquipmentByID**
> Object getRecipeEquipmentByID(id)

Get Recipe Equipment by ID

Get a recipe&#39;s equipment list.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
BigDecimal id = 1003464; // BigDecimal | The recipe id.
try {
    Object result = apiInstance.getRecipeEquipmentByID(id);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#getRecipeEquipmentByID");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **BigDecimal**| The recipe id. |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getRecipeInformation"></a>
# **getRecipeInformation**
> Object getRecipeInformation(id, includeNutrition)

Get Recipe Information

Use a recipe id to get full information about a recipe, such as ingredients, nutrition, diet and allergen information, etc.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
BigDecimal id = 716429; // BigDecimal | The id of the recipe.
Boolean includeNutrition = false; // Boolean | Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings.
try {
    Object result = apiInstance.getRecipeInformation(id, includeNutrition);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#getRecipeInformation");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **BigDecimal**| The id of the recipe. |
 **includeNutrition** | **Boolean**| Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. | [optional]

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getRecipeInformationBulk"></a>
# **getRecipeInformationBulk**
> Object getRecipeInformationBulk(ids, includeNutrition)

Get Recipe Information Bulk

Get information about multiple recipes at once. This is equivalent to calling the Get Recipe Information endpoint multiple times, but faster.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
String ids = 715538,716429; // String | A comma-separated list of recipe ids.
Boolean includeNutrition = false; // Boolean | Include nutrition data to the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings.
try {
    Object result = apiInstance.getRecipeInformationBulk(ids, includeNutrition);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#getRecipeInformationBulk");
    e.printStackTrace();
}
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

<a name="getRecipeIngredientsByID"></a>
# **getRecipeIngredientsByID**
> Object getRecipeIngredientsByID(id)

Get Recipe Ingredients by ID

Get a recipe&#39;s ingredient list.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
BigDecimal id = 1003464; // BigDecimal | The recipe id.
try {
    Object result = apiInstance.getRecipeIngredientsByID(id);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#getRecipeIngredientsByID");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **BigDecimal**| The recipe id. |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getRecipeNutritionWidgetByID"></a>
# **getRecipeNutritionWidgetByID**
> Object getRecipeNutritionWidgetByID(id)

Get Recipe Nutrition Widget by ID

Get a recipe&#39;s nutrition widget data.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
BigDecimal id = 1003464; // BigDecimal | The recipe id.
try {
    Object result = apiInstance.getRecipeNutritionWidgetByID(id);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#getRecipeNutritionWidgetByID");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **BigDecimal**| The recipe id. |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getRecipePriceBreakdownByID"></a>
# **getRecipePriceBreakdownByID**
> Object getRecipePriceBreakdownByID(id)

Get Recipe Price Breakdown by ID

Get a recipe&#39;s price breakdown data.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
BigDecimal id = 1003464; // BigDecimal | The recipe id.
try {
    Object result = apiInstance.getRecipePriceBreakdownByID(id);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#getRecipePriceBreakdownByID");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **BigDecimal**| The recipe id. |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getShoppingList"></a>
# **getShoppingList**
> Object getShoppingList(username, hash)

Get Shopping List

Get the current shopping list for the given user.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
String username = dsky; // String | The username.
String hash = 4b5v4398573406; // String | The private hash for the username.
try {
    Object result = apiInstance.getShoppingList(username, hash);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#getShoppingList");
    e.printStackTrace();
}
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

<a name="getSimilarRecipes"></a>
# **getSimilarRecipes**
> Object getSimilarRecipes(id, number, limitLicense)

Get Similar Recipes

Find recipes which are similar to the given one.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
BigDecimal id = 715538; // BigDecimal | The id of the source recipe for which similar recipes should be found.
BigDecimal number = 1; // BigDecimal | The number of random recipes to be returned (between 1 and 100).
Boolean limitLicense = true; // Boolean | Whether the recipes should have an open license that allows display with proper attribution.
try {
    Object result = apiInstance.getSimilarRecipes(id, number, limitLicense);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#getSimilarRecipes");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **BigDecimal**| The id of the source recipe for which similar recipes should be found. |
 **number** | **BigDecimal**| The number of random recipes to be returned (between 1 and 100). | [optional]
 **limitLicense** | **Boolean**| Whether the recipes should have an open license that allows display with proper attribution. | [optional]

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getWineDescription"></a>
# **getWineDescription**
> Object getWineDescription(wine)

Get Wine Description

Get a simple description of a certain wine, e.g. \&quot;malbec\&quot;, \&quot;riesling\&quot;, or \&quot;merlot\&quot;.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
String wine = merlot; // String | The name of the wine that should be paired, e.g. \"merlot\", \"riesling\", or \"malbec\".
try {
    Object result = apiInstance.getWineDescription(wine);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#getWineDescription");
    e.printStackTrace();
}
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

<a name="getWinePairing"></a>
# **getWinePairing**
> Object getWinePairing(food, maxPrice)

Get Wine Pairing

Find a wine that goes well with a food. Food can be a dish name (\&quot;steak\&quot;), an ingredient name (\&quot;salmon\&quot;), or a cuisine (\&quot;italian\&quot;).

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
String food = steak; // String | The food to get a pairing for. This can be a dish (\"steak\"), an ingredient (\"salmon\"), or a cuisine (\"italian\").
BigDecimal maxPrice = 50; // BigDecimal | The maximum price for the specific wine recommendation in USD.
try {
    Object result = apiInstance.getWinePairing(food, maxPrice);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#getWinePairing");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **food** | **String**| The food to get a pairing for. This can be a dish (\&quot;steak\&quot;), an ingredient (\&quot;salmon\&quot;), or a cuisine (\&quot;italian\&quot;). |
 **maxPrice** | **BigDecimal**| The maximum price for the specific wine recommendation in USD. | [optional]

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getWineRecommendation"></a>
# **getWineRecommendation**
> Object getWineRecommendation(wine, maxPrice, minRating, number)

Get Wine Recommendation

Get a specific wine recommendation (concrete product) for a given wine type, e.g. \&quot;merlot\&quot;.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
String wine = merlot; // String | The type of wine to get a specific product recommendation for.
BigDecimal maxPrice = 50; // BigDecimal | The maximum price for the specific wine recommendation in USD.
BigDecimal minRating = 0.7; // BigDecimal | The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars.
BigDecimal number = 3; // BigDecimal | The number of wine recommendations expected (between 1 and 100).
try {
    Object result = apiInstance.getWineRecommendation(wine, maxPrice, minRating, number);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#getWineRecommendation");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wine** | **String**| The type of wine to get a specific product recommendation for. |
 **maxPrice** | **BigDecimal**| The maximum price for the specific wine recommendation in USD. | [optional]
 **minRating** | **BigDecimal**| The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars. | [optional]
 **number** | **BigDecimal**| The number of wine recommendations expected (between 1 and 100). | [optional]

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="guessNutritionByDishName"></a>
# **guessNutritionByDishName**
> Object guessNutritionByDishName(title)

Guess Nutrition by Dish Name

Estimate the macronutrients of a dish based on its title.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
String title = Spaghetti Aglio et Olio; // String | The title of the dish.
try {
    Object result = apiInstance.guessNutritionByDishName(title);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#guessNutritionByDishName");
    e.printStackTrace();
}
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

<a name="imageAnalysisByURL"></a>
# **imageAnalysisByURL**
> Object imageAnalysisByURL(imageUrl)

Image Analysis by URL

Analyze a food image. The API tries to classify the image, guess the nutrition, and find a matching recipes. You can play around with that endpoint!

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
String imageUrl = https://spoonacular.com/recipeImages/635350-240x150.jpg; // String | The URL of the image to be analyzed.
try {
    Object result = apiInstance.imageAnalysisByURL(imageUrl);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#imageAnalysisByURL");
    e.printStackTrace();
}
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

<a name="imageClassificationByURL"></a>
# **imageClassificationByURL**
> Object imageClassificationByURL(imageUrl)

Image Classification by URL

Classify a food image. You can play around with that endpoint!

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
String imageUrl = https://spoonacular.com/recipeImages/635350-240x150.jpg; // String | The URL of the image to be classified.
try {
    Object result = apiInstance.imageClassificationByURL(imageUrl);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#imageClassificationByURL");
    e.printStackTrace();
}
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

<a name="mapIngredientsToGroceryProducts"></a>
# **mapIngredientsToGroceryProducts**
> Object mapIngredientsToGroceryProducts(body)

Map Ingredients to Grocery Products

Map a set of ingredients to products you can buy in the grocery store.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
Object body = null; // Object | 
try {
    Object result = apiInstance.mapIngredientsToGroceryProducts(body);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#mapIngredientsToGroceryProducts");
    e.printStackTrace();
}
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

<a name="parseIngredients"></a>
# **parseIngredients**
> Object parseIngredients(ingredientList, servings, includeNutrition)

Parse Ingredients

Extract an ingredient from plain text.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
String ingredientList = "ingredientList_example"; // String | The ingredient list of the recipe, one ingredient per line.
BigDecimal servings = new BigDecimal(); // BigDecimal | The number of servings that you can make from the ingredients.
Boolean includeNutrition = true; // Boolean | Whether nutrition data should be added to correctly parsed ingredients.
try {
    Object result = apiInstance.parseIngredients(ingredientList, servings, includeNutrition);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#parseIngredients");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredientList** | **String**| The ingredient list of the recipe, one ingredient per line. |
 **servings** | **BigDecimal**| The number of servings that you can make from the ingredients. |
 **includeNutrition** | **Boolean**| Whether nutrition data should be added to correctly parsed ingredients. | [optional]

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="quickAnswer"></a>
# **quickAnswer**
> Object quickAnswer(q)

Quick Answer

Answer a nutrition related natural language question.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
String q = How much vitamin c is in 2 apples?; // String | The nutrition related question.
try {
    Object result = apiInstance.quickAnswer(q);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#quickAnswer");
    e.printStackTrace();
}
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

<a name="searchCustomFoods"></a>
# **searchCustomFoods**
> Object searchCustomFoods(query, username, hash, offset, number)

Search Custom Foods

Search custom foods in a user&#39;s account.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
String query = brat; // String | The search query.
String username = dsky; // String | The username.
String hash = 4b5v4398573406; // String | The private hash for the username.
BigDecimal offset = 0; // BigDecimal | The number of results to skip (between 0 and 990).
BigDecimal number = 10; // BigDecimal | The number of expected results (between 1 and 100).
try {
    Object result = apiInstance.searchCustomFoods(query, username, hash, offset, number);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#searchCustomFoods");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The search query. |
 **username** | **String**| The username. |
 **hash** | **String**| The private hash for the username. |
 **offset** | **BigDecimal**| The number of results to skip (between 0 and 990). | [optional]
 **number** | **BigDecimal**| The number of expected results (between 1 and 100). | [optional]

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="searchFoodVideos"></a>
# **searchFoodVideos**
> Object searchFoodVideos(query, type, cuisine, diet, includeIngredients, excludeIngredients, minLength, maxLength, offset, number)

Search Food Videos

Find recipe and other food related videos.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
String query = chicken soup; // String | The search query.
String type = main course; // String | The type of the recipes. See a full list of supported meal types.
String cuisine = italian; // String | The cuisine(s) of the recipes. One or more, comma separated. See a full list of supported cuisines.
String diet = vegetarian; // String | The diet for which the recipes must be suitable. See a full list of supported diets.
String includeIngredients = tomato,cheese; // String | A comma-separated list of ingredients that the recipes should contain.
String excludeIngredients = eggs; // String | A comma-separated list of ingredients or ingredient types that the recipes must not contain.
BigDecimal minLength = 0; // BigDecimal | Minimum video length in seconds.
BigDecimal maxLength = 999; // BigDecimal | Maximum video length in seconds.
BigDecimal offset = 0; // BigDecimal | The number of results to skip (between 0 and 900).
BigDecimal number = 10; // BigDecimal | The number of results to return (between 1 and 100).
try {
    Object result = apiInstance.searchFoodVideos(query, type, cuisine, diet, includeIngredients, excludeIngredients, minLength, maxLength, offset, number);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#searchFoodVideos");
    e.printStackTrace();
}
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
 **minLength** | **BigDecimal**| Minimum video length in seconds. | [optional]
 **maxLength** | **BigDecimal**| Maximum video length in seconds. | [optional]
 **offset** | **BigDecimal**| The number of results to skip (between 0 and 900). | [optional]
 **number** | **BigDecimal**| The number of results to return (between 1 and 100). | [optional]

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="searchGroceryProducts"></a>
# **searchGroceryProducts**
> Object searchGroceryProducts(query, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, offset, number)

Search Grocery Products

Search packaged food products, such as frozen pizza or Greek yogurt.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
String query = greek yogurt; // String | The search query.
BigDecimal minCalories = 50; // BigDecimal | The minimum amount of calories the product must have.
BigDecimal maxCalories = 800; // BigDecimal | The maximum amount of calories the product can have.
BigDecimal minCarbs = 10; // BigDecimal | The minimum amount of carbohydrates in grams the product must have.
BigDecimal maxCarbs = 100; // BigDecimal | The maximum amount of carbohydrates in grams the product can have.
BigDecimal minProtein = 10; // BigDecimal | The minimum amount of protein in grams the product must have.
BigDecimal maxProtein = 100; // BigDecimal | The maximum amount of protein in grams the product can have.
BigDecimal minFat = 1; // BigDecimal | The minimum amount of fat in grams the product must have.
BigDecimal maxFat = 100; // BigDecimal | The maximum amount of fat in grams the product can have.
BigDecimal offset = 0; // BigDecimal | The number of results to skip (between 0 and 990).
BigDecimal number = 10; // BigDecimal | The number of expected results (between 1 and 100).
try {
    Object result = apiInstance.searchGroceryProducts(query, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, offset, number);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#searchGroceryProducts");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The search query. |
 **minCalories** | **BigDecimal**| The minimum amount of calories the product must have. | [optional]
 **maxCalories** | **BigDecimal**| The maximum amount of calories the product can have. | [optional]
 **minCarbs** | **BigDecimal**| The minimum amount of carbohydrates in grams the product must have. | [optional]
 **maxCarbs** | **BigDecimal**| The maximum amount of carbohydrates in grams the product can have. | [optional]
 **minProtein** | **BigDecimal**| The minimum amount of protein in grams the product must have. | [optional]
 **maxProtein** | **BigDecimal**| The maximum amount of protein in grams the product can have. | [optional]
 **minFat** | **BigDecimal**| The minimum amount of fat in grams the product must have. | [optional]
 **maxFat** | **BigDecimal**| The maximum amount of fat in grams the product can have. | [optional]
 **offset** | **BigDecimal**| The number of results to skip (between 0 and 990). | [optional]
 **number** | **BigDecimal**| The number of expected results (between 1 and 100). | [optional]

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="searchGroceryProductsByUPC"></a>
# **searchGroceryProductsByUPC**
> Object searchGroceryProductsByUPC(upc)

Search Grocery Products by UPC

Get information about a packaged food using its UPC.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
BigDecimal upc = 41631000564; // BigDecimal | The product's UPC.
try {
    Object result = apiInstance.searchGroceryProductsByUPC(upc);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#searchGroceryProductsByUPC");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **upc** | **BigDecimal**| The product&#39;s UPC. |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="searchMenuItems"></a>
# **searchMenuItems**
> Object searchMenuItems(query, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, offset, number)

Search Menu Items

Search over 115,000 menu items from over 800 fast food and chain restaurants. For example, McDonald&#39;s Big Mac or Starbucks Mocha.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
String query = snickers; // String | The search query.
BigDecimal minCalories = 50; // BigDecimal | The minimum amount of calories the menu item must have.
BigDecimal maxCalories = 800; // BigDecimal | The maximum amount of calories the menu item can have.
BigDecimal minCarbs = 10; // BigDecimal | The minimum amount of carbohydrates in grams the menu item must have.
BigDecimal maxCarbs = 100; // BigDecimal | The maximum amount of carbohydrates in grams the menu item can have.
BigDecimal minProtein = 10; // BigDecimal | The minimum amount of protein in grams the menu item must have.
BigDecimal maxProtein = 100; // BigDecimal | The maximum amount of protein in grams the menu item can have.
BigDecimal minFat = 1; // BigDecimal | The minimum amount of fat in grams the menu item must have.
BigDecimal maxFat = 100; // BigDecimal | The maximum amount of fat in grams the menu item can have.
BigDecimal offset = 0; // BigDecimal | The offset number for paging (between 0 and 990).
BigDecimal number = 100; // BigDecimal | The number of expected results (between 1 and 10).
try {
    Object result = apiInstance.searchMenuItems(query, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, offset, number);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#searchMenuItems");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The search query. |
 **minCalories** | **BigDecimal**| The minimum amount of calories the menu item must have. | [optional]
 **maxCalories** | **BigDecimal**| The maximum amount of calories the menu item can have. | [optional]
 **minCarbs** | **BigDecimal**| The minimum amount of carbohydrates in grams the menu item must have. | [optional]
 **maxCarbs** | **BigDecimal**| The maximum amount of carbohydrates in grams the menu item can have. | [optional]
 **minProtein** | **BigDecimal**| The minimum amount of protein in grams the menu item must have. | [optional]
 **maxProtein** | **BigDecimal**| The maximum amount of protein in grams the menu item can have. | [optional]
 **minFat** | **BigDecimal**| The minimum amount of fat in grams the menu item must have. | [optional]
 **maxFat** | **BigDecimal**| The maximum amount of fat in grams the menu item can have. | [optional]
 **offset** | **BigDecimal**| The offset number for paging (between 0 and 990). | [optional]
 **number** | **BigDecimal**| The number of expected results (between 1 and 10). | [optional]

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="searchRecipes"></a>
# **searchRecipes**
> Object searchRecipes(query, cuisine, diet, excludeIngredients, intolerances, offset, number, limitLicense, instructionsRequired)

Search Recipes

Our recipe API includes over 360,000 recipes as well as an open source recipe database. Consider using the \&quot;Search Recipes Complex\&quot; endpoint for much more flexibility.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
String query = burger; // String | The (natural language) recipe search query.
String cuisine = italian; // String | The cuisine(s) of the recipes. One or more comma separated. See a full list of supported cuisines.
String diet = vegetarian; // String | The diet for which the recipes must be suitable. See a full list of supported diets.
String excludeIngredients = eggs; // String | A comma-separated list of ingredients or ingredient types that the recipes must not contain.
String intolerances = gluten; // String | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. Please note: due to the automatic nature of the recipe analysis, the API cannot be 100% accurate in all cases. Please advise your users to seek professional help with medical issues.
BigDecimal offset = 0; // BigDecimal | The number of results to skip (between 0 and 900).
BigDecimal number = 10; // BigDecimal | The number of results to return (between 1 and 100).
Boolean limitLicense = true; // Boolean | Whether the recipes should have an open license that allows display with proper attribution.
Boolean instructionsRequired = true; // Boolean | Whether the recipes must have instructions.
try {
    Object result = apiInstance.searchRecipes(query, cuisine, diet, excludeIngredients, intolerances, offset, number, limitLicense, instructionsRequired);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#searchRecipes");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The (natural language) recipe search query. |
 **cuisine** | **String**| The cuisine(s) of the recipes. One or more comma separated. See a full list of supported cuisines. | [optional]
 **diet** | **String**| The diet for which the recipes must be suitable. See a full list of supported diets. | [optional]
 **excludeIngredients** | **String**| A comma-separated list of ingredients or ingredient types that the recipes must not contain. | [optional]
 **intolerances** | **String**| A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. Please note: due to the automatic nature of the recipe analysis, the API cannot be 100% accurate in all cases. Please advise your users to seek professional help with medical issues. | [optional]
 **offset** | **BigDecimal**| The number of results to skip (between 0 and 900). | [optional]
 **number** | **BigDecimal**| The number of results to return (between 1 and 100). | [optional]
 **limitLicense** | **Boolean**| Whether the recipes should have an open license that allows display with proper attribution. | [optional]
 **instructionsRequired** | **Boolean**| Whether the recipes must have instructions. | [optional]

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="searchRecipesByIngredients"></a>
# **searchRecipesByIngredients**
> Object searchRecipesByIngredients(ingredients, number, limitLicense, ranking, ignorePantry)

Search Recipes by Ingredients

             Ever wondered what recipes you can cook with the ingredients you have in your fridge or pantry? This endpoint lets you find recipes that either maximize the usage of ingredients you have at hand (pre shopping) or minimize the ingredients that you don&#39;t currently have (post shopping).         

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
String ingredients = apples,flour,sugar; // String | A comma-separated list of ingredients that the recipes should contain.
BigDecimal number = 10; // BigDecimal | The maximum number of recipes to return (between 1 and 100). Defaults to 10.
Boolean limitLicense = true; // Boolean | Whether the recipes should have an open license that allows display with proper attribution.
BigDecimal ranking = 1; // BigDecimal | Whether to maximize used ingredients (1) or minimize missing ingredients (2) first.
Boolean ignorePantry = true; // Boolean | Whether to ignore typical pantry items, such as water, salt, flour, etc.
try {
    Object result = apiInstance.searchRecipesByIngredients(ingredients, number, limitLicense, ranking, ignorePantry);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#searchRecipesByIngredients");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredients** | **String**| A comma-separated list of ingredients that the recipes should contain. |
 **number** | **BigDecimal**| The maximum number of recipes to return (between 1 and 100). Defaults to 10. | [optional]
 **limitLicense** | **Boolean**| Whether the recipes should have an open license that allows display with proper attribution. | [optional]
 **ranking** | **BigDecimal**| Whether to maximize used ingredients (1) or minimize missing ingredients (2) first. | [optional]
 **ignorePantry** | **Boolean**| Whether to ignore typical pantry items, such as water, salt, flour, etc. | [optional]

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="searchRecipesByNutrients"></a>
# **searchRecipesByNutrients**
> Object searchRecipesByNutrients(minCarbs, maxCarbs, minProtein, maxProtein, minCalories, maxCalories, minFat, maxFat, minAlcohol, maxAlcohol, minCaffeine, maxCaffeine, minCopper, maxCopper, minCalcium, maxCalcium, minCholine, maxCholine, minCholesterol, maxCholesterol, minFluoride, maxFluoride, minSaturatedFat, maxSaturatedFat, minVitaminA, maxVitaminA, minVitaminC, maxVitaminC, minVitaminD, maxVitaminD, minVitaminE, maxVitaminE, minVitaminK, maxVitaminK, minVitaminB1, maxVitaminB1, minVitaminB2, maxVitaminB2, minVitaminB5, maxVitaminB5, minVitaminB3, maxVitaminB3, minVitaminB6, maxVitaminB6, minVitaminB12, maxVitaminB12, minFiber, maxFiber, minFolate, maxFolate, minFolicAcid, maxFolicAcid, minIodine, maxIodine, minIron, maxIron, minMagnesium, maxMagnesium, minManganese, maxManganese, minPhosphorus, maxPhosphorus, minPotassium, maxPotassium, minSelenium, maxSelenium, minSodium, maxSodium, minSugar, maxSugar, minZinc, maxZinc, offset, number, random, limitLicense)

Search Recipes by Nutrients

Find a set of recipes that adhere to the given nutritional limits. You may set limits for macronutrients (calories, protein, fat, and carbohydrate) and/or many micronutrients.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
BigDecimal minCarbs = 10; // BigDecimal | The minimum amount of carbohydrates in grams the recipe must have.
BigDecimal maxCarbs = 100; // BigDecimal | The maximum amount of carbohydrates in grams the recipe can have.
BigDecimal minProtein = 10; // BigDecimal | The minimum amount of protein in grams the recipe must have.
BigDecimal maxProtein = 100; // BigDecimal | The maximum amount of protein in grams the recipe can have.
BigDecimal minCalories = 50; // BigDecimal | The minimum amount of calories the recipe must have.
BigDecimal maxCalories = 800; // BigDecimal | The maximum amount of calories the recipe can have.
BigDecimal minFat = 1; // BigDecimal | The minimum amount of fat in grams the recipe must have.
BigDecimal maxFat = 100; // BigDecimal | The maximum amount of fat in grams the recipe can have.
BigDecimal minAlcohol = 0; // BigDecimal | The minimum amount of alcohol in grams the recipe must have.
BigDecimal maxAlcohol = 100; // BigDecimal | The maximum amount of alcohol in grams the recipe can have.
BigDecimal minCaffeine = 0; // BigDecimal | The minimum amount of caffeine in milligrams the recipe must have.
BigDecimal maxCaffeine = 100; // BigDecimal | The maximum amount of caffeine in milligrams the recipe can have.
BigDecimal minCopper = 0; // BigDecimal | The minimum amount of copper in milligrams the recipe must have.
BigDecimal maxCopper = 100; // BigDecimal | The maximum amount of copper in milligrams the recipe can have.
BigDecimal minCalcium = 0; // BigDecimal | The minimum amount of calcium in milligrams the recipe must have.
BigDecimal maxCalcium = 100; // BigDecimal | The maximum amount of calcium in milligrams the recipe can have.
BigDecimal minCholine = 0; // BigDecimal | The minimum amount of choline in milligrams the recipe must have.
BigDecimal maxCholine = 100; // BigDecimal | The maximum amount of choline in milligrams the recipe can have.
BigDecimal minCholesterol = 0; // BigDecimal | The minimum amount of cholesterol in milligrams the recipe must have.
BigDecimal maxCholesterol = 100; // BigDecimal | The maximum amount of cholesterol in milligrams the recipe can have.
BigDecimal minFluoride = 0; // BigDecimal | The minimum amount of fluoride in milligrams the recipe must have.
BigDecimal maxFluoride = 100; // BigDecimal | The maximum amount of fluoride in milligrams the recipe can have.
BigDecimal minSaturatedFat = 0; // BigDecimal | The minimum amount of saturated fat in grams the recipe must have.
BigDecimal maxSaturatedFat = 100; // BigDecimal | The maximum amount of saturated fat in grams the recipe can have.
BigDecimal minVitaminA = 0; // BigDecimal | The minimum amount of Vitamin A in IU the recipe must have.
BigDecimal maxVitaminA = 100; // BigDecimal | The maximum amount of Vitamin A in IU the recipe can have.
BigDecimal minVitaminC = 0; // BigDecimal | The minimum amount of Vitamin C in milligrams the recipe must have.
BigDecimal maxVitaminC = 100; // BigDecimal | The maximum amount of Vitamin C in milligrams the recipe can have.
BigDecimal minVitaminD = 0; // BigDecimal | The minimum amount of Vitamin D in micrograms the recipe must have.
BigDecimal maxVitaminD = 100; // BigDecimal | The maximum amount of Vitamin D in micrograms the recipe can have.
BigDecimal minVitaminE = 0; // BigDecimal | The minimum amount of Vitamin E in milligrams the recipe must have.
BigDecimal maxVitaminE = 100; // BigDecimal | The maximum amount of Vitamin E in milligrams the recipe can have.
BigDecimal minVitaminK = 0; // BigDecimal | The minimum amount of Vitamin K in micrograms the recipe must have.
BigDecimal maxVitaminK = 100; // BigDecimal | The maximum amount of Vitamin K in micrograms the recipe can have.
BigDecimal minVitaminB1 = 0; // BigDecimal | The minimum amount of Vitamin B1 in milligrams the recipe must have.
BigDecimal maxVitaminB1 = 100; // BigDecimal | The maximum amount of Vitamin B1 in milligrams the recipe can have.
BigDecimal minVitaminB2 = 0; // BigDecimal | The minimum amount of Vitamin B2 in milligrams the recipe must have.
BigDecimal maxVitaminB2 = 100; // BigDecimal | The maximum amount of Vitamin B2 in milligrams the recipe can have.
BigDecimal minVitaminB5 = 0; // BigDecimal | The minimum amount of Vitamin B5 in milligrams the recipe must have.
BigDecimal maxVitaminB5 = 100; // BigDecimal | The maximum amount of Vitamin B5 in milligrams the recipe can have.
BigDecimal minVitaminB3 = 0; // BigDecimal | The minimum amount of Vitamin B3 in milligrams the recipe must have.
BigDecimal maxVitaminB3 = 100; // BigDecimal | The maximum amount of Vitamin B3 in milligrams the recipe can have.
BigDecimal minVitaminB6 = 0; // BigDecimal | The minimum amount of Vitamin B6 in milligrams the recipe must have.
BigDecimal maxVitaminB6 = 100; // BigDecimal | The maximum amount of Vitamin B6 in milligrams the recipe can have.
BigDecimal minVitaminB12 = 0; // BigDecimal | The minimum amount of Vitamin B12 in micrograms the recipe must have.
BigDecimal maxVitaminB12 = 100; // BigDecimal | The maximum amount of Vitamin B12 in micrograms the recipe can have.
BigDecimal minFiber = 0; // BigDecimal | The minimum amount of fiber in grams the recipe must have.
BigDecimal maxFiber = 100; // BigDecimal | The maximum amount of fiber in grams the recipe can have.
BigDecimal minFolate = 0; // BigDecimal | The minimum amount of folate in grams the recipe must have.
BigDecimal maxFolate = 100; // BigDecimal | The maximum amount of folate in grams the recipe can have.
BigDecimal minFolicAcid = 0; // BigDecimal | The minimum amount of folic acid in grams the recipe must have.
BigDecimal maxFolicAcid = 100; // BigDecimal | The maximum amount of folic acid in grams the recipe can have.
BigDecimal minIodine = 0; // BigDecimal | The minimum amount of iodine in grams the recipe must have.
BigDecimal maxIodine = 100; // BigDecimal | The maximum amount of iodine in grams the recipe can have.
BigDecimal minIron = 0; // BigDecimal | The minimum amount of iron in milligrams the recipe must have.
BigDecimal maxIron = 100; // BigDecimal | The maximum amount of iron in milligrams the recipe can have.
BigDecimal minMagnesium = 0; // BigDecimal | The minimum amount of magnesium in milligrams the recipe must have.
BigDecimal maxMagnesium = 100; // BigDecimal | The maximum amount of magnesium in milligrams the recipe can have.
BigDecimal minManganese = 0; // BigDecimal | The minimum amount of manganese in milligrams the recipe must have.
BigDecimal maxManganese = 100; // BigDecimal | The maximum amount of manganese in milligrams the recipe can have.
BigDecimal minPhosphorus = 0; // BigDecimal | The minimum amount of phosphorus in milligrams the recipe must have.
BigDecimal maxPhosphorus = 100; // BigDecimal | The maximum amount of phosphorus in milligrams the recipe can have.
BigDecimal minPotassium = 0; // BigDecimal | The minimum amount of potassium in milligrams the recipe must have.
BigDecimal maxPotassium = 100; // BigDecimal | The maximum amount of potassium in milligrams the recipe can have.
BigDecimal minSelenium = 0; // BigDecimal | The minimum amount of selenium in grams the recipe must have.
BigDecimal maxSelenium = 100; // BigDecimal | The maximum amount of selenium in grams the recipe can have.
BigDecimal minSodium = 0; // BigDecimal | The minimum amount of sodium in milligrams the recipe must have.
BigDecimal maxSodium = 100; // BigDecimal | The maximum amount of sodium in milligrams the recipe can have.
BigDecimal minSugar = 0; // BigDecimal | The minimum amount of sugar in grams the recipe must have.
BigDecimal maxSugar = 100; // BigDecimal | The maximum amount of sugar in grams the recipe can have.
BigDecimal minZinc = 0; // BigDecimal | The minimum amount of zinc in milligrams the recipe must have.
BigDecimal maxZinc = 100; // BigDecimal | The maximum amount of zinc in milligrams the recipe can have.
BigDecimal offset = 0; // BigDecimal | The number of results to skip (between 0 and 900).
BigDecimal number = 10; // BigDecimal | The number of expected results (between 1 and 100).
Boolean random = false; // Boolean | If true, every request will give you a random set of recipes within the requested limits.
Boolean limitLicense = true; // Boolean | Whether the recipes should have an open license that allows display with proper attribution.
try {
    Object result = apiInstance.searchRecipesByNutrients(minCarbs, maxCarbs, minProtein, maxProtein, minCalories, maxCalories, minFat, maxFat, minAlcohol, maxAlcohol, minCaffeine, maxCaffeine, minCopper, maxCopper, minCalcium, maxCalcium, minCholine, maxCholine, minCholesterol, maxCholesterol, minFluoride, maxFluoride, minSaturatedFat, maxSaturatedFat, minVitaminA, maxVitaminA, minVitaminC, maxVitaminC, minVitaminD, maxVitaminD, minVitaminE, maxVitaminE, minVitaminK, maxVitaminK, minVitaminB1, maxVitaminB1, minVitaminB2, maxVitaminB2, minVitaminB5, maxVitaminB5, minVitaminB3, maxVitaminB3, minVitaminB6, maxVitaminB6, minVitaminB12, maxVitaminB12, minFiber, maxFiber, minFolate, maxFolate, minFolicAcid, maxFolicAcid, minIodine, maxIodine, minIron, maxIron, minMagnesium, maxMagnesium, minManganese, maxManganese, minPhosphorus, maxPhosphorus, minPotassium, maxPotassium, minSelenium, maxSelenium, minSodium, maxSodium, minSugar, maxSugar, minZinc, maxZinc, offset, number, random, limitLicense);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#searchRecipesByNutrients");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **minCarbs** | **BigDecimal**| The minimum amount of carbohydrates in grams the recipe must have. | [optional]
 **maxCarbs** | **BigDecimal**| The maximum amount of carbohydrates in grams the recipe can have. | [optional]
 **minProtein** | **BigDecimal**| The minimum amount of protein in grams the recipe must have. | [optional]
 **maxProtein** | **BigDecimal**| The maximum amount of protein in grams the recipe can have. | [optional]
 **minCalories** | **BigDecimal**| The minimum amount of calories the recipe must have. | [optional]
 **maxCalories** | **BigDecimal**| The maximum amount of calories the recipe can have. | [optional]
 **minFat** | **BigDecimal**| The minimum amount of fat in grams the recipe must have. | [optional]
 **maxFat** | **BigDecimal**| The maximum amount of fat in grams the recipe can have. | [optional]
 **minAlcohol** | **BigDecimal**| The minimum amount of alcohol in grams the recipe must have. | [optional]
 **maxAlcohol** | **BigDecimal**| The maximum amount of alcohol in grams the recipe can have. | [optional]
 **minCaffeine** | **BigDecimal**| The minimum amount of caffeine in milligrams the recipe must have. | [optional]
 **maxCaffeine** | **BigDecimal**| The maximum amount of caffeine in milligrams the recipe can have. | [optional]
 **minCopper** | **BigDecimal**| The minimum amount of copper in milligrams the recipe must have. | [optional]
 **maxCopper** | **BigDecimal**| The maximum amount of copper in milligrams the recipe can have. | [optional]
 **minCalcium** | **BigDecimal**| The minimum amount of calcium in milligrams the recipe must have. | [optional]
 **maxCalcium** | **BigDecimal**| The maximum amount of calcium in milligrams the recipe can have. | [optional]
 **minCholine** | **BigDecimal**| The minimum amount of choline in milligrams the recipe must have. | [optional]
 **maxCholine** | **BigDecimal**| The maximum amount of choline in milligrams the recipe can have. | [optional]
 **minCholesterol** | **BigDecimal**| The minimum amount of cholesterol in milligrams the recipe must have. | [optional]
 **maxCholesterol** | **BigDecimal**| The maximum amount of cholesterol in milligrams the recipe can have. | [optional]
 **minFluoride** | **BigDecimal**| The minimum amount of fluoride in milligrams the recipe must have. | [optional]
 **maxFluoride** | **BigDecimal**| The maximum amount of fluoride in milligrams the recipe can have. | [optional]
 **minSaturatedFat** | **BigDecimal**| The minimum amount of saturated fat in grams the recipe must have. | [optional]
 **maxSaturatedFat** | **BigDecimal**| The maximum amount of saturated fat in grams the recipe can have. | [optional]
 **minVitaminA** | **BigDecimal**| The minimum amount of Vitamin A in IU the recipe must have. | [optional]
 **maxVitaminA** | **BigDecimal**| The maximum amount of Vitamin A in IU the recipe can have. | [optional]
 **minVitaminC** | **BigDecimal**| The minimum amount of Vitamin C in milligrams the recipe must have. | [optional]
 **maxVitaminC** | **BigDecimal**| The maximum amount of Vitamin C in milligrams the recipe can have. | [optional]
 **minVitaminD** | **BigDecimal**| The minimum amount of Vitamin D in micrograms the recipe must have. | [optional]
 **maxVitaminD** | **BigDecimal**| The maximum amount of Vitamin D in micrograms the recipe can have. | [optional]
 **minVitaminE** | **BigDecimal**| The minimum amount of Vitamin E in milligrams the recipe must have. | [optional]
 **maxVitaminE** | **BigDecimal**| The maximum amount of Vitamin E in milligrams the recipe can have. | [optional]
 **minVitaminK** | **BigDecimal**| The minimum amount of Vitamin K in micrograms the recipe must have. | [optional]
 **maxVitaminK** | **BigDecimal**| The maximum amount of Vitamin K in micrograms the recipe can have. | [optional]
 **minVitaminB1** | **BigDecimal**| The minimum amount of Vitamin B1 in milligrams the recipe must have. | [optional]
 **maxVitaminB1** | **BigDecimal**| The maximum amount of Vitamin B1 in milligrams the recipe can have. | [optional]
 **minVitaminB2** | **BigDecimal**| The minimum amount of Vitamin B2 in milligrams the recipe must have. | [optional]
 **maxVitaminB2** | **BigDecimal**| The maximum amount of Vitamin B2 in milligrams the recipe can have. | [optional]
 **minVitaminB5** | **BigDecimal**| The minimum amount of Vitamin B5 in milligrams the recipe must have. | [optional]
 **maxVitaminB5** | **BigDecimal**| The maximum amount of Vitamin B5 in milligrams the recipe can have. | [optional]
 **minVitaminB3** | **BigDecimal**| The minimum amount of Vitamin B3 in milligrams the recipe must have. | [optional]
 **maxVitaminB3** | **BigDecimal**| The maximum amount of Vitamin B3 in milligrams the recipe can have. | [optional]
 **minVitaminB6** | **BigDecimal**| The minimum amount of Vitamin B6 in milligrams the recipe must have. | [optional]
 **maxVitaminB6** | **BigDecimal**| The maximum amount of Vitamin B6 in milligrams the recipe can have. | [optional]
 **minVitaminB12** | **BigDecimal**| The minimum amount of Vitamin B12 in micrograms the recipe must have. | [optional]
 **maxVitaminB12** | **BigDecimal**| The maximum amount of Vitamin B12 in micrograms the recipe can have. | [optional]
 **minFiber** | **BigDecimal**| The minimum amount of fiber in grams the recipe must have. | [optional]
 **maxFiber** | **BigDecimal**| The maximum amount of fiber in grams the recipe can have. | [optional]
 **minFolate** | **BigDecimal**| The minimum amount of folate in grams the recipe must have. | [optional]
 **maxFolate** | **BigDecimal**| The maximum amount of folate in grams the recipe can have. | [optional]
 **minFolicAcid** | **BigDecimal**| The minimum amount of folic acid in grams the recipe must have. | [optional]
 **maxFolicAcid** | **BigDecimal**| The maximum amount of folic acid in grams the recipe can have. | [optional]
 **minIodine** | **BigDecimal**| The minimum amount of iodine in grams the recipe must have. | [optional]
 **maxIodine** | **BigDecimal**| The maximum amount of iodine in grams the recipe can have. | [optional]
 **minIron** | **BigDecimal**| The minimum amount of iron in milligrams the recipe must have. | [optional]
 **maxIron** | **BigDecimal**| The maximum amount of iron in milligrams the recipe can have. | [optional]
 **minMagnesium** | **BigDecimal**| The minimum amount of magnesium in milligrams the recipe must have. | [optional]
 **maxMagnesium** | **BigDecimal**| The maximum amount of magnesium in milligrams the recipe can have. | [optional]
 **minManganese** | **BigDecimal**| The minimum amount of manganese in milligrams the recipe must have. | [optional]
 **maxManganese** | **BigDecimal**| The maximum amount of manganese in milligrams the recipe can have. | [optional]
 **minPhosphorus** | **BigDecimal**| The minimum amount of phosphorus in milligrams the recipe must have. | [optional]
 **maxPhosphorus** | **BigDecimal**| The maximum amount of phosphorus in milligrams the recipe can have. | [optional]
 **minPotassium** | **BigDecimal**| The minimum amount of potassium in milligrams the recipe must have. | [optional]
 **maxPotassium** | **BigDecimal**| The maximum amount of potassium in milligrams the recipe can have. | [optional]
 **minSelenium** | **BigDecimal**| The minimum amount of selenium in grams the recipe must have. | [optional]
 **maxSelenium** | **BigDecimal**| The maximum amount of selenium in grams the recipe can have. | [optional]
 **minSodium** | **BigDecimal**| The minimum amount of sodium in milligrams the recipe must have. | [optional]
 **maxSodium** | **BigDecimal**| The maximum amount of sodium in milligrams the recipe can have. | [optional]
 **minSugar** | **BigDecimal**| The minimum amount of sugar in grams the recipe must have. | [optional]
 **maxSugar** | **BigDecimal**| The maximum amount of sugar in grams the recipe can have. | [optional]
 **minZinc** | **BigDecimal**| The minimum amount of zinc in milligrams the recipe must have. | [optional]
 **maxZinc** | **BigDecimal**| The maximum amount of zinc in milligrams the recipe can have. | [optional]
 **offset** | **BigDecimal**| The number of results to skip (between 0 and 900). | [optional]
 **number** | **BigDecimal**| The number of expected results (between 1 and 100). | [optional]
 **random** | **Boolean**| If true, every request will give you a random set of recipes within the requested limits. | [optional]
 **limitLicense** | **Boolean**| Whether the recipes should have an open license that allows display with proper attribution. | [optional]

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="searchRecipesComplex"></a>
# **searchRecipesComplex**
> Object searchRecipesComplex(query, cuisine, excludeCuisine, diet, intolerances, equipment, includeIngredients, excludeIngredients, type, instructionsRequired, fillIngredients, addRecipeInformation, addRecipeNutrition, author, tags, recipeBoxId, titleMatch, maxReadyTime, ignorePantry, sort, sortDirection, minCarbs, maxCarbs, minProtein, maxProtein, minCalories, maxCalories, minFat, maxFat, minAlcohol, maxAlcohol, minCaffeine, maxCaffeine, minCopper, maxCopper, minCalcium, maxCalcium, minCholine, maxCholine, minCholesterol, maxCholesterol, minFluoride, maxFluoride, minSaturatedFat, maxSaturatedFat, minVitaminA, maxVitaminA, minVitaminC, maxVitaminC, minVitaminD, maxVitaminD, minVitaminE, maxVitaminE, minVitaminK, maxVitaminK, minVitaminB1, maxVitaminB1, minVitaminB2, maxVitaminB2, minVitaminB5, maxVitaminB5, minVitaminB3, maxVitaminB3, minVitaminB6, maxVitaminB6, minVitaminB12, maxVitaminB12, minFiber, maxFiber, minFolate, maxFolate, minFolicAcid, maxFolicAcid, minIodine, maxIodine, minIron, maxIron, minMagnesium, maxMagnesium, minManganese, maxManganese, minPhosphorus, maxPhosphorus, minPotassium, maxPotassium, minSelenium, maxSelenium, minSodium, maxSodium, minSugar, maxSugar, minZinc, maxZinc, offset, number, limitLicense)

Search Recipes Complex

Search through hundreds of thousands of recipes using advanced filtering and ranking. NOTE: This method combines searching by query, by ingredients, and by nutrients into one endpoint.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
String query = pasta; // String | The (natural language) recipe search query.
String cuisine = italian; // String | The cuisine(s) of the recipes. One or more, comma separated (will be interpreted as 'OR'). See a full list of supported cuisines.
String excludeCuisine = greek; // String | The cuisine(s) the recipes must not match. One or more, comma separated (will be interpreted as 'AND'). See a full list of supported cuisines.
String diet = vegetarian; // String | The diet for which the recipes must be suitable. See a full list of supported diets.
String intolerances = gluten; // String | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.
String equipment = pan; // String | The equipment required. Multiple values will be interpreted as 'or'. For example, value could be \"blender, frying pan, bowl\".
String includeIngredients = tomato,cheese; // String | A comma-separated list of ingredients that should/must be used in the recipes.
String excludeIngredients = eggs; // String | A comma-separated list of ingredients or ingredient types that the recipes must not contain.
String type = main course; // String | The type of recipe. See a full list of supported meal types.
Boolean instructionsRequired = true; // Boolean | Whether the recipes must have instructions.
Boolean fillIngredients = false; // Boolean | Add information about the ingredients and whether they are used or missing in relation to the query.
Boolean addRecipeInformation = false; // Boolean | If set to true, you get more information about the recipes returned.
Boolean addRecipeNutrition = false; // Boolean | If set to true, you get nutritional information about each recipes returned.
String author = coffeebean; // String | The username of the recipe author.
String tags = myCustomTag; // String | User defined tags that have to match. The author param has to be set.
BigDecimal recipeBoxId = 2468; // BigDecimal | The id of the recipe box to which the search should be limited to.
String titleMatch = Crock Pot; // String | Enter text that must be found in the title of the recipes.
BigDecimal maxReadyTime = 20; // BigDecimal | The maximum time in minutes it should take to prepare and cook the recipe.
Boolean ignorePantry = true; // Boolean | Whether to ignore typical pantry items, such as water, salt, flour, etc.
String sort = calories; // String | The strategy to sort recipes by. See a full list of supported sorting options.
String sortDirection = asc; // String | The direction in which to sort. Must be either 'asc' (ascending) or 'desc' (descending).
BigDecimal minCarbs = 10; // BigDecimal | The minimum amount of carbohydrates in grams the recipe must have.
BigDecimal maxCarbs = 100; // BigDecimal | The maximum amount of carbohydrates in grams the recipe can have.
BigDecimal minProtein = 10; // BigDecimal | The minimum amount of protein in grams the recipe must have.
BigDecimal maxProtein = 100; // BigDecimal | The maximum amount of protein in grams the recipe can have.
BigDecimal minCalories = 50; // BigDecimal | The minimum amount of calories the recipe must have.
BigDecimal maxCalories = 800; // BigDecimal | The maximum amount of calories the recipe can have.
BigDecimal minFat = 1; // BigDecimal | The minimum amount of fat in grams the recipe must have.
BigDecimal maxFat = 100; // BigDecimal | The maximum amount of fat in grams the recipe can have.
BigDecimal minAlcohol = 0; // BigDecimal | The minimum amount of alcohol in grams the recipe must have.
BigDecimal maxAlcohol = 100; // BigDecimal | The maximum amount of alcohol in grams the recipe can have.
BigDecimal minCaffeine = 0; // BigDecimal | The minimum amount of caffeine in milligrams the recipe must have.
BigDecimal maxCaffeine = 100; // BigDecimal | The maximum amount of caffeine in milligrams the recipe can have.
BigDecimal minCopper = 0; // BigDecimal | The minimum amount of copper in milligrams the recipe must have.
BigDecimal maxCopper = 100; // BigDecimal | The maximum amount of copper in milligrams the recipe can have.
BigDecimal minCalcium = 0; // BigDecimal | The minimum amount of calcium in milligrams the recipe must have.
BigDecimal maxCalcium = 100; // BigDecimal | The maximum amount of calcium in milligrams the recipe can have.
BigDecimal minCholine = 0; // BigDecimal | The minimum amount of choline in milligrams the recipe must have.
BigDecimal maxCholine = 100; // BigDecimal | The maximum amount of choline in milligrams the recipe can have.
BigDecimal minCholesterol = 0; // BigDecimal | The minimum amount of cholesterol in milligrams the recipe must have.
BigDecimal maxCholesterol = 100; // BigDecimal | The maximum amount of cholesterol in milligrams the recipe can have.
BigDecimal minFluoride = 0; // BigDecimal | The minimum amount of fluoride in milligrams the recipe must have.
BigDecimal maxFluoride = 100; // BigDecimal | The maximum amount of fluoride in milligrams the recipe can have.
BigDecimal minSaturatedFat = 0; // BigDecimal | The minimum amount of saturated fat in grams the recipe must have.
BigDecimal maxSaturatedFat = 100; // BigDecimal | The maximum amount of saturated fat in grams the recipe can have.
BigDecimal minVitaminA = 0; // BigDecimal | The minimum amount of Vitamin A in IU the recipe must have.
BigDecimal maxVitaminA = 100; // BigDecimal | The maximum amount of Vitamin A in IU the recipe can have.
BigDecimal minVitaminC = 0; // BigDecimal | The minimum amount of Vitamin C milligrams the recipe must have.
BigDecimal maxVitaminC = 100; // BigDecimal | The maximum amount of Vitamin C in milligrams the recipe can have.
BigDecimal minVitaminD = 0; // BigDecimal | The minimum amount of Vitamin D in micrograms the recipe must have.
BigDecimal maxVitaminD = 100; // BigDecimal | The maximum amount of Vitamin D in micrograms the recipe can have.
BigDecimal minVitaminE = 0; // BigDecimal | The minimum amount of Vitamin E in milligrams the recipe must have.
BigDecimal maxVitaminE = 100; // BigDecimal | The maximum amount of Vitamin E in milligrams the recipe can have.
BigDecimal minVitaminK = 0; // BigDecimal | The minimum amount of Vitamin K in micrograms the recipe must have.
BigDecimal maxVitaminK = 100; // BigDecimal | The maximum amount of Vitamin K in micrograms the recipe can have.
BigDecimal minVitaminB1 = 0; // BigDecimal | The minimum amount of Vitamin B1 in milligrams the recipe must have.
BigDecimal maxVitaminB1 = 100; // BigDecimal | The maximum amount of Vitamin B1 in milligrams the recipe can have.
BigDecimal minVitaminB2 = 0; // BigDecimal | The minimum amount of Vitamin B2 in milligrams the recipe must have.
BigDecimal maxVitaminB2 = 100; // BigDecimal | The maximum amount of Vitamin B2 in milligrams the recipe can have.
BigDecimal minVitaminB5 = 0; // BigDecimal | The minimum amount of Vitamin B5 in milligrams the recipe must have.
BigDecimal maxVitaminB5 = 100; // BigDecimal | The maximum amount of Vitamin B5 in milligrams the recipe can have.
BigDecimal minVitaminB3 = 0; // BigDecimal | The minimum amount of Vitamin B3 in milligrams the recipe must have.
BigDecimal maxVitaminB3 = 100; // BigDecimal | The maximum amount of Vitamin B3 in milligrams the recipe can have.
BigDecimal minVitaminB6 = 0; // BigDecimal | The minimum amount of Vitamin B6 in milligrams the recipe must have.
BigDecimal maxVitaminB6 = 100; // BigDecimal | The maximum amount of Vitamin B6 in milligrams the recipe can have.
BigDecimal minVitaminB12 = 0; // BigDecimal | The minimum amount of Vitamin B12 in micrograms the recipe must have.
BigDecimal maxVitaminB12 = 100; // BigDecimal | The maximum amount of Vitamin B12 in micrograms the recipe can have.
BigDecimal minFiber = 0; // BigDecimal | The minimum amount of fiber in grams the recipe must have.
BigDecimal maxFiber = 100; // BigDecimal | The maximum amount of fiber in grams the recipe can have.
BigDecimal minFolate = 0; // BigDecimal | The minimum amount of folate in grams the recipe must have.
BigDecimal maxFolate = 100; // BigDecimal | The maximum amount of folate in grams the recipe can have.
BigDecimal minFolicAcid = 0; // BigDecimal | The minimum amount of folic acid in grams the recipe must have.
BigDecimal maxFolicAcid = 100; // BigDecimal | The maximum amount of folic acid in grams the recipe can have.
BigDecimal minIodine = 0; // BigDecimal | The minimum amount of iodine in grams the recipe must have.
BigDecimal maxIodine = 100; // BigDecimal | The maximum amount of iodine in grams the recipe can have.
BigDecimal minIron = 0; // BigDecimal | The minimum amount of iron in milligrams the recipe must have.
BigDecimal maxIron = 100; // BigDecimal | The maximum amount of iron in milligrams the recipe can have.
BigDecimal minMagnesium = 0; // BigDecimal | The minimum amount of magnesium in milligrams the recipe must have.
BigDecimal maxMagnesium = 100; // BigDecimal | The maximum amount of magnesium in milligrams the recipe can have.
BigDecimal minManganese = 0; // BigDecimal | The minimum amount of manganese in milligrams the recipe must have.
BigDecimal maxManganese = 100; // BigDecimal | The maximum amount of manganese in milligrams the recipe can have.
BigDecimal minPhosphorus = 0; // BigDecimal | The minimum amount of phosphorus in milligrams the recipe must have.
BigDecimal maxPhosphorus = 100; // BigDecimal | The maximum amount of phosphorus in milligrams the recipe can have.
BigDecimal minPotassium = 0; // BigDecimal | The minimum amount of potassium in milligrams the recipe must have.
BigDecimal maxPotassium = 100; // BigDecimal | The maximum amount of potassium in milligrams the recipe can have.
BigDecimal minSelenium = 0; // BigDecimal | The minimum amount of selenium in grams the recipe must have.
BigDecimal maxSelenium = 100; // BigDecimal | The maximum amount of selenium in grams the recipe can have.
BigDecimal minSodium = 0; // BigDecimal | The minimum amount of sodium in milligrams the recipe must have.
BigDecimal maxSodium = 100; // BigDecimal | The maximum amount of sodium in milligrams the recipe can have.
BigDecimal minSugar = 0; // BigDecimal | The minimum amount of sugar in grams the recipe must have.
BigDecimal maxSugar = 100; // BigDecimal | The maximum amount of sugar in grams the recipe can have.
BigDecimal minZinc = 0; // BigDecimal | The minimum amount of zinc in milligrams the recipe must have.
BigDecimal maxZinc = 100; // BigDecimal | The maximum amount of zinc in milligrams the recipe can have.
BigDecimal offset = 0; // BigDecimal | The number of results to skip (between 0 and 900).
BigDecimal number = 10; // BigDecimal | The number of expected results (between 1 and 100).
Boolean limitLicense = true; // Boolean | Whether the recipes should have an open license that allows display with proper attribution.
try {
    Object result = apiInstance.searchRecipesComplex(query, cuisine, excludeCuisine, diet, intolerances, equipment, includeIngredients, excludeIngredients, type, instructionsRequired, fillIngredients, addRecipeInformation, addRecipeNutrition, author, tags, recipeBoxId, titleMatch, maxReadyTime, ignorePantry, sort, sortDirection, minCarbs, maxCarbs, minProtein, maxProtein, minCalories, maxCalories, minFat, maxFat, minAlcohol, maxAlcohol, minCaffeine, maxCaffeine, minCopper, maxCopper, minCalcium, maxCalcium, minCholine, maxCholine, minCholesterol, maxCholesterol, minFluoride, maxFluoride, minSaturatedFat, maxSaturatedFat, minVitaminA, maxVitaminA, minVitaminC, maxVitaminC, minVitaminD, maxVitaminD, minVitaminE, maxVitaminE, minVitaminK, maxVitaminK, minVitaminB1, maxVitaminB1, minVitaminB2, maxVitaminB2, minVitaminB5, maxVitaminB5, minVitaminB3, maxVitaminB3, minVitaminB6, maxVitaminB6, minVitaminB12, maxVitaminB12, minFiber, maxFiber, minFolate, maxFolate, minFolicAcid, maxFolicAcid, minIodine, maxIodine, minIron, maxIron, minMagnesium, maxMagnesium, minManganese, maxManganese, minPhosphorus, maxPhosphorus, minPotassium, maxPotassium, minSelenium, maxSelenium, minSodium, maxSodium, minSugar, maxSugar, minZinc, maxZinc, offset, number, limitLicense);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#searchRecipesComplex");
    e.printStackTrace();
}
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
 **recipeBoxId** | **BigDecimal**| The id of the recipe box to which the search should be limited to. | [optional]
 **titleMatch** | **String**| Enter text that must be found in the title of the recipes. | [optional]
 **maxReadyTime** | **BigDecimal**| The maximum time in minutes it should take to prepare and cook the recipe. | [optional]
 **ignorePantry** | **Boolean**| Whether to ignore typical pantry items, such as water, salt, flour, etc. | [optional]
 **sort** | **String**| The strategy to sort recipes by. See a full list of supported sorting options. | [optional]
 **sortDirection** | **String**| The direction in which to sort. Must be either &#39;asc&#39; (ascending) or &#39;desc&#39; (descending). | [optional]
 **minCarbs** | **BigDecimal**| The minimum amount of carbohydrates in grams the recipe must have. | [optional]
 **maxCarbs** | **BigDecimal**| The maximum amount of carbohydrates in grams the recipe can have. | [optional]
 **minProtein** | **BigDecimal**| The minimum amount of protein in grams the recipe must have. | [optional]
 **maxProtein** | **BigDecimal**| The maximum amount of protein in grams the recipe can have. | [optional]
 **minCalories** | **BigDecimal**| The minimum amount of calories the recipe must have. | [optional]
 **maxCalories** | **BigDecimal**| The maximum amount of calories the recipe can have. | [optional]
 **minFat** | **BigDecimal**| The minimum amount of fat in grams the recipe must have. | [optional]
 **maxFat** | **BigDecimal**| The maximum amount of fat in grams the recipe can have. | [optional]
 **minAlcohol** | **BigDecimal**| The minimum amount of alcohol in grams the recipe must have. | [optional]
 **maxAlcohol** | **BigDecimal**| The maximum amount of alcohol in grams the recipe can have. | [optional]
 **minCaffeine** | **BigDecimal**| The minimum amount of caffeine in milligrams the recipe must have. | [optional]
 **maxCaffeine** | **BigDecimal**| The maximum amount of caffeine in milligrams the recipe can have. | [optional]
 **minCopper** | **BigDecimal**| The minimum amount of copper in milligrams the recipe must have. | [optional]
 **maxCopper** | **BigDecimal**| The maximum amount of copper in milligrams the recipe can have. | [optional]
 **minCalcium** | **BigDecimal**| The minimum amount of calcium in milligrams the recipe must have. | [optional]
 **maxCalcium** | **BigDecimal**| The maximum amount of calcium in milligrams the recipe can have. | [optional]
 **minCholine** | **BigDecimal**| The minimum amount of choline in milligrams the recipe must have. | [optional]
 **maxCholine** | **BigDecimal**| The maximum amount of choline in milligrams the recipe can have. | [optional]
 **minCholesterol** | **BigDecimal**| The minimum amount of cholesterol in milligrams the recipe must have. | [optional]
 **maxCholesterol** | **BigDecimal**| The maximum amount of cholesterol in milligrams the recipe can have. | [optional]
 **minFluoride** | **BigDecimal**| The minimum amount of fluoride in milligrams the recipe must have. | [optional]
 **maxFluoride** | **BigDecimal**| The maximum amount of fluoride in milligrams the recipe can have. | [optional]
 **minSaturatedFat** | **BigDecimal**| The minimum amount of saturated fat in grams the recipe must have. | [optional]
 **maxSaturatedFat** | **BigDecimal**| The maximum amount of saturated fat in grams the recipe can have. | [optional]
 **minVitaminA** | **BigDecimal**| The minimum amount of Vitamin A in IU the recipe must have. | [optional]
 **maxVitaminA** | **BigDecimal**| The maximum amount of Vitamin A in IU the recipe can have. | [optional]
 **minVitaminC** | **BigDecimal**| The minimum amount of Vitamin C milligrams the recipe must have. | [optional]
 **maxVitaminC** | **BigDecimal**| The maximum amount of Vitamin C in milligrams the recipe can have. | [optional]
 **minVitaminD** | **BigDecimal**| The minimum amount of Vitamin D in micrograms the recipe must have. | [optional]
 **maxVitaminD** | **BigDecimal**| The maximum amount of Vitamin D in micrograms the recipe can have. | [optional]
 **minVitaminE** | **BigDecimal**| The minimum amount of Vitamin E in milligrams the recipe must have. | [optional]
 **maxVitaminE** | **BigDecimal**| The maximum amount of Vitamin E in milligrams the recipe can have. | [optional]
 **minVitaminK** | **BigDecimal**| The minimum amount of Vitamin K in micrograms the recipe must have. | [optional]
 **maxVitaminK** | **BigDecimal**| The maximum amount of Vitamin K in micrograms the recipe can have. | [optional]
 **minVitaminB1** | **BigDecimal**| The minimum amount of Vitamin B1 in milligrams the recipe must have. | [optional]
 **maxVitaminB1** | **BigDecimal**| The maximum amount of Vitamin B1 in milligrams the recipe can have. | [optional]
 **minVitaminB2** | **BigDecimal**| The minimum amount of Vitamin B2 in milligrams the recipe must have. | [optional]
 **maxVitaminB2** | **BigDecimal**| The maximum amount of Vitamin B2 in milligrams the recipe can have. | [optional]
 **minVitaminB5** | **BigDecimal**| The minimum amount of Vitamin B5 in milligrams the recipe must have. | [optional]
 **maxVitaminB5** | **BigDecimal**| The maximum amount of Vitamin B5 in milligrams the recipe can have. | [optional]
 **minVitaminB3** | **BigDecimal**| The minimum amount of Vitamin B3 in milligrams the recipe must have. | [optional]
 **maxVitaminB3** | **BigDecimal**| The maximum amount of Vitamin B3 in milligrams the recipe can have. | [optional]
 **minVitaminB6** | **BigDecimal**| The minimum amount of Vitamin B6 in milligrams the recipe must have. | [optional]
 **maxVitaminB6** | **BigDecimal**| The maximum amount of Vitamin B6 in milligrams the recipe can have. | [optional]
 **minVitaminB12** | **BigDecimal**| The minimum amount of Vitamin B12 in micrograms the recipe must have. | [optional]
 **maxVitaminB12** | **BigDecimal**| The maximum amount of Vitamin B12 in micrograms the recipe can have. | [optional]
 **minFiber** | **BigDecimal**| The minimum amount of fiber in grams the recipe must have. | [optional]
 **maxFiber** | **BigDecimal**| The maximum amount of fiber in grams the recipe can have. | [optional]
 **minFolate** | **BigDecimal**| The minimum amount of folate in grams the recipe must have. | [optional]
 **maxFolate** | **BigDecimal**| The maximum amount of folate in grams the recipe can have. | [optional]
 **minFolicAcid** | **BigDecimal**| The minimum amount of folic acid in grams the recipe must have. | [optional]
 **maxFolicAcid** | **BigDecimal**| The maximum amount of folic acid in grams the recipe can have. | [optional]
 **minIodine** | **BigDecimal**| The minimum amount of iodine in grams the recipe must have. | [optional]
 **maxIodine** | **BigDecimal**| The maximum amount of iodine in grams the recipe can have. | [optional]
 **minIron** | **BigDecimal**| The minimum amount of iron in milligrams the recipe must have. | [optional]
 **maxIron** | **BigDecimal**| The maximum amount of iron in milligrams the recipe can have. | [optional]
 **minMagnesium** | **BigDecimal**| The minimum amount of magnesium in milligrams the recipe must have. | [optional]
 **maxMagnesium** | **BigDecimal**| The maximum amount of magnesium in milligrams the recipe can have. | [optional]
 **minManganese** | **BigDecimal**| The minimum amount of manganese in milligrams the recipe must have. | [optional]
 **maxManganese** | **BigDecimal**| The maximum amount of manganese in milligrams the recipe can have. | [optional]
 **minPhosphorus** | **BigDecimal**| The minimum amount of phosphorus in milligrams the recipe must have. | [optional]
 **maxPhosphorus** | **BigDecimal**| The maximum amount of phosphorus in milligrams the recipe can have. | [optional]
 **minPotassium** | **BigDecimal**| The minimum amount of potassium in milligrams the recipe must have. | [optional]
 **maxPotassium** | **BigDecimal**| The maximum amount of potassium in milligrams the recipe can have. | [optional]
 **minSelenium** | **BigDecimal**| The minimum amount of selenium in grams the recipe must have. | [optional]
 **maxSelenium** | **BigDecimal**| The maximum amount of selenium in grams the recipe can have. | [optional]
 **minSodium** | **BigDecimal**| The minimum amount of sodium in milligrams the recipe must have. | [optional]
 **maxSodium** | **BigDecimal**| The maximum amount of sodium in milligrams the recipe can have. | [optional]
 **minSugar** | **BigDecimal**| The minimum amount of sugar in grams the recipe must have. | [optional]
 **maxSugar** | **BigDecimal**| The maximum amount of sugar in grams the recipe can have. | [optional]
 **minZinc** | **BigDecimal**| The minimum amount of zinc in milligrams the recipe must have. | [optional]
 **maxZinc** | **BigDecimal**| The maximum amount of zinc in milligrams the recipe can have. | [optional]
 **offset** | **BigDecimal**| The number of results to skip (between 0 and 900). | [optional]
 **number** | **BigDecimal**| The number of expected results (between 1 and 100). | [optional]
 **limitLicense** | **Boolean**| Whether the recipes should have an open license that allows display with proper attribution. | [optional]

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="searchSiteContent"></a>
# **searchSiteContent**
> Object searchSiteContent(query)

Search Site Content

Search spoonacular&#39;s site content. You&#39;ll be able to find everything that you could also find using the search suggestions on spoonacular.com. This is a suggest API so you can send partial strings as queries.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
String query = past; // String | The query to search for. You can also use partial queries such as \"spagh\" to already find spaghetti recipes, articles, grocery products, and other content.
try {
    Object result = apiInstance.searchSiteContent(query);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#searchSiteContent");
    e.printStackTrace();
}
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

<a name="summarizeRecipe"></a>
# **summarizeRecipe**
> Object summarizeRecipe(id)

Summarize Recipe

Automatically generate a short description that summarizes key information about the recipe.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
BigDecimal id = 4632; // BigDecimal | The recipe id.
try {
    Object result = apiInstance.summarizeRecipe(id);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#summarizeRecipe");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **BigDecimal**| The recipe id. |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="talkToChatbot"></a>
# **talkToChatbot**
> Object talkToChatbot(text, contextId)

Talk to Chatbot

This endpoint can be used to have a conversation about food with the spoonacular chatbot. Use the \&quot;Get Conversation Suggests\&quot; endpoint to show your user what he or she can say.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
String text = donut recipes; // String | The request / question / answer from the user to the chatbot.
String contextId = 342938; // String | An arbitrary globally unique id for your conversation. The conversation can contain states so you should pass your context id if you want the bot to be able to remember the conversation.
try {
    Object result = apiInstance.talkToChatbot(text, contextId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#talkToChatbot");
    e.printStackTrace();
}
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

<a name="visualizeEquipment"></a>
# **visualizeEquipment**
> String visualizeEquipment(ingredientList, servings, view, defaultCss, showBacklink)

Visualize Equipment

Visualize the equipment used to make a recipe.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
String ingredientList = "ingredientList_example"; // String | The ingredient list of the recipe, one ingredient per line.
BigDecimal servings = new BigDecimal(); // BigDecimal | The number of servings.
String view = "view_example"; // String | How to visualize the equipment, either \\\"grid\\\" or \\\"list\\\".
Boolean defaultCss = true; // Boolean | Whether the default CSS should be added to the response.
Boolean showBacklink = true; // Boolean | Whether to show a backlink to spoonacular. If set false, this call counts against your quota.
try {
    String result = apiInstance.visualizeEquipment(ingredientList, servings, view, defaultCss, showBacklink);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#visualizeEquipment");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredientList** | **String**| The ingredient list of the recipe, one ingredient per line. |
 **servings** | **BigDecimal**| The number of servings. |
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

<a name="visualizeIngredients"></a>
# **visualizeIngredients**
> String visualizeIngredients(ingredientList, servings, measure, view, defaultCss, showBacklink)

Visualize Ingredients

Visualize ingredients of a recipe.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
String ingredientList = "ingredientList_example"; // String | The ingredient list of the recipe, one ingredient per line.
BigDecimal servings = new BigDecimal(); // BigDecimal | The number of servings.
String measure = "measure_example"; // String | The original system of measurement, either \\\"metric\\\" or \\\"us\\\".
String view = "view_example"; // String | How to visualize the ingredients, either \\\"grid\\\" or \\\"list\\\".
Boolean defaultCss = true; // Boolean | Whether the default CSS should be added to the response.
Boolean showBacklink = true; // Boolean | Whether to show a backlink to spoonacular. If set false, this call counts against your quota.
try {
    String result = apiInstance.visualizeIngredients(ingredientList, servings, measure, view, defaultCss, showBacklink);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#visualizeIngredients");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredientList** | **String**| The ingredient list of the recipe, one ingredient per line. |
 **servings** | **BigDecimal**| The number of servings. |
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

<a name="visualizeMenuItemNutritionByID"></a>
# **visualizeMenuItemNutritionByID**
> String visualizeMenuItemNutritionByID(id, defaultCss)

Visualize Menu Item Nutrition by ID

Visualize a menu item&#39;s nutritional information as HTML including CSS.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
BigDecimal id = 1003464; // BigDecimal | The menu item id.
Boolean defaultCss = true; // Boolean | Whether the default CSS should be added to the response.
try {
    String result = apiInstance.visualizeMenuItemNutritionByID(id, defaultCss);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#visualizeMenuItemNutritionByID");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **BigDecimal**| The menu item id. |
 **defaultCss** | **Boolean**| Whether the default CSS should be added to the response. | [optional]

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

<a name="visualizePriceBreakdown"></a>
# **visualizePriceBreakdown**
> String visualizePriceBreakdown(ingredientList, servings, mode, defaultCss, showBacklink)

Visualize Price Breakdown

Visualize the price breakdown of a recipe.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
String ingredientList = "ingredientList_example"; // String | The ingredient list of the recipe, one ingredient per line.
BigDecimal servings = new BigDecimal(); // BigDecimal | The number of servings.
BigDecimal mode = new BigDecimal(); // BigDecimal | The mode in which the widget should be delivered. 1 = separate views (compact), 2 = all in one view (full).
Boolean defaultCss = true; // Boolean | Whether the default CSS should be added to the response.
Boolean showBacklink = true; // Boolean | Whether to show a backlink to spoonacular. If set false, this call counts against your quota.
try {
    String result = apiInstance.visualizePriceBreakdown(ingredientList, servings, mode, defaultCss, showBacklink);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#visualizePriceBreakdown");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredientList** | **String**| The ingredient list of the recipe, one ingredient per line. |
 **servings** | **BigDecimal**| The number of servings. |
 **mode** | **BigDecimal**| The mode in which the widget should be delivered. 1 &#x3D; separate views (compact), 2 &#x3D; all in one view (full). | [optional]
 **defaultCss** | **Boolean**| Whether the default CSS should be added to the response. | [optional]
 **showBacklink** | **Boolean**| Whether to show a backlink to spoonacular. If set false, this call counts against your quota. | [optional]

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/html

<a name="visualizeProductNutritionByID"></a>
# **visualizeProductNutritionByID**
> String visualizeProductNutritionByID(id, defaultCss)

Visualize Product Nutrition by ID

Visualize a product&#39;s nutritional information as HTML including CSS.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
BigDecimal id = 7657; // BigDecimal | The id of the product.
Boolean defaultCss = true; // Boolean | Whether the default CSS should be added to the response.
try {
    String result = apiInstance.visualizeProductNutritionByID(id, defaultCss);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#visualizeProductNutritionByID");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **BigDecimal**| The id of the product. |
 **defaultCss** | **Boolean**| Whether the default CSS should be added to the response. | [optional]

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

<a name="visualizeRecipeEquipmentByID"></a>
# **visualizeRecipeEquipmentByID**
> String visualizeRecipeEquipmentByID(id, defaultCss)

Visualize Recipe Equipment by ID

Visualize a recipe&#39;s equipment list.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
BigDecimal id = 44860; // BigDecimal | The recipe id.
Boolean defaultCss = true; // Boolean | Whether the default CSS should be added to the response.
try {
    String result = apiInstance.visualizeRecipeEquipmentByID(id, defaultCss);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#visualizeRecipeEquipmentByID");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **BigDecimal**| The recipe id. |
 **defaultCss** | **Boolean**| Whether the default CSS should be added to the response. | [optional]

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

<a name="visualizeRecipeIngredientsByID"></a>
# **visualizeRecipeIngredientsByID**
> String visualizeRecipeIngredientsByID(id, defaultCss)

Visualize Recipe Ingredients by ID

Visualize a recipe&#39;s ingredient list.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
BigDecimal id = 1082038; // BigDecimal | The recipe id.
Boolean defaultCss = true; // Boolean | Whether the default CSS should be added to the response.
try {
    String result = apiInstance.visualizeRecipeIngredientsByID(id, defaultCss);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#visualizeRecipeIngredientsByID");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **BigDecimal**| The recipe id. |
 **defaultCss** | **Boolean**| Whether the default CSS should be added to the response. | [optional]

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

<a name="visualizeRecipeNutrition"></a>
# **visualizeRecipeNutrition**
> String visualizeRecipeNutrition(ingredientList, servings, defaultCss, showBacklink)

Visualize Recipe Nutrition

Visualize a recipe&#39;s nutritional information as HTML including CSS

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
String ingredientList = "ingredientList_example"; // String | The ingredient list of the recipe, one ingredient per line.
BigDecimal servings = new BigDecimal(); // BigDecimal | The number of servings.
Boolean defaultCss = true; // Boolean | Whether the default CSS should be added to the response.
Boolean showBacklink = true; // Boolean | Whether to show a backlink to spoonacular. If set false, this call counts against your quota.
try {
    String result = apiInstance.visualizeRecipeNutrition(ingredientList, servings, defaultCss, showBacklink);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#visualizeRecipeNutrition");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredientList** | **String**| The ingredient list of the recipe, one ingredient per line. |
 **servings** | **BigDecimal**| The number of servings. |
 **defaultCss** | **Boolean**| Whether the default CSS should be added to the response. | [optional]
 **showBacklink** | **Boolean**| Whether to show a backlink to spoonacular. If set false, this call counts against your quota. | [optional]

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/html

<a name="visualizeRecipeNutritionByID"></a>
# **visualizeRecipeNutritionByID**
> String visualizeRecipeNutritionByID(id, defaultCss)

Visualize Recipe Nutrition by ID

Visualize a recipe&#39;s nutritional information as HTML including CSS.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
BigDecimal id = 1082038; // BigDecimal | The recipe id.
Boolean defaultCss = true; // Boolean | Whether the default CSS should be added to the response.
try {
    String result = apiInstance.visualizeRecipeNutritionByID(id, defaultCss);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#visualizeRecipeNutritionByID");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **BigDecimal**| The recipe id. |
 **defaultCss** | **Boolean**| Whether the default CSS should be added to the response. | [optional]

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

<a name="visualizeRecipePriceBreakdownByID"></a>
# **visualizeRecipePriceBreakdownByID**
> String visualizeRecipePriceBreakdownByID(id, defaultCss)

Visualize Recipe Price Breakdown by ID

Visualize a recipe&#39;s price breakdown.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
BigDecimal id = 1082038; // BigDecimal | The recipe id.
Boolean defaultCss = true; // Boolean | Whether the default CSS should be added to the response.
try {
    String result = apiInstance.visualizeRecipePriceBreakdownByID(id, defaultCss);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#visualizeRecipePriceBreakdownByID");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **BigDecimal**| The recipe id. |
 **defaultCss** | **Boolean**| Whether the default CSS should be added to the response. | [optional]

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

