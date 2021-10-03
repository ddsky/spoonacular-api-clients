# RecipesApi

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


<a name="analyzeARecipeSearchQuery"></a>
# **analyzeARecipeSearchQuery**
> InlineResponse20018 analyzeARecipeSearchQuery(q)

Analyze a Recipe Search Query

Parse a recipe search query to find out its intention.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = RecipesApi()
val q : kotlin.String = salmon with fusilli and no nuts // kotlin.String | The recipe search query.
try {
    val result : InlineResponse20018 = apiInstance.analyzeARecipeSearchQuery(q)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling RecipesApi#analyzeARecipeSearchQuery")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RecipesApi#analyzeARecipeSearchQuery")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **kotlin.String**| The recipe search query. |

### Return type

[**InlineResponse20018**](InlineResponse20018.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="analyzeRecipeInstructions"></a>
# **analyzeRecipeInstructions**
> InlineResponse20016 analyzeRecipeInstructions(contentMinusType)

Analyze Recipe Instructions

This endpoint allows you to break down instructions into atomic steps. Furthermore, each step will contain the ingredients and equipment required. Additionally, all ingredients and equipment from the recipe&#39;s instructions will be extracted independently of the step they&#39;re used in.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = RecipesApi()
val contentMinusType : kotlin.String = application/json // kotlin.String | The content type.
try {
    val result : InlineResponse20016 = apiInstance.analyzeRecipeInstructions(contentMinusType)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling RecipesApi#analyzeRecipeInstructions")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RecipesApi#analyzeRecipeInstructions")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentMinusType** | **kotlin.String**| The content type. | [optional] [enum: application/x-www-form-urlencoded, application/json, multipart/form-data]

### Return type

[**InlineResponse20016**](InlineResponse20016.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="autocompleteRecipeSearch"></a>
# **autocompleteRecipeSearch**
> kotlin.Array&lt;InlineResponse2007&gt; autocompleteRecipeSearch(query, number)

Autocomplete Recipe Search

Autocomplete a partial input to suggest possible recipe names.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = RecipesApi()
val query : kotlin.String = burger // kotlin.String | The (natural language) search query.
val number : kotlin.Int = 10 // kotlin.Int | The maximum number of items to return (between 1 and 100). Defaults to 10.
try {
    val result : kotlin.Array<InlineResponse2007> = apiInstance.autocompleteRecipeSearch(query, number)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling RecipesApi#autocompleteRecipeSearch")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RecipesApi#autocompleteRecipeSearch")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **kotlin.String**| The (natural language) search query. | [optional]
 **number** | **kotlin.Int**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]

### Return type

[**kotlin.Array&lt;InlineResponse2007&gt;**](InlineResponse2007.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="classifyCuisine"></a>
# **classifyCuisine**
> InlineResponse20017 classifyCuisine(contentMinusType)

Classify Cuisine

Classify the recipe&#39;s cuisine.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = RecipesApi()
val contentMinusType : kotlin.String = application/json // kotlin.String | The content type.
try {
    val result : InlineResponse20017 = apiInstance.classifyCuisine(contentMinusType)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling RecipesApi#classifyCuisine")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RecipesApi#classifyCuisine")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentMinusType** | **kotlin.String**| The content type. | [optional] [enum: application/x-www-form-urlencoded, application/json, multipart/form-data]

### Return type

[**InlineResponse20017**](InlineResponse20017.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="computeGlycemicLoad"></a>
# **computeGlycemicLoad**
> InlineResponse20023 computeGlycemicLoad(inlineObject, language)

Compute Glycemic Load

Retrieve the glycemic index for a list of ingredients and compute the individual and total glycemic load.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = RecipesApi()
val inlineObject : InlineObject =  // InlineObject | 
val language : kotlin.String = en // kotlin.String | The language of the input. Either 'en' or 'de'.
try {
    val result : InlineResponse20023 = apiInstance.computeGlycemicLoad(inlineObject, language)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling RecipesApi#computeGlycemicLoad")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RecipesApi#computeGlycemicLoad")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inlineObject** | [**InlineObject**](InlineObject.md)|  |
 **language** | **kotlin.String**| The language of the input. Either &#39;en&#39; or &#39;de&#39;. | [optional] [enum: en, de]

### Return type

[**InlineResponse20023**](InlineResponse20023.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="convertAmounts"></a>
# **convertAmounts**
> InlineResponse20019 convertAmounts(ingredientName, sourceAmount, sourceUnit, targetUnit)

Convert Amounts

Convert amounts like \&quot;2 cups of flour to grams\&quot;.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = RecipesApi()
val ingredientName : kotlin.String = flour // kotlin.String | The ingredient which you want to convert.
val sourceAmount : java.math.BigDecimal = 2.5 // java.math.BigDecimal | The amount from which you want to convert, e.g. the 2.5 in \"2.5 cups of flour to grams\".
val sourceUnit : kotlin.String = cups // kotlin.String | The unit from which you want to convert, e.g. the grams in \"2.5 cups of flour to grams\". You can also use \"piece\", e.g. \"3.4 oz tomatoes to piece\"
val targetUnit : kotlin.String = grams // kotlin.String | The unit to which you want to convert, e.g. the grams in \"2.5 cups of flour to grams\". You can also use \"piece\", e.g. \"3.4 oz tomatoes to piece\"
try {
    val result : InlineResponse20019 = apiInstance.convertAmounts(ingredientName, sourceAmount, sourceUnit, targetUnit)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling RecipesApi#convertAmounts")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RecipesApi#convertAmounts")
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

[**InlineResponse20019**](InlineResponse20019.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="createRecipeCard"></a>
# **createRecipeCard**
> InlineResponse20015 createRecipeCard(contentMinusType)

Create Recipe Card

Generate a recipe card for a recipe.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = RecipesApi()
val contentMinusType : kotlin.String = application/json // kotlin.String | The content type.
try {
    val result : InlineResponse20015 = apiInstance.createRecipeCard(contentMinusType)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling RecipesApi#createRecipeCard")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RecipesApi#createRecipeCard")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentMinusType** | **kotlin.String**| The content type. | [optional] [enum: application/x-www-form-urlencoded, application/json, multipart/form-data]

### Return type

[**InlineResponse20015**](InlineResponse20015.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

<a name="equipmentByIDImage"></a>
# **equipmentByIDImage**
> kotlin.Any equipmentByIDImage(id)

Equipment by ID Image

Visualize a recipe&#39;s equipment list as an image.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = RecipesApi()
val id : java.math.BigDecimal = 44860 // java.math.BigDecimal | The recipe id.
try {
    val result : kotlin.Any = apiInstance.equipmentByIDImage(id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling RecipesApi#equipmentByIDImage")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RecipesApi#equipmentByIDImage")
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

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png

<a name="extractRecipeFromWebsite"></a>
# **extractRecipeFromWebsite**
> InlineResponse2003 extractRecipeFromWebsite(url, forceExtraction, analyze, includeNutrition, includeTaste)

Extract Recipe from Website

This endpoint lets you extract recipe data such as title, ingredients, and instructions from any properly formatted Website.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = RecipesApi()
val url : kotlin.String = https://foodista.com/recipe/ZHK4KPB6/chocolate-crinkle-cookies // kotlin.String | The URL of the recipe page.
val forceExtraction : kotlin.Boolean = true // kotlin.Boolean | If true, the extraction will be triggered whether we already know the recipe or not. Use this only if information is missing as this operation is slower.
val analyze : kotlin.Boolean = false // kotlin.Boolean | If true, the recipe will be analyzed and classified resolving in more data such as cuisines, dish types, and more.
val includeNutrition : kotlin.Boolean = true // kotlin.Boolean | Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings.
val includeTaste : kotlin.Boolean = false // kotlin.Boolean | Whether taste data should be added to correctly parsed ingredients.
try {
    val result : InlineResponse2003 = apiInstance.extractRecipeFromWebsite(url, forceExtraction, analyze, includeNutrition, includeTaste)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling RecipesApi#extractRecipeFromWebsite")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RecipesApi#extractRecipeFromWebsite")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **kotlin.String**| The URL of the recipe page. |
 **forceExtraction** | **kotlin.Boolean**| If true, the extraction will be triggered whether we already know the recipe or not. Use this only if information is missing as this operation is slower. | [optional]
 **analyze** | **kotlin.Boolean**| If true, the recipe will be analyzed and classified resolving in more data such as cuisines, dish types, and more. | [optional]
 **includeNutrition** | **kotlin.Boolean**| Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. | [optional] [default to false]
 **includeTaste** | **kotlin.Boolean**| Whether taste data should be added to correctly parsed ingredients. | [optional] [default to false]

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getAnalyzedRecipeInstructions"></a>
# **getAnalyzedRecipeInstructions**
> InlineResponse20013 getAnalyzedRecipeInstructions(id, stepBreakdown)

Get Analyzed Recipe Instructions

Get an analyzed breakdown of a recipe&#39;s instructions. Each step is enriched with the ingredients and equipment required.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = RecipesApi()
val id : kotlin.Int = 1 // kotlin.Int | The item's id.
val stepBreakdown : kotlin.Boolean = true // kotlin.Boolean | Whether to break down the recipe steps even more.
try {
    val result : InlineResponse20013 = apiInstance.getAnalyzedRecipeInstructions(id, stepBreakdown)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling RecipesApi#getAnalyzedRecipeInstructions")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RecipesApi#getAnalyzedRecipeInstructions")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **kotlin.Int**| The item&#39;s id. |
 **stepBreakdown** | **kotlin.Boolean**| Whether to break down the recipe steps even more. | [optional]

### Return type

[**InlineResponse20013**](InlineResponse20013.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getRandomRecipes"></a>
# **getRandomRecipes**
> InlineResponse2006 getRandomRecipes(limitLicense, tags, number)

Get Random Recipes

Find random (popular) recipes. If you need to filter recipes by diet, nutrition etc. you might want to consider using the complex recipe search endpoint and set the sort request parameter to random.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = RecipesApi()
val limitLicense : kotlin.Boolean = true // kotlin.Boolean | Whether the recipes should have an open license that allows display with proper attribution.
val tags : kotlin.String = tags_example // kotlin.String | The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have.
val number : kotlin.Int = 10 // kotlin.Int | The maximum number of items to return (between 1 and 100). Defaults to 10.
try {
    val result : InlineResponse2006 = apiInstance.getRandomRecipes(limitLicense, tags, number)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling RecipesApi#getRandomRecipes")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RecipesApi#getRandomRecipes")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limitLicense** | **kotlin.Boolean**| Whether the recipes should have an open license that allows display with proper attribution. | [optional] [default to true]
 **tags** | **kotlin.String**| The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have. | [optional]
 **number** | **kotlin.Int**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getRecipeEquipmentByID"></a>
# **getRecipeEquipmentByID**
> InlineResponse2009 getRecipeEquipmentByID(id)

Equipment by ID

Get a recipe&#39;s equipment list.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = RecipesApi()
val id : kotlin.Int = 1 // kotlin.Int | The item's id.
try {
    val result : InlineResponse2009 = apiInstance.getRecipeEquipmentByID(id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling RecipesApi#getRecipeEquipmentByID")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RecipesApi#getRecipeEquipmentByID")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **kotlin.Int**| The item&#39;s id. |

### Return type

[**InlineResponse2009**](InlineResponse2009.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getRecipeInformation"></a>
# **getRecipeInformation**
> InlineResponse2003 getRecipeInformation(id, includeNutrition)

Get Recipe Information

Use a recipe id to get full information about a recipe, such as ingredients, nutrition, diet and allergen information, etc.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = RecipesApi()
val id : kotlin.Int = 1 // kotlin.Int | The item's id.
val includeNutrition : kotlin.Boolean = true // kotlin.Boolean | Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings.
try {
    val result : InlineResponse2003 = apiInstance.getRecipeInformation(id, includeNutrition)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling RecipesApi#getRecipeInformation")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RecipesApi#getRecipeInformation")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **kotlin.Int**| The item&#39;s id. |
 **includeNutrition** | **kotlin.Boolean**| Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. | [optional] [default to false]

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getRecipeInformationBulk"></a>
# **getRecipeInformationBulk**
> kotlin.Array&lt;InlineResponse2004&gt; getRecipeInformationBulk(ids, includeNutrition)

Get Recipe Information Bulk

Get information about multiple recipes at once. This is equivalent to calling the Get Recipe Information endpoint multiple times, but faster.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = RecipesApi()
val ids : kotlin.String = 715538,716429 // kotlin.String | A comma-separated list of recipe ids.
val includeNutrition : kotlin.Boolean = true // kotlin.Boolean | Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings.
try {
    val result : kotlin.Array<InlineResponse2004> = apiInstance.getRecipeInformationBulk(ids, includeNutrition)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling RecipesApi#getRecipeInformationBulk")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RecipesApi#getRecipeInformationBulk")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | **kotlin.String**| A comma-separated list of recipe ids. |
 **includeNutrition** | **kotlin.Boolean**| Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. | [optional] [default to false]

### Return type

[**kotlin.Array&lt;InlineResponse2004&gt;**](InlineResponse2004.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getRecipeIngredientsByID"></a>
# **getRecipeIngredientsByID**
> InlineResponse20011 getRecipeIngredientsByID(id)

Ingredients by ID

Get a recipe&#39;s ingredient list.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = RecipesApi()
val id : kotlin.Int = 1 // kotlin.Int | The item's id.
try {
    val result : InlineResponse20011 = apiInstance.getRecipeIngredientsByID(id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling RecipesApi#getRecipeIngredientsByID")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RecipesApi#getRecipeIngredientsByID")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **kotlin.Int**| The item&#39;s id. |

### Return type

[**InlineResponse20011**](InlineResponse20011.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getRecipeNutritionWidgetByID"></a>
# **getRecipeNutritionWidgetByID**
> InlineResponse20012 getRecipeNutritionWidgetByID(id)

Nutrition by ID

Get a recipe&#39;s nutrition data.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = RecipesApi()
val id : kotlin.Int = 1 // kotlin.Int | The item's id.
try {
    val result : InlineResponse20012 = apiInstance.getRecipeNutritionWidgetByID(id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling RecipesApi#getRecipeNutritionWidgetByID")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RecipesApi#getRecipeNutritionWidgetByID")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **kotlin.Int**| The item&#39;s id. |

### Return type

[**InlineResponse20012**](InlineResponse20012.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getRecipePriceBreakdownByID"></a>
# **getRecipePriceBreakdownByID**
> InlineResponse20010 getRecipePriceBreakdownByID(id)

Price Breakdown by ID

Get a recipe&#39;s price breakdown data.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = RecipesApi()
val id : kotlin.Int = 1 // kotlin.Int | The item's id.
try {
    val result : InlineResponse20010 = apiInstance.getRecipePriceBreakdownByID(id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling RecipesApi#getRecipePriceBreakdownByID")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RecipesApi#getRecipePriceBreakdownByID")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **kotlin.Int**| The item&#39;s id. |

### Return type

[**InlineResponse20010**](InlineResponse20010.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getRecipeTasteByID"></a>
# **getRecipeTasteByID**
> InlineResponse2008 getRecipeTasteByID(id, normalize)

Taste by ID

Get a recipe&#39;s taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = RecipesApi()
val id : kotlin.Int = 1 // kotlin.Int | The item's id.
val normalize : kotlin.Boolean = true // kotlin.Boolean | Normalize to the strongest taste.
try {
    val result : InlineResponse2008 = apiInstance.getRecipeTasteByID(id, normalize)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling RecipesApi#getRecipeTasteByID")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RecipesApi#getRecipeTasteByID")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **kotlin.Int**| The item&#39;s id. |
 **normalize** | **kotlin.Boolean**| Normalize to the strongest taste. | [optional] [default to true] [enum: false, true]

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getSimilarRecipes"></a>
# **getSimilarRecipes**
> kotlin.Array&lt;InlineResponse2005&gt; getSimilarRecipes(id, number, limitLicense)

Get Similar Recipes

Find recipes which are similar to the given one.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = RecipesApi()
val id : kotlin.Int = 1 // kotlin.Int | The item's id.
val number : kotlin.Int = 10 // kotlin.Int | The maximum number of items to return (between 1 and 100). Defaults to 10.
val limitLicense : kotlin.Boolean = true // kotlin.Boolean | Whether the recipes should have an open license that allows display with proper attribution.
try {
    val result : kotlin.Array<InlineResponse2005> = apiInstance.getSimilarRecipes(id, number, limitLicense)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling RecipesApi#getSimilarRecipes")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RecipesApi#getSimilarRecipes")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **kotlin.Int**| The item&#39;s id. |
 **number** | **kotlin.Int**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]
 **limitLicense** | **kotlin.Boolean**| Whether the recipes should have an open license that allows display with proper attribution. | [optional] [default to true]

### Return type

[**kotlin.Array&lt;InlineResponse2005&gt;**](InlineResponse2005.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="guessNutritionByDishName"></a>
# **guessNutritionByDishName**
> InlineResponse20021 guessNutritionByDishName(title)

Guess Nutrition by Dish Name

Estimate the macronutrients of a dish based on its title.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = RecipesApi()
val title : kotlin.String = Spaghetti Aglio et Olio // kotlin.String | The title of the dish.
try {
    val result : InlineResponse20021 = apiInstance.guessNutritionByDishName(title)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling RecipesApi#guessNutritionByDishName")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RecipesApi#guessNutritionByDishName")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **kotlin.String**| The title of the dish. |

### Return type

[**InlineResponse20021**](InlineResponse20021.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="ingredientsByIDImage"></a>
# **ingredientsByIDImage**
> kotlin.Any ingredientsByIDImage(id, measure)

Ingredients by ID Image

Visualize a recipe&#39;s ingredient list.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = RecipesApi()
val id : java.math.BigDecimal = 1082038 // java.math.BigDecimal | The recipe id.
val measure : kotlin.String = metric // kotlin.String | Whether the the measures should be 'us' or 'metric'.
try {
    val result : kotlin.Any = apiInstance.ingredientsByIDImage(id, measure)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling RecipesApi#ingredientsByIDImage")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RecipesApi#ingredientsByIDImage")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **java.math.BigDecimal**| The recipe id. |
 **measure** | **kotlin.String**| Whether the the measures should be &#39;us&#39; or &#39;metric&#39;. | [optional] [enum: us, metric]

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png

<a name="parseIngredients"></a>
# **parseIngredients**
> kotlin.Array&lt;InlineResponse20020&gt; parseIngredients(contentMinusType, language)

Parse Ingredients

Extract an ingredient from plain text.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = RecipesApi()
val contentMinusType : kotlin.String = application/json // kotlin.String | The content type.
val language : kotlin.String = en // kotlin.String | The language of the input. Either 'en' or 'de'.
try {
    val result : kotlin.Array<InlineResponse20020> = apiInstance.parseIngredients(contentMinusType, language)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling RecipesApi#parseIngredients")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RecipesApi#parseIngredients")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentMinusType** | **kotlin.String**| The content type. | [optional] [enum: application/x-www-form-urlencoded, application/json, multipart/form-data]
 **language** | **kotlin.String**| The language of the input. Either &#39;en&#39; or &#39;de&#39;. | [optional] [enum: en, de]

### Return type

[**kotlin.Array&lt;InlineResponse20020&gt;**](InlineResponse20020.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="priceBreakdownByIDImage"></a>
# **priceBreakdownByIDImage**
> kotlin.Any priceBreakdownByIDImage(id)

Price Breakdown by ID Image

Visualize a recipe&#39;s price breakdown.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = RecipesApi()
val id : java.math.BigDecimal = 1082038 // java.math.BigDecimal | The recipe id.
try {
    val result : kotlin.Any = apiInstance.priceBreakdownByIDImage(id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling RecipesApi#priceBreakdownByIDImage")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RecipesApi#priceBreakdownByIDImage")
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

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png

<a name="quickAnswer"></a>
# **quickAnswer**
> InlineResponse20050 quickAnswer(q)

Quick Answer

Answer a nutrition related natural language question.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = RecipesApi()
val q : kotlin.String = How much vitamin c is in 2 apples? // kotlin.String | The nutrition related question.
try {
    val result : InlineResponse20050 = apiInstance.quickAnswer(q)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling RecipesApi#quickAnswer")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RecipesApi#quickAnswer")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **kotlin.String**| The nutrition related question. |

### Return type

[**InlineResponse20050**](InlineResponse20050.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="recipeNutritionByIDImage"></a>
# **recipeNutritionByIDImage**
> kotlin.Any recipeNutritionByIDImage(id)

Recipe Nutrition by ID Image

Visualize a recipe&#39;s nutritional information as an image.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = RecipesApi()
val id : java.math.BigDecimal = 1082038 // java.math.BigDecimal | The recipe id.
try {
    val result : kotlin.Any = apiInstance.recipeNutritionByIDImage(id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling RecipesApi#recipeNutritionByIDImage")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RecipesApi#recipeNutritionByIDImage")
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

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png

<a name="recipeNutritionLabelImage"></a>
# **recipeNutritionLabelImage**
> kotlin.Any recipeNutritionLabelImage(id, showOptionalNutrients, showZeroValues, showIngredients)

Recipe Nutrition Label Image

Get a recipe&#39;s nutrition label as an image.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = RecipesApi()
val id : java.math.BigDecimal = 641166 // java.math.BigDecimal | The recipe id.
val showOptionalNutrients : kotlin.Boolean = false // kotlin.Boolean | Whether to show optional nutrients.
val showZeroValues : kotlin.Boolean = false // kotlin.Boolean | Whether to show zero values.
val showIngredients : kotlin.Boolean = false // kotlin.Boolean | Whether to show a list of ingredients.
try {
    val result : kotlin.Any = apiInstance.recipeNutritionLabelImage(id, showOptionalNutrients, showZeroValues, showIngredients)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling RecipesApi#recipeNutritionLabelImage")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RecipesApi#recipeNutritionLabelImage")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **java.math.BigDecimal**| The recipe id. |
 **showOptionalNutrients** | **kotlin.Boolean**| Whether to show optional nutrients. | [optional]
 **showZeroValues** | **kotlin.Boolean**| Whether to show zero values. | [optional]
 **showIngredients** | **kotlin.Boolean**| Whether to show a list of ingredients. | [optional]

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png

<a name="recipeNutritionLabelWidget"></a>
# **recipeNutritionLabelWidget**
> kotlin.String recipeNutritionLabelWidget(id, defaultCss, showOptionalNutrients, showZeroValues, showIngredients)

Recipe Nutrition Label Widget

Get a recipe&#39;s nutrition label as an HTML widget.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = RecipesApi()
val id : java.math.BigDecimal = 641166 // java.math.BigDecimal | The recipe id.
val defaultCss : kotlin.Boolean = false // kotlin.Boolean | Whether the default CSS should be added to the response.
val showOptionalNutrients : kotlin.Boolean = false // kotlin.Boolean | Whether to show optional nutrients.
val showZeroValues : kotlin.Boolean = false // kotlin.Boolean | Whether to show zero values.
val showIngredients : kotlin.Boolean = false // kotlin.Boolean | Whether to show a list of ingredients.
try {
    val result : kotlin.String = apiInstance.recipeNutritionLabelWidget(id, defaultCss, showOptionalNutrients, showZeroValues, showIngredients)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling RecipesApi#recipeNutritionLabelWidget")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RecipesApi#recipeNutritionLabelWidget")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **java.math.BigDecimal**| The recipe id. |
 **defaultCss** | **kotlin.Boolean**| Whether the default CSS should be added to the response. | [optional] [default to true]
 **showOptionalNutrients** | **kotlin.Boolean**| Whether to show optional nutrients. | [optional]
 **showZeroValues** | **kotlin.Boolean**| Whether to show zero values. | [optional]
 **showIngredients** | **kotlin.Boolean**| Whether to show a list of ingredients. | [optional]

### Return type

**kotlin.String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

<a name="recipeTasteByIDImage"></a>
# **recipeTasteByIDImage**
> kotlin.Any recipeTasteByIDImage(id, normalize, rgb)

Recipe Taste by ID Image

Get a recipe&#39;s taste as an image. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = RecipesApi()
val id : java.math.BigDecimal = 69095 // java.math.BigDecimal | The recipe id.
val normalize : kotlin.Boolean = false // kotlin.Boolean | Normalize to the strongest taste.
val rgb : kotlin.String = 75,192,192 // kotlin.String | Red, green, blue values for the chart color.
try {
    val result : kotlin.Any = apiInstance.recipeTasteByIDImage(id, normalize, rgb)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling RecipesApi#recipeTasteByIDImage")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RecipesApi#recipeTasteByIDImage")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **java.math.BigDecimal**| The recipe id. |
 **normalize** | **kotlin.Boolean**| Normalize to the strongest taste. | [optional]
 **rgb** | **kotlin.String**| Red, green, blue values for the chart color. | [optional]

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png

<a name="searchRecipes"></a>
# **searchRecipes**
> InlineResponse200 searchRecipes(query, cuisine, excludeCuisine, diet, intolerances, equipment, includeIngredients, excludeIngredients, type, instructionsRequired, fillIngredients, addRecipeInformation, addRecipeNutrition, author, tags, recipeBoxId, titleMatch, maxReadyTime, ignorePantry, sort, sortDirection, minCarbs, maxCarbs, minProtein, maxProtein, minCalories, maxCalories, minFat, maxFat, minAlcohol, maxAlcohol, minCaffeine, maxCaffeine, minCopper, maxCopper, minCalcium, maxCalcium, minCholine, maxCholine, minCholesterol, maxCholesterol, minFluoride, maxFluoride, minSaturatedFat, maxSaturatedFat, minVitaminA, maxVitaminA, minVitaminC, maxVitaminC, minVitaminD, maxVitaminD, minVitaminE, maxVitaminE, minVitaminK, maxVitaminK, minVitaminB1, maxVitaminB1, minVitaminB2, maxVitaminB2, minVitaminB5, maxVitaminB5, minVitaminB3, maxVitaminB3, minVitaminB6, maxVitaminB6, minVitaminB12, maxVitaminB12, minFiber, maxFiber, minFolate, maxFolate, minFolicAcid, maxFolicAcid, minIodine, maxIodine, minIron, maxIron, minMagnesium, maxMagnesium, minManganese, maxManganese, minPhosphorus, maxPhosphorus, minPotassium, maxPotassium, minSelenium, maxSelenium, minSodium, maxSodium, minSugar, maxSugar, minZinc, maxZinc, offset, number, limitLicense)

Search Recipes

Search through hundreds of thousands of recipes using advanced filtering and ranking. NOTE: This method combines searching by query, by ingredients, and by nutrients into one endpoint.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = RecipesApi()
val query : kotlin.String = burger // kotlin.String | The (natural language) search query.
val cuisine : kotlin.String = italian // kotlin.String | The cuisine(s) of the recipes. One or more, comma separated (will be interpreted as 'OR'). See a full list of supported cuisines.
val excludeCuisine : kotlin.String = greek // kotlin.String | The cuisine(s) the recipes must not match. One or more, comma separated (will be interpreted as 'AND'). See a full list of supported cuisines.
val diet : kotlin.String = vegetarian // kotlin.String | The diet for which the recipes must be suitable. See a full list of supported diets.
val intolerances : kotlin.String = gluten // kotlin.String | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.
val equipment : kotlin.String = pan // kotlin.String | The equipment required. Multiple values will be interpreted as 'or'. For example, value could be \"blender, frying pan, bowl\".
val includeIngredients : kotlin.String = tomato,cheese // kotlin.String | A comma-separated list of ingredients that should/must be used in the recipes.
val excludeIngredients : kotlin.String = eggs // kotlin.String | A comma-separated list of ingredients or ingredient types that the recipes must not contain.
val type : kotlin.String = main course // kotlin.String | The type of recipe. See a full list of supported meal types.
val instructionsRequired : kotlin.Boolean = true // kotlin.Boolean | Whether the recipes must have instructions.
val fillIngredients : kotlin.Boolean = false // kotlin.Boolean | Add information about the ingredients and whether they are used or missing in relation to the query.
val addRecipeInformation : kotlin.Boolean = false // kotlin.Boolean | If set to true, you get more information about the recipes returned.
val addRecipeNutrition : kotlin.Boolean = false // kotlin.Boolean | If set to true, you get nutritional information about each recipes returned.
val author : kotlin.String = coffeebean // kotlin.String | The username of the recipe author.
val tags : kotlin.String = tags_example // kotlin.String | The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have.
val recipeBoxId : java.math.BigDecimal = 2468 // java.math.BigDecimal | The id of the recipe box to which the search should be limited to.
val titleMatch : kotlin.String = Crock Pot // kotlin.String | Enter text that must be found in the title of the recipes.
val maxReadyTime : java.math.BigDecimal = 20 // java.math.BigDecimal | The maximum time in minutes it should take to prepare and cook the recipe.
val ignorePantry : kotlin.Boolean = false // kotlin.Boolean | Whether to ignore typical pantry items, such as water, salt, flour, etc.
val sort : kotlin.String = calories // kotlin.String | The strategy to sort recipes by. See a full list of supported sorting options.
val sortDirection : kotlin.String = asc // kotlin.String | The direction in which to sort. Must be either 'asc' (ascending) or 'desc' (descending).
val minCarbs : java.math.BigDecimal = 10 // java.math.BigDecimal | The minimum amount of carbohydrates in grams the recipe must have.
val maxCarbs : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of carbohydrates in grams the recipe can have.
val minProtein : java.math.BigDecimal = 10 // java.math.BigDecimal | The minimum amount of protein in grams the recipe must have.
val maxProtein : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of protein in grams the recipe can have.
val minCalories : java.math.BigDecimal = 50 // java.math.BigDecimal | The minimum amount of calories the recipe must have.
val maxCalories : java.math.BigDecimal = 800 // java.math.BigDecimal | The maximum amount of calories the recipe can have.
val minFat : java.math.BigDecimal = 1 // java.math.BigDecimal | The minimum amount of fat in grams the recipe must have.
val maxFat : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of fat in grams the recipe can have.
val minAlcohol : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum amount of alcohol in grams the recipe must have.
val maxAlcohol : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of alcohol in grams the recipe can have.
val minCaffeine : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum amount of caffeine in milligrams the recipe must have.
val maxCaffeine : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of caffeine in milligrams the recipe can have.
val minCopper : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum amount of copper in milligrams the recipe must have.
val maxCopper : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of copper in milligrams the recipe can have.
val minCalcium : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum amount of calcium in milligrams the recipe must have.
val maxCalcium : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of calcium in milligrams the recipe can have.
val minCholine : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum amount of choline in milligrams the recipe must have.
val maxCholine : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of choline in milligrams the recipe can have.
val minCholesterol : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum amount of cholesterol in milligrams the recipe must have.
val maxCholesterol : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of cholesterol in milligrams the recipe can have.
val minFluoride : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum amount of fluoride in milligrams the recipe must have.
val maxFluoride : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of fluoride in milligrams the recipe can have.
val minSaturatedFat : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum amount of saturated fat in grams the recipe must have.
val maxSaturatedFat : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of saturated fat in grams the recipe can have.
val minVitaminA : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum amount of Vitamin A in IU the recipe must have.
val maxVitaminA : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of Vitamin A in IU the recipe can have.
val minVitaminC : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum amount of Vitamin C milligrams the recipe must have.
val maxVitaminC : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of Vitamin C in milligrams the recipe can have.
val minVitaminD : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum amount of Vitamin D in micrograms the recipe must have.
val maxVitaminD : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of Vitamin D in micrograms the recipe can have.
val minVitaminE : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum amount of Vitamin E in milligrams the recipe must have.
val maxVitaminE : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of Vitamin E in milligrams the recipe can have.
val minVitaminK : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum amount of Vitamin K in micrograms the recipe must have.
val maxVitaminK : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of Vitamin K in micrograms the recipe can have.
val minVitaminB1 : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum amount of Vitamin B1 in milligrams the recipe must have.
val maxVitaminB1 : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of Vitamin B1 in milligrams the recipe can have.
val minVitaminB2 : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum amount of Vitamin B2 in milligrams the recipe must have.
val maxVitaminB2 : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of Vitamin B2 in milligrams the recipe can have.
val minVitaminB5 : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum amount of Vitamin B5 in milligrams the recipe must have.
val maxVitaminB5 : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of Vitamin B5 in milligrams the recipe can have.
val minVitaminB3 : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum amount of Vitamin B3 in milligrams the recipe must have.
val maxVitaminB3 : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of Vitamin B3 in milligrams the recipe can have.
val minVitaminB6 : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum amount of Vitamin B6 in milligrams the recipe must have.
val maxVitaminB6 : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of Vitamin B6 in milligrams the recipe can have.
val minVitaminB12 : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum amount of Vitamin B12 in micrograms the recipe must have.
val maxVitaminB12 : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of Vitamin B12 in micrograms the recipe can have.
val minFiber : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum amount of fiber in grams the recipe must have.
val maxFiber : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of fiber in grams the recipe can have.
val minFolate : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum amount of folate in micrograms the recipe must have.
val maxFolate : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of folate in micrograms the recipe can have.
val minFolicAcid : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum amount of folic acid in micrograms the recipe must have.
val maxFolicAcid : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of folic acid in micrograms the recipe can have.
val minIodine : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum amount of iodine in micrograms the recipe must have.
val maxIodine : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of iodine in micrograms the recipe can have.
val minIron : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum amount of iron in milligrams the recipe must have.
val maxIron : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of iron in milligrams the recipe can have.
val minMagnesium : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum amount of magnesium in milligrams the recipe must have.
val maxMagnesium : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of magnesium in milligrams the recipe can have.
val minManganese : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum amount of manganese in milligrams the recipe must have.
val maxManganese : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of manganese in milligrams the recipe can have.
val minPhosphorus : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum amount of phosphorus in milligrams the recipe must have.
val maxPhosphorus : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of phosphorus in milligrams the recipe can have.
val minPotassium : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum amount of potassium in milligrams the recipe must have.
val maxPotassium : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of potassium in milligrams the recipe can have.
val minSelenium : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum amount of selenium in micrograms the recipe must have.
val maxSelenium : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of selenium in micrograms the recipe can have.
val minSodium : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum amount of sodium in milligrams the recipe must have.
val maxSodium : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of sodium in milligrams the recipe can have.
val minSugar : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum amount of sugar in grams the recipe must have.
val maxSugar : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of sugar in grams the recipe can have.
val minZinc : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum amount of zinc in milligrams the recipe must have.
val maxZinc : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of zinc in milligrams the recipe can have.
val offset : kotlin.Int = 56 // kotlin.Int | The number of results to skip (between 0 and 900).
val number : kotlin.Int = 10 // kotlin.Int | The maximum number of items to return (between 1 and 100). Defaults to 10.
val limitLicense : kotlin.Boolean = true // kotlin.Boolean | Whether the recipes should have an open license that allows display with proper attribution.
try {
    val result : InlineResponse200 = apiInstance.searchRecipes(query, cuisine, excludeCuisine, diet, intolerances, equipment, includeIngredients, excludeIngredients, type, instructionsRequired, fillIngredients, addRecipeInformation, addRecipeNutrition, author, tags, recipeBoxId, titleMatch, maxReadyTime, ignorePantry, sort, sortDirection, minCarbs, maxCarbs, minProtein, maxProtein, minCalories, maxCalories, minFat, maxFat, minAlcohol, maxAlcohol, minCaffeine, maxCaffeine, minCopper, maxCopper, minCalcium, maxCalcium, minCholine, maxCholine, minCholesterol, maxCholesterol, minFluoride, maxFluoride, minSaturatedFat, maxSaturatedFat, minVitaminA, maxVitaminA, minVitaminC, maxVitaminC, minVitaminD, maxVitaminD, minVitaminE, maxVitaminE, minVitaminK, maxVitaminK, minVitaminB1, maxVitaminB1, minVitaminB2, maxVitaminB2, minVitaminB5, maxVitaminB5, minVitaminB3, maxVitaminB3, minVitaminB6, maxVitaminB6, minVitaminB12, maxVitaminB12, minFiber, maxFiber, minFolate, maxFolate, minFolicAcid, maxFolicAcid, minIodine, maxIodine, minIron, maxIron, minMagnesium, maxMagnesium, minManganese, maxManganese, minPhosphorus, maxPhosphorus, minPotassium, maxPotassium, minSelenium, maxSelenium, minSodium, maxSodium, minSugar, maxSugar, minZinc, maxZinc, offset, number, limitLicense)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling RecipesApi#searchRecipes")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RecipesApi#searchRecipes")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **kotlin.String**| The (natural language) search query. | [optional]
 **cuisine** | **kotlin.String**| The cuisine(s) of the recipes. One or more, comma separated (will be interpreted as &#39;OR&#39;). See a full list of supported cuisines. | [optional]
 **excludeCuisine** | **kotlin.String**| The cuisine(s) the recipes must not match. One or more, comma separated (will be interpreted as &#39;AND&#39;). See a full list of supported cuisines. | [optional]
 **diet** | **kotlin.String**| The diet for which the recipes must be suitable. See a full list of supported diets. | [optional]
 **intolerances** | **kotlin.String**| A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. | [optional]
 **equipment** | **kotlin.String**| The equipment required. Multiple values will be interpreted as &#39;or&#39;. For example, value could be \&quot;blender, frying pan, bowl\&quot;. | [optional]
 **includeIngredients** | **kotlin.String**| A comma-separated list of ingredients that should/must be used in the recipes. | [optional]
 **excludeIngredients** | **kotlin.String**| A comma-separated list of ingredients or ingredient types that the recipes must not contain. | [optional]
 **type** | **kotlin.String**| The type of recipe. See a full list of supported meal types. | [optional]
 **instructionsRequired** | **kotlin.Boolean**| Whether the recipes must have instructions. | [optional]
 **fillIngredients** | **kotlin.Boolean**| Add information about the ingredients and whether they are used or missing in relation to the query. | [optional]
 **addRecipeInformation** | **kotlin.Boolean**| If set to true, you get more information about the recipes returned. | [optional]
 **addRecipeNutrition** | **kotlin.Boolean**| If set to true, you get nutritional information about each recipes returned. | [optional]
 **author** | **kotlin.String**| The username of the recipe author. | [optional]
 **tags** | **kotlin.String**| The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have. | [optional]
 **recipeBoxId** | **java.math.BigDecimal**| The id of the recipe box to which the search should be limited to. | [optional]
 **titleMatch** | **kotlin.String**| Enter text that must be found in the title of the recipes. | [optional]
 **maxReadyTime** | **java.math.BigDecimal**| The maximum time in minutes it should take to prepare and cook the recipe. | [optional]
 **ignorePantry** | **kotlin.Boolean**| Whether to ignore typical pantry items, such as water, salt, flour, etc. | [optional] [default to false]
 **sort** | **kotlin.String**| The strategy to sort recipes by. See a full list of supported sorting options. | [optional]
 **sortDirection** | **kotlin.String**| The direction in which to sort. Must be either &#39;asc&#39; (ascending) or &#39;desc&#39; (descending). | [optional]
 **minCarbs** | **java.math.BigDecimal**| The minimum amount of carbohydrates in grams the recipe must have. | [optional]
 **maxCarbs** | **java.math.BigDecimal**| The maximum amount of carbohydrates in grams the recipe can have. | [optional]
 **minProtein** | **java.math.BigDecimal**| The minimum amount of protein in grams the recipe must have. | [optional]
 **maxProtein** | **java.math.BigDecimal**| The maximum amount of protein in grams the recipe can have. | [optional]
 **minCalories** | **java.math.BigDecimal**| The minimum amount of calories the recipe must have. | [optional]
 **maxCalories** | **java.math.BigDecimal**| The maximum amount of calories the recipe can have. | [optional]
 **minFat** | **java.math.BigDecimal**| The minimum amount of fat in grams the recipe must have. | [optional]
 **maxFat** | **java.math.BigDecimal**| The maximum amount of fat in grams the recipe can have. | [optional]
 **minAlcohol** | **java.math.BigDecimal**| The minimum amount of alcohol in grams the recipe must have. | [optional]
 **maxAlcohol** | **java.math.BigDecimal**| The maximum amount of alcohol in grams the recipe can have. | [optional]
 **minCaffeine** | **java.math.BigDecimal**| The minimum amount of caffeine in milligrams the recipe must have. | [optional]
 **maxCaffeine** | **java.math.BigDecimal**| The maximum amount of caffeine in milligrams the recipe can have. | [optional]
 **minCopper** | **java.math.BigDecimal**| The minimum amount of copper in milligrams the recipe must have. | [optional]
 **maxCopper** | **java.math.BigDecimal**| The maximum amount of copper in milligrams the recipe can have. | [optional]
 **minCalcium** | **java.math.BigDecimal**| The minimum amount of calcium in milligrams the recipe must have. | [optional]
 **maxCalcium** | **java.math.BigDecimal**| The maximum amount of calcium in milligrams the recipe can have. | [optional]
 **minCholine** | **java.math.BigDecimal**| The minimum amount of choline in milligrams the recipe must have. | [optional]
 **maxCholine** | **java.math.BigDecimal**| The maximum amount of choline in milligrams the recipe can have. | [optional]
 **minCholesterol** | **java.math.BigDecimal**| The minimum amount of cholesterol in milligrams the recipe must have. | [optional]
 **maxCholesterol** | **java.math.BigDecimal**| The maximum amount of cholesterol in milligrams the recipe can have. | [optional]
 **minFluoride** | **java.math.BigDecimal**| The minimum amount of fluoride in milligrams the recipe must have. | [optional]
 **maxFluoride** | **java.math.BigDecimal**| The maximum amount of fluoride in milligrams the recipe can have. | [optional]
 **minSaturatedFat** | **java.math.BigDecimal**| The minimum amount of saturated fat in grams the recipe must have. | [optional]
 **maxSaturatedFat** | **java.math.BigDecimal**| The maximum amount of saturated fat in grams the recipe can have. | [optional]
 **minVitaminA** | **java.math.BigDecimal**| The minimum amount of Vitamin A in IU the recipe must have. | [optional]
 **maxVitaminA** | **java.math.BigDecimal**| The maximum amount of Vitamin A in IU the recipe can have. | [optional]
 **minVitaminC** | **java.math.BigDecimal**| The minimum amount of Vitamin C milligrams the recipe must have. | [optional]
 **maxVitaminC** | **java.math.BigDecimal**| The maximum amount of Vitamin C in milligrams the recipe can have. | [optional]
 **minVitaminD** | **java.math.BigDecimal**| The minimum amount of Vitamin D in micrograms the recipe must have. | [optional]
 **maxVitaminD** | **java.math.BigDecimal**| The maximum amount of Vitamin D in micrograms the recipe can have. | [optional]
 **minVitaminE** | **java.math.BigDecimal**| The minimum amount of Vitamin E in milligrams the recipe must have. | [optional]
 **maxVitaminE** | **java.math.BigDecimal**| The maximum amount of Vitamin E in milligrams the recipe can have. | [optional]
 **minVitaminK** | **java.math.BigDecimal**| The minimum amount of Vitamin K in micrograms the recipe must have. | [optional]
 **maxVitaminK** | **java.math.BigDecimal**| The maximum amount of Vitamin K in micrograms the recipe can have. | [optional]
 **minVitaminB1** | **java.math.BigDecimal**| The minimum amount of Vitamin B1 in milligrams the recipe must have. | [optional]
 **maxVitaminB1** | **java.math.BigDecimal**| The maximum amount of Vitamin B1 in milligrams the recipe can have. | [optional]
 **minVitaminB2** | **java.math.BigDecimal**| The minimum amount of Vitamin B2 in milligrams the recipe must have. | [optional]
 **maxVitaminB2** | **java.math.BigDecimal**| The maximum amount of Vitamin B2 in milligrams the recipe can have. | [optional]
 **minVitaminB5** | **java.math.BigDecimal**| The minimum amount of Vitamin B5 in milligrams the recipe must have. | [optional]
 **maxVitaminB5** | **java.math.BigDecimal**| The maximum amount of Vitamin B5 in milligrams the recipe can have. | [optional]
 **minVitaminB3** | **java.math.BigDecimal**| The minimum amount of Vitamin B3 in milligrams the recipe must have. | [optional]
 **maxVitaminB3** | **java.math.BigDecimal**| The maximum amount of Vitamin B3 in milligrams the recipe can have. | [optional]
 **minVitaminB6** | **java.math.BigDecimal**| The minimum amount of Vitamin B6 in milligrams the recipe must have. | [optional]
 **maxVitaminB6** | **java.math.BigDecimal**| The maximum amount of Vitamin B6 in milligrams the recipe can have. | [optional]
 **minVitaminB12** | **java.math.BigDecimal**| The minimum amount of Vitamin B12 in micrograms the recipe must have. | [optional]
 **maxVitaminB12** | **java.math.BigDecimal**| The maximum amount of Vitamin B12 in micrograms the recipe can have. | [optional]
 **minFiber** | **java.math.BigDecimal**| The minimum amount of fiber in grams the recipe must have. | [optional]
 **maxFiber** | **java.math.BigDecimal**| The maximum amount of fiber in grams the recipe can have. | [optional]
 **minFolate** | **java.math.BigDecimal**| The minimum amount of folate in micrograms the recipe must have. | [optional]
 **maxFolate** | **java.math.BigDecimal**| The maximum amount of folate in micrograms the recipe can have. | [optional]
 **minFolicAcid** | **java.math.BigDecimal**| The minimum amount of folic acid in micrograms the recipe must have. | [optional]
 **maxFolicAcid** | **java.math.BigDecimal**| The maximum amount of folic acid in micrograms the recipe can have. | [optional]
 **minIodine** | **java.math.BigDecimal**| The minimum amount of iodine in micrograms the recipe must have. | [optional]
 **maxIodine** | **java.math.BigDecimal**| The maximum amount of iodine in micrograms the recipe can have. | [optional]
 **minIron** | **java.math.BigDecimal**| The minimum amount of iron in milligrams the recipe must have. | [optional]
 **maxIron** | **java.math.BigDecimal**| The maximum amount of iron in milligrams the recipe can have. | [optional]
 **minMagnesium** | **java.math.BigDecimal**| The minimum amount of magnesium in milligrams the recipe must have. | [optional]
 **maxMagnesium** | **java.math.BigDecimal**| The maximum amount of magnesium in milligrams the recipe can have. | [optional]
 **minManganese** | **java.math.BigDecimal**| The minimum amount of manganese in milligrams the recipe must have. | [optional]
 **maxManganese** | **java.math.BigDecimal**| The maximum amount of manganese in milligrams the recipe can have. | [optional]
 **minPhosphorus** | **java.math.BigDecimal**| The minimum amount of phosphorus in milligrams the recipe must have. | [optional]
 **maxPhosphorus** | **java.math.BigDecimal**| The maximum amount of phosphorus in milligrams the recipe can have. | [optional]
 **minPotassium** | **java.math.BigDecimal**| The minimum amount of potassium in milligrams the recipe must have. | [optional]
 **maxPotassium** | **java.math.BigDecimal**| The maximum amount of potassium in milligrams the recipe can have. | [optional]
 **minSelenium** | **java.math.BigDecimal**| The minimum amount of selenium in micrograms the recipe must have. | [optional]
 **maxSelenium** | **java.math.BigDecimal**| The maximum amount of selenium in micrograms the recipe can have. | [optional]
 **minSodium** | **java.math.BigDecimal**| The minimum amount of sodium in milligrams the recipe must have. | [optional]
 **maxSodium** | **java.math.BigDecimal**| The maximum amount of sodium in milligrams the recipe can have. | [optional]
 **minSugar** | **java.math.BigDecimal**| The minimum amount of sugar in grams the recipe must have. | [optional]
 **maxSugar** | **java.math.BigDecimal**| The maximum amount of sugar in grams the recipe can have. | [optional]
 **minZinc** | **java.math.BigDecimal**| The minimum amount of zinc in milligrams the recipe must have. | [optional]
 **maxZinc** | **java.math.BigDecimal**| The maximum amount of zinc in milligrams the recipe can have. | [optional]
 **offset** | **kotlin.Int**| The number of results to skip (between 0 and 900). | [optional]
 **number** | **kotlin.Int**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]
 **limitLicense** | **kotlin.Boolean**| Whether the recipes should have an open license that allows display with proper attribution. | [optional] [default to true]

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="searchRecipesByIngredients"></a>
# **searchRecipesByIngredients**
> kotlin.Array&lt;InlineResponse2001&gt; searchRecipesByIngredients(ingredients, number, limitLicense, ranking, ignorePantry)

Search Recipes by Ingredients

 Ever wondered what recipes you can cook with the ingredients you have in your fridge or pantry? This endpoint lets you find recipes that either maximize the usage of ingredients you have at hand (pre shopping) or minimize the ingredients that you don&#39;t currently have (post shopping).         

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = RecipesApi()
val ingredients : kotlin.String = carrots,tomatoes // kotlin.String | A comma-separated list of ingredients that the recipes should contain.
val number : kotlin.Int = 10 // kotlin.Int | The maximum number of items to return (between 1 and 100). Defaults to 10.
val limitLicense : kotlin.Boolean = true // kotlin.Boolean | Whether the recipes should have an open license that allows display with proper attribution.
val ranking : java.math.BigDecimal = 1 // java.math.BigDecimal | Whether to maximize used ingredients (1) or minimize missing ingredients (2) first.
val ignorePantry : kotlin.Boolean = false // kotlin.Boolean | Whether to ignore typical pantry items, such as water, salt, flour, etc.
try {
    val result : kotlin.Array<InlineResponse2001> = apiInstance.searchRecipesByIngredients(ingredients, number, limitLicense, ranking, ignorePantry)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling RecipesApi#searchRecipesByIngredients")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RecipesApi#searchRecipesByIngredients")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredients** | **kotlin.String**| A comma-separated list of ingredients that the recipes should contain. | [optional]
 **number** | **kotlin.Int**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]
 **limitLicense** | **kotlin.Boolean**| Whether the recipes should have an open license that allows display with proper attribution. | [optional] [default to true]
 **ranking** | **java.math.BigDecimal**| Whether to maximize used ingredients (1) or minimize missing ingredients (2) first. | [optional]
 **ignorePantry** | **kotlin.Boolean**| Whether to ignore typical pantry items, such as water, salt, flour, etc. | [optional] [default to false]

### Return type

[**kotlin.Array&lt;InlineResponse2001&gt;**](InlineResponse2001.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="searchRecipesByNutrients"></a>
# **searchRecipesByNutrients**
> kotlin.Array&lt;InlineResponse2002&gt; searchRecipesByNutrients(minCarbs, maxCarbs, minProtein, maxProtein, minCalories, maxCalories, minFat, maxFat, minAlcohol, maxAlcohol, minCaffeine, maxCaffeine, minCopper, maxCopper, minCalcium, maxCalcium, minCholine, maxCholine, minCholesterol, maxCholesterol, minFluoride, maxFluoride, minSaturatedFat, maxSaturatedFat, minVitaminA, maxVitaminA, minVitaminC, maxVitaminC, minVitaminD, maxVitaminD, minVitaminE, maxVitaminE, minVitaminK, maxVitaminK, minVitaminB1, maxVitaminB1, minVitaminB2, maxVitaminB2, minVitaminB5, maxVitaminB5, minVitaminB3, maxVitaminB3, minVitaminB6, maxVitaminB6, minVitaminB12, maxVitaminB12, minFiber, maxFiber, minFolate, maxFolate, minFolicAcid, maxFolicAcid, minIodine, maxIodine, minIron, maxIron, minMagnesium, maxMagnesium, minManganese, maxManganese, minPhosphorus, maxPhosphorus, minPotassium, maxPotassium, minSelenium, maxSelenium, minSodium, maxSodium, minSugar, maxSugar, minZinc, maxZinc, offset, number, random, limitLicense)

Search Recipes by Nutrients

Find a set of recipes that adhere to the given nutritional limits. You may set limits for macronutrients (calories, protein, fat, and carbohydrate) and/or many micronutrients.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = RecipesApi()
val minCarbs : java.math.BigDecimal = 10 // java.math.BigDecimal | The minimum amount of carbohydrates in grams the recipe must have.
val maxCarbs : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of carbohydrates in grams the recipe can have.
val minProtein : java.math.BigDecimal = 10 // java.math.BigDecimal | The minimum amount of protein in grams the recipe must have.
val maxProtein : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of protein in grams the recipe can have.
val minCalories : java.math.BigDecimal = 50 // java.math.BigDecimal | The minimum amount of calories the recipe must have.
val maxCalories : java.math.BigDecimal = 800 // java.math.BigDecimal | The maximum amount of calories the recipe can have.
val minFat : java.math.BigDecimal = 1 // java.math.BigDecimal | The minimum amount of fat in grams the recipe must have.
val maxFat : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of fat in grams the recipe can have.
val minAlcohol : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum amount of alcohol in grams the recipe must have.
val maxAlcohol : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of alcohol in grams the recipe can have.
val minCaffeine : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum amount of caffeine in milligrams the recipe must have.
val maxCaffeine : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of caffeine in milligrams the recipe can have.
val minCopper : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum amount of copper in milligrams the recipe must have.
val maxCopper : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of copper in milligrams the recipe can have.
val minCalcium : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum amount of calcium in milligrams the recipe must have.
val maxCalcium : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of calcium in milligrams the recipe can have.
val minCholine : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum amount of choline in milligrams the recipe must have.
val maxCholine : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of choline in milligrams the recipe can have.
val minCholesterol : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum amount of cholesterol in milligrams the recipe must have.
val maxCholesterol : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of cholesterol in milligrams the recipe can have.
val minFluoride : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum amount of fluoride in milligrams the recipe must have.
val maxFluoride : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of fluoride in milligrams the recipe can have.
val minSaturatedFat : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum amount of saturated fat in grams the recipe must have.
val maxSaturatedFat : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of saturated fat in grams the recipe can have.
val minVitaminA : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum amount of Vitamin A in IU the recipe must have.
val maxVitaminA : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of Vitamin A in IU the recipe can have.
val minVitaminC : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum amount of Vitamin C in milligrams the recipe must have.
val maxVitaminC : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of Vitamin C in milligrams the recipe can have.
val minVitaminD : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum amount of Vitamin D in micrograms the recipe must have.
val maxVitaminD : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of Vitamin D in micrograms the recipe can have.
val minVitaminE : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum amount of Vitamin E in milligrams the recipe must have.
val maxVitaminE : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of Vitamin E in milligrams the recipe can have.
val minVitaminK : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum amount of Vitamin K in micrograms the recipe must have.
val maxVitaminK : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of Vitamin K in micrograms the recipe can have.
val minVitaminB1 : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum amount of Vitamin B1 in milligrams the recipe must have.
val maxVitaminB1 : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of Vitamin B1 in milligrams the recipe can have.
val minVitaminB2 : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum amount of Vitamin B2 in milligrams the recipe must have.
val maxVitaminB2 : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of Vitamin B2 in milligrams the recipe can have.
val minVitaminB5 : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum amount of Vitamin B5 in milligrams the recipe must have.
val maxVitaminB5 : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of Vitamin B5 in milligrams the recipe can have.
val minVitaminB3 : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum amount of Vitamin B3 in milligrams the recipe must have.
val maxVitaminB3 : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of Vitamin B3 in milligrams the recipe can have.
val minVitaminB6 : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum amount of Vitamin B6 in milligrams the recipe must have.
val maxVitaminB6 : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of Vitamin B6 in milligrams the recipe can have.
val minVitaminB12 : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum amount of Vitamin B12 in micrograms the recipe must have.
val maxVitaminB12 : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of Vitamin B12 in micrograms the recipe can have.
val minFiber : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum amount of fiber in grams the recipe must have.
val maxFiber : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of fiber in grams the recipe can have.
val minFolate : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum amount of folate in micrograms the recipe must have.
val maxFolate : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of folate in micrograms the recipe can have.
val minFolicAcid : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum amount of folic acid in micrograms the recipe must have.
val maxFolicAcid : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of folic acid in micrograms the recipe can have.
val minIodine : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum amount of iodine in micrograms the recipe must have.
val maxIodine : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of iodine in micrograms the recipe can have.
val minIron : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum amount of iron in milligrams the recipe must have.
val maxIron : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of iron in milligrams the recipe can have.
val minMagnesium : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum amount of magnesium in milligrams the recipe must have.
val maxMagnesium : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of magnesium in milligrams the recipe can have.
val minManganese : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum amount of manganese in milligrams the recipe must have.
val maxManganese : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of manganese in milligrams the recipe can have.
val minPhosphorus : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum amount of phosphorus in milligrams the recipe must have.
val maxPhosphorus : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of phosphorus in milligrams the recipe can have.
val minPotassium : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum amount of potassium in milligrams the recipe must have.
val maxPotassium : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of potassium in milligrams the recipe can have.
val minSelenium : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum amount of selenium in micrograms the recipe must have.
val maxSelenium : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of selenium in micrograms the recipe can have.
val minSodium : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum amount of sodium in milligrams the recipe must have.
val maxSodium : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of sodium in milligrams the recipe can have.
val minSugar : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum amount of sugar in grams the recipe must have.
val maxSugar : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of sugar in grams the recipe can have.
val minZinc : java.math.BigDecimal = 0 // java.math.BigDecimal | The minimum amount of zinc in milligrams the recipe must have.
val maxZinc : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of zinc in milligrams the recipe can have.
val offset : kotlin.Int = 56 // kotlin.Int | The number of results to skip (between 0 and 900).
val number : kotlin.Int = 10 // kotlin.Int | The maximum number of items to return (between 1 and 100). Defaults to 10.
val random : kotlin.Boolean = false // kotlin.Boolean | If true, every request will give you a random set of recipes within the requested limits.
val limitLicense : kotlin.Boolean = true // kotlin.Boolean | Whether the recipes should have an open license that allows display with proper attribution.
try {
    val result : kotlin.Array<InlineResponse2002> = apiInstance.searchRecipesByNutrients(minCarbs, maxCarbs, minProtein, maxProtein, minCalories, maxCalories, minFat, maxFat, minAlcohol, maxAlcohol, minCaffeine, maxCaffeine, minCopper, maxCopper, minCalcium, maxCalcium, minCholine, maxCholine, minCholesterol, maxCholesterol, minFluoride, maxFluoride, minSaturatedFat, maxSaturatedFat, minVitaminA, maxVitaminA, minVitaminC, maxVitaminC, minVitaminD, maxVitaminD, minVitaminE, maxVitaminE, minVitaminK, maxVitaminK, minVitaminB1, maxVitaminB1, minVitaminB2, maxVitaminB2, minVitaminB5, maxVitaminB5, minVitaminB3, maxVitaminB3, minVitaminB6, maxVitaminB6, minVitaminB12, maxVitaminB12, minFiber, maxFiber, minFolate, maxFolate, minFolicAcid, maxFolicAcid, minIodine, maxIodine, minIron, maxIron, minMagnesium, maxMagnesium, minManganese, maxManganese, minPhosphorus, maxPhosphorus, minPotassium, maxPotassium, minSelenium, maxSelenium, minSodium, maxSodium, minSugar, maxSugar, minZinc, maxZinc, offset, number, random, limitLicense)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling RecipesApi#searchRecipesByNutrients")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RecipesApi#searchRecipesByNutrients")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **minCarbs** | **java.math.BigDecimal**| The minimum amount of carbohydrates in grams the recipe must have. | [optional]
 **maxCarbs** | **java.math.BigDecimal**| The maximum amount of carbohydrates in grams the recipe can have. | [optional]
 **minProtein** | **java.math.BigDecimal**| The minimum amount of protein in grams the recipe must have. | [optional]
 **maxProtein** | **java.math.BigDecimal**| The maximum amount of protein in grams the recipe can have. | [optional]
 **minCalories** | **java.math.BigDecimal**| The minimum amount of calories the recipe must have. | [optional]
 **maxCalories** | **java.math.BigDecimal**| The maximum amount of calories the recipe can have. | [optional]
 **minFat** | **java.math.BigDecimal**| The minimum amount of fat in grams the recipe must have. | [optional]
 **maxFat** | **java.math.BigDecimal**| The maximum amount of fat in grams the recipe can have. | [optional]
 **minAlcohol** | **java.math.BigDecimal**| The minimum amount of alcohol in grams the recipe must have. | [optional]
 **maxAlcohol** | **java.math.BigDecimal**| The maximum amount of alcohol in grams the recipe can have. | [optional]
 **minCaffeine** | **java.math.BigDecimal**| The minimum amount of caffeine in milligrams the recipe must have. | [optional]
 **maxCaffeine** | **java.math.BigDecimal**| The maximum amount of caffeine in milligrams the recipe can have. | [optional]
 **minCopper** | **java.math.BigDecimal**| The minimum amount of copper in milligrams the recipe must have. | [optional]
 **maxCopper** | **java.math.BigDecimal**| The maximum amount of copper in milligrams the recipe can have. | [optional]
 **minCalcium** | **java.math.BigDecimal**| The minimum amount of calcium in milligrams the recipe must have. | [optional]
 **maxCalcium** | **java.math.BigDecimal**| The maximum amount of calcium in milligrams the recipe can have. | [optional]
 **minCholine** | **java.math.BigDecimal**| The minimum amount of choline in milligrams the recipe must have. | [optional]
 **maxCholine** | **java.math.BigDecimal**| The maximum amount of choline in milligrams the recipe can have. | [optional]
 **minCholesterol** | **java.math.BigDecimal**| The minimum amount of cholesterol in milligrams the recipe must have. | [optional]
 **maxCholesterol** | **java.math.BigDecimal**| The maximum amount of cholesterol in milligrams the recipe can have. | [optional]
 **minFluoride** | **java.math.BigDecimal**| The minimum amount of fluoride in milligrams the recipe must have. | [optional]
 **maxFluoride** | **java.math.BigDecimal**| The maximum amount of fluoride in milligrams the recipe can have. | [optional]
 **minSaturatedFat** | **java.math.BigDecimal**| The minimum amount of saturated fat in grams the recipe must have. | [optional]
 **maxSaturatedFat** | **java.math.BigDecimal**| The maximum amount of saturated fat in grams the recipe can have. | [optional]
 **minVitaminA** | **java.math.BigDecimal**| The minimum amount of Vitamin A in IU the recipe must have. | [optional]
 **maxVitaminA** | **java.math.BigDecimal**| The maximum amount of Vitamin A in IU the recipe can have. | [optional]
 **minVitaminC** | **java.math.BigDecimal**| The minimum amount of Vitamin C in milligrams the recipe must have. | [optional]
 **maxVitaminC** | **java.math.BigDecimal**| The maximum amount of Vitamin C in milligrams the recipe can have. | [optional]
 **minVitaminD** | **java.math.BigDecimal**| The minimum amount of Vitamin D in micrograms the recipe must have. | [optional]
 **maxVitaminD** | **java.math.BigDecimal**| The maximum amount of Vitamin D in micrograms the recipe can have. | [optional]
 **minVitaminE** | **java.math.BigDecimal**| The minimum amount of Vitamin E in milligrams the recipe must have. | [optional]
 **maxVitaminE** | **java.math.BigDecimal**| The maximum amount of Vitamin E in milligrams the recipe can have. | [optional]
 **minVitaminK** | **java.math.BigDecimal**| The minimum amount of Vitamin K in micrograms the recipe must have. | [optional]
 **maxVitaminK** | **java.math.BigDecimal**| The maximum amount of Vitamin K in micrograms the recipe can have. | [optional]
 **minVitaminB1** | **java.math.BigDecimal**| The minimum amount of Vitamin B1 in milligrams the recipe must have. | [optional]
 **maxVitaminB1** | **java.math.BigDecimal**| The maximum amount of Vitamin B1 in milligrams the recipe can have. | [optional]
 **minVitaminB2** | **java.math.BigDecimal**| The minimum amount of Vitamin B2 in milligrams the recipe must have. | [optional]
 **maxVitaminB2** | **java.math.BigDecimal**| The maximum amount of Vitamin B2 in milligrams the recipe can have. | [optional]
 **minVitaminB5** | **java.math.BigDecimal**| The minimum amount of Vitamin B5 in milligrams the recipe must have. | [optional]
 **maxVitaminB5** | **java.math.BigDecimal**| The maximum amount of Vitamin B5 in milligrams the recipe can have. | [optional]
 **minVitaminB3** | **java.math.BigDecimal**| The minimum amount of Vitamin B3 in milligrams the recipe must have. | [optional]
 **maxVitaminB3** | **java.math.BigDecimal**| The maximum amount of Vitamin B3 in milligrams the recipe can have. | [optional]
 **minVitaminB6** | **java.math.BigDecimal**| The minimum amount of Vitamin B6 in milligrams the recipe must have. | [optional]
 **maxVitaminB6** | **java.math.BigDecimal**| The maximum amount of Vitamin B6 in milligrams the recipe can have. | [optional]
 **minVitaminB12** | **java.math.BigDecimal**| The minimum amount of Vitamin B12 in micrograms the recipe must have. | [optional]
 **maxVitaminB12** | **java.math.BigDecimal**| The maximum amount of Vitamin B12 in micrograms the recipe can have. | [optional]
 **minFiber** | **java.math.BigDecimal**| The minimum amount of fiber in grams the recipe must have. | [optional]
 **maxFiber** | **java.math.BigDecimal**| The maximum amount of fiber in grams the recipe can have. | [optional]
 **minFolate** | **java.math.BigDecimal**| The minimum amount of folate in micrograms the recipe must have. | [optional]
 **maxFolate** | **java.math.BigDecimal**| The maximum amount of folate in micrograms the recipe can have. | [optional]
 **minFolicAcid** | **java.math.BigDecimal**| The minimum amount of folic acid in micrograms the recipe must have. | [optional]
 **maxFolicAcid** | **java.math.BigDecimal**| The maximum amount of folic acid in micrograms the recipe can have. | [optional]
 **minIodine** | **java.math.BigDecimal**| The minimum amount of iodine in micrograms the recipe must have. | [optional]
 **maxIodine** | **java.math.BigDecimal**| The maximum amount of iodine in micrograms the recipe can have. | [optional]
 **minIron** | **java.math.BigDecimal**| The minimum amount of iron in milligrams the recipe must have. | [optional]
 **maxIron** | **java.math.BigDecimal**| The maximum amount of iron in milligrams the recipe can have. | [optional]
 **minMagnesium** | **java.math.BigDecimal**| The minimum amount of magnesium in milligrams the recipe must have. | [optional]
 **maxMagnesium** | **java.math.BigDecimal**| The maximum amount of magnesium in milligrams the recipe can have. | [optional]
 **minManganese** | **java.math.BigDecimal**| The minimum amount of manganese in milligrams the recipe must have. | [optional]
 **maxManganese** | **java.math.BigDecimal**| The maximum amount of manganese in milligrams the recipe can have. | [optional]
 **minPhosphorus** | **java.math.BigDecimal**| The minimum amount of phosphorus in milligrams the recipe must have. | [optional]
 **maxPhosphorus** | **java.math.BigDecimal**| The maximum amount of phosphorus in milligrams the recipe can have. | [optional]
 **minPotassium** | **java.math.BigDecimal**| The minimum amount of potassium in milligrams the recipe must have. | [optional]
 **maxPotassium** | **java.math.BigDecimal**| The maximum amount of potassium in milligrams the recipe can have. | [optional]
 **minSelenium** | **java.math.BigDecimal**| The minimum amount of selenium in micrograms the recipe must have. | [optional]
 **maxSelenium** | **java.math.BigDecimal**| The maximum amount of selenium in micrograms the recipe can have. | [optional]
 **minSodium** | **java.math.BigDecimal**| The minimum amount of sodium in milligrams the recipe must have. | [optional]
 **maxSodium** | **java.math.BigDecimal**| The maximum amount of sodium in milligrams the recipe can have. | [optional]
 **minSugar** | **java.math.BigDecimal**| The minimum amount of sugar in grams the recipe must have. | [optional]
 **maxSugar** | **java.math.BigDecimal**| The maximum amount of sugar in grams the recipe can have. | [optional]
 **minZinc** | **java.math.BigDecimal**| The minimum amount of zinc in milligrams the recipe must have. | [optional]
 **maxZinc** | **java.math.BigDecimal**| The maximum amount of zinc in milligrams the recipe can have. | [optional]
 **offset** | **kotlin.Int**| The number of results to skip (between 0 and 900). | [optional]
 **number** | **kotlin.Int**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]
 **random** | **kotlin.Boolean**| If true, every request will give you a random set of recipes within the requested limits. | [optional]
 **limitLicense** | **kotlin.Boolean**| Whether the recipes should have an open license that allows display with proper attribution. | [optional] [default to true]

### Return type

[**kotlin.Array&lt;InlineResponse2002&gt;**](InlineResponse2002.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="summarizeRecipe"></a>
# **summarizeRecipe**
> InlineResponse20014 summarizeRecipe(id)

Summarize Recipe

Automatically generate a short description that summarizes key information about the recipe.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = RecipesApi()
val id : kotlin.Int = 1 // kotlin.Int | The item's id.
try {
    val result : InlineResponse20014 = apiInstance.summarizeRecipe(id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling RecipesApi#summarizeRecipe")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RecipesApi#summarizeRecipe")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **kotlin.Int**| The item&#39;s id. |

### Return type

[**InlineResponse20014**](InlineResponse20014.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="visualizeEquipment"></a>
# **visualizeEquipment**
> kotlin.String visualizeEquipment(contentMinusType, accept)

Equipment Widget

Visualize the equipment used to make a recipe.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = RecipesApi()
val contentMinusType : kotlin.String = application/json // kotlin.String | The content type.
val accept : kotlin.String = application/json // kotlin.String | Accept header.
try {
    val result : kotlin.String = apiInstance.visualizeEquipment(contentMinusType, accept)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling RecipesApi#visualizeEquipment")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RecipesApi#visualizeEquipment")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentMinusType** | **kotlin.String**| The content type. | [optional] [enum: application/x-www-form-urlencoded, application/json, multipart/form-data]
 **accept** | **kotlin.String**| Accept header. | [optional] [enum: application/json, text/html, media/*]

### Return type

**kotlin.String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/html

<a name="visualizePriceBreakdown"></a>
# **visualizePriceBreakdown**
> kotlin.String visualizePriceBreakdown(contentMinusType, accept, language)

Price Breakdown Widget

Visualize the price breakdown of a recipe.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = RecipesApi()
val contentMinusType : kotlin.String = application/json // kotlin.String | The content type.
val accept : kotlin.String = application/json // kotlin.String | Accept header.
val language : kotlin.String = en // kotlin.String | The language of the input. Either 'en' or 'de'.
try {
    val result : kotlin.String = apiInstance.visualizePriceBreakdown(contentMinusType, accept, language)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling RecipesApi#visualizePriceBreakdown")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RecipesApi#visualizePriceBreakdown")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentMinusType** | **kotlin.String**| The content type. | [optional] [enum: application/x-www-form-urlencoded, application/json, multipart/form-data]
 **accept** | **kotlin.String**| Accept header. | [optional] [enum: application/json, text/html, media/*]
 **language** | **kotlin.String**| The language of the input. Either &#39;en&#39; or &#39;de&#39;. | [optional] [enum: en, de]

### Return type

**kotlin.String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/html

<a name="visualizeRecipeEquipmentByID"></a>
# **visualizeRecipeEquipmentByID**
> kotlin.String visualizeRecipeEquipmentByID(id, defaultCss)

Equipment by ID Widget

Visualize a recipe&#39;s equipment list.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = RecipesApi()
val id : kotlin.Int = 1 // kotlin.Int | The item's id.
val defaultCss : kotlin.Boolean = false // kotlin.Boolean | Whether the default CSS should be added to the response.
try {
    val result : kotlin.String = apiInstance.visualizeRecipeEquipmentByID(id, defaultCss)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling RecipesApi#visualizeRecipeEquipmentByID")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RecipesApi#visualizeRecipeEquipmentByID")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **kotlin.Int**| The item&#39;s id. |
 **defaultCss** | **kotlin.Boolean**| Whether the default CSS should be added to the response. | [optional] [default to true]

### Return type

**kotlin.String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

<a name="visualizeRecipeIngredientsByID"></a>
# **visualizeRecipeIngredientsByID**
> kotlin.String visualizeRecipeIngredientsByID(id, defaultCss, measure)

Ingredients by ID Widget

Visualize a recipe&#39;s ingredient list.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = RecipesApi()
val id : kotlin.Int = 1 // kotlin.Int | The item's id.
val defaultCss : kotlin.Boolean = false // kotlin.Boolean | Whether the default CSS should be added to the response.
val measure : kotlin.String = metric // kotlin.String | Whether the the measures should be 'us' or 'metric'.
try {
    val result : kotlin.String = apiInstance.visualizeRecipeIngredientsByID(id, defaultCss, measure)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling RecipesApi#visualizeRecipeIngredientsByID")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RecipesApi#visualizeRecipeIngredientsByID")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **kotlin.Int**| The item&#39;s id. |
 **defaultCss** | **kotlin.Boolean**| Whether the default CSS should be added to the response. | [optional] [default to true]
 **measure** | **kotlin.String**| Whether the the measures should be &#39;us&#39; or &#39;metric&#39;. | [optional] [enum: us, metric]

### Return type

**kotlin.String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

<a name="visualizeRecipeNutrition"></a>
# **visualizeRecipeNutrition**
> kotlin.String visualizeRecipeNutrition(contentMinusType, accept, language)

Recipe Nutrition Widget

Visualize a recipe&#39;s nutritional information as HTML including CSS.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = RecipesApi()
val contentMinusType : kotlin.String = application/json // kotlin.String | The content type.
val accept : kotlin.String = application/json // kotlin.String | Accept header.
val language : kotlin.String = en // kotlin.String | The language of the input. Either 'en' or 'de'.
try {
    val result : kotlin.String = apiInstance.visualizeRecipeNutrition(contentMinusType, accept, language)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling RecipesApi#visualizeRecipeNutrition")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RecipesApi#visualizeRecipeNutrition")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentMinusType** | **kotlin.String**| The content type. | [optional] [enum: application/x-www-form-urlencoded, application/json, multipart/form-data]
 **accept** | **kotlin.String**| Accept header. | [optional] [enum: application/json, text/html, media/*]
 **language** | **kotlin.String**| The language of the input. Either &#39;en&#39; or &#39;de&#39;. | [optional] [enum: en, de]

### Return type

**kotlin.String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/html

<a name="visualizeRecipeNutritionByID"></a>
# **visualizeRecipeNutritionByID**
> kotlin.String visualizeRecipeNutritionByID(id, defaultCss, accept)

Recipe Nutrition by ID Widget

Visualize a recipe&#39;s nutritional information as HTML including CSS.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = RecipesApi()
val id : kotlin.Int = 1 // kotlin.Int | The item's id.
val defaultCss : kotlin.Boolean = false // kotlin.Boolean | Whether the default CSS should be added to the response.
val accept : kotlin.String = application/json // kotlin.String | Accept header.
try {
    val result : kotlin.String = apiInstance.visualizeRecipeNutritionByID(id, defaultCss, accept)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling RecipesApi#visualizeRecipeNutritionByID")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RecipesApi#visualizeRecipeNutritionByID")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **kotlin.Int**| The item&#39;s id. |
 **defaultCss** | **kotlin.Boolean**| Whether the default CSS should be added to the response. | [optional] [default to true]
 **accept** | **kotlin.String**| Accept header. | [optional] [enum: application/json, text/html, media/*]

### Return type

**kotlin.String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

<a name="visualizeRecipePriceBreakdownByID"></a>
# **visualizeRecipePriceBreakdownByID**
> kotlin.String visualizeRecipePriceBreakdownByID(id, defaultCss)

Price Breakdown by ID Widget

Visualize a recipe&#39;s price breakdown.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = RecipesApi()
val id : kotlin.Int = 1 // kotlin.Int | The item's id.
val defaultCss : kotlin.Boolean = false // kotlin.Boolean | Whether the default CSS should be added to the response.
try {
    val result : kotlin.String = apiInstance.visualizeRecipePriceBreakdownByID(id, defaultCss)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling RecipesApi#visualizeRecipePriceBreakdownByID")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RecipesApi#visualizeRecipePriceBreakdownByID")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **kotlin.Int**| The item&#39;s id. |
 **defaultCss** | **kotlin.Boolean**| Whether the default CSS should be added to the response. | [optional] [default to true]

### Return type

**kotlin.String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

<a name="visualizeRecipeTaste"></a>
# **visualizeRecipeTaste**
> kotlin.String visualizeRecipeTaste(language, contentMinusType, accept, normalize, rgb)

Recipe Taste Widget

Visualize a recipe&#39;s taste information as HTML including CSS. You can play around with that endpoint!

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = RecipesApi()
val language : kotlin.String = en // kotlin.String | The language of the input. Either 'en' or 'de'.
val contentMinusType : kotlin.String = application/json // kotlin.String | The content type.
val accept : kotlin.String = application/json // kotlin.String | Accept header.
val normalize : kotlin.Boolean = true // kotlin.Boolean | Whether to normalize to the strongest taste.
val rgb : kotlin.String = 75,192,192 // kotlin.String | Red, green, blue values for the chart color.
try {
    val result : kotlin.String = apiInstance.visualizeRecipeTaste(language, contentMinusType, accept, normalize, rgb)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling RecipesApi#visualizeRecipeTaste")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RecipesApi#visualizeRecipeTaste")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **language** | **kotlin.String**| The language of the input. Either &#39;en&#39; or &#39;de&#39;. | [optional] [enum: en, de]
 **contentMinusType** | **kotlin.String**| The content type. | [optional] [enum: application/x-www-form-urlencoded, application/json, multipart/form-data]
 **accept** | **kotlin.String**| Accept header. | [optional] [enum: application/json, text/html, media/*]
 **normalize** | **kotlin.Boolean**| Whether to normalize to the strongest taste. | [optional]
 **rgb** | **kotlin.String**| Red, green, blue values for the chart color. | [optional]

### Return type

**kotlin.String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/html

<a name="visualizeRecipeTasteByID"></a>
# **visualizeRecipeTasteByID**
> kotlin.String visualizeRecipeTasteByID(id, normalize, rgb)

Recipe Taste by ID Widget

Get a recipe&#39;s taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = RecipesApi()
val id : kotlin.Int = 1 // kotlin.Int | The item's id.
val normalize : kotlin.Boolean = true // kotlin.Boolean | Whether to normalize to the strongest taste.
val rgb : kotlin.String = 75,192,192 // kotlin.String | Red, green, blue values for the chart color.
try {
    val result : kotlin.String = apiInstance.visualizeRecipeTasteByID(id, normalize, rgb)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling RecipesApi#visualizeRecipeTasteByID")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RecipesApi#visualizeRecipeTasteByID")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **kotlin.Int**| The item&#39;s id. |
 **normalize** | **kotlin.Boolean**| Whether to normalize to the strongest taste. | [optional] [default to true] [enum: true, false]
 **rgb** | **kotlin.String**| Red, green, blue values for the chart color. | [optional]

### Return type

**kotlin.String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

