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
> kotlin.Any analyzeARecipeSearchQuery(q)

Analyze a Recipe Search Query

Parse a recipe search query to find out its intention.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = DefaultApi()
val q : kotlin.String = salmon with fusilli and no nuts // kotlin.String | The recipe search query.
try {
    val result : kotlin.Any = apiInstance.analyzeARecipeSearchQuery(q)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#analyzeARecipeSearchQuery")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#analyzeARecipeSearchQuery")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **kotlin.String**| The recipe search query. |

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="analyzeRecipeInstructions"></a>
# **analyzeRecipeInstructions**
> kotlin.Any analyzeRecipeInstructions(instructions)

Analyze Recipe Instructions

Extract ingredients and equipment from the recipe instruction steps.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = DefaultApi()
val instructions : kotlin.String = instructions_example // kotlin.String | The instructions text.
try {
    val result : kotlin.Any = apiInstance.analyzeRecipeInstructions(instructions)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#analyzeRecipeInstructions")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#analyzeRecipeInstructions")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instructions** | **kotlin.String**| The instructions text. |

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="autocompleteIngredientSearch"></a>
# **autocompleteIngredientSearch**
> kotlin.Any autocompleteIngredientSearch(query, number, metaInformation, intolerances)

Autocomplete Ingredient Search

Autocomplete a search for an ingredient.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = DefaultApi()
val query : kotlin.String = appl // kotlin.String | The query - a partial or full ingredient name.
val number : java.math.BigDecimal = 10 // java.math.BigDecimal | The number of results to return (between 1 and 100).
val metaInformation : kotlin.Boolean = false // kotlin.Boolean | Whether to return more meta information about the ingredients.
val intolerances : kotlin.Boolean = false // kotlin.Boolean | A comma-separated list of intolerances. All found ingredients must not cause problems for people with one of the given tolerances. See a full list of supported intolerances.
try {
    val result : kotlin.Any = apiInstance.autocompleteIngredientSearch(query, number, metaInformation, intolerances)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#autocompleteIngredientSearch")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#autocompleteIngredientSearch")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **kotlin.String**| The query - a partial or full ingredient name. |
 **number** | **java.math.BigDecimal**| The number of results to return (between 1 and 100). | [optional]
 **metaInformation** | **kotlin.Boolean**| Whether to return more meta information about the ingredients. | [optional]
 **intolerances** | **kotlin.Boolean**| A comma-separated list of intolerances. All found ingredients must not cause problems for people with one of the given tolerances. See a full list of supported intolerances. | [optional]

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="autocompleteMenuItemSearch"></a>
# **autocompleteMenuItemSearch**
> kotlin.Any autocompleteMenuItemSearch(query, number)

Autocomplete Menu Item Search

Generate suggestions for menu items based on a (partial) query. The matches will be found by looking in the title only.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = DefaultApi()
val query : kotlin.String = chicke // kotlin.String | The (partial) search query.
val number : java.math.BigDecimal = 10 // java.math.BigDecimal | The number of results to return (between 1 and 25).
try {
    val result : kotlin.Any = apiInstance.autocompleteMenuItemSearch(query, number)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#autocompleteMenuItemSearch")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#autocompleteMenuItemSearch")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **kotlin.String**| The (partial) search query. |
 **number** | **java.math.BigDecimal**| The number of results to return (between 1 and 25). | [optional]

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="autocompleteProductSearch"></a>
# **autocompleteProductSearch**
> kotlin.Any autocompleteProductSearch(query, number)

Autocomplete Product Search

Generate suggestions for grocery products based on a (partial) query. The matches will be found by looking in the title only.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = DefaultApi()
val query : kotlin.String = chicke // kotlin.String | The (partial) search query.
val number : java.math.BigDecimal = 10 // java.math.BigDecimal | The number of results to return (between 1 and 25).
try {
    val result : kotlin.Any = apiInstance.autocompleteProductSearch(query, number)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#autocompleteProductSearch")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#autocompleteProductSearch")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **kotlin.String**| The (partial) search query. |
 **number** | **java.math.BigDecimal**| The number of results to return (between 1 and 25). | [optional]

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="autocompleteRecipeSearch"></a>
# **autocompleteRecipeSearch**
> kotlin.Any autocompleteRecipeSearch(query, number)

Autocomplete Recipe Search

Autocomplete a partial input to possible recipe names.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = DefaultApi()
val query : kotlin.String = burger // kotlin.String | The query to be autocompleted.
val number : java.math.BigDecimal = 10 // java.math.BigDecimal | The number of results to return (between 1 and 25).
try {
    val result : kotlin.Any = apiInstance.autocompleteRecipeSearch(query, number)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#autocompleteRecipeSearch")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#autocompleteRecipeSearch")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **kotlin.String**| The query to be autocompleted. |
 **number** | **java.math.BigDecimal**| The number of results to return (between 1 and 25). | [optional]

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="classifyCuisine"></a>
# **classifyCuisine**
> kotlin.Any classifyCuisine(title, ingredientList)

Classify Cuisine

Classify the recipe&#39;s cuisine.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = DefaultApi()
val title : kotlin.String = title_example // kotlin.String | The title of the recipe.
val ingredientList : kotlin.String = ingredientList_example // kotlin.String | The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n).
try {
    val result : kotlin.Any = apiInstance.classifyCuisine(title, ingredientList)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#classifyCuisine")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#classifyCuisine")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **kotlin.String**| The title of the recipe. |
 **ingredientList** | **kotlin.String**| The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n). |

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="classifyGroceryProduct"></a>
# **classifyGroceryProduct**
> kotlin.Any classifyGroceryProduct(inlineObject8, locale)

Classify Grocery Product

Given a grocery product title, this endpoint allows you to detect what basic ingredient it is.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = DefaultApi()
val inlineObject8 : InlineObject8 =  // InlineObject8 | 
val locale : kotlin.String = en_US // kotlin.String | The locale of the returned category, supported is en_US and en_GB.
try {
    val result : kotlin.Any = apiInstance.classifyGroceryProduct(inlineObject8, locale)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#classifyGroceryProduct")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#classifyGroceryProduct")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inlineObject8** | [**InlineObject8**](InlineObject8.md)|  |
 **locale** | **kotlin.String**| The locale of the returned category, supported is en_US and en_GB. | [optional]

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="classifyGroceryProductBulk"></a>
# **classifyGroceryProductBulk**
> kotlin.Any classifyGroceryProductBulk(body, locale)

Classify Grocery Product Bulk

Given a set of product jsons, get back classified products.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = DefaultApi()
val body : kotlin.Any =  // kotlin.Any | 
val locale : kotlin.String = en_US // kotlin.String | The locale of the returned category, supported is en_US and en_GB.
try {
    val result : kotlin.Any = apiInstance.classifyGroceryProductBulk(body, locale)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#classifyGroceryProductBulk")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#classifyGroceryProductBulk")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **kotlin.Any**|  |
 **locale** | **kotlin.String**| The locale of the returned category, supported is en_US and en_GB. | [optional]

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="convertAmounts"></a>
# **convertAmounts**
> kotlin.Any convertAmounts(ingredientName, sourceAmount, sourceUnit, targetUnit)

Convert Amounts

Convert amounts like \&quot;2 cups of flour to grams\&quot;.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = DefaultApi()
val ingredientName : kotlin.String = flour // kotlin.String | The ingredient which you want to convert.
val sourceAmount : java.math.BigDecimal = 2.5 // java.math.BigDecimal | The amount from which you want to convert, e.g. the 2.5 in \"2.5 cups of flour to grams\".
val sourceUnit : kotlin.String = cups // kotlin.String | The unit from which you want to convert, e.g. the grams in \"2.5 cups of flour to grams\". You can also use \"piece\", e.g. \"3.4 oz tomatoes to piece\"
val targetUnit : kotlin.String = grams // kotlin.String | The unit to which you want to convert, e.g. the grams in \"2.5 cups of flour to grams\". You can also use \"piece\", e.g. \"3.4 oz tomatoes to piece\"
try {
    val result : kotlin.Any = apiInstance.convertAmounts(ingredientName, sourceAmount, sourceUnit, targetUnit)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#convertAmounts")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#convertAmounts")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredientName** | **kotlin.String**| The ingredient which you want to convert. |
 **sourceAmount** | **java.math.BigDecimal**| The amount from which you want to convert, e.g. the 2.5 in \&quot;2.5 cups of flour to grams\&quot;. |
 **sourceUnit** | **kotlin.String**| The unit from which you want to convert, e.g. the grams in \&quot;2.5 cups of flour to grams\&quot;. You can also use \&quot;piece\&quot;, e.g. \&quot;3.4 oz tomatoes to piece\&quot; |
 **targetUnit** | **kotlin.String**| The unit to which you want to convert, e.g. the grams in \&quot;2.5 cups of flour to grams\&quot;. You can also use \&quot;piece\&quot;, e.g. \&quot;3.4 oz tomatoes to piece\&quot; |

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="createRecipeCard"></a>
# **createRecipeCard**
> kotlin.Any createRecipeCard(title, image, ingredients, instructions, readyInMinutes, servings, mask, backgroundImage, author, backgroundColor, fontColor, source)

Create Recipe Card

Create Recipe Card.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = DefaultApi()
val title : kotlin.String = title_example // kotlin.String | The title of the recipe.
val image : java.io.File = BINARY_DATA_HERE // java.io.File | The binary image of the recipe as jpg.
val ingredients : kotlin.String = ingredients_example // kotlin.String | The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n).
val instructions : kotlin.String = instructions_example // kotlin.String | The instructions to make the recipe. One step per line (separate lines with \\\\n).
val readyInMinutes : java.math.BigDecimal = 8.14 // java.math.BigDecimal | The number of minutes it takes to get the recipe on the table.
val servings : java.math.BigDecimal = 8.14 // java.math.BigDecimal | The number of servings that you can make from the ingredients.
val mask : kotlin.String = mask_example // kotlin.String | The mask to put over the recipe image (\\\"ellipseMask\\\", \\\"diamondMask\\\", \\\"diamondMask\\\", \\\"starMask\\\", \\\"heartMask\\\", \\\"potMask\\\", \\\"fishMask\\\").
val backgroundImage : kotlin.String = backgroundImage_example // kotlin.String | The background image (\\\"none\\\",\\\"background1\\\", or \\\"background2\\\").
val author : kotlin.String = author_example // kotlin.String | The author of the recipe.
val backgroundColor : kotlin.String = backgroundColor_example // kotlin.String | The background color on the recipe card as a hex-string.
val fontColor : kotlin.String = fontColor_example // kotlin.String | The font color on the recipe card as a hex-string.
val source : kotlin.String = source_example // kotlin.String | The source of the recipe.
try {
    val result : kotlin.Any = apiInstance.createRecipeCard(title, image, ingredients, instructions, readyInMinutes, servings, mask, backgroundImage, author, backgroundColor, fontColor, source)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#createRecipeCard")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#createRecipeCard")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **kotlin.String**| The title of the recipe. |
 **image** | **java.io.File**| The binary image of the recipe as jpg. |
 **ingredients** | **kotlin.String**| The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n). |
 **instructions** | **kotlin.String**| The instructions to make the recipe. One step per line (separate lines with \\\\n). |
 **readyInMinutes** | **java.math.BigDecimal**| The number of minutes it takes to get the recipe on the table. |
 **servings** | **java.math.BigDecimal**| The number of servings that you can make from the ingredients. |
 **mask** | **kotlin.String**| The mask to put over the recipe image (\\\&quot;ellipseMask\\\&quot;, \\\&quot;diamondMask\\\&quot;, \\\&quot;diamondMask\\\&quot;, \\\&quot;starMask\\\&quot;, \\\&quot;heartMask\\\&quot;, \\\&quot;potMask\\\&quot;, \\\&quot;fishMask\\\&quot;). |
 **backgroundImage** | **kotlin.String**| The background image (\\\&quot;none\\\&quot;,\\\&quot;background1\\\&quot;, or \\\&quot;background2\\\&quot;). |
 **author** | **kotlin.String**| The author of the recipe. | [optional]
 **backgroundColor** | **kotlin.String**| The background color on the recipe card as a hex-string. | [optional]
 **fontColor** | **kotlin.String**| The font color on the recipe card as a hex-string. | [optional]
 **source** | **kotlin.String**| The source of the recipe. | [optional]

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

<a name="detectFoodInText"></a>
# **detectFoodInText**
> kotlin.Any detectFoodInText(text)

Detect Food in Text

Detect ingredients and dishes in texts. This task is also called Named Entity Recognition (NER). In our case the entities are foods. Either dishes, such as pizza and cheeseburger or ingredients, such as cucumber and almonds.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = DefaultApi()
val text : kotlin.String = text_example // kotlin.String | The text in which food items such as dish names and ingredients should be detected in.
try {
    val result : kotlin.Any = apiInstance.detectFoodInText(text)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#detectFoodInText")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#detectFoodInText")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **kotlin.String**| The text in which food items such as dish names and ingredients should be detected in. |

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="extractRecipeFromWebsite"></a>
# **extractRecipeFromWebsite**
> kotlin.Any extractRecipeFromWebsite(url, forceExtraction)

Extract Recipe from Website

Get an analyzed breakdown of a recipe&#39;s instructions. Each step is enriched with the ingredients and the equipment that is used.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = DefaultApi()
val url : kotlin.String = https://foodista.com/recipe/ZHK4KPB6/chocolate-crinkle-cookies // kotlin.String | The URL of the recipe page.
val forceExtraction : kotlin.Boolean = true // kotlin.Boolean | If true, the extraction will be triggered no matter whether we know the recipe already. Use that only if information is missing as this operation is slower.
try {
    val result : kotlin.Any = apiInstance.extractRecipeFromWebsite(url, forceExtraction)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#extractRecipeFromWebsite")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#extractRecipeFromWebsite")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **kotlin.String**| The URL of the recipe page. |
 **forceExtraction** | **kotlin.Boolean**| If true, the extraction will be triggered no matter whether we know the recipe already. Use that only if information is missing as this operation is slower. | [optional]

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="generateMealPlan"></a>
# **generateMealPlan**
> kotlin.Any generateMealPlan(timeFrame, targetCalories, diet, exclude)

Generate Meal Plan

Generate a meal plan with three meals per day (breakfast, lunch, and dinner).

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = DefaultApi()
val timeFrame : kotlin.String = day // kotlin.String | Either for one \"day\" or an entire \"week\".
val targetCalories : java.math.BigDecimal = 2000 // java.math.BigDecimal | What is the caloric target for one day? The meal plan generator will try to get as close as possible to that goal.
val diet : kotlin.String = vegetarian // kotlin.String | Enter a diet that the meal plan has to adhere to. See a full list of supported diets.
val exclude : kotlin.String = shellfish, olives // kotlin.String | A comma-separated list of allergens or ingredients that must be excluded.
try {
    val result : kotlin.Any = apiInstance.generateMealPlan(timeFrame, targetCalories, diet, exclude)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#generateMealPlan")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#generateMealPlan")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timeFrame** | **kotlin.String**| Either for one \&quot;day\&quot; or an entire \&quot;week\&quot;. | [optional]
 **targetCalories** | **java.math.BigDecimal**| What is the caloric target for one day? The meal plan generator will try to get as close as possible to that goal. | [optional]
 **diet** | **kotlin.String**| Enter a diet that the meal plan has to adhere to. See a full list of supported diets. | [optional]
 **exclude** | **kotlin.String**| A comma-separated list of allergens or ingredients that must be excluded. | [optional]

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getARandomFoodJoke"></a>
# **getARandomFoodJoke**
> kotlin.Any getARandomFoodJoke()

Get a Random Food Joke

Get a random joke that includes or is about food.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = DefaultApi()
try {
    val result : kotlin.Any = apiInstance.getARandomFoodJoke()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#getARandomFoodJoke")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#getARandomFoodJoke")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getAnalyzedRecipeInstructions"></a>
# **getAnalyzedRecipeInstructions**
> kotlin.Any getAnalyzedRecipeInstructions(id, stepBreakdown)

Get Analyzed Recipe Instructions

Get an analyzed breakdown of a recipe&#39;s instructions. Each step is enriched with the ingredients and the equipment that is used.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = DefaultApi()
val id : java.math.BigDecimal = 324694 // java.math.BigDecimal | The recipe id.
val stepBreakdown : kotlin.Boolean = true // kotlin.Boolean | Whether to break down the recipe steps even more.
try {
    val result : kotlin.Any = apiInstance.getAnalyzedRecipeInstructions(id, stepBreakdown)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#getAnalyzedRecipeInstructions")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#getAnalyzedRecipeInstructions")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **java.math.BigDecimal**| The recipe id. |
 **stepBreakdown** | **kotlin.Boolean**| Whether to break down the recipe steps even more. | [optional]

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getComparableProducts"></a>
# **getComparableProducts**
> kotlin.Any getComparableProducts(upc)

Get Comparable Products

Find comparable products to the given one.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = DefaultApi()
val upc : java.math.BigDecimal = 33698816271 // java.math.BigDecimal | The UPC of the product for that you want to find comparable products.
try {
    val result : kotlin.Any = apiInstance.getComparableProducts(upc)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#getComparableProducts")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#getComparableProducts")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **upc** | **java.math.BigDecimal**| The UPC of the product for that you want to find comparable products. |

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getConversationSuggests"></a>
# **getConversationSuggests**
> kotlin.Any getConversationSuggests(query, number)

Get Conversation Suggests

This endpoint returns suggestions for things the user can say or ask the chat bot.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = DefaultApi()
val query : kotlin.String = tell // kotlin.String | A (partial) query from the user. The endpoint will return if it matches topics it can talk about.
val number : java.math.BigDecimal = 5 // java.math.BigDecimal | The number of suggestions to return (between 1 and 25).
try {
    val result : kotlin.Any = apiInstance.getConversationSuggests(query, number)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#getConversationSuggests")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#getConversationSuggests")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **kotlin.String**| A (partial) query from the user. The endpoint will return if it matches topics it can talk about. |
 **number** | **java.math.BigDecimal**| The number of suggestions to return (between 1 and 25). | [optional]

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getDishPairingForWine"></a>
# **getDishPairingForWine**
> kotlin.Any getDishPairingForWine(wine)

Get Dish Pairing for Wine

Get a dish that goes well with a given wine.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = DefaultApi()
val wine : kotlin.String = malbec // kotlin.String | The name of the wine that should be paired, e.g. \"merlot\", \"riesling\", or \"malbec\".
try {
    val result : kotlin.Any = apiInstance.getDishPairingForWine(wine)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#getDishPairingForWine")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#getDishPairingForWine")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wine** | **kotlin.String**| The name of the wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;. |

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getFoodInformation"></a>
# **getFoodInformation**
> kotlin.Any getFoodInformation(id, amount, unit)

Get Food Information

Get information about a certain food (ingredient).

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = DefaultApi()
val id : java.math.BigDecimal = 9266 // java.math.BigDecimal | The id of the food / ingredient.
val amount : java.math.BigDecimal = 150 // java.math.BigDecimal | The amount of that food.
val unit : kotlin.String = grams // kotlin.String | The unit for the given amount.
try {
    val result : kotlin.Any = apiInstance.getFoodInformation(id, amount, unit)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#getFoodInformation")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#getFoodInformation")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **java.math.BigDecimal**| The id of the food / ingredient. |
 **amount** | **java.math.BigDecimal**| The amount of that food. | [optional]
 **unit** | **kotlin.String**| The unit for the given amount. | [optional]

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getIngredientSubstitutes"></a>
# **getIngredientSubstitutes**
> kotlin.Any getIngredientSubstitutes(ingredientName)

Get Ingredient Substitutes

Search for substitutes for a given ingredient.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = DefaultApi()
val ingredientName : kotlin.String = butter // kotlin.String | The name of the ingredient you want to replace.
try {
    val result : kotlin.Any = apiInstance.getIngredientSubstitutes(ingredientName)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#getIngredientSubstitutes")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#getIngredientSubstitutes")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredientName** | **kotlin.String**| The name of the ingredient you want to replace. |

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getIngredientSubstitutesByID"></a>
# **getIngredientSubstitutesByID**
> kotlin.Any getIngredientSubstitutesByID(id)

Get Ingredient Substitutes by ID

Search for substitutes for a given ingredient.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = DefaultApi()
val id : java.math.BigDecimal = 1001 // java.math.BigDecimal | The id of the ingredient you want substitutes for.
try {
    val result : kotlin.Any = apiInstance.getIngredientSubstitutesByID(id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#getIngredientSubstitutesByID")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#getIngredientSubstitutesByID")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **java.math.BigDecimal**| The id of the ingredient you want substitutes for. |

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getMenuItemInformation"></a>
# **getMenuItemInformation**
> kotlin.Any getMenuItemInformation(id)

Get Menu Item Information

Get information about a certain menu item.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = DefaultApi()
val id : java.math.BigDecimal = 424571 // java.math.BigDecimal | The menu item id.
try {
    val result : kotlin.Any = apiInstance.getMenuItemInformation(id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#getMenuItemInformation")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#getMenuItemInformation")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **java.math.BigDecimal**| The menu item id. |

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getProductInformation"></a>
# **getProductInformation**
> kotlin.Any getProductInformation(id)

Get Product Information

Get information about a packaged food product.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = DefaultApi()
val id : java.math.BigDecimal = 22347 // java.math.BigDecimal | The id of the packaged food product.
try {
    val result : kotlin.Any = apiInstance.getProductInformation(id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#getProductInformation")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#getProductInformation")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **java.math.BigDecimal**| The id of the packaged food product. |

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getRandomFoodTrivia"></a>
# **getRandomFoodTrivia**
> kotlin.Any getRandomFoodTrivia()

Get Random Food Trivia

Returns random food trivia.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = DefaultApi()
try {
    val result : kotlin.Any = apiInstance.getRandomFoodTrivia()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#getRandomFoodTrivia")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#getRandomFoodTrivia")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getRandomRecipes"></a>
# **getRandomRecipes**
> kotlin.Any getRandomRecipes(limitLicense, tags, number)

Get Random Recipes

Find random (popular) recipes.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = DefaultApi()
val limitLicense : kotlin.Boolean = true // kotlin.Boolean | Whether the recipes should have an open license that allows for displaying with proper attribution.
val tags : kotlin.String = vegetarian, dessert // kotlin.String | The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must adhere to.
val number : java.math.BigDecimal = 1 // java.math.BigDecimal | The number of random recipes to be returned (between 1 and 100).
try {
    val result : kotlin.Any = apiInstance.getRandomRecipes(limitLicense, tags, number)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#getRandomRecipes")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#getRandomRecipes")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limitLicense** | **kotlin.Boolean**| Whether the recipes should have an open license that allows for displaying with proper attribution. | [optional]
 **tags** | **kotlin.String**| The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must adhere to. | [optional]
 **number** | **java.math.BigDecimal**| The number of random recipes to be returned (between 1 and 100). | [optional]

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getRecipeEquipmentByID"></a>
# **getRecipeEquipmentByID**
> kotlin.Any getRecipeEquipmentByID(id)

Get Recipe Equipment by ID

Get a recipe&#39;s equipment list.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = DefaultApi()
val id : java.math.BigDecimal = 1003464 // java.math.BigDecimal | The recipe id.
try {
    val result : kotlin.Any = apiInstance.getRecipeEquipmentByID(id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#getRecipeEquipmentByID")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#getRecipeEquipmentByID")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **java.math.BigDecimal**| The recipe id. |

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getRecipeInformation"></a>
# **getRecipeInformation**
> kotlin.Any getRecipeInformation(id, includeNutrition)

Get Recipe Information

Get information about a recipe.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = DefaultApi()
val id : java.math.BigDecimal = 716429 // java.math.BigDecimal | The id of the recipe.
val includeNutrition : kotlin.Boolean = false // kotlin.Boolean | Include nutrition data to the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings.
try {
    val result : kotlin.Any = apiInstance.getRecipeInformation(id, includeNutrition)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#getRecipeInformation")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#getRecipeInformation")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **java.math.BigDecimal**| The id of the recipe. |
 **includeNutrition** | **kotlin.Boolean**| Include nutrition data to the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. | [optional]

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getRecipeInformationBulk"></a>
# **getRecipeInformationBulk**
> kotlin.Any getRecipeInformationBulk(ids, includeNutrition)

Get Recipe Information Bulk

Get information about multiple recipes at once. That is equivalent of calling the Get Recipe Information endpoint multiple times but is faster.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = DefaultApi()
val ids : kotlin.String = 715538,716429 // kotlin.String | A comma-separated list of recipe ids.
val includeNutrition : kotlin.Boolean = false // kotlin.Boolean | Include nutrition data to the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings.
try {
    val result : kotlin.Any = apiInstance.getRecipeInformationBulk(ids, includeNutrition)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#getRecipeInformationBulk")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#getRecipeInformationBulk")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | **kotlin.String**| A comma-separated list of recipe ids. |
 **includeNutrition** | **kotlin.Boolean**| Include nutrition data to the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. | [optional]

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getRecipeIngredientsByID"></a>
# **getRecipeIngredientsByID**
> kotlin.Any getRecipeIngredientsByID(id)

Get Recipe Ingredients by ID

Get a recipe&#39;s ingredient list.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = DefaultApi()
val id : java.math.BigDecimal = 1003464 // java.math.BigDecimal | The recipe id.
try {
    val result : kotlin.Any = apiInstance.getRecipeIngredientsByID(id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#getRecipeIngredientsByID")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#getRecipeIngredientsByID")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **java.math.BigDecimal**| The recipe id. |

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getRecipeNutritionByID"></a>
# **getRecipeNutritionByID**
> kotlin.Any getRecipeNutritionByID(id)

Get Recipe Nutrition by ID

Get a recipe&#39;s nutrition widget data.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = DefaultApi()
val id : java.math.BigDecimal = 1003464 // java.math.BigDecimal | The recipe id.
try {
    val result : kotlin.Any = apiInstance.getRecipeNutritionByID(id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#getRecipeNutritionByID")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#getRecipeNutritionByID")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **java.math.BigDecimal**| The recipe id. |

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getRecipePriceBreakdownByID"></a>
# **getRecipePriceBreakdownByID**
> kotlin.Any getRecipePriceBreakdownByID(id)

Get Recipe Price Breakdown by ID

Get a recipe&#39;s price breakdown data.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = DefaultApi()
val id : java.math.BigDecimal = 1003464 // java.math.BigDecimal | The recipe id.
try {
    val result : kotlin.Any = apiInstance.getRecipePriceBreakdownByID(id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#getRecipePriceBreakdownByID")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#getRecipePriceBreakdownByID")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **java.math.BigDecimal**| The recipe id. |

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getSimilarRecipes"></a>
# **getSimilarRecipes**
> kotlin.Any getSimilarRecipes(id, number)

Get Similar Recipes

Find recipes which are similar to the given one.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = DefaultApi()
val id : java.math.BigDecimal = 715538 // java.math.BigDecimal | The id of the source recipe to which similar recipes should be found.
val number : java.math.BigDecimal = 1 // java.math.BigDecimal | The number of random recipes to be returned (between 1 and 100).
try {
    val result : kotlin.Any = apiInstance.getSimilarRecipes(id, number)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#getSimilarRecipes")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#getSimilarRecipes")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **java.math.BigDecimal**| The id of the source recipe to which similar recipes should be found. |
 **number** | **java.math.BigDecimal**| The number of random recipes to be returned (between 1 and 100). | [optional]

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getWineDescription"></a>
# **getWineDescription**
> kotlin.Any getWineDescription(wine)

Get Wine Description

Get the description of a certain wine, e.g. \&quot;malbec\&quot;, \&quot;riesling\&quot;, or \&quot;merlot\&quot;.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = DefaultApi()
val wine : kotlin.String = merlot // kotlin.String | The name of the wine that should be paired, e.g. \"merlot\", \"riesling\", or \"malbec\".
try {
    val result : kotlin.Any = apiInstance.getWineDescription(wine)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#getWineDescription")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#getWineDescription")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wine** | **kotlin.String**| The name of the wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;. |

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getWinePairing"></a>
# **getWinePairing**
> kotlin.Any getWinePairing(food, maxPrice)

Get Wine Pairing

Find a wine that goes well with a food. Food can be a dish name (\&quot;steak\&quot;), an ingredient name (\&quot;salmon\&quot;), or a cuisine (\&quot;italian\&quot;).

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = DefaultApi()
val food : kotlin.String = steak // kotlin.String | The food to get a pairing for. This can be a dish (\"steak\"), an ingredient (\"salmon\"), or a cuisine (\"italian\").
val maxPrice : java.math.BigDecimal = 50 // java.math.BigDecimal | The maximum price for the specific wine recommendation in USD.
try {
    val result : kotlin.Any = apiInstance.getWinePairing(food, maxPrice)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#getWinePairing")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#getWinePairing")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **food** | **kotlin.String**| The food to get a pairing for. This can be a dish (\&quot;steak\&quot;), an ingredient (\&quot;salmon\&quot;), or a cuisine (\&quot;italian\&quot;). |
 **maxPrice** | **java.math.BigDecimal**| The maximum price for the specific wine recommendation in USD. | [optional]

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getWineRecommendation"></a>
# **getWineRecommendation**
> kotlin.Any getWineRecommendation(wine, maxPrice, minRating, number)

Get Wine Recommendation

Get a specific wine recommendation (concrete product) for a given wine, e.g. \&quot;merlot\&quot;.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = DefaultApi()
val wine : kotlin.String = merlot // kotlin.String | The name of the wine to get a specific product recommendation for.
val maxPrice : java.math.BigDecimal = 50 // java.math.BigDecimal | The maximum price for the specific wine recommendation in USD.
val minRating : java.math.BigDecimal = 0.7 // java.math.BigDecimal | The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars.
val number : java.math.BigDecimal = 3 // java.math.BigDecimal | The number of wine recommendations expected (between 1 and 100).
try {
    val result : kotlin.Any = apiInstance.getWineRecommendation(wine, maxPrice, minRating, number)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#getWineRecommendation")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#getWineRecommendation")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wine** | **kotlin.String**| The name of the wine to get a specific product recommendation for. |
 **maxPrice** | **java.math.BigDecimal**| The maximum price for the specific wine recommendation in USD. | [optional]
 **minRating** | **java.math.BigDecimal**| The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars. | [optional]
 **number** | **java.math.BigDecimal**| The number of wine recommendations expected (between 1 and 100). | [optional]

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="guessNutritionByDishName"></a>
# **guessNutritionByDishName**
> kotlin.Any guessNutritionByDishName(title)

Guess Nutrition by Dish Name

Guess the macro nutrients of a dish given its title.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = DefaultApi()
val title : kotlin.String = Spaghetti Aglio et Olio // kotlin.String | The title of the dish.
try {
    val result : kotlin.Any = apiInstance.guessNutritionByDishName(title)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#guessNutritionByDishName")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#guessNutritionByDishName")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **kotlin.String**| The title of the dish. |

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="mapIngredientsToGroceryProducts"></a>
# **mapIngredientsToGroceryProducts**
> kotlin.Any mapIngredientsToGroceryProducts(body)

Map Ingredients to Grocery Products

Map a set of ingredients to products you can buy in the grocery store.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = DefaultApi()
val body : kotlin.Any = Object // kotlin.Any | 
try {
    val result : kotlin.Any = apiInstance.mapIngredientsToGroceryProducts(body)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#mapIngredientsToGroceryProducts")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#mapIngredientsToGroceryProducts")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **kotlin.Any**|  |

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="parseIngredients"></a>
# **parseIngredients**
> kotlin.Any parseIngredients(ingredientList, servings, includeNutrition)

Parse Ingredients

Extract an ingredient from plain text.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = DefaultApi()
val ingredientList : kotlin.String = ingredientList_example // kotlin.String | The ingredient list of the recipe, one ingredient per line.
val servings : java.math.BigDecimal = 8.14 // java.math.BigDecimal | The number of servings that you can make from the ingredients.
val includeNutrition : kotlin.Boolean = true // kotlin.Boolean | Whether nutrition data should be added to correctly parsed ingredients.
try {
    val result : kotlin.Any = apiInstance.parseIngredients(ingredientList, servings, includeNutrition)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#parseIngredients")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#parseIngredients")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredientList** | **kotlin.String**| The ingredient list of the recipe, one ingredient per line. |
 **servings** | **java.math.BigDecimal**| The number of servings that you can make from the ingredients. |
 **includeNutrition** | **kotlin.Boolean**| Whether nutrition data should be added to correctly parsed ingredients. | [optional]

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="quickAnswer"></a>
# **quickAnswer**
> kotlin.Any quickAnswer(q)

Quick Answer

Answer a nutrition related natural language question.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = DefaultApi()
val q : kotlin.String = How much vitamin c is in 2 apples? // kotlin.String | The nutrition-related question.
try {
    val result : kotlin.Any = apiInstance.quickAnswer(q)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#quickAnswer")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#quickAnswer")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **kotlin.String**| The nutrition-related question. |

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="searchFoodVideos"></a>
# **searchFoodVideos**
> kotlin.Any searchFoodVideos(query, type, cuisine, diet, includeIngredients, excludeIngredients, minLength, maxLength, offset, number)

Search Food Videos

Find recipe and other food related videos.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = DefaultApi()
val query : kotlin.String = chicken soup // kotlin.String | The search query.
val type : kotlin.String = main course // kotlin.String | The type of the recipes. See a full list of supported meal types.
val cuisine : kotlin.String = italian // kotlin.String | The cuisine(s) of the recipes. One or more comma separated. See a full list of supported cuisines.
val diet : kotlin.String = vegetarian // kotlin.String | The diet to which the recipes must be compliant. See a full list of supported diets.
val includeIngredients : kotlin.String = tomato,cheese // kotlin.String | A comma-separated list of ingredients that should/must be contained in the recipe.
val excludeIngredients : kotlin.String = eggs // kotlin.String | A comma-separated list of ingredients or ingredient types that must not be contained in the recipes.
val minLength : java.math.BigDecimal = 0 // java.math.BigDecimal | Minimum video length in seconds.
val maxLength : java.math.BigDecimal = 999 // java.math.BigDecimal | Maximum video length in seconds.
val offset : java.math.BigDecimal = 0 // java.math.BigDecimal | The number of results to skip (between 0 and 900).
val number : java.math.BigDecimal = 10 // java.math.BigDecimal | The number of results to return (between 1 and 100).
try {
    val result : kotlin.Any = apiInstance.searchFoodVideos(query, type, cuisine, diet, includeIngredients, excludeIngredients, minLength, maxLength, offset, number)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#searchFoodVideos")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#searchFoodVideos")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **kotlin.String**| The search query. |
 **type** | **kotlin.String**| The type of the recipes. See a full list of supported meal types. | [optional]
 **cuisine** | **kotlin.String**| The cuisine(s) of the recipes. One or more comma separated. See a full list of supported cuisines. | [optional]
 **diet** | **kotlin.String**| The diet to which the recipes must be compliant. See a full list of supported diets. | [optional]
 **includeIngredients** | **kotlin.String**| A comma-separated list of ingredients that should/must be contained in the recipe. | [optional]
 **excludeIngredients** | **kotlin.String**| A comma-separated list of ingredients or ingredient types that must not be contained in the recipes. | [optional]
 **minLength** | **java.math.BigDecimal**| Minimum video length in seconds. | [optional]
 **maxLength** | **java.math.BigDecimal**| Maximum video length in seconds. | [optional]
 **offset** | **java.math.BigDecimal**| The number of results to skip (between 0 and 900). | [optional]
 **number** | **java.math.BigDecimal**| The number of results to return (between 1 and 100). | [optional]

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="searchGroceryProducts"></a>
# **searchGroceryProducts**
> kotlin.Any searchGroceryProducts(query, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, offset, number)

Search Grocery Products

Search packaged food products such as frozen pizza and snickers bars.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = DefaultApi()
val query : kotlin.String = snickers // kotlin.String | The search query.
val minCalories : java.math.BigDecimal = 50 // java.math.BigDecimal | The minimum number of calories the product must have.
val maxCalories : java.math.BigDecimal = 800 // java.math.BigDecimal | The maximum number of calories the product can have.
val minCarbs : java.math.BigDecimal = 10 // java.math.BigDecimal | The minimum number of carbohydrates in grams the product must have.
val maxCarbs : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of carbohydrates in grams the product can have.
val minProtein : java.math.BigDecimal = 10 // java.math.BigDecimal | The minimum number of protein in grams the product must have.
val maxProtein : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of protein in grams the product can have.
val minFat : java.math.BigDecimal = 1 // java.math.BigDecimal | The minimum number of fat in grams the product must have.
val maxFat : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of fat in grams the product can have.
val offset : java.math.BigDecimal = 0 // java.math.BigDecimal | The offset number for paging (between 0 and 990).
val number : java.math.BigDecimal = 10 // java.math.BigDecimal | The number of expected results (between 1 and 100).
try {
    val result : kotlin.Any = apiInstance.searchGroceryProducts(query, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, offset, number)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#searchGroceryProducts")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#searchGroceryProducts")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **kotlin.String**| The search query. |
 **minCalories** | **java.math.BigDecimal**| The minimum number of calories the product must have. | [optional]
 **maxCalories** | **java.math.BigDecimal**| The maximum number of calories the product can have. | [optional]
 **minCarbs** | **java.math.BigDecimal**| The minimum number of carbohydrates in grams the product must have. | [optional]
 **maxCarbs** | **java.math.BigDecimal**| The maximum number of carbohydrates in grams the product can have. | [optional]
 **minProtein** | **java.math.BigDecimal**| The minimum number of protein in grams the product must have. | [optional]
 **maxProtein** | **java.math.BigDecimal**| The maximum number of protein in grams the product can have. | [optional]
 **minFat** | **java.math.BigDecimal**| The minimum number of fat in grams the product must have. | [optional]
 **maxFat** | **java.math.BigDecimal**| The maximum number of fat in grams the product can have. | [optional]
 **offset** | **java.math.BigDecimal**| The offset number for paging (between 0 and 990). | [optional]
 **number** | **java.math.BigDecimal**| The number of expected results (between 1 and 100). | [optional]

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="searchGroceryProductsByUPC"></a>
# **searchGroceryProductsByUPC**
> kotlin.Any searchGroceryProductsByUPC(upc)

Search Grocery Products by UPC

Get information about a food product given its UPC.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = DefaultApi()
val upc : java.math.BigDecimal = 41631000564 // java.math.BigDecimal | The product's UPC.
try {
    val result : kotlin.Any = apiInstance.searchGroceryProductsByUPC(upc)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#searchGroceryProductsByUPC")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#searchGroceryProductsByUPC")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **upc** | **java.math.BigDecimal**| The product&#39;s UPC. |

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="searchMenuItems"></a>
# **searchMenuItems**
> kotlin.Any searchMenuItems(query, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, offset, number)

Search Menu Items

Search over 115,000 menu items from over 800 fast food and chain restaurants such as McDonalds Big Mac or Starbucks Mocha.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = DefaultApi()
val query : kotlin.String = snickers // kotlin.String | The search query.
val minCalories : java.math.BigDecimal = 50 // java.math.BigDecimal | The minimum number of calories the menu item must have.
val maxCalories : java.math.BigDecimal = 800 // java.math.BigDecimal | The maximum number of calories the menu item can have.
val minCarbs : java.math.BigDecimal = 10 // java.math.BigDecimal | The minimum number of carbohydrates in grams the menu item must have.
val maxCarbs : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of carbohydrates in grams the menu item can have.
val minProtein : java.math.BigDecimal = 10 // java.math.BigDecimal | The minimum number of protein in grams the menu item must have.
val maxProtein : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of protein in grams the menu item can have.
val minFat : java.math.BigDecimal = 1 // java.math.BigDecimal | The minimum number of fat in grams the menu item must have.
val maxFat : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of fat in grams the menu item can have.
val offset : java.math.BigDecimal = 0 // java.math.BigDecimal | The offset number for paging (between 0 and 990).
val number : java.math.BigDecimal = 100 // java.math.BigDecimal | The number of expected results (between 1 and 10).
try {
    val result : kotlin.Any = apiInstance.searchMenuItems(query, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, offset, number)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#searchMenuItems")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#searchMenuItems")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **kotlin.String**| The search query. |
 **minCalories** | **java.math.BigDecimal**| The minimum number of calories the menu item must have. | [optional]
 **maxCalories** | **java.math.BigDecimal**| The maximum number of calories the menu item can have. | [optional]
 **minCarbs** | **java.math.BigDecimal**| The minimum number of carbohydrates in grams the menu item must have. | [optional]
 **maxCarbs** | **java.math.BigDecimal**| The maximum number of carbohydrates in grams the menu item can have. | [optional]
 **minProtein** | **java.math.BigDecimal**| The minimum number of protein in grams the menu item must have. | [optional]
 **maxProtein** | **java.math.BigDecimal**| The maximum number of protein in grams the menu item can have. | [optional]
 **minFat** | **java.math.BigDecimal**| The minimum number of fat in grams the menu item must have. | [optional]
 **maxFat** | **java.math.BigDecimal**| The maximum number of fat in grams the menu item can have. | [optional]
 **offset** | **java.math.BigDecimal**| The offset number for paging (between 0 and 990). | [optional]
 **number** | **java.math.BigDecimal**| The number of expected results (between 1 and 10). | [optional]

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="searchRecipes"></a>
# **searchRecipes**
> kotlin.Any searchRecipes(query, cuisine, diet, excludeIngredients, intolerances, offset, number, limitLicense, instructionsRequired)

Search Recipes

Our recipe API includes over 360,000 recipes as well as an open source recipe database. Consider using the \&quot;Search Recipes Complex\&quot; endpoint for much more flexibility.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = DefaultApi()
val query : kotlin.String = burger // kotlin.String | The (natural language) recipe search query.
val cuisine : kotlin.String = italian // kotlin.String | The cuisine(s) of the recipes. One or more comma separated. See a full list of supported cuisines.
val diet : kotlin.String = vegetarian // kotlin.String | The diet to which the recipes must be compliant. See a full list of supported diets.
val excludeIngredients : kotlin.String = eggs // kotlin.String | An comma-separated list of ingredients or ingredient types that must not be contained in the recipes.
val intolerances : kotlin.String = gluten // kotlin.String | A comma-separated list of intolerances. All found recipes must not have ingredients that could cause problems for people with one of the given tolerances. See a full list of supported intolerances.
val offset : java.math.BigDecimal = 0 // java.math.BigDecimal | The number of results to skip (between 0 and 900).
val number : java.math.BigDecimal = 10 // java.math.BigDecimal | The number of results to return (between 1 and 100).
val limitLicense : kotlin.Boolean = true // kotlin.Boolean | Whether the recipes should have an open license that allows for displaying with proper attribution.
val instructionsRequired : kotlin.Boolean = true // kotlin.Boolean | Whether the recipes must have instructions.
try {
    val result : kotlin.Any = apiInstance.searchRecipes(query, cuisine, diet, excludeIngredients, intolerances, offset, number, limitLicense, instructionsRequired)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#searchRecipes")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#searchRecipes")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **kotlin.String**| The (natural language) recipe search query. |
 **cuisine** | **kotlin.String**| The cuisine(s) of the recipes. One or more comma separated. See a full list of supported cuisines. | [optional]
 **diet** | **kotlin.String**| The diet to which the recipes must be compliant. See a full list of supported diets. | [optional]
 **excludeIngredients** | **kotlin.String**| An comma-separated list of ingredients or ingredient types that must not be contained in the recipes. | [optional]
 **intolerances** | **kotlin.String**| A comma-separated list of intolerances. All found recipes must not have ingredients that could cause problems for people with one of the given tolerances. See a full list of supported intolerances. | [optional]
 **offset** | **java.math.BigDecimal**| The number of results to skip (between 0 and 900). | [optional]
 **number** | **java.math.BigDecimal**| The number of results to return (between 1 and 100). | [optional]
 **limitLicense** | **kotlin.Boolean**| Whether the recipes should have an open license that allows for displaying with proper attribution. | [optional]
 **instructionsRequired** | **kotlin.Boolean**| Whether the recipes must have instructions. | [optional]

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="searchRecipesByIngredients"></a>
# **searchRecipesByIngredients**
> kotlin.Any searchRecipesByIngredients(ingredients, number, limitLicense, ranking, ignorePantry)

Search Recipes by Ingredients

Find recipes that use as many of the given ingredients as possible and have as little as possible missing ingredients. This is a \&quot;what&#39;s in your fridge\&quot; API endpoint.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = DefaultApi()
val ingredients : kotlin.String = apples,flour,sugar // kotlin.String | A comma-separated list of ingredients that the recipes should contain.
val number : java.math.BigDecimal = 10 // java.math.BigDecimal | The maximal number of recipes to return (between 1 and 100). Defaults to 10.
val limitLicense : kotlin.Boolean = true // kotlin.Boolean | Whether the recipes should have an open license that allows for displaying with proper attribution.
val ranking : java.math.BigDecimal = 1 // java.math.BigDecimal | Whether to maximize used ingredients (1) or minimize missing ingredients (2) first.
val ignorePantry : kotlin.Boolean = true // kotlin.Boolean | Whether to ignore pantry ingredients such as water, salt, flour etc.
try {
    val result : kotlin.Any = apiInstance.searchRecipesByIngredients(ingredients, number, limitLicense, ranking, ignorePantry)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#searchRecipesByIngredients")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#searchRecipesByIngredients")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredients** | **kotlin.String**| A comma-separated list of ingredients that the recipes should contain. |
 **number** | **java.math.BigDecimal**| The maximal number of recipes to return (between 1 and 100). Defaults to 10. | [optional]
 **limitLicense** | **kotlin.Boolean**| Whether the recipes should have an open license that allows for displaying with proper attribution. | [optional]
 **ranking** | **java.math.BigDecimal**| Whether to maximize used ingredients (1) or minimize missing ingredients (2) first. | [optional]
 **ignorePantry** | **kotlin.Boolean**| Whether to ignore pantry ingredients such as water, salt, flour etc. | [optional]

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="searchRecipesByNutrients"></a>
# **searchRecipesByNutrients**
> kotlin.Any searchRecipesByNutrients(minCarbs, maxCarbs, minProtein, maxProtein, minCalories, maxCalories, minFat, maxFat, minAlcohol, maxAlcohol, minCaffeine, maxCaffeine, minCopper, maxCopper, minCalcium, maxCalcium, minCholine, maxCholine, minCholesterol, maxCholesterol, minFluoride, maxFluoride, minSaturatedFat, maxSaturatedFat, minVitaminA, maxVitaminA, minVitaminC, maxVitaminC, minVitaminD, maxVitaminD, minVitaminE, maxVitaminE, minVitaminK, maxVitaminK, minVitaminB1, maxVitaminB1, minVitaminB2, maxVitaminB2, minVitaminB5, maxVitaminB5, minVitaminB3, maxVitaminB3, minVitaminB6, maxVitaminB6, minVitaminB12, maxVitaminB12, minFiber, maxFiber, minFolate, maxFolate, minFolicAcid, maxFolicAcid, minIodine, maxIodine, minIron, maxIron, minMagnesium, maxMagnesium, minManganese, maxManganese, minPhosphorus, maxPhosphorus, minPotassium, maxPotassium, minSelenium, maxSelenium, minSodium, maxSodium, minSugar, maxSugar, minZinc, maxZinc, offset, number, random, limitLicense)

Search Recipes by Nutrients

Find a set of recipes that adhere to the given nutritional limits. All the returned recipes will have macro nutrients within the calories, protein, fat, and carbohydrate limits.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = DefaultApi()
val minCarbs : java.math.BigDecimal = 10 // java.math.BigDecimal | The minimum number of carbohydrates in grams the recipe must have.
val maxCarbs : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of carbohydrates in grams the recipe can have.
val minProtein : java.math.BigDecimal = 10 // java.math.BigDecimal | The minimum number of protein in grams the recipe must have.
val maxProtein : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of protein in grams the recipe can have.
val minCalories : java.math.BigDecimal = 50 // java.math.BigDecimal | The minimum number of calories the recipe must have.
val maxCalories : java.math.BigDecimal = 800 // java.math.BigDecimal | The maximum number of calories the recipe can have.
val minFat : java.math.BigDecimal = 1 // java.math.BigDecimal | The minimum number of fat in grams the recipe must have.
val maxFat : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of fat in grams the recipe can have.
val minAlcohol : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum number of alcohol in grams the recipe must have.
val maxAlcohol : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of alcohol in grams the recipe must have.
val minCaffeine : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum number of milligrams of caffeine the recipe must have.
val maxCaffeine : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of alcohol in grams the recipe must have.
val minCopper : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum number of copper in milligrams the recipe must have.
val maxCopper : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of copper in milligrams the recipe must have.
val minCalcium : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum number of calcium in milligrams the recipe must have.
val maxCalcium : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of calcium in milligrams the recipe must have.
val minCholine : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum number of choline in milligrams the recipe must have.
val maxCholine : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of choline in milligrams the recipe can have.
val minCholesterol : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum number of cholesterol in milligrams the recipe must have.
val maxCholesterol : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of cholesterol in milligrams the recipe must have.
val minFluoride : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum number of fluoride in milligrams the recipe must have.
val maxFluoride : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of fluoride in milligrams the recipe can have.
val minSaturatedFat : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum number of saturated fat in grams the recipe must have.
val maxSaturatedFat : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of saturated fat in grams the recipe must have.
val minVitaminA : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum number of Vitamin A in IU the recipe must have.
val maxVitaminA : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of Vitamin A in IU the recipe must have.
val minVitaminC : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum number of Vitamin C milligrams the recipe must have.
val maxVitaminC : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of Vitamin C in milligrams the recipe can have.
val minVitaminD : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum number of Vitamin D in micrograms the recipe must have.
val maxVitaminD : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of Vitamin D in micrograms the recipe must have.
val minVitaminE : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum number of Vitamin E in milligrams the recipe must have.
val maxVitaminE : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of Vitamin E in milligrams the recipe must have.
val minVitaminK : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum number of Vitamin K in micrograms the recipe must have.
val maxVitaminK : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of Vitamin K in micrograms the recipe must have.
val minVitaminB1 : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum number of Vitamin B1 in milligrams the recipe must have.
val maxVitaminB1 : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of Vitamin B1 in milligrams the recipe must have.
val minVitaminB2 : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum number of Vitamin B2 in milligrams the recipe must have.
val maxVitaminB2 : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of Vitamin B2 in milligrams the recipe must have.
val minVitaminB5 : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum number of Vitamin B5 in milligrams the recipe must have.
val maxVitaminB5 : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of Vitamin B5 in milligrams the recipe can have.
val minVitaminB3 : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum number of Vitamin B3 in milligrams the recipe must have.
val maxVitaminB3 : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of Vitamin B3 in milligrams the recipe can have.
val minVitaminB6 : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum number of Vitamin B6 in milligrams the recipe must have.
val maxVitaminB6 : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of Vitamin B6 in milligrams the recipe can have.
val minVitaminB12 : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum number of Vitamin B12 in micrograms the recipe must have.
val maxVitaminB12 : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of Vitamin B12 in micrograms the recipe must have.
val minFiber : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum number of fiber in grams the recipe must have.
val maxFiber : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of fiber in grams the recipe must have.
val minFolate : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum number of folate in grams the recipe must have.
val maxFolate : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of folate in grams the recipe must have.
val minFolicAcid : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum number of folic acid in grams the recipe must have.
val maxFolicAcid : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of folic acid in grams the recipe must have.
val minIodine : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum number of Iodine in grams the recipe must have.
val maxIodine : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of iodine in grams the recipe must have.
val minIron : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum number of iron in milligrams the recipe must have.
val maxIron : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of iron in milligrams the recipe can have.
val minMagnesium : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum number of magnesium in milligrams the recipe must have.
val maxMagnesium : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of magnesium in milligrams the recipe can have.
val minManganese : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum number of manganese in milligrams the recipe must have.
val maxManganese : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of manganese in milligrams the recipe can have.
val minPhosphorus : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum number of phosphorus in milligrams the recipe must have.
val maxPhosphorus : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of phosphorus in milligrams the recipe can have.
val minPotassium : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum number of potassium in milligrams the recipe must have.
val maxPotassium : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of potassium in milligrams the recipe can have.
val minSelenium : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum number of selenium in grams the recipe must have.
val maxSelenium : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of selenium in grams the recipe must have.
val minSodium : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum number of sodium in milligrams the recipe must have.
val maxSodium : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of sodium in milligrams the recipe must have.
val minSugar : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum number of sugar in grams the recipe must have.
val maxSugar : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of sugar in grams the recipe must have.
val minZinc : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum number of zinc in milligrams the recipe must have.
val maxZinc : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of zinc in milligrams the recipe can have.
val offset : java.math.BigDecimal = 0 // java.math.BigDecimal | The offset number for paging (between 0 and 990).
val number : java.math.BigDecimal = 10 // java.math.BigDecimal | The number of expected results (between 1 and 100).
val random : kotlin.Boolean = false // kotlin.Boolean | If true, every request will give you a random set of recipes within the requested limits.
val limitLicense : kotlin.Boolean = true // kotlin.Boolean | Whether the recipes should have an open license that allows for displaying with proper attribution.
try {
    val result : kotlin.Any = apiInstance.searchRecipesByNutrients(minCarbs, maxCarbs, minProtein, maxProtein, minCalories, maxCalories, minFat, maxFat, minAlcohol, maxAlcohol, minCaffeine, maxCaffeine, minCopper, maxCopper, minCalcium, maxCalcium, minCholine, maxCholine, minCholesterol, maxCholesterol, minFluoride, maxFluoride, minSaturatedFat, maxSaturatedFat, minVitaminA, maxVitaminA, minVitaminC, maxVitaminC, minVitaminD, maxVitaminD, minVitaminE, maxVitaminE, minVitaminK, maxVitaminK, minVitaminB1, maxVitaminB1, minVitaminB2, maxVitaminB2, minVitaminB5, maxVitaminB5, minVitaminB3, maxVitaminB3, minVitaminB6, maxVitaminB6, minVitaminB12, maxVitaminB12, minFiber, maxFiber, minFolate, maxFolate, minFolicAcid, maxFolicAcid, minIodine, maxIodine, minIron, maxIron, minMagnesium, maxMagnesium, minManganese, maxManganese, minPhosphorus, maxPhosphorus, minPotassium, maxPotassium, minSelenium, maxSelenium, minSodium, maxSodium, minSugar, maxSugar, minZinc, maxZinc, offset, number, random, limitLicense)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#searchRecipesByNutrients")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#searchRecipesByNutrients")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **minCarbs** | **java.math.BigDecimal**| The minimum number of carbohydrates in grams the recipe must have. | [optional]
 **maxCarbs** | **java.math.BigDecimal**| The maximum number of carbohydrates in grams the recipe can have. | [optional]
 **minProtein** | **java.math.BigDecimal**| The minimum number of protein in grams the recipe must have. | [optional]
 **maxProtein** | **java.math.BigDecimal**| The maximum number of protein in grams the recipe can have. | [optional]
 **minCalories** | **java.math.BigDecimal**| The minimum number of calories the recipe must have. | [optional]
 **maxCalories** | **java.math.BigDecimal**| The maximum number of calories the recipe can have. | [optional]
 **minFat** | **java.math.BigDecimal**| The minimum number of fat in grams the recipe must have. | [optional]
 **maxFat** | **java.math.BigDecimal**| The maximum number of fat in grams the recipe can have. | [optional]
 **minAlcohol** | **java.math.BigDecimal**| The minimum number of alcohol in grams the recipe must have. | [optional]
 **maxAlcohol** | **java.math.BigDecimal**| The maximum number of alcohol in grams the recipe must have. | [optional]
 **minCaffeine** | **java.math.BigDecimal**| The minimum number of milligrams of caffeine the recipe must have. | [optional]
 **maxCaffeine** | **java.math.BigDecimal**| The maximum number of alcohol in grams the recipe must have. | [optional]
 **minCopper** | **java.math.BigDecimal**| The minimum number of copper in milligrams the recipe must have. | [optional]
 **maxCopper** | **java.math.BigDecimal**| The maximum number of copper in milligrams the recipe must have. | [optional]
 **minCalcium** | **java.math.BigDecimal**| The minimum number of calcium in milligrams the recipe must have. | [optional]
 **maxCalcium** | **java.math.BigDecimal**| The maximum number of calcium in milligrams the recipe must have. | [optional]
 **minCholine** | **java.math.BigDecimal**| The minimum number of choline in milligrams the recipe must have. | [optional]
 **maxCholine** | **java.math.BigDecimal**| The maximum number of choline in milligrams the recipe can have. | [optional]
 **minCholesterol** | **java.math.BigDecimal**| The minimum number of cholesterol in milligrams the recipe must have. | [optional]
 **maxCholesterol** | **java.math.BigDecimal**| The maximum number of cholesterol in milligrams the recipe must have. | [optional]
 **minFluoride** | **java.math.BigDecimal**| The minimum number of fluoride in milligrams the recipe must have. | [optional]
 **maxFluoride** | **java.math.BigDecimal**| The maximum number of fluoride in milligrams the recipe can have. | [optional]
 **minSaturatedFat** | **java.math.BigDecimal**| The minimum number of saturated fat in grams the recipe must have. | [optional]
 **maxSaturatedFat** | **java.math.BigDecimal**| The maximum number of saturated fat in grams the recipe must have. | [optional]
 **minVitaminA** | **java.math.BigDecimal**| The minimum number of Vitamin A in IU the recipe must have. | [optional]
 **maxVitaminA** | **java.math.BigDecimal**| The maximum number of Vitamin A in IU the recipe must have. | [optional]
 **minVitaminC** | **java.math.BigDecimal**| The minimum number of Vitamin C milligrams the recipe must have. | [optional]
 **maxVitaminC** | **java.math.BigDecimal**| The maximum number of Vitamin C in milligrams the recipe can have. | [optional]
 **minVitaminD** | **java.math.BigDecimal**| The minimum number of Vitamin D in micrograms the recipe must have. | [optional]
 **maxVitaminD** | **java.math.BigDecimal**| The maximum number of Vitamin D in micrograms the recipe must have. | [optional]
 **minVitaminE** | **java.math.BigDecimal**| The minimum number of Vitamin E in milligrams the recipe must have. | [optional]
 **maxVitaminE** | **java.math.BigDecimal**| The maximum number of Vitamin E in milligrams the recipe must have. | [optional]
 **minVitaminK** | **java.math.BigDecimal**| The minimum number of Vitamin K in micrograms the recipe must have. | [optional]
 **maxVitaminK** | **java.math.BigDecimal**| The maximum number of Vitamin K in micrograms the recipe must have. | [optional]
 **minVitaminB1** | **java.math.BigDecimal**| The minimum number of Vitamin B1 in milligrams the recipe must have. | [optional]
 **maxVitaminB1** | **java.math.BigDecimal**| The maximum number of Vitamin B1 in milligrams the recipe must have. | [optional]
 **minVitaminB2** | **java.math.BigDecimal**| The minimum number of Vitamin B2 in milligrams the recipe must have. | [optional]
 **maxVitaminB2** | **java.math.BigDecimal**| The maximum number of Vitamin B2 in milligrams the recipe must have. | [optional]
 **minVitaminB5** | **java.math.BigDecimal**| The minimum number of Vitamin B5 in milligrams the recipe must have. | [optional]
 **maxVitaminB5** | **java.math.BigDecimal**| The maximum number of Vitamin B5 in milligrams the recipe can have. | [optional]
 **minVitaminB3** | **java.math.BigDecimal**| The minimum number of Vitamin B3 in milligrams the recipe must have. | [optional]
 **maxVitaminB3** | **java.math.BigDecimal**| The maximum number of Vitamin B3 in milligrams the recipe can have. | [optional]
 **minVitaminB6** | **java.math.BigDecimal**| The minimum number of Vitamin B6 in milligrams the recipe must have. | [optional]
 **maxVitaminB6** | **java.math.BigDecimal**| The maximum number of Vitamin B6 in milligrams the recipe can have. | [optional]
 **minVitaminB12** | **java.math.BigDecimal**| The minimum number of Vitamin B12 in micrograms the recipe must have. | [optional]
 **maxVitaminB12** | **java.math.BigDecimal**| The maximum number of Vitamin B12 in micrograms the recipe must have. | [optional]
 **minFiber** | **java.math.BigDecimal**| The minimum number of fiber in grams the recipe must have. | [optional]
 **maxFiber** | **java.math.BigDecimal**| The maximum number of fiber in grams the recipe must have. | [optional]
 **minFolate** | **java.math.BigDecimal**| The minimum number of folate in grams the recipe must have. | [optional]
 **maxFolate** | **java.math.BigDecimal**| The maximum number of folate in grams the recipe must have. | [optional]
 **minFolicAcid** | **java.math.BigDecimal**| The minimum number of folic acid in grams the recipe must have. | [optional]
 **maxFolicAcid** | **java.math.BigDecimal**| The maximum number of folic acid in grams the recipe must have. | [optional]
 **minIodine** | **java.math.BigDecimal**| The minimum number of Iodine in grams the recipe must have. | [optional]
 **maxIodine** | **java.math.BigDecimal**| The maximum number of iodine in grams the recipe must have. | [optional]
 **minIron** | **java.math.BigDecimal**| The minimum number of iron in milligrams the recipe must have. | [optional]
 **maxIron** | **java.math.BigDecimal**| The maximum number of iron in milligrams the recipe can have. | [optional]
 **minMagnesium** | **java.math.BigDecimal**| The minimum number of magnesium in milligrams the recipe must have. | [optional]
 **maxMagnesium** | **java.math.BigDecimal**| The maximum number of magnesium in milligrams the recipe can have. | [optional]
 **minManganese** | **java.math.BigDecimal**| The minimum number of manganese in milligrams the recipe must have. | [optional]
 **maxManganese** | **java.math.BigDecimal**| The maximum number of manganese in milligrams the recipe can have. | [optional]
 **minPhosphorus** | **java.math.BigDecimal**| The minimum number of phosphorus in milligrams the recipe must have. | [optional]
 **maxPhosphorus** | **java.math.BigDecimal**| The maximum number of phosphorus in milligrams the recipe can have. | [optional]
 **minPotassium** | **java.math.BigDecimal**| The minimum number of potassium in milligrams the recipe must have. | [optional]
 **maxPotassium** | **java.math.BigDecimal**| The maximum number of potassium in milligrams the recipe can have. | [optional]
 **minSelenium** | **java.math.BigDecimal**| The minimum number of selenium in grams the recipe must have. | [optional]
 **maxSelenium** | **java.math.BigDecimal**| The maximum number of selenium in grams the recipe must have. | [optional]
 **minSodium** | **java.math.BigDecimal**| The minimum number of sodium in milligrams the recipe must have. | [optional]
 **maxSodium** | **java.math.BigDecimal**| The maximum number of sodium in milligrams the recipe must have. | [optional]
 **minSugar** | **java.math.BigDecimal**| The minimum number of sugar in grams the recipe must have. | [optional]
 **maxSugar** | **java.math.BigDecimal**| The maximum number of sugar in grams the recipe must have. | [optional]
 **minZinc** | **java.math.BigDecimal**| The minimum number of zinc in milligrams the recipe must have. | [optional]
 **maxZinc** | **java.math.BigDecimal**| The maximum number of zinc in milligrams the recipe can have. | [optional]
 **offset** | **java.math.BigDecimal**| The offset number for paging (between 0 and 990). | [optional]
 **number** | **java.math.BigDecimal**| The number of expected results (between 1 and 100). | [optional]
 **random** | **kotlin.Boolean**| If true, every request will give you a random set of recipes within the requested limits. | [optional]
 **limitLicense** | **kotlin.Boolean**| Whether the recipes should have an open license that allows for displaying with proper attribution. | [optional]

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="searchRecipesComplex"></a>
# **searchRecipesComplex**
> kotlin.Any searchRecipesComplex(query, cuisine, excludeCuisine, diet, intolerances, equipment, includeIngredients, excludeIngredients, type, instructionsRequired, fillIngredients, addRecipeInformation, author, tags, titleMatch, sort, sortDirection, minCarbs, maxCarbs, minProtein, maxProtein, minCalories, maxCalories, minFat, maxFat, minAlcohol, maxAlcohol, minCaffeine, maxCaffeine, minCopper, maxCopper, minCalcium, maxCalcium, minCholine, maxCholine, minCholesterol, maxCholesterol, minFluoride, maxFluoride, minSaturatedFat, maxSaturatedFat, minVitaminA, maxVitaminA, minVitaminC, maxVitaminC, minVitaminD, maxVitaminD, minVitaminE, maxVitaminE, minVitaminK, maxVitaminK, minVitaminB1, maxVitaminB1, minVitaminB2, maxVitaminB2, minVitaminB5, maxVitaminB5, minVitaminB3, maxVitaminB3, minVitaminB6, maxVitaminB6, minVitaminB12, maxVitaminB12, minFiber, maxFiber, minFolate, maxFolate, minFolicAcid, maxFolicAcid, minIodine, maxIodine, minIron, maxIron, minMagnesium, maxMagnesium, minManganese, maxManganese, minPhosphorus, maxPhosphorus, minPotassium, maxPotassium, minSelenium, maxSelenium, minSodium, maxSodium, minSugar, maxSugar, minZinc, maxZinc, offset, number, limitLicense)

Search Recipes Complex

Search through hundreds of thousands of recipes using advanced filtering and ranking. NOTE: Since this method combines searching by query, by ingredients, and by nutrients in one endpoint.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = DefaultApi()
val query : kotlin.String = pasta // kotlin.String | The (natural language) recipe search query.
val cuisine : kotlin.String = italian // kotlin.String | The cuisine(s) of the recipes. One or more comma separated (will be iterpreted as 'OR'). See a full list of supported cuisines.
val excludeCuisine : kotlin.String = greek // kotlin.String | The cuisine(s) the recipes must not match. One or more comma separated (will be iterpreted as 'AND'). See a full list of supported cuisines.
val diet : kotlin.String = vegetarian // kotlin.String | The diet to which the recipes must be compliant. See a full list of supported diets.
val intolerances : kotlin.String = gluten // kotlin.String | A comma-separated list of intolerances. All found recipes must not have ingredients that could cause problems for people with one of the given tolerances. See a full list of supported intolerances.
val equipment : kotlin.String = pan // kotlin.String | The equipment required. Multiple values will be interpreted as 'or'. For example, value could be \"blender, frying pan, bowl\".
val includeIngredients : kotlin.String = tomato,cheese // kotlin.String | A comma-separated list of ingredients that should/must be contained in the recipe.
val excludeIngredients : kotlin.String = eggs // kotlin.String | A comma-separated list of ingredients or ingredient types that must not be contained in the recipes.
val type : kotlin.String = main course // kotlin.String | The type of the recipes. See a full list of supported meal types.
val instructionsRequired : kotlin.Boolean = true // kotlin.Boolean | Whether the recipes must have instructions.
val fillIngredients : kotlin.Boolean = false // kotlin.Boolean | Add information about the used and missing ingredients in each recipe.
val addRecipeInformation : kotlin.Boolean = false // kotlin.Boolean | If set to true, you get more information about the recipes returned. This saves the calls to get recipe information.
val author : kotlin.String = coffeebean // kotlin.String | The username of the recipe author.
val tags : kotlin.String = myCustomTag // kotlin.String | User defined tags that have to match.
val titleMatch : kotlin.String = Crock Pot // kotlin.String | A text that has to match in the title of the recipes.
val sort : kotlin.String = calories // kotlin.String | The strategy to sort recipes by. See a full list of supported sorting options.
val sortDirection : kotlin.String = asc // kotlin.String | The direction in which to sort. Must be either 'asc' (ascending) or 'desc' (descending).
val minCarbs : java.math.BigDecimal = 10 // java.math.BigDecimal | The minimum number of carbohydrates in grams the recipe must have.
val maxCarbs : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of carbohydrates in grams the recipe can have.
val minProtein : java.math.BigDecimal = 10 // java.math.BigDecimal | The minimum number of protein in grams the recipe must have.
val maxProtein : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of protein in grams the recipe can have.
val minCalories : java.math.BigDecimal = 50 // java.math.BigDecimal | The minimum number of calories the recipe must have.
val maxCalories : java.math.BigDecimal = 800 // java.math.BigDecimal | The maximum number of calories the recipe can have.
val minFat : java.math.BigDecimal = 1 // java.math.BigDecimal | The minimum number of fat in grams the recipe must have.
val maxFat : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of fat in grams the recipe can have.
val minAlcohol : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum number of alcohol in grams the recipe must have.
val maxAlcohol : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of alcohol in grams the recipe must have.
val minCaffeine : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum number of milligrams of caffeine the recipe must have.
val maxCaffeine : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of alcohol in grams the recipe must have.
val minCopper : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum number of copper in milligrams the recipe must have.
val maxCopper : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of copper in milligrams the recipe must have.
val minCalcium : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum number of calcium in milligrams the recipe must have.
val maxCalcium : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of calcium in milligrams the recipe must have.
val minCholine : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum number of choline in milligrams the recipe must have.
val maxCholine : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of choline in milligrams the recipe can have.
val minCholesterol : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum number of cholesterol in milligrams the recipe must have.
val maxCholesterol : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of cholesterol in milligrams the recipe must have.
val minFluoride : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum number of fluoride in milligrams the recipe must have.
val maxFluoride : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of fluoride in milligrams the recipe can have.
val minSaturatedFat : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum number of saturated fat in grams the recipe must have.
val maxSaturatedFat : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of saturated fat in grams the recipe must have.
val minVitaminA : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum number of Vitamin A in IU the recipe must have.
val maxVitaminA : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of Vitamin A in IU the recipe must have.
val minVitaminC : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum number of Vitamin C milligrams the recipe must have.
val maxVitaminC : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of Vitamin C in milligrams the recipe can have.
val minVitaminD : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum number of Vitamin D in micrograms the recipe must have.
val maxVitaminD : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of Vitamin D in micrograms the recipe must have.
val minVitaminE : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum number of Vitamin E in milligrams the recipe must have.
val maxVitaminE : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of Vitamin E in milligrams the recipe must have.
val minVitaminK : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum number of Vitamin K in micrograms the recipe must have.
val maxVitaminK : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of Vitamin K in micrograms the recipe must have.
val minVitaminB1 : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum number of Vitamin B1 in milligrams the recipe must have.
val maxVitaminB1 : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of Vitamin B1 in milligrams the recipe must have.
val minVitaminB2 : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum number of Vitamin B2 in milligrams the recipe must have.
val maxVitaminB2 : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of Vitamin B2 in milligrams the recipe must have.
val minVitaminB5 : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum number of Vitamin B5 in milligrams the recipe must have.
val maxVitaminB5 : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of Vitamin B5 in milligrams the recipe can have.
val minVitaminB3 : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum number of Vitamin B3 in milligrams the recipe must have.
val maxVitaminB3 : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of Vitamin B3 in milligrams the recipe can have.
val minVitaminB6 : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum number of Vitamin B6 in milligrams the recipe must have.
val maxVitaminB6 : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of Vitamin B6 in milligrams the recipe can have.
val minVitaminB12 : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum number of Vitamin B12 in micrograms the recipe must have.
val maxVitaminB12 : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of Vitamin B12 in micrograms the recipe must have.
val minFiber : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum number of fiber in grams the recipe must have.
val maxFiber : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of fiber in grams the recipe must have.
val minFolate : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum number of folate in grams the recipe must have.
val maxFolate : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of folate in grams the recipe must have.
val minFolicAcid : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum number of folic acid in grams the recipe must have.
val maxFolicAcid : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of folic acid in grams the recipe must have.
val minIodine : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum number of Iodine in grams the recipe must have.
val maxIodine : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of iodine in grams the recipe must have.
val minIron : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum number of iron in milligrams the recipe must have.
val maxIron : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of iron in milligrams the recipe can have.
val minMagnesium : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum number of magnesium in milligrams the recipe must have.
val maxMagnesium : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of magnesium in milligrams the recipe can have.
val minManganese : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum number of manganese in milligrams the recipe must have.
val maxManganese : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of manganese in milligrams the recipe can have.
val minPhosphorus : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum number of phosphorus in milligrams the recipe must have.
val maxPhosphorus : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of phosphorus in milligrams the recipe can have.
val minPotassium : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum number of potassium in milligrams the recipe must have.
val maxPotassium : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of potassium in milligrams the recipe can have.
val minSelenium : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum number of selenium in grams the recipe must have.
val maxSelenium : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of selenium in grams the recipe must have.
val minSodium : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum number of sodium in milligrams the recipe must have.
val maxSodium : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of sodium in milligrams the recipe must have.
val minSugar : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum number of sugar in grams the recipe must have.
val maxSugar : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of sugar in grams the recipe must have.
val minZinc : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum number of zinc in milligrams the recipe must have.
val maxZinc : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum number of zinc in milligrams the recipe can have.
val offset : java.math.BigDecimal = 0 // java.math.BigDecimal | The offset number for paging (between 0 and 990).
val number : java.math.BigDecimal = 5 // java.math.BigDecimal | The number of expected results (between 1 and 10).
val limitLicense : kotlin.Boolean = true // kotlin.Boolean | Whether the recipes should have an open license that allows for displaying with proper attribution.
try {
    val result : kotlin.Any = apiInstance.searchRecipesComplex(query, cuisine, excludeCuisine, diet, intolerances, equipment, includeIngredients, excludeIngredients, type, instructionsRequired, fillIngredients, addRecipeInformation, author, tags, titleMatch, sort, sortDirection, minCarbs, maxCarbs, minProtein, maxProtein, minCalories, maxCalories, minFat, maxFat, minAlcohol, maxAlcohol, minCaffeine, maxCaffeine, minCopper, maxCopper, minCalcium, maxCalcium, minCholine, maxCholine, minCholesterol, maxCholesterol, minFluoride, maxFluoride, minSaturatedFat, maxSaturatedFat, minVitaminA, maxVitaminA, minVitaminC, maxVitaminC, minVitaminD, maxVitaminD, minVitaminE, maxVitaminE, minVitaminK, maxVitaminK, minVitaminB1, maxVitaminB1, minVitaminB2, maxVitaminB2, minVitaminB5, maxVitaminB5, minVitaminB3, maxVitaminB3, minVitaminB6, maxVitaminB6, minVitaminB12, maxVitaminB12, minFiber, maxFiber, minFolate, maxFolate, minFolicAcid, maxFolicAcid, minIodine, maxIodine, minIron, maxIron, minMagnesium, maxMagnesium, minManganese, maxManganese, minPhosphorus, maxPhosphorus, minPotassium, maxPotassium, minSelenium, maxSelenium, minSodium, maxSodium, minSugar, maxSugar, minZinc, maxZinc, offset, number, limitLicense)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#searchRecipesComplex")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#searchRecipesComplex")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **kotlin.String**| The (natural language) recipe search query. |
 **cuisine** | **kotlin.String**| The cuisine(s) of the recipes. One or more comma separated (will be iterpreted as &#39;OR&#39;). See a full list of supported cuisines. | [optional]
 **excludeCuisine** | **kotlin.String**| The cuisine(s) the recipes must not match. One or more comma separated (will be iterpreted as &#39;AND&#39;). See a full list of supported cuisines. | [optional]
 **diet** | **kotlin.String**| The diet to which the recipes must be compliant. See a full list of supported diets. | [optional]
 **intolerances** | **kotlin.String**| A comma-separated list of intolerances. All found recipes must not have ingredients that could cause problems for people with one of the given tolerances. See a full list of supported intolerances. | [optional]
 **equipment** | **kotlin.String**| The equipment required. Multiple values will be interpreted as &#39;or&#39;. For example, value could be \&quot;blender, frying pan, bowl\&quot;. | [optional]
 **includeIngredients** | **kotlin.String**| A comma-separated list of ingredients that should/must be contained in the recipe. | [optional]
 **excludeIngredients** | **kotlin.String**| A comma-separated list of ingredients or ingredient types that must not be contained in the recipes. | [optional]
 **type** | **kotlin.String**| The type of the recipes. See a full list of supported meal types. | [optional]
 **instructionsRequired** | **kotlin.Boolean**| Whether the recipes must have instructions. | [optional]
 **fillIngredients** | **kotlin.Boolean**| Add information about the used and missing ingredients in each recipe. | [optional]
 **addRecipeInformation** | **kotlin.Boolean**| If set to true, you get more information about the recipes returned. This saves the calls to get recipe information. | [optional]
 **author** | **kotlin.String**| The username of the recipe author. | [optional]
 **tags** | **kotlin.String**| User defined tags that have to match. | [optional]
 **titleMatch** | **kotlin.String**| A text that has to match in the title of the recipes. | [optional]
 **sort** | **kotlin.String**| The strategy to sort recipes by. See a full list of supported sorting options. | [optional]
 **sortDirection** | **kotlin.String**| The direction in which to sort. Must be either &#39;asc&#39; (ascending) or &#39;desc&#39; (descending). | [optional]
 **minCarbs** | **java.math.BigDecimal**| The minimum number of carbohydrates in grams the recipe must have. | [optional]
 **maxCarbs** | **java.math.BigDecimal**| The maximum number of carbohydrates in grams the recipe can have. | [optional]
 **minProtein** | **java.math.BigDecimal**| The minimum number of protein in grams the recipe must have. | [optional]
 **maxProtein** | **java.math.BigDecimal**| The maximum number of protein in grams the recipe can have. | [optional]
 **minCalories** | **java.math.BigDecimal**| The minimum number of calories the recipe must have. | [optional]
 **maxCalories** | **java.math.BigDecimal**| The maximum number of calories the recipe can have. | [optional]
 **minFat** | **java.math.BigDecimal**| The minimum number of fat in grams the recipe must have. | [optional]
 **maxFat** | **java.math.BigDecimal**| The maximum number of fat in grams the recipe can have. | [optional]
 **minAlcohol** | **java.math.BigDecimal**| The minimum number of alcohol in grams the recipe must have. | [optional]
 **maxAlcohol** | **java.math.BigDecimal**| The maximum number of alcohol in grams the recipe must have. | [optional]
 **minCaffeine** | **java.math.BigDecimal**| The minimum number of milligrams of caffeine the recipe must have. | [optional]
 **maxCaffeine** | **java.math.BigDecimal**| The maximum number of alcohol in grams the recipe must have. | [optional]
 **minCopper** | **java.math.BigDecimal**| The minimum number of copper in milligrams the recipe must have. | [optional]
 **maxCopper** | **java.math.BigDecimal**| The maximum number of copper in milligrams the recipe must have. | [optional]
 **minCalcium** | **java.math.BigDecimal**| The minimum number of calcium in milligrams the recipe must have. | [optional]
 **maxCalcium** | **java.math.BigDecimal**| The maximum number of calcium in milligrams the recipe must have. | [optional]
 **minCholine** | **java.math.BigDecimal**| The minimum number of choline in milligrams the recipe must have. | [optional]
 **maxCholine** | **java.math.BigDecimal**| The maximum number of choline in milligrams the recipe can have. | [optional]
 **minCholesterol** | **java.math.BigDecimal**| The minimum number of cholesterol in milligrams the recipe must have. | [optional]
 **maxCholesterol** | **java.math.BigDecimal**| The maximum number of cholesterol in milligrams the recipe must have. | [optional]
 **minFluoride** | **java.math.BigDecimal**| The minimum number of fluoride in milligrams the recipe must have. | [optional]
 **maxFluoride** | **java.math.BigDecimal**| The maximum number of fluoride in milligrams the recipe can have. | [optional]
 **minSaturatedFat** | **java.math.BigDecimal**| The minimum number of saturated fat in grams the recipe must have. | [optional]
 **maxSaturatedFat** | **java.math.BigDecimal**| The maximum number of saturated fat in grams the recipe must have. | [optional]
 **minVitaminA** | **java.math.BigDecimal**| The minimum number of Vitamin A in IU the recipe must have. | [optional]
 **maxVitaminA** | **java.math.BigDecimal**| The maximum number of Vitamin A in IU the recipe must have. | [optional]
 **minVitaminC** | **java.math.BigDecimal**| The minimum number of Vitamin C milligrams the recipe must have. | [optional]
 **maxVitaminC** | **java.math.BigDecimal**| The maximum number of Vitamin C in milligrams the recipe can have. | [optional]
 **minVitaminD** | **java.math.BigDecimal**| The minimum number of Vitamin D in micrograms the recipe must have. | [optional]
 **maxVitaminD** | **java.math.BigDecimal**| The maximum number of Vitamin D in micrograms the recipe must have. | [optional]
 **minVitaminE** | **java.math.BigDecimal**| The minimum number of Vitamin E in milligrams the recipe must have. | [optional]
 **maxVitaminE** | **java.math.BigDecimal**| The maximum number of Vitamin E in milligrams the recipe must have. | [optional]
 **minVitaminK** | **java.math.BigDecimal**| The minimum number of Vitamin K in micrograms the recipe must have. | [optional]
 **maxVitaminK** | **java.math.BigDecimal**| The maximum number of Vitamin K in micrograms the recipe must have. | [optional]
 **minVitaminB1** | **java.math.BigDecimal**| The minimum number of Vitamin B1 in milligrams the recipe must have. | [optional]
 **maxVitaminB1** | **java.math.BigDecimal**| The maximum number of Vitamin B1 in milligrams the recipe must have. | [optional]
 **minVitaminB2** | **java.math.BigDecimal**| The minimum number of Vitamin B2 in milligrams the recipe must have. | [optional]
 **maxVitaminB2** | **java.math.BigDecimal**| The maximum number of Vitamin B2 in milligrams the recipe must have. | [optional]
 **minVitaminB5** | **java.math.BigDecimal**| The minimum number of Vitamin B5 in milligrams the recipe must have. | [optional]
 **maxVitaminB5** | **java.math.BigDecimal**| The maximum number of Vitamin B5 in milligrams the recipe can have. | [optional]
 **minVitaminB3** | **java.math.BigDecimal**| The minimum number of Vitamin B3 in milligrams the recipe must have. | [optional]
 **maxVitaminB3** | **java.math.BigDecimal**| The maximum number of Vitamin B3 in milligrams the recipe can have. | [optional]
 **minVitaminB6** | **java.math.BigDecimal**| The minimum number of Vitamin B6 in milligrams the recipe must have. | [optional]
 **maxVitaminB6** | **java.math.BigDecimal**| The maximum number of Vitamin B6 in milligrams the recipe can have. | [optional]
 **minVitaminB12** | **java.math.BigDecimal**| The minimum number of Vitamin B12 in micrograms the recipe must have. | [optional]
 **maxVitaminB12** | **java.math.BigDecimal**| The maximum number of Vitamin B12 in micrograms the recipe must have. | [optional]
 **minFiber** | **java.math.BigDecimal**| The minimum number of fiber in grams the recipe must have. | [optional]
 **maxFiber** | **java.math.BigDecimal**| The maximum number of fiber in grams the recipe must have. | [optional]
 **minFolate** | **java.math.BigDecimal**| The minimum number of folate in grams the recipe must have. | [optional]
 **maxFolate** | **java.math.BigDecimal**| The maximum number of folate in grams the recipe must have. | [optional]
 **minFolicAcid** | **java.math.BigDecimal**| The minimum number of folic acid in grams the recipe must have. | [optional]
 **maxFolicAcid** | **java.math.BigDecimal**| The maximum number of folic acid in grams the recipe must have. | [optional]
 **minIodine** | **java.math.BigDecimal**| The minimum number of Iodine in grams the recipe must have. | [optional]
 **maxIodine** | **java.math.BigDecimal**| The maximum number of iodine in grams the recipe must have. | [optional]
 **minIron** | **java.math.BigDecimal**| The minimum number of iron in milligrams the recipe must have. | [optional]
 **maxIron** | **java.math.BigDecimal**| The maximum number of iron in milligrams the recipe can have. | [optional]
 **minMagnesium** | **java.math.BigDecimal**| The minimum number of magnesium in milligrams the recipe must have. | [optional]
 **maxMagnesium** | **java.math.BigDecimal**| The maximum number of magnesium in milligrams the recipe can have. | [optional]
 **minManganese** | **java.math.BigDecimal**| The minimum number of manganese in milligrams the recipe must have. | [optional]
 **maxManganese** | **java.math.BigDecimal**| The maximum number of manganese in milligrams the recipe can have. | [optional]
 **minPhosphorus** | **java.math.BigDecimal**| The minimum number of phosphorus in milligrams the recipe must have. | [optional]
 **maxPhosphorus** | **java.math.BigDecimal**| The maximum number of phosphorus in milligrams the recipe can have. | [optional]
 **minPotassium** | **java.math.BigDecimal**| The minimum number of potassium in milligrams the recipe must have. | [optional]
 **maxPotassium** | **java.math.BigDecimal**| The maximum number of potassium in milligrams the recipe can have. | [optional]
 **minSelenium** | **java.math.BigDecimal**| The minimum number of selenium in grams the recipe must have. | [optional]
 **maxSelenium** | **java.math.BigDecimal**| The maximum number of selenium in grams the recipe must have. | [optional]
 **minSodium** | **java.math.BigDecimal**| The minimum number of sodium in milligrams the recipe must have. | [optional]
 **maxSodium** | **java.math.BigDecimal**| The maximum number of sodium in milligrams the recipe must have. | [optional]
 **minSugar** | **java.math.BigDecimal**| The minimum number of sugar in grams the recipe must have. | [optional]
 **maxSugar** | **java.math.BigDecimal**| The maximum number of sugar in grams the recipe must have. | [optional]
 **minZinc** | **java.math.BigDecimal**| The minimum number of zinc in milligrams the recipe must have. | [optional]
 **maxZinc** | **java.math.BigDecimal**| The maximum number of zinc in milligrams the recipe can have. | [optional]
 **offset** | **java.math.BigDecimal**| The offset number for paging (between 0 and 990). | [optional]
 **number** | **java.math.BigDecimal**| The number of expected results (between 1 and 10). | [optional]
 **limitLicense** | **kotlin.Boolean**| Whether the recipes should have an open license that allows for displaying with proper attribution. | [optional]

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="searchSiteContent"></a>
# **searchSiteContent**
> kotlin.Any searchSiteContent(query)

Search Site Content

Search spoonacular&#39;s site content. You&#39;ll be able to find everything that you could also find using the search suggests on spoonacular.com. This is a suggest API so you can send partial strings as queries.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = DefaultApi()
val query : kotlin.String = past // kotlin.String | The query to search for. You can also use partial queries such as \"spagh\" to already find spaghetti recipes, articles, grocery products, and other content.
try {
    val result : kotlin.Any = apiInstance.searchSiteContent(query)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#searchSiteContent")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#searchSiteContent")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **kotlin.String**| The query to search for. You can also use partial queries such as \&quot;spagh\&quot; to already find spaghetti recipes, articles, grocery products, and other content. |

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="summarizeRecipe"></a>
# **summarizeRecipe**
> kotlin.Any summarizeRecipe(id)

Summarize Recipe

Summarize the recipe in a short text.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = DefaultApi()
val id : java.math.BigDecimal = 4632 // java.math.BigDecimal | The recipe id.
try {
    val result : kotlin.Any = apiInstance.summarizeRecipe(id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#summarizeRecipe")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#summarizeRecipe")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **java.math.BigDecimal**| The recipe id. |

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="talkToChatbot"></a>
# **talkToChatbot**
> kotlin.Any talkToChatbot(text, contextId)

Talk to Chatbot

This endpoint can be used to have a conversation about food with the spoonacular chat bot. Use the \&quot;Get Conversation Suggests\&quot; endpoint to show your user what he or she can say.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = DefaultApi()
val text : kotlin.String = donut recipes // kotlin.String | The request / question / answer from the user to the chat bot.
val contextId : kotlin.String = 342938 // kotlin.String | An arbitrary globally unique id for your conversation. The conversation can contain states so you should pass your context id if you want the bot to be able to remember the conversation.
try {
    val result : kotlin.Any = apiInstance.talkToChatbot(text, contextId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#talkToChatbot")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#talkToChatbot")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **kotlin.String**| The request / question / answer from the user to the chat bot. |
 **contextId** | **kotlin.String**| An arbitrary globally unique id for your conversation. The conversation can contain states so you should pass your context id if you want the bot to be able to remember the conversation. | [optional]

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="visualizeEquipment"></a>
# **visualizeEquipment**
> kotlin.String visualizeEquipment(ingredientList, servings, view, defaultCss, showBacklink)

Visualize Equipment

Visualize the equipment used to make a recipe.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = DefaultApi()
val ingredientList : kotlin.String = ingredientList_example // kotlin.String | The ingredient list of the recipe, one ingredient per line.
val servings : java.math.BigDecimal = 8.14 // java.math.BigDecimal | The number of servings.
val view : kotlin.String = view_example // kotlin.String | Either \\\"grid\\\" or \\\"list\\\" as visualization of the equipment.
val defaultCss : kotlin.Boolean = true // kotlin.Boolean | Whether the default CSS should be added to the response.
val showBacklink : kotlin.Boolean = true // kotlin.Boolean | Whether to show a backlink to spoonacular. If set false, this call counts against your quota.
try {
    val result : kotlin.String = apiInstance.visualizeEquipment(ingredientList, servings, view, defaultCss, showBacklink)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#visualizeEquipment")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#visualizeEquipment")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredientList** | **kotlin.String**| The ingredient list of the recipe, one ingredient per line. |
 **servings** | **java.math.BigDecimal**| The number of servings. |
 **view** | **kotlin.String**| Either \\\&quot;grid\\\&quot; or \\\&quot;list\\\&quot; as visualization of the equipment. | [optional]
 **defaultCss** | **kotlin.Boolean**| Whether the default CSS should be added to the response. | [optional]
 **showBacklink** | **kotlin.Boolean**| Whether to show a backlink to spoonacular. If set false, this call counts against your quota. | [optional]

### Return type

**kotlin.String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/html

<a name="visualizeIngredients"></a>
# **visualizeIngredients**
> kotlin.String visualizeIngredients(ingredientList, servings, measure, view, defaultCss, showBacklink)

Visualize Ingredients

Visualize ingredients of a recipe.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = DefaultApi()
val ingredientList : kotlin.String = ingredientList_example // kotlin.String | The ingredient list of the recipe, one ingredient per line.
val servings : java.math.BigDecimal = 8.14 // java.math.BigDecimal | The number of servings.
val measure : kotlin.String = measure_example // kotlin.String | The initial measure, either \\\"metric\\\" or \\\"us\\\".
val view : kotlin.String = view_example // kotlin.String | Either \\\"grid\\\" or \\\"list\\\" as visualization of the equipment.
val defaultCss : kotlin.Boolean = true // kotlin.Boolean | Whether the default CSS should be added to the response.
val showBacklink : kotlin.Boolean = true // kotlin.Boolean | Whether to show a backlink to spoonacular. If set false, this call counts against your quota.
try {
    val result : kotlin.String = apiInstance.visualizeIngredients(ingredientList, servings, measure, view, defaultCss, showBacklink)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#visualizeIngredients")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#visualizeIngredients")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredientList** | **kotlin.String**| The ingredient list of the recipe, one ingredient per line. |
 **servings** | **java.math.BigDecimal**| The number of servings. |
 **measure** | **kotlin.String**| The initial measure, either \\\&quot;metric\\\&quot; or \\\&quot;us\\\&quot;. | [optional]
 **view** | **kotlin.String**| Either \\\&quot;grid\\\&quot; or \\\&quot;list\\\&quot; as visualization of the equipment. | [optional]
 **defaultCss** | **kotlin.Boolean**| Whether the default CSS should be added to the response. | [optional]
 **showBacklink** | **kotlin.Boolean**| Whether to show a backlink to spoonacular. If set false, this call counts against your quota. | [optional]

### Return type

**kotlin.String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/html

<a name="visualizeMenuItemNutritionByID"></a>
# **visualizeMenuItemNutritionByID**
> kotlin.String visualizeMenuItemNutritionByID(id, defaultCss)

Visualize Menu Item Nutrition by ID

Visualize a menu items&#39; nutrition data.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = DefaultApi()
val id : java.math.BigDecimal = 1003464 // java.math.BigDecimal | The menu item id.
val defaultCss : kotlin.Boolean = true // kotlin.Boolean | Whether the default CSS should be added to the response.
try {
    val result : kotlin.String = apiInstance.visualizeMenuItemNutritionByID(id, defaultCss)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#visualizeMenuItemNutritionByID")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#visualizeMenuItemNutritionByID")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **java.math.BigDecimal**| The menu item id. |
 **defaultCss** | **kotlin.Boolean**| Whether the default CSS should be added to the response. | [optional]

### Return type

**kotlin.String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

<a name="visualizePriceBreakdown"></a>
# **visualizePriceBreakdown**
> kotlin.String visualizePriceBreakdown(ingredientList, servings, mode, defaultCss, showBacklink)

Visualize Price Breakdown

Visualize the price breakdown of a recipe.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = DefaultApi()
val ingredientList : kotlin.String = ingredientList_example // kotlin.String | The ingredient list of the recipe, one ingredient per line.
val servings : java.math.BigDecimal = 8.14 // java.math.BigDecimal | The number of servings.
val mode : java.math.BigDecimal = 8.14 // java.math.BigDecimal | The mode in which the widget should be delivered. 1 = separate views (compact), 2 = all in one view (full).
val defaultCss : kotlin.Boolean = true // kotlin.Boolean | Whether the default CSS should be added to the response.
val showBacklink : kotlin.Boolean = true // kotlin.Boolean | Whether to show a backlink to spoonacular. If set false, this call counts against your quota.
try {
    val result : kotlin.String = apiInstance.visualizePriceBreakdown(ingredientList, servings, mode, defaultCss, showBacklink)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#visualizePriceBreakdown")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#visualizePriceBreakdown")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredientList** | **kotlin.String**| The ingredient list of the recipe, one ingredient per line. |
 **servings** | **java.math.BigDecimal**| The number of servings. |
 **mode** | **java.math.BigDecimal**| The mode in which the widget should be delivered. 1 &#x3D; separate views (compact), 2 &#x3D; all in one view (full). | [optional]
 **defaultCss** | **kotlin.Boolean**| Whether the default CSS should be added to the response. | [optional]
 **showBacklink** | **kotlin.Boolean**| Whether to show a backlink to spoonacular. If set false, this call counts against your quota. | [optional]

### Return type

**kotlin.String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/html

<a name="visualizeProductNutritionByID"></a>
# **visualizeProductNutritionByID**
> kotlin.String visualizeProductNutritionByID(id, defaultCss)

Visualize Product Nutrition by ID

Visualize a grocery product&#39;s nutritional information.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = DefaultApi()
val id : java.math.BigDecimal = 7657 // java.math.BigDecimal | The id of the product.
val defaultCss : kotlin.Boolean = true // kotlin.Boolean | Whether the default CSS should be added to the response.
try {
    val result : kotlin.String = apiInstance.visualizeProductNutritionByID(id, defaultCss)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#visualizeProductNutritionByID")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#visualizeProductNutritionByID")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **java.math.BigDecimal**| The id of the product. |
 **defaultCss** | **kotlin.Boolean**| Whether the default CSS should be added to the response. | [optional]

### Return type

**kotlin.String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

<a name="visualizeRecipeEquipmentByID"></a>
# **visualizeRecipeEquipmentByID**
> kotlin.String visualizeRecipeEquipmentByID(id, defaultCss)

Visualize Recipe Equipment by ID

Visualize a recipe&#39;s equipment list.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = DefaultApi()
val id : java.math.BigDecimal = 44860 // java.math.BigDecimal | The recipe id.
val defaultCss : kotlin.Boolean = true // kotlin.Boolean | Whether the default CSS should be added to the response.
try {
    val result : kotlin.String = apiInstance.visualizeRecipeEquipmentByID(id, defaultCss)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#visualizeRecipeEquipmentByID")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#visualizeRecipeEquipmentByID")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **java.math.BigDecimal**| The recipe id. |
 **defaultCss** | **kotlin.Boolean**| Whether the default CSS should be added to the response. | [optional]

### Return type

**kotlin.String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

<a name="visualizeRecipeIngredientsByID"></a>
# **visualizeRecipeIngredientsByID**
> kotlin.String visualizeRecipeIngredientsByID(id, defaultCss)

Visualize Recipe Ingredients by ID

Visualize a recipe&#39;s ingredient list.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = DefaultApi()
val id : java.math.BigDecimal = 1082038 // java.math.BigDecimal | The recipe id.
val defaultCss : kotlin.Boolean = true // kotlin.Boolean | Whether the default CSS should be added to the response.
try {
    val result : kotlin.String = apiInstance.visualizeRecipeIngredientsByID(id, defaultCss)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#visualizeRecipeIngredientsByID")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#visualizeRecipeIngredientsByID")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **java.math.BigDecimal**| The recipe id. |
 **defaultCss** | **kotlin.Boolean**| Whether the default CSS should be added to the response. | [optional]

### Return type

**kotlin.String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

<a name="visualizeRecipeNutrition"></a>
# **visualizeRecipeNutrition**
> kotlin.String visualizeRecipeNutrition(ingredientList, servings, defaultCss, showBacklink)

Visualize Recipe Nutrition

Visualize a recipe&#39;s nutrition data.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = DefaultApi()
val ingredientList : kotlin.String = ingredientList_example // kotlin.String | The ingredient list of the recipe, one ingredient per line.
val servings : java.math.BigDecimal = 8.14 // java.math.BigDecimal | The number of servings.
val defaultCss : kotlin.Boolean = true // kotlin.Boolean | Whether the default CSS should be added to the response.
val showBacklink : kotlin.Boolean = true // kotlin.Boolean | Whether to show a backlink to spoonacular. If set false, this call counts against your quota.
try {
    val result : kotlin.String = apiInstance.visualizeRecipeNutrition(ingredientList, servings, defaultCss, showBacklink)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#visualizeRecipeNutrition")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#visualizeRecipeNutrition")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredientList** | **kotlin.String**| The ingredient list of the recipe, one ingredient per line. |
 **servings** | **java.math.BigDecimal**| The number of servings. |
 **defaultCss** | **kotlin.Boolean**| Whether the default CSS should be added to the response. | [optional]
 **showBacklink** | **kotlin.Boolean**| Whether to show a backlink to spoonacular. If set false, this call counts against your quota. | [optional]

### Return type

**kotlin.String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/html

<a name="visualizeRecipeNutritionByID"></a>
# **visualizeRecipeNutritionByID**
> kotlin.String visualizeRecipeNutritionByID(id, defaultCss)

Visualize Recipe Nutrition by ID

Visualize a recipe&#39;s nutritional information.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = DefaultApi()
val id : java.math.BigDecimal = 1082038 // java.math.BigDecimal | The id of the product.
val defaultCss : kotlin.Boolean = true // kotlin.Boolean | Whether the default CSS should be added to the response.
try {
    val result : kotlin.String = apiInstance.visualizeRecipeNutritionByID(id, defaultCss)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#visualizeRecipeNutritionByID")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#visualizeRecipeNutritionByID")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **java.math.BigDecimal**| The id of the product. |
 **defaultCss** | **kotlin.Boolean**| Whether the default CSS should be added to the response. | [optional]

### Return type

**kotlin.String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

<a name="visualizeRecipePriceBreakdownByID"></a>
# **visualizeRecipePriceBreakdownByID**
> kotlin.String visualizeRecipePriceBreakdownByID(id, defaultCss)

Visualize Recipe Price Breakdown by ID

Visualize a recipe&#39;s price breakdown.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = DefaultApi()
val id : java.math.BigDecimal = 1082038 // java.math.BigDecimal | The recipe id.
val defaultCss : kotlin.Boolean = true // kotlin.Boolean | Whether the default CSS should be added to the response.
try {
    val result : kotlin.String = apiInstance.visualizeRecipePriceBreakdownByID(id, defaultCss)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#visualizeRecipePriceBreakdownByID")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#visualizeRecipePriceBreakdownByID")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **java.math.BigDecimal**| The recipe id. |
 **defaultCss** | **kotlin.Boolean**| Whether the default CSS should be added to the response. | [optional]

### Return type

**kotlin.String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

