# DefaultApi

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
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
[**detectFoodInText**](DefaultApi.md#detectFoodInText) | **POST** /food/detect | Detect Food in Text
[**extractRecipeFromWebsite**](DefaultApi.md#extractRecipeFromWebsite) | **GET** /recipes/extract | Extract Recipe from Website
[**generateMealPlan**](DefaultApi.md#generateMealPlan) | **GET** /recipes/mealplans/generate | Generate Meal Plan
[**getARandomFoodJoke**](DefaultApi.md#getARandomFoodJoke) | **GET** /food/jokes/random | Get a Random Food Joke
[**getAnalyzedRecipeInstructions**](DefaultApi.md#getAnalyzedRecipeInstructions) | **GET** /recipes/{id}/analyzedInstructions | Get Analyzed Recipe Instructions
[**getComparableProducts**](DefaultApi.md#getComparableProducts) | **GET** /food/products/upc/{upc}/comparable | Get Comparable Products
[**getConversationSuggests**](DefaultApi.md#getConversationSuggests) | **GET** /food/converse/suggest | Get Conversation Suggests
[**getDishPairingForWine**](DefaultApi.md#getDishPairingForWine) | **GET** /food/wine/dishes | Get Dish Pairing for Wine
[**getFoodInformation**](DefaultApi.md#getFoodInformation) | **GET** /food/ingredients/{id}/information | Get Food Information
[**getIngredientSubstitutes**](DefaultApi.md#getIngredientSubstitutes) | **GET** /food/ingredients/substitutes | Get Ingredient Substitutes
[**getIngredientSubstitutesByID**](DefaultApi.md#getIngredientSubstitutesByID) | **GET** /food/ingredients/{id}/substitutes | Get Ingredient Substitutes by ID
[**getMenuItemInformation**](DefaultApi.md#getMenuItemInformation) | **GET** /food/menuItems/{id} | Get Menu Item Information
[**getProductInformation**](DefaultApi.md#getProductInformation) | **GET** /food/products/{id} | Get Product Information
[**getRandomFoodTrivia**](DefaultApi.md#getRandomFoodTrivia) | **GET** /food/trivia/random | Get Random Food Trivia
[**getRandomRecipes**](DefaultApi.md#getRandomRecipes) | **GET** /recipes/random | Get Random Recipes
[**getRecipeEquipmentByID**](DefaultApi.md#getRecipeEquipmentByID) | **GET** /recipes/{id}/equipmentWidget.json | Get Recipe Equipment by ID
[**getRecipeInformation**](DefaultApi.md#getRecipeInformation) | **GET** /recipes/{id}/information | Get Recipe Information
[**getRecipeInformationBulk**](DefaultApi.md#getRecipeInformationBulk) | **GET** /recipes/informationBulk | Get Recipe Information Bulk
[**getRecipeIngredientsByID**](DefaultApi.md#getRecipeIngredientsByID) | **GET** /recipes/{id}/ingredientWidget.json | Get Recipe Ingredients by ID
[**getRecipeNutritionByID**](DefaultApi.md#getRecipeNutritionByID) | **GET** /recipes/{id}/nutritionWidget.json | Get Recipe Nutrition by ID
[**getRecipePriceBreakdownByID**](DefaultApi.md#getRecipePriceBreakdownByID) | **GET** /recipes/{id}/priceBreakdownWidget.json | Get Recipe Price Breakdown by ID
[**getSimilarRecipes**](DefaultApi.md#getSimilarRecipes) | **GET** /recipes/{id}/similar | Get Similar Recipes
[**getWineDescription**](DefaultApi.md#getWineDescription) | **GET** /food/wine/description | Get Wine Description
[**getWinePairing**](DefaultApi.md#getWinePairing) | **GET** /food/wine/pairing | Get Wine Pairing
[**getWineRecommendation**](DefaultApi.md#getWineRecommendation) | **GET** /food/wine/recommendation | Get Wine Recommendation
[**guessNutritionByDishName**](DefaultApi.md#guessNutritionByDishName) | **GET** /recipes/guessNutrition | Guess Nutrition by Dish Name
[**mapIngredientsToGroceryProducts**](DefaultApi.md#mapIngredientsToGroceryProducts) | **POST** /food/ingredients/map | Map Ingredients to Grocery Products
[**parseIngredients**](DefaultApi.md#parseIngredients) | **POST** /recipes/parseIngredients | Parse Ingredients
[**quickAnswer**](DefaultApi.md#quickAnswer) | **GET** /recipes/quickAnswer | Quick Answer
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

Extract ingredients and equipment from the recipe instruction steps.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
String instructions = "instructions_example"; // String | The instructions text.
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
 **instructions** | **String**| The instructions text. |

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

Autocomplete a search for an ingredient.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
String query = appl; // String | The query - a partial or full ingredient name.
BigDecimal number = 10; // BigDecimal | The number of results to return (between 1 and 100).
Boolean metaInformation = false; // Boolean | Whether to return more meta information about the ingredients.
Boolean intolerances = false; // Boolean | A comma-separated list of intolerances. All found ingredients must not cause problems for people with one of the given tolerances. See a full list of supported intolerances.
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
 **query** | **String**| The query - a partial or full ingredient name. |
 **number** | **BigDecimal**| The number of results to return (between 1 and 100). | [optional]
 **metaInformation** | **Boolean**| Whether to return more meta information about the ingredients. | [optional]
 **intolerances** | **Boolean**| A comma-separated list of intolerances. All found ingredients must not cause problems for people with one of the given tolerances. See a full list of supported intolerances. | [optional]

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

Autocomplete a partial input to possible recipe names.

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

Given a grocery product title, this endpoint allows you to detect what basic ingredient it is.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
InlineObject8 inlineObject8 = new InlineObject8(); // InlineObject8 | 
String locale = en_US; // String | The locale of the returned category, supported is en_US and en_GB.
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
 **locale** | **String**| The locale of the returned category, supported is en_US and en_GB. | [optional]

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

Given a set of product jsons, get back classified products.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
Object body = null; // Object | 
String locale = en_US; // String | The locale of the returned category, supported is en_US and en_GB.
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
 **locale** | **String**| The locale of the returned category, supported is en_US and en_GB. | [optional]

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

Create Recipe Card.

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
BigDecimal servings = new BigDecimal(); // BigDecimal | The number of servings that you can make from the ingredients.
String mask = "mask_example"; // String | The mask to put over the recipe image (\\\"ellipseMask\\\", \\\"diamondMask\\\", \\\"diamondMask\\\", \\\"starMask\\\", \\\"heartMask\\\", \\\"potMask\\\", \\\"fishMask\\\").
String backgroundImage = "backgroundImage_example"; // String | The background image (\\\"none\\\",\\\"background1\\\", or \\\"background2\\\").
String author = "author_example"; // String | The author of the recipe.
String backgroundColor = "backgroundColor_example"; // String | The background color on the recipe card as a hex-string.
String fontColor = "fontColor_example"; // String | The font color on the recipe card as a hex-string.
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
 **servings** | **BigDecimal**| The number of servings that you can make from the ingredients. |
 **mask** | **String**| The mask to put over the recipe image (\\\&quot;ellipseMask\\\&quot;, \\\&quot;diamondMask\\\&quot;, \\\&quot;diamondMask\\\&quot;, \\\&quot;starMask\\\&quot;, \\\&quot;heartMask\\\&quot;, \\\&quot;potMask\\\&quot;, \\\&quot;fishMask\\\&quot;). |
 **backgroundImage** | **String**| The background image (\\\&quot;none\\\&quot;,\\\&quot;background1\\\&quot;, or \\\&quot;background2\\\&quot;). |
 **author** | **String**| The author of the recipe. | [optional]
 **backgroundColor** | **String**| The background color on the recipe card as a hex-string. | [optional]
 **fontColor** | **String**| The font color on the recipe card as a hex-string. | [optional]
 **source** | **String**| The source of the recipe. | [optional]

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

<a name="detectFoodInText"></a>
# **detectFoodInText**
> Object detectFoodInText(text)

Detect Food in Text

Detect ingredients and dishes in texts. This task is also called Named Entity Recognition (NER). In our case the entities are foods. Either dishes, such as pizza and cheeseburger or ingredients, such as cucumber and almonds.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
String text = "text_example"; // String | The text in which food items such as dish names and ingredients should be detected in.
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
 **text** | **String**| The text in which food items such as dish names and ingredients should be detected in. |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="extractRecipeFromWebsite"></a>
# **extractRecipeFromWebsite**
> Object extractRecipeFromWebsite(url, forceExtraction)

Extract Recipe from Website

Get an analyzed breakdown of a recipe&#39;s instructions. Each step is enriched with the ingredients and the equipment that is used.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
String url = https://foodista.com/recipe/ZHK4KPB6/chocolate-crinkle-cookies; // String | The URL of the recipe page.
Boolean forceExtraction = true; // Boolean | If true, the extraction will be triggered no matter whether we know the recipe already. Use that only if information is missing as this operation is slower.
try {
    Object result = apiInstance.extractRecipeFromWebsite(url, forceExtraction);
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
 **forceExtraction** | **Boolean**| If true, the extraction will be triggered no matter whether we know the recipe already. Use that only if information is missing as this operation is slower. | [optional]

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

<a name="getARandomFoodJoke"></a>
# **getARandomFoodJoke**
> Object getARandomFoodJoke()

Get a Random Food Joke

Get a random joke that includes or is about food.

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

Get an analyzed breakdown of a recipe&#39;s instructions. Each step is enriched with the ingredients and the equipment that is used.

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
BigDecimal upc = 33698816271; // BigDecimal | The UPC of the product for that you want to find comparable products.
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
 **upc** | **BigDecimal**| The UPC of the product for that you want to find comparable products. |

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

This endpoint returns suggestions for things the user can say or ask the chat bot.

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

Get a dish that goes well with a given wine.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
String wine = malbec; // String | The name of the wine that should be paired, e.g. \"merlot\", \"riesling\", or \"malbec\".
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
 **wine** | **String**| The name of the wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;. |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getFoodInformation"></a>
# **getFoodInformation**
> Object getFoodInformation(id, amount, unit)

Get Food Information

Get information about a certain food (ingredient).

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
BigDecimal id = 9266; // BigDecimal | The id of the food / ingredient.
BigDecimal amount = 150; // BigDecimal | The amount of that food.
String unit = grams; // String | The unit for the given amount.
try {
    Object result = apiInstance.getFoodInformation(id, amount, unit);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#getFoodInformation");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **BigDecimal**| The id of the food / ingredient. |
 **amount** | **BigDecimal**| The amount of that food. | [optional]
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

<a name="getMenuItemInformation"></a>
# **getMenuItemInformation**
> Object getMenuItemInformation(id)

Get Menu Item Information

Get information about a certain menu item.

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

Get information about a packaged food product.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
BigDecimal id = 22347; // BigDecimal | The id of the packaged food product.
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
 **id** | **BigDecimal**| The id of the packaged food product. |

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

Find random (popular) recipes.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
Boolean limitLicense = true; // Boolean | Whether the recipes should have an open license that allows for displaying with proper attribution.
String tags = vegetarian, dessert; // String | The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must adhere to.
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
 **limitLicense** | **Boolean**| Whether the recipes should have an open license that allows for displaying with proper attribution. | [optional]
 **tags** | **String**| The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must adhere to. | [optional]
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

Get information about a recipe.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
BigDecimal id = 716429; // BigDecimal | The id of the recipe.
Boolean includeNutrition = false; // Boolean | Include nutrition data to the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings.
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
 **includeNutrition** | **Boolean**| Include nutrition data to the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. | [optional]

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

Get information about multiple recipes at once. That is equivalent of calling the Get Recipe Information endpoint multiple times but is faster.

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

<a name="getRecipeNutritionByID"></a>
# **getRecipeNutritionByID**
> Object getRecipeNutritionByID(id)

Get Recipe Nutrition by ID

Get a recipe&#39;s nutrition widget data.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
BigDecimal id = 1003464; // BigDecimal | The recipe id.
try {
    Object result = apiInstance.getRecipeNutritionByID(id);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#getRecipeNutritionByID");
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

<a name="getSimilarRecipes"></a>
# **getSimilarRecipes**
> Object getSimilarRecipes(id, number)

Get Similar Recipes

Find recipes which are similar to the given one.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
BigDecimal id = 715538; // BigDecimal | The id of the source recipe to which similar recipes should be found.
BigDecimal number = 1; // BigDecimal | The number of random recipes to be returned (between 1 and 100).
try {
    Object result = apiInstance.getSimilarRecipes(id, number);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#getSimilarRecipes");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **BigDecimal**| The id of the source recipe to which similar recipes should be found. |
 **number** | **BigDecimal**| The number of random recipes to be returned (between 1 and 100). | [optional]

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

Get the description of a certain wine, e.g. \&quot;malbec\&quot;, \&quot;riesling\&quot;, or \&quot;merlot\&quot;.

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

Get a specific wine recommendation (concrete product) for a given wine, e.g. \&quot;merlot\&quot;.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
String wine = merlot; // String | The name of the wine to get a specific product recommendation for.
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
 **wine** | **String**| The name of the wine to get a specific product recommendation for. |
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

Guess the macro nutrients of a dish given its title.

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
String q = How much vitamin c is in 2 apples?; // String | The nutrition-related question.
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
 **q** | **String**| The nutrition-related question. |

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
String cuisine = italian; // String | The cuisine(s) of the recipes. One or more comma separated. See a full list of supported cuisines.
String diet = vegetarian; // String | The diet to which the recipes must be compliant. See a full list of supported diets.
String includeIngredients = tomato,cheese; // String | A comma-separated list of ingredients that should/must be contained in the recipe.
String excludeIngredients = eggs; // String | A comma-separated list of ingredients or ingredient types that must not be contained in the recipes.
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
 **cuisine** | **String**| The cuisine(s) of the recipes. One or more comma separated. See a full list of supported cuisines. | [optional]
 **diet** | **String**| The diet to which the recipes must be compliant. See a full list of supported diets. | [optional]
 **includeIngredients** | **String**| A comma-separated list of ingredients that should/must be contained in the recipe. | [optional]
 **excludeIngredients** | **String**| A comma-separated list of ingredients or ingredient types that must not be contained in the recipes. | [optional]
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

Search packaged food products such as frozen pizza and snickers bars.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
String query = snickers; // String | The search query.
BigDecimal minCalories = 50; // BigDecimal | The minimum number of calories the product must have.
BigDecimal maxCalories = 800; // BigDecimal | The maximum number of calories the product can have.
BigDecimal minCarbs = 10; // BigDecimal | The minimum number of carbohydrates in grams the product must have.
BigDecimal maxCarbs = 100; // BigDecimal | The maximum number of carbohydrates in grams the product can have.
BigDecimal minProtein = 10; // BigDecimal | The minimum number of protein in grams the product must have.
BigDecimal maxProtein = 100; // BigDecimal | The maximum number of protein in grams the product can have.
BigDecimal minFat = 1; // BigDecimal | The minimum number of fat in grams the product must have.
BigDecimal maxFat = 100; // BigDecimal | The maximum number of fat in grams the product can have.
BigDecimal offset = 0; // BigDecimal | The offset number for paging (between 0 and 990).
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
 **minCalories** | **BigDecimal**| The minimum number of calories the product must have. | [optional]
 **maxCalories** | **BigDecimal**| The maximum number of calories the product can have. | [optional]
 **minCarbs** | **BigDecimal**| The minimum number of carbohydrates in grams the product must have. | [optional]
 **maxCarbs** | **BigDecimal**| The maximum number of carbohydrates in grams the product can have. | [optional]
 **minProtein** | **BigDecimal**| The minimum number of protein in grams the product must have. | [optional]
 **maxProtein** | **BigDecimal**| The maximum number of protein in grams the product can have. | [optional]
 **minFat** | **BigDecimal**| The minimum number of fat in grams the product must have. | [optional]
 **maxFat** | **BigDecimal**| The maximum number of fat in grams the product can have. | [optional]
 **offset** | **BigDecimal**| The offset number for paging (between 0 and 990). | [optional]
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

Get information about a food product given its UPC.

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

Search over 115,000 menu items from over 800 fast food and chain restaurants such as McDonalds Big Mac or Starbucks Mocha.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
String query = snickers; // String | The search query.
BigDecimal minCalories = 50; // BigDecimal | The minimum number of calories the menu item must have.
BigDecimal maxCalories = 800; // BigDecimal | The maximum number of calories the menu item can have.
BigDecimal minCarbs = 10; // BigDecimal | The minimum number of carbohydrates in grams the menu item must have.
BigDecimal maxCarbs = 100; // BigDecimal | The maximum number of carbohydrates in grams the menu item can have.
BigDecimal minProtein = 10; // BigDecimal | The minimum number of protein in grams the menu item must have.
BigDecimal maxProtein = 100; // BigDecimal | The maximum number of protein in grams the menu item can have.
BigDecimal minFat = 1; // BigDecimal | The minimum number of fat in grams the menu item must have.
BigDecimal maxFat = 100; // BigDecimal | The maximum number of fat in grams the menu item can have.
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
 **minCalories** | **BigDecimal**| The minimum number of calories the menu item must have. | [optional]
 **maxCalories** | **BigDecimal**| The maximum number of calories the menu item can have. | [optional]
 **minCarbs** | **BigDecimal**| The minimum number of carbohydrates in grams the menu item must have. | [optional]
 **maxCarbs** | **BigDecimal**| The maximum number of carbohydrates in grams the menu item can have. | [optional]
 **minProtein** | **BigDecimal**| The minimum number of protein in grams the menu item must have. | [optional]
 **maxProtein** | **BigDecimal**| The maximum number of protein in grams the menu item can have. | [optional]
 **minFat** | **BigDecimal**| The minimum number of fat in grams the menu item must have. | [optional]
 **maxFat** | **BigDecimal**| The maximum number of fat in grams the menu item can have. | [optional]
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
String diet = vegetarian; // String | The diet to which the recipes must be compliant. See a full list of supported diets.
String excludeIngredients = eggs; // String | An comma-separated list of ingredients or ingredient types that must not be contained in the recipes.
String intolerances = gluten; // String | A comma-separated list of intolerances. All found recipes must not have ingredients that could cause problems for people with one of the given tolerances. See a full list of supported intolerances.
BigDecimal offset = 0; // BigDecimal | The number of results to skip (between 0 and 900).
BigDecimal number = 10; // BigDecimal | The number of results to return (between 1 and 100).
Boolean limitLicense = true; // Boolean | Whether the recipes should have an open license that allows for displaying with proper attribution.
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
 **diet** | **String**| The diet to which the recipes must be compliant. See a full list of supported diets. | [optional]
 **excludeIngredients** | **String**| An comma-separated list of ingredients or ingredient types that must not be contained in the recipes. | [optional]
 **intolerances** | **String**| A comma-separated list of intolerances. All found recipes must not have ingredients that could cause problems for people with one of the given tolerances. See a full list of supported intolerances. | [optional]
 **offset** | **BigDecimal**| The number of results to skip (between 0 and 900). | [optional]
 **number** | **BigDecimal**| The number of results to return (between 1 and 100). | [optional]
 **limitLicense** | **Boolean**| Whether the recipes should have an open license that allows for displaying with proper attribution. | [optional]
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

Find recipes that use as many of the given ingredients as possible and have as little as possible missing ingredients. This is a \&quot;what&#39;s in your fridge\&quot; API endpoint.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
String ingredients = apples,flour,sugar; // String | A comma-separated list of ingredients that the recipes should contain.
BigDecimal number = 10; // BigDecimal | The maximal number of recipes to return (between 1 and 100). Defaults to 10.
Boolean limitLicense = true; // Boolean | Whether the recipes should have an open license that allows for displaying with proper attribution.
BigDecimal ranking = 1; // BigDecimal | Whether to maximize used ingredients (1) or minimize missing ingredients (2) first.
Boolean ignorePantry = true; // Boolean | Whether to ignore pantry ingredients such as water, salt, flour etc.
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
 **number** | **BigDecimal**| The maximal number of recipes to return (between 1 and 100). Defaults to 10. | [optional]
 **limitLicense** | **Boolean**| Whether the recipes should have an open license that allows for displaying with proper attribution. | [optional]
 **ranking** | **BigDecimal**| Whether to maximize used ingredients (1) or minimize missing ingredients (2) first. | [optional]
 **ignorePantry** | **Boolean**| Whether to ignore pantry ingredients such as water, salt, flour etc. | [optional]

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

Find a set of recipes that adhere to the given nutritional limits. All the returned recipes will have macro nutrients within the calories, protein, fat, and carbohydrate limits.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
BigDecimal minCarbs = 10; // BigDecimal | The minimum number of carbohydrates in grams the recipe must have.
BigDecimal maxCarbs = 100; // BigDecimal | The maximum number of carbohydrates in grams the recipe can have.
BigDecimal minProtein = 10; // BigDecimal | The minimum number of protein in grams the recipe must have.
BigDecimal maxProtein = 100; // BigDecimal | The maximum number of protein in grams the recipe can have.
BigDecimal minCalories = 50; // BigDecimal | The minimum number of calories the recipe must have.
BigDecimal maxCalories = 800; // BigDecimal | The maximum number of calories the recipe can have.
BigDecimal minFat = 1; // BigDecimal | The minimum number of fat in grams the recipe must have.
BigDecimal maxFat = 100; // BigDecimal | The maximum number of fat in grams the recipe can have.
BigDecimal minAlcohol = 0; // BigDecimal | The minimum number of alcohol in grams the recipe must have.
BigDecimal maxAlcohol = 100; // BigDecimal | The maximum number of alcohol in grams the recipe must have.
BigDecimal minCaffeine = 0; // BigDecimal | The minimum number of milligrams of caffeine the recipe must have.
BigDecimal maxCaffeine = 100; // BigDecimal | The maximum number of alcohol in grams the recipe must have.
BigDecimal minCopper = 0; // BigDecimal | The minimum number of copper in milligrams the recipe must have.
BigDecimal maxCopper = 100; // BigDecimal | The maximum number of copper in milligrams the recipe must have.
BigDecimal minCalcium = 0; // BigDecimal | The minimum number of calcium in milligrams the recipe must have.
BigDecimal maxCalcium = 100; // BigDecimal | The maximum number of calcium in milligrams the recipe must have.
BigDecimal minCholine = 0; // BigDecimal | The minimum number of choline in milligrams the recipe must have.
BigDecimal maxCholine = 100; // BigDecimal | The maximum number of choline in milligrams the recipe can have.
BigDecimal minCholesterol = 0; // BigDecimal | The minimum number of cholesterol in milligrams the recipe must have.
BigDecimal maxCholesterol = 100; // BigDecimal | The maximum number of cholesterol in milligrams the recipe must have.
BigDecimal minFluoride = 0; // BigDecimal | The minimum number of fluoride in milligrams the recipe must have.
BigDecimal maxFluoride = 100; // BigDecimal | The maximum number of fluoride in milligrams the recipe can have.
BigDecimal minSaturatedFat = 0; // BigDecimal | The minimum number of saturated fat in grams the recipe must have.
BigDecimal maxSaturatedFat = 100; // BigDecimal | The maximum number of saturated fat in grams the recipe must have.
BigDecimal minVitaminA = 0; // BigDecimal | The minimum number of Vitamin A in IU the recipe must have.
BigDecimal maxVitaminA = 100; // BigDecimal | The maximum number of Vitamin A in IU the recipe must have.
BigDecimal minVitaminC = 0; // BigDecimal | The minimum number of Vitamin C milligrams the recipe must have.
BigDecimal maxVitaminC = 100; // BigDecimal | The maximum number of Vitamin C in milligrams the recipe can have.
BigDecimal minVitaminD = 0; // BigDecimal | The minimum number of Vitamin D in micrograms the recipe must have.
BigDecimal maxVitaminD = 100; // BigDecimal | The maximum number of Vitamin D in micrograms the recipe must have.
BigDecimal minVitaminE = 0; // BigDecimal | The minimum number of Vitamin E in milligrams the recipe must have.
BigDecimal maxVitaminE = 100; // BigDecimal | The maximum number of Vitamin E in milligrams the recipe must have.
BigDecimal minVitaminK = 0; // BigDecimal | The minimum number of Vitamin K in micrograms the recipe must have.
BigDecimal maxVitaminK = 100; // BigDecimal | The maximum number of Vitamin K in micrograms the recipe must have.
BigDecimal minVitaminB1 = 0; // BigDecimal | The minimum number of Vitamin B1 in milligrams the recipe must have.
BigDecimal maxVitaminB1 = 100; // BigDecimal | The maximum number of Vitamin B1 in milligrams the recipe must have.
BigDecimal minVitaminB2 = 0; // BigDecimal | The minimum number of Vitamin B2 in milligrams the recipe must have.
BigDecimal maxVitaminB2 = 100; // BigDecimal | The maximum number of Vitamin B2 in milligrams the recipe must have.
BigDecimal minVitaminB5 = 0; // BigDecimal | The minimum number of Vitamin B5 in milligrams the recipe must have.
BigDecimal maxVitaminB5 = 100; // BigDecimal | The maximum number of Vitamin B5 in milligrams the recipe can have.
BigDecimal minVitaminB3 = 0; // BigDecimal | The minimum number of Vitamin B3 in milligrams the recipe must have.
BigDecimal maxVitaminB3 = 100; // BigDecimal | The maximum number of Vitamin B3 in milligrams the recipe can have.
BigDecimal minVitaminB6 = 0; // BigDecimal | The minimum number of Vitamin B6 in milligrams the recipe must have.
BigDecimal maxVitaminB6 = 100; // BigDecimal | The maximum number of Vitamin B6 in milligrams the recipe can have.
BigDecimal minVitaminB12 = 0; // BigDecimal | The minimum number of Vitamin B12 in micrograms the recipe must have.
BigDecimal maxVitaminB12 = 100; // BigDecimal | The maximum number of Vitamin B12 in micrograms the recipe must have.
BigDecimal minFiber = 0; // BigDecimal | The minimum number of fiber in grams the recipe must have.
BigDecimal maxFiber = 100; // BigDecimal | The maximum number of fiber in grams the recipe must have.
BigDecimal minFolate = 0; // BigDecimal | The minimum number of folate in grams the recipe must have.
BigDecimal maxFolate = 100; // BigDecimal | The maximum number of folate in grams the recipe must have.
BigDecimal minFolicAcid = 0; // BigDecimal | The minimum number of folic acid in grams the recipe must have.
BigDecimal maxFolicAcid = 100; // BigDecimal | The maximum number of folic acid in grams the recipe must have.
BigDecimal minIodine = 0; // BigDecimal | The minimum number of Iodine in grams the recipe must have.
BigDecimal maxIodine = 100; // BigDecimal | The maximum number of iodine in grams the recipe must have.
BigDecimal minIron = 0; // BigDecimal | The minimum number of iron in milligrams the recipe must have.
BigDecimal maxIron = 100; // BigDecimal | The maximum number of iron in milligrams the recipe can have.
BigDecimal minMagnesium = 0; // BigDecimal | The minimum number of magnesium in milligrams the recipe must have.
BigDecimal maxMagnesium = 100; // BigDecimal | The maximum number of magnesium in milligrams the recipe can have.
BigDecimal minManganese = 0; // BigDecimal | The minimum number of manganese in milligrams the recipe must have.
BigDecimal maxManganese = 100; // BigDecimal | The maximum number of manganese in milligrams the recipe can have.
BigDecimal minPhosphorus = 0; // BigDecimal | The minimum number of phosphorus in milligrams the recipe must have.
BigDecimal maxPhosphorus = 100; // BigDecimal | The maximum number of phosphorus in milligrams the recipe can have.
BigDecimal minPotassium = 0; // BigDecimal | The minimum number of potassium in milligrams the recipe must have.
BigDecimal maxPotassium = 100; // BigDecimal | The maximum number of potassium in milligrams the recipe can have.
BigDecimal minSelenium = 0; // BigDecimal | The minimum number of selenium in grams the recipe must have.
BigDecimal maxSelenium = 100; // BigDecimal | The maximum number of selenium in grams the recipe must have.
BigDecimal minSodium = 0; // BigDecimal | The minimum number of sodium in milligrams the recipe must have.
BigDecimal maxSodium = 100; // BigDecimal | The maximum number of sodium in milligrams the recipe must have.
BigDecimal minSugar = 0; // BigDecimal | The minimum number of sugar in grams the recipe must have.
BigDecimal maxSugar = 100; // BigDecimal | The maximum number of sugar in grams the recipe must have.
BigDecimal minZinc = 0; // BigDecimal | The minimum number of zinc in milligrams the recipe must have.
BigDecimal maxZinc = 100; // BigDecimal | The maximum number of zinc in milligrams the recipe can have.
BigDecimal offset = 0; // BigDecimal | The offset number for paging (between 0 and 990).
BigDecimal number = 10; // BigDecimal | The number of expected results (between 1 and 100).
Boolean random = false; // Boolean | If true, every request will give you a random set of recipes within the requested limits.
Boolean limitLicense = true; // Boolean | Whether the recipes should have an open license that allows for displaying with proper attribution.
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
 **minCarbs** | **BigDecimal**| The minimum number of carbohydrates in grams the recipe must have. | [optional]
 **maxCarbs** | **BigDecimal**| The maximum number of carbohydrates in grams the recipe can have. | [optional]
 **minProtein** | **BigDecimal**| The minimum number of protein in grams the recipe must have. | [optional]
 **maxProtein** | **BigDecimal**| The maximum number of protein in grams the recipe can have. | [optional]
 **minCalories** | **BigDecimal**| The minimum number of calories the recipe must have. | [optional]
 **maxCalories** | **BigDecimal**| The maximum number of calories the recipe can have. | [optional]
 **minFat** | **BigDecimal**| The minimum number of fat in grams the recipe must have. | [optional]
 **maxFat** | **BigDecimal**| The maximum number of fat in grams the recipe can have. | [optional]
 **minAlcohol** | **BigDecimal**| The minimum number of alcohol in grams the recipe must have. | [optional]
 **maxAlcohol** | **BigDecimal**| The maximum number of alcohol in grams the recipe must have. | [optional]
 **minCaffeine** | **BigDecimal**| The minimum number of milligrams of caffeine the recipe must have. | [optional]
 **maxCaffeine** | **BigDecimal**| The maximum number of alcohol in grams the recipe must have. | [optional]
 **minCopper** | **BigDecimal**| The minimum number of copper in milligrams the recipe must have. | [optional]
 **maxCopper** | **BigDecimal**| The maximum number of copper in milligrams the recipe must have. | [optional]
 **minCalcium** | **BigDecimal**| The minimum number of calcium in milligrams the recipe must have. | [optional]
 **maxCalcium** | **BigDecimal**| The maximum number of calcium in milligrams the recipe must have. | [optional]
 **minCholine** | **BigDecimal**| The minimum number of choline in milligrams the recipe must have. | [optional]
 **maxCholine** | **BigDecimal**| The maximum number of choline in milligrams the recipe can have. | [optional]
 **minCholesterol** | **BigDecimal**| The minimum number of cholesterol in milligrams the recipe must have. | [optional]
 **maxCholesterol** | **BigDecimal**| The maximum number of cholesterol in milligrams the recipe must have. | [optional]
 **minFluoride** | **BigDecimal**| The minimum number of fluoride in milligrams the recipe must have. | [optional]
 **maxFluoride** | **BigDecimal**| The maximum number of fluoride in milligrams the recipe can have. | [optional]
 **minSaturatedFat** | **BigDecimal**| The minimum number of saturated fat in grams the recipe must have. | [optional]
 **maxSaturatedFat** | **BigDecimal**| The maximum number of saturated fat in grams the recipe must have. | [optional]
 **minVitaminA** | **BigDecimal**| The minimum number of Vitamin A in IU the recipe must have. | [optional]
 **maxVitaminA** | **BigDecimal**| The maximum number of Vitamin A in IU the recipe must have. | [optional]
 **minVitaminC** | **BigDecimal**| The minimum number of Vitamin C milligrams the recipe must have. | [optional]
 **maxVitaminC** | **BigDecimal**| The maximum number of Vitamin C in milligrams the recipe can have. | [optional]
 **minVitaminD** | **BigDecimal**| The minimum number of Vitamin D in micrograms the recipe must have. | [optional]
 **maxVitaminD** | **BigDecimal**| The maximum number of Vitamin D in micrograms the recipe must have. | [optional]
 **minVitaminE** | **BigDecimal**| The minimum number of Vitamin E in milligrams the recipe must have. | [optional]
 **maxVitaminE** | **BigDecimal**| The maximum number of Vitamin E in milligrams the recipe must have. | [optional]
 **minVitaminK** | **BigDecimal**| The minimum number of Vitamin K in micrograms the recipe must have. | [optional]
 **maxVitaminK** | **BigDecimal**| The maximum number of Vitamin K in micrograms the recipe must have. | [optional]
 **minVitaminB1** | **BigDecimal**| The minimum number of Vitamin B1 in milligrams the recipe must have. | [optional]
 **maxVitaminB1** | **BigDecimal**| The maximum number of Vitamin B1 in milligrams the recipe must have. | [optional]
 **minVitaminB2** | **BigDecimal**| The minimum number of Vitamin B2 in milligrams the recipe must have. | [optional]
 **maxVitaminB2** | **BigDecimal**| The maximum number of Vitamin B2 in milligrams the recipe must have. | [optional]
 **minVitaminB5** | **BigDecimal**| The minimum number of Vitamin B5 in milligrams the recipe must have. | [optional]
 **maxVitaminB5** | **BigDecimal**| The maximum number of Vitamin B5 in milligrams the recipe can have. | [optional]
 **minVitaminB3** | **BigDecimal**| The minimum number of Vitamin B3 in milligrams the recipe must have. | [optional]
 **maxVitaminB3** | **BigDecimal**| The maximum number of Vitamin B3 in milligrams the recipe can have. | [optional]
 **minVitaminB6** | **BigDecimal**| The minimum number of Vitamin B6 in milligrams the recipe must have. | [optional]
 **maxVitaminB6** | **BigDecimal**| The maximum number of Vitamin B6 in milligrams the recipe can have. | [optional]
 **minVitaminB12** | **BigDecimal**| The minimum number of Vitamin B12 in micrograms the recipe must have. | [optional]
 **maxVitaminB12** | **BigDecimal**| The maximum number of Vitamin B12 in micrograms the recipe must have. | [optional]
 **minFiber** | **BigDecimal**| The minimum number of fiber in grams the recipe must have. | [optional]
 **maxFiber** | **BigDecimal**| The maximum number of fiber in grams the recipe must have. | [optional]
 **minFolate** | **BigDecimal**| The minimum number of folate in grams the recipe must have. | [optional]
 **maxFolate** | **BigDecimal**| The maximum number of folate in grams the recipe must have. | [optional]
 **minFolicAcid** | **BigDecimal**| The minimum number of folic acid in grams the recipe must have. | [optional]
 **maxFolicAcid** | **BigDecimal**| The maximum number of folic acid in grams the recipe must have. | [optional]
 **minIodine** | **BigDecimal**| The minimum number of Iodine in grams the recipe must have. | [optional]
 **maxIodine** | **BigDecimal**| The maximum number of iodine in grams the recipe must have. | [optional]
 **minIron** | **BigDecimal**| The minimum number of iron in milligrams the recipe must have. | [optional]
 **maxIron** | **BigDecimal**| The maximum number of iron in milligrams the recipe can have. | [optional]
 **minMagnesium** | **BigDecimal**| The minimum number of magnesium in milligrams the recipe must have. | [optional]
 **maxMagnesium** | **BigDecimal**| The maximum number of magnesium in milligrams the recipe can have. | [optional]
 **minManganese** | **BigDecimal**| The minimum number of manganese in milligrams the recipe must have. | [optional]
 **maxManganese** | **BigDecimal**| The maximum number of manganese in milligrams the recipe can have. | [optional]
 **minPhosphorus** | **BigDecimal**| The minimum number of phosphorus in milligrams the recipe must have. | [optional]
 **maxPhosphorus** | **BigDecimal**| The maximum number of phosphorus in milligrams the recipe can have. | [optional]
 **minPotassium** | **BigDecimal**| The minimum number of potassium in milligrams the recipe must have. | [optional]
 **maxPotassium** | **BigDecimal**| The maximum number of potassium in milligrams the recipe can have. | [optional]
 **minSelenium** | **BigDecimal**| The minimum number of selenium in grams the recipe must have. | [optional]
 **maxSelenium** | **BigDecimal**| The maximum number of selenium in grams the recipe must have. | [optional]
 **minSodium** | **BigDecimal**| The minimum number of sodium in milligrams the recipe must have. | [optional]
 **maxSodium** | **BigDecimal**| The maximum number of sodium in milligrams the recipe must have. | [optional]
 **minSugar** | **BigDecimal**| The minimum number of sugar in grams the recipe must have. | [optional]
 **maxSugar** | **BigDecimal**| The maximum number of sugar in grams the recipe must have. | [optional]
 **minZinc** | **BigDecimal**| The minimum number of zinc in milligrams the recipe must have. | [optional]
 **maxZinc** | **BigDecimal**| The maximum number of zinc in milligrams the recipe can have. | [optional]
 **offset** | **BigDecimal**| The offset number for paging (between 0 and 990). | [optional]
 **number** | **BigDecimal**| The number of expected results (between 1 and 100). | [optional]
 **random** | **Boolean**| If true, every request will give you a random set of recipes within the requested limits. | [optional]
 **limitLicense** | **Boolean**| Whether the recipes should have an open license that allows for displaying with proper attribution. | [optional]

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="searchRecipesComplex"></a>
# **searchRecipesComplex**
> Object searchRecipesComplex(query, cuisine, excludeCuisine, diet, intolerances, equipment, includeIngredients, excludeIngredients, type, instructionsRequired, fillIngredients, addRecipeInformation, author, tags, titleMatch, sort, sortDirection, minCarbs, maxCarbs, minProtein, maxProtein, minCalories, maxCalories, minFat, maxFat, minAlcohol, maxAlcohol, minCaffeine, maxCaffeine, minCopper, maxCopper, minCalcium, maxCalcium, minCholine, maxCholine, minCholesterol, maxCholesterol, minFluoride, maxFluoride, minSaturatedFat, maxSaturatedFat, minVitaminA, maxVitaminA, minVitaminC, maxVitaminC, minVitaminD, maxVitaminD, minVitaminE, maxVitaminE, minVitaminK, maxVitaminK, minVitaminB1, maxVitaminB1, minVitaminB2, maxVitaminB2, minVitaminB5, maxVitaminB5, minVitaminB3, maxVitaminB3, minVitaminB6, maxVitaminB6, minVitaminB12, maxVitaminB12, minFiber, maxFiber, minFolate, maxFolate, minFolicAcid, maxFolicAcid, minIodine, maxIodine, minIron, maxIron, minMagnesium, maxMagnesium, minManganese, maxManganese, minPhosphorus, maxPhosphorus, minPotassium, maxPotassium, minSelenium, maxSelenium, minSodium, maxSodium, minSugar, maxSugar, minZinc, maxZinc, offset, number, limitLicense)

Search Recipes Complex

Search through hundreds of thousands of recipes using advanced filtering and ranking. NOTE: Since this method combines searching by query, by ingredients, and by nutrients in one endpoint.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
String query = pasta; // String | The (natural language) recipe search query.
String cuisine = italian; // String | The cuisine(s) of the recipes. One or more comma separated (will be iterpreted as 'OR'). See a full list of supported cuisines.
String excludeCuisine = greek; // String | The cuisine(s) the recipes must not match. One or more comma separated (will be iterpreted as 'AND'). See a full list of supported cuisines.
String diet = vegetarian; // String | The diet to which the recipes must be compliant. See a full list of supported diets.
String intolerances = gluten; // String | A comma-separated list of intolerances. All found recipes must not have ingredients that could cause problems for people with one of the given tolerances. See a full list of supported intolerances.
String equipment = pan; // String | The equipment required. Multiple values will be interpreted as 'or'. For example, value could be \"blender, frying pan, bowl\".
String includeIngredients = tomato,cheese; // String | A comma-separated list of ingredients that should/must be contained in the recipe.
String excludeIngredients = eggs; // String | A comma-separated list of ingredients or ingredient types that must not be contained in the recipes.
String type = main course; // String | The type of the recipes. See a full list of supported meal types.
Boolean instructionsRequired = true; // Boolean | Whether the recipes must have instructions.
Boolean fillIngredients = false; // Boolean | Add information about the used and missing ingredients in each recipe.
Boolean addRecipeInformation = false; // Boolean | If set to true, you get more information about the recipes returned. This saves the calls to get recipe information.
String author = coffeebean; // String | The username of the recipe author.
String tags = myCustomTag; // String | User defined tags that have to match.
String titleMatch = Crock Pot; // String | A text that has to match in the title of the recipes.
String sort = calories; // String | The strategy to sort recipes by. See a full list of supported sorting options.
String sortDirection = asc; // String | The direction in which to sort. Must be either 'asc' (ascending) or 'desc' (descending).
BigDecimal minCarbs = 10; // BigDecimal | The minimum number of carbohydrates in grams the recipe must have.
BigDecimal maxCarbs = 100; // BigDecimal | The maximum number of carbohydrates in grams the recipe can have.
BigDecimal minProtein = 10; // BigDecimal | The minimum number of protein in grams the recipe must have.
BigDecimal maxProtein = 100; // BigDecimal | The maximum number of protein in grams the recipe can have.
BigDecimal minCalories = 50; // BigDecimal | The minimum number of calories the recipe must have.
BigDecimal maxCalories = 800; // BigDecimal | The maximum number of calories the recipe can have.
BigDecimal minFat = 1; // BigDecimal | The minimum number of fat in grams the recipe must have.
BigDecimal maxFat = 100; // BigDecimal | The maximum number of fat in grams the recipe can have.
BigDecimal minAlcohol = 0; // BigDecimal | The minimum number of alcohol in grams the recipe must have.
BigDecimal maxAlcohol = 100; // BigDecimal | The maximum number of alcohol in grams the recipe must have.
BigDecimal minCaffeine = 0; // BigDecimal | The minimum number of milligrams of caffeine the recipe must have.
BigDecimal maxCaffeine = 100; // BigDecimal | The maximum number of alcohol in grams the recipe must have.
BigDecimal minCopper = 0; // BigDecimal | The minimum number of copper in milligrams the recipe must have.
BigDecimal maxCopper = 100; // BigDecimal | The maximum number of copper in milligrams the recipe must have.
BigDecimal minCalcium = 0; // BigDecimal | The minimum number of calcium in milligrams the recipe must have.
BigDecimal maxCalcium = 100; // BigDecimal | The maximum number of calcium in milligrams the recipe must have.
BigDecimal minCholine = 0; // BigDecimal | The minimum number of choline in milligrams the recipe must have.
BigDecimal maxCholine = 100; // BigDecimal | The maximum number of choline in milligrams the recipe can have.
BigDecimal minCholesterol = 0; // BigDecimal | The minimum number of cholesterol in milligrams the recipe must have.
BigDecimal maxCholesterol = 100; // BigDecimal | The maximum number of cholesterol in milligrams the recipe must have.
BigDecimal minFluoride = 0; // BigDecimal | The minimum number of fluoride in milligrams the recipe must have.
BigDecimal maxFluoride = 100; // BigDecimal | The maximum number of fluoride in milligrams the recipe can have.
BigDecimal minSaturatedFat = 0; // BigDecimal | The minimum number of saturated fat in grams the recipe must have.
BigDecimal maxSaturatedFat = 100; // BigDecimal | The maximum number of saturated fat in grams the recipe must have.
BigDecimal minVitaminA = 0; // BigDecimal | The minimum number of Vitamin A in IU the recipe must have.
BigDecimal maxVitaminA = 100; // BigDecimal | The maximum number of Vitamin A in IU the recipe must have.
BigDecimal minVitaminC = 0; // BigDecimal | The minimum number of Vitamin C milligrams the recipe must have.
BigDecimal maxVitaminC = 100; // BigDecimal | The maximum number of Vitamin C in milligrams the recipe can have.
BigDecimal minVitaminD = 0; // BigDecimal | The minimum number of Vitamin D in micrograms the recipe must have.
BigDecimal maxVitaminD = 100; // BigDecimal | The maximum number of Vitamin D in micrograms the recipe must have.
BigDecimal minVitaminE = 0; // BigDecimal | The minimum number of Vitamin E in milligrams the recipe must have.
BigDecimal maxVitaminE = 100; // BigDecimal | The maximum number of Vitamin E in milligrams the recipe must have.
BigDecimal minVitaminK = 0; // BigDecimal | The minimum number of Vitamin K in micrograms the recipe must have.
BigDecimal maxVitaminK = 100; // BigDecimal | The maximum number of Vitamin K in micrograms the recipe must have.
BigDecimal minVitaminB1 = 0; // BigDecimal | The minimum number of Vitamin B1 in milligrams the recipe must have.
BigDecimal maxVitaminB1 = 100; // BigDecimal | The maximum number of Vitamin B1 in milligrams the recipe must have.
BigDecimal minVitaminB2 = 0; // BigDecimal | The minimum number of Vitamin B2 in milligrams the recipe must have.
BigDecimal maxVitaminB2 = 100; // BigDecimal | The maximum number of Vitamin B2 in milligrams the recipe must have.
BigDecimal minVitaminB5 = 0; // BigDecimal | The minimum number of Vitamin B5 in milligrams the recipe must have.
BigDecimal maxVitaminB5 = 100; // BigDecimal | The maximum number of Vitamin B5 in milligrams the recipe can have.
BigDecimal minVitaminB3 = 0; // BigDecimal | The minimum number of Vitamin B3 in milligrams the recipe must have.
BigDecimal maxVitaminB3 = 100; // BigDecimal | The maximum number of Vitamin B3 in milligrams the recipe can have.
BigDecimal minVitaminB6 = 0; // BigDecimal | The minimum number of Vitamin B6 in milligrams the recipe must have.
BigDecimal maxVitaminB6 = 100; // BigDecimal | The maximum number of Vitamin B6 in milligrams the recipe can have.
BigDecimal minVitaminB12 = 0; // BigDecimal | The minimum number of Vitamin B12 in micrograms the recipe must have.
BigDecimal maxVitaminB12 = 100; // BigDecimal | The maximum number of Vitamin B12 in micrograms the recipe must have.
BigDecimal minFiber = 0; // BigDecimal | The minimum number of fiber in grams the recipe must have.
BigDecimal maxFiber = 100; // BigDecimal | The maximum number of fiber in grams the recipe must have.
BigDecimal minFolate = 0; // BigDecimal | The minimum number of folate in grams the recipe must have.
BigDecimal maxFolate = 100; // BigDecimal | The maximum number of folate in grams the recipe must have.
BigDecimal minFolicAcid = 0; // BigDecimal | The minimum number of folic acid in grams the recipe must have.
BigDecimal maxFolicAcid = 100; // BigDecimal | The maximum number of folic acid in grams the recipe must have.
BigDecimal minIodine = 0; // BigDecimal | The minimum number of Iodine in grams the recipe must have.
BigDecimal maxIodine = 100; // BigDecimal | The maximum number of iodine in grams the recipe must have.
BigDecimal minIron = 0; // BigDecimal | The minimum number of iron in milligrams the recipe must have.
BigDecimal maxIron = 100; // BigDecimal | The maximum number of iron in milligrams the recipe can have.
BigDecimal minMagnesium = 0; // BigDecimal | The minimum number of magnesium in milligrams the recipe must have.
BigDecimal maxMagnesium = 100; // BigDecimal | The maximum number of magnesium in milligrams the recipe can have.
BigDecimal minManganese = 0; // BigDecimal | The minimum number of manganese in milligrams the recipe must have.
BigDecimal maxManganese = 100; // BigDecimal | The maximum number of manganese in milligrams the recipe can have.
BigDecimal minPhosphorus = 0; // BigDecimal | The minimum number of phosphorus in milligrams the recipe must have.
BigDecimal maxPhosphorus = 100; // BigDecimal | The maximum number of phosphorus in milligrams the recipe can have.
BigDecimal minPotassium = 0; // BigDecimal | The minimum number of potassium in milligrams the recipe must have.
BigDecimal maxPotassium = 100; // BigDecimal | The maximum number of potassium in milligrams the recipe can have.
BigDecimal minSelenium = 0; // BigDecimal | The minimum number of selenium in grams the recipe must have.
BigDecimal maxSelenium = 100; // BigDecimal | The maximum number of selenium in grams the recipe must have.
BigDecimal minSodium = 0; // BigDecimal | The minimum number of sodium in milligrams the recipe must have.
BigDecimal maxSodium = 100; // BigDecimal | The maximum number of sodium in milligrams the recipe must have.
BigDecimal minSugar = 0; // BigDecimal | The minimum number of sugar in grams the recipe must have.
BigDecimal maxSugar = 100; // BigDecimal | The maximum number of sugar in grams the recipe must have.
BigDecimal minZinc = 0; // BigDecimal | The minimum number of zinc in milligrams the recipe must have.
BigDecimal maxZinc = 100; // BigDecimal | The maximum number of zinc in milligrams the recipe can have.
BigDecimal offset = 0; // BigDecimal | The offset number for paging (between 0 and 990).
BigDecimal number = 5; // BigDecimal | The number of expected results (between 1 and 10).
Boolean limitLicense = true; // Boolean | Whether the recipes should have an open license that allows for displaying with proper attribution.
try {
    Object result = apiInstance.searchRecipesComplex(query, cuisine, excludeCuisine, diet, intolerances, equipment, includeIngredients, excludeIngredients, type, instructionsRequired, fillIngredients, addRecipeInformation, author, tags, titleMatch, sort, sortDirection, minCarbs, maxCarbs, minProtein, maxProtein, minCalories, maxCalories, minFat, maxFat, minAlcohol, maxAlcohol, minCaffeine, maxCaffeine, minCopper, maxCopper, minCalcium, maxCalcium, minCholine, maxCholine, minCholesterol, maxCholesterol, minFluoride, maxFluoride, minSaturatedFat, maxSaturatedFat, minVitaminA, maxVitaminA, minVitaminC, maxVitaminC, minVitaminD, maxVitaminD, minVitaminE, maxVitaminE, minVitaminK, maxVitaminK, minVitaminB1, maxVitaminB1, minVitaminB2, maxVitaminB2, minVitaminB5, maxVitaminB5, minVitaminB3, maxVitaminB3, minVitaminB6, maxVitaminB6, minVitaminB12, maxVitaminB12, minFiber, maxFiber, minFolate, maxFolate, minFolicAcid, maxFolicAcid, minIodine, maxIodine, minIron, maxIron, minMagnesium, maxMagnesium, minManganese, maxManganese, minPhosphorus, maxPhosphorus, minPotassium, maxPotassium, minSelenium, maxSelenium, minSodium, maxSodium, minSugar, maxSugar, minZinc, maxZinc, offset, number, limitLicense);
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
 **cuisine** | **String**| The cuisine(s) of the recipes. One or more comma separated (will be iterpreted as &#39;OR&#39;). See a full list of supported cuisines. | [optional]
 **excludeCuisine** | **String**| The cuisine(s) the recipes must not match. One or more comma separated (will be iterpreted as &#39;AND&#39;). See a full list of supported cuisines. | [optional]
 **diet** | **String**| The diet to which the recipes must be compliant. See a full list of supported diets. | [optional]
 **intolerances** | **String**| A comma-separated list of intolerances. All found recipes must not have ingredients that could cause problems for people with one of the given tolerances. See a full list of supported intolerances. | [optional]
 **equipment** | **String**| The equipment required. Multiple values will be interpreted as &#39;or&#39;. For example, value could be \&quot;blender, frying pan, bowl\&quot;. | [optional]
 **includeIngredients** | **String**| A comma-separated list of ingredients that should/must be contained in the recipe. | [optional]
 **excludeIngredients** | **String**| A comma-separated list of ingredients or ingredient types that must not be contained in the recipes. | [optional]
 **type** | **String**| The type of the recipes. See a full list of supported meal types. | [optional]
 **instructionsRequired** | **Boolean**| Whether the recipes must have instructions. | [optional]
 **fillIngredients** | **Boolean**| Add information about the used and missing ingredients in each recipe. | [optional]
 **addRecipeInformation** | **Boolean**| If set to true, you get more information about the recipes returned. This saves the calls to get recipe information. | [optional]
 **author** | **String**| The username of the recipe author. | [optional]
 **tags** | **String**| User defined tags that have to match. | [optional]
 **titleMatch** | **String**| A text that has to match in the title of the recipes. | [optional]
 **sort** | **String**| The strategy to sort recipes by. See a full list of supported sorting options. | [optional]
 **sortDirection** | **String**| The direction in which to sort. Must be either &#39;asc&#39; (ascending) or &#39;desc&#39; (descending). | [optional]
 **minCarbs** | **BigDecimal**| The minimum number of carbohydrates in grams the recipe must have. | [optional]
 **maxCarbs** | **BigDecimal**| The maximum number of carbohydrates in grams the recipe can have. | [optional]
 **minProtein** | **BigDecimal**| The minimum number of protein in grams the recipe must have. | [optional]
 **maxProtein** | **BigDecimal**| The maximum number of protein in grams the recipe can have. | [optional]
 **minCalories** | **BigDecimal**| The minimum number of calories the recipe must have. | [optional]
 **maxCalories** | **BigDecimal**| The maximum number of calories the recipe can have. | [optional]
 **minFat** | **BigDecimal**| The minimum number of fat in grams the recipe must have. | [optional]
 **maxFat** | **BigDecimal**| The maximum number of fat in grams the recipe can have. | [optional]
 **minAlcohol** | **BigDecimal**| The minimum number of alcohol in grams the recipe must have. | [optional]
 **maxAlcohol** | **BigDecimal**| The maximum number of alcohol in grams the recipe must have. | [optional]
 **minCaffeine** | **BigDecimal**| The minimum number of milligrams of caffeine the recipe must have. | [optional]
 **maxCaffeine** | **BigDecimal**| The maximum number of alcohol in grams the recipe must have. | [optional]
 **minCopper** | **BigDecimal**| The minimum number of copper in milligrams the recipe must have. | [optional]
 **maxCopper** | **BigDecimal**| The maximum number of copper in milligrams the recipe must have. | [optional]
 **minCalcium** | **BigDecimal**| The minimum number of calcium in milligrams the recipe must have. | [optional]
 **maxCalcium** | **BigDecimal**| The maximum number of calcium in milligrams the recipe must have. | [optional]
 **minCholine** | **BigDecimal**| The minimum number of choline in milligrams the recipe must have. | [optional]
 **maxCholine** | **BigDecimal**| The maximum number of choline in milligrams the recipe can have. | [optional]
 **minCholesterol** | **BigDecimal**| The minimum number of cholesterol in milligrams the recipe must have. | [optional]
 **maxCholesterol** | **BigDecimal**| The maximum number of cholesterol in milligrams the recipe must have. | [optional]
 **minFluoride** | **BigDecimal**| The minimum number of fluoride in milligrams the recipe must have. | [optional]
 **maxFluoride** | **BigDecimal**| The maximum number of fluoride in milligrams the recipe can have. | [optional]
 **minSaturatedFat** | **BigDecimal**| The minimum number of saturated fat in grams the recipe must have. | [optional]
 **maxSaturatedFat** | **BigDecimal**| The maximum number of saturated fat in grams the recipe must have. | [optional]
 **minVitaminA** | **BigDecimal**| The minimum number of Vitamin A in IU the recipe must have. | [optional]
 **maxVitaminA** | **BigDecimal**| The maximum number of Vitamin A in IU the recipe must have. | [optional]
 **minVitaminC** | **BigDecimal**| The minimum number of Vitamin C milligrams the recipe must have. | [optional]
 **maxVitaminC** | **BigDecimal**| The maximum number of Vitamin C in milligrams the recipe can have. | [optional]
 **minVitaminD** | **BigDecimal**| The minimum number of Vitamin D in micrograms the recipe must have. | [optional]
 **maxVitaminD** | **BigDecimal**| The maximum number of Vitamin D in micrograms the recipe must have. | [optional]
 **minVitaminE** | **BigDecimal**| The minimum number of Vitamin E in milligrams the recipe must have. | [optional]
 **maxVitaminE** | **BigDecimal**| The maximum number of Vitamin E in milligrams the recipe must have. | [optional]
 **minVitaminK** | **BigDecimal**| The minimum number of Vitamin K in micrograms the recipe must have. | [optional]
 **maxVitaminK** | **BigDecimal**| The maximum number of Vitamin K in micrograms the recipe must have. | [optional]
 **minVitaminB1** | **BigDecimal**| The minimum number of Vitamin B1 in milligrams the recipe must have. | [optional]
 **maxVitaminB1** | **BigDecimal**| The maximum number of Vitamin B1 in milligrams the recipe must have. | [optional]
 **minVitaminB2** | **BigDecimal**| The minimum number of Vitamin B2 in milligrams the recipe must have. | [optional]
 **maxVitaminB2** | **BigDecimal**| The maximum number of Vitamin B2 in milligrams the recipe must have. | [optional]
 **minVitaminB5** | **BigDecimal**| The minimum number of Vitamin B5 in milligrams the recipe must have. | [optional]
 **maxVitaminB5** | **BigDecimal**| The maximum number of Vitamin B5 in milligrams the recipe can have. | [optional]
 **minVitaminB3** | **BigDecimal**| The minimum number of Vitamin B3 in milligrams the recipe must have. | [optional]
 **maxVitaminB3** | **BigDecimal**| The maximum number of Vitamin B3 in milligrams the recipe can have. | [optional]
 **minVitaminB6** | **BigDecimal**| The minimum number of Vitamin B6 in milligrams the recipe must have. | [optional]
 **maxVitaminB6** | **BigDecimal**| The maximum number of Vitamin B6 in milligrams the recipe can have. | [optional]
 **minVitaminB12** | **BigDecimal**| The minimum number of Vitamin B12 in micrograms the recipe must have. | [optional]
 **maxVitaminB12** | **BigDecimal**| The maximum number of Vitamin B12 in micrograms the recipe must have. | [optional]
 **minFiber** | **BigDecimal**| The minimum number of fiber in grams the recipe must have. | [optional]
 **maxFiber** | **BigDecimal**| The maximum number of fiber in grams the recipe must have. | [optional]
 **minFolate** | **BigDecimal**| The minimum number of folate in grams the recipe must have. | [optional]
 **maxFolate** | **BigDecimal**| The maximum number of folate in grams the recipe must have. | [optional]
 **minFolicAcid** | **BigDecimal**| The minimum number of folic acid in grams the recipe must have. | [optional]
 **maxFolicAcid** | **BigDecimal**| The maximum number of folic acid in grams the recipe must have. | [optional]
 **minIodine** | **BigDecimal**| The minimum number of Iodine in grams the recipe must have. | [optional]
 **maxIodine** | **BigDecimal**| The maximum number of iodine in grams the recipe must have. | [optional]
 **minIron** | **BigDecimal**| The minimum number of iron in milligrams the recipe must have. | [optional]
 **maxIron** | **BigDecimal**| The maximum number of iron in milligrams the recipe can have. | [optional]
 **minMagnesium** | **BigDecimal**| The minimum number of magnesium in milligrams the recipe must have. | [optional]
 **maxMagnesium** | **BigDecimal**| The maximum number of magnesium in milligrams the recipe can have. | [optional]
 **minManganese** | **BigDecimal**| The minimum number of manganese in milligrams the recipe must have. | [optional]
 **maxManganese** | **BigDecimal**| The maximum number of manganese in milligrams the recipe can have. | [optional]
 **minPhosphorus** | **BigDecimal**| The minimum number of phosphorus in milligrams the recipe must have. | [optional]
 **maxPhosphorus** | **BigDecimal**| The maximum number of phosphorus in milligrams the recipe can have. | [optional]
 **minPotassium** | **BigDecimal**| The minimum number of potassium in milligrams the recipe must have. | [optional]
 **maxPotassium** | **BigDecimal**| The maximum number of potassium in milligrams the recipe can have. | [optional]
 **minSelenium** | **BigDecimal**| The minimum number of selenium in grams the recipe must have. | [optional]
 **maxSelenium** | **BigDecimal**| The maximum number of selenium in grams the recipe must have. | [optional]
 **minSodium** | **BigDecimal**| The minimum number of sodium in milligrams the recipe must have. | [optional]
 **maxSodium** | **BigDecimal**| The maximum number of sodium in milligrams the recipe must have. | [optional]
 **minSugar** | **BigDecimal**| The minimum number of sugar in grams the recipe must have. | [optional]
 **maxSugar** | **BigDecimal**| The maximum number of sugar in grams the recipe must have. | [optional]
 **minZinc** | **BigDecimal**| The minimum number of zinc in milligrams the recipe must have. | [optional]
 **maxZinc** | **BigDecimal**| The maximum number of zinc in milligrams the recipe can have. | [optional]
 **offset** | **BigDecimal**| The offset number for paging (between 0 and 990). | [optional]
 **number** | **BigDecimal**| The number of expected results (between 1 and 10). | [optional]
 **limitLicense** | **Boolean**| Whether the recipes should have an open license that allows for displaying with proper attribution. | [optional]

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

Search spoonacular&#39;s site content. You&#39;ll be able to find everything that you could also find using the search suggests on spoonacular.com. This is a suggest API so you can send partial strings as queries.

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

Summarize the recipe in a short text.

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

This endpoint can be used to have a conversation about food with the spoonacular chat bot. Use the \&quot;Get Conversation Suggests\&quot; endpoint to show your user what he or she can say.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
String text = donut recipes; // String | The request / question / answer from the user to the chat bot.
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
 **text** | **String**| The request / question / answer from the user to the chat bot. |
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
String view = "view_example"; // String | Either \\\"grid\\\" or \\\"list\\\" as visualization of the equipment.
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
 **view** | **String**| Either \\\&quot;grid\\\&quot; or \\\&quot;list\\\&quot; as visualization of the equipment. | [optional]
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
String measure = "measure_example"; // String | The initial measure, either \\\"metric\\\" or \\\"us\\\".
String view = "view_example"; // String | Either \\\"grid\\\" or \\\"list\\\" as visualization of the equipment.
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
 **measure** | **String**| The initial measure, either \\\&quot;metric\\\&quot; or \\\&quot;us\\\&quot;. | [optional]
 **view** | **String**| Either \\\&quot;grid\\\&quot; or \\\&quot;list\\\&quot; as visualization of the equipment. | [optional]
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

Visualize a menu items&#39; nutrition data.

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

Visualize a grocery product&#39;s nutritional information.

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

Visualize a recipe&#39;s nutrition data.

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

Visualize a recipe&#39;s nutritional information.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiException;
//import com.spoonacular.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
BigDecimal id = 1082038; // BigDecimal | The id of the product.
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
 **id** | **BigDecimal**| The id of the product. |
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

