# IngredientsApi

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**autocompleteIngredientSearch**](IngredientsApi.md#autocompleteIngredientSearch) | **GET** /food/ingredients/autocomplete | Autocomplete Ingredient Search
[**computeIngredientAmount**](IngredientsApi.md#computeIngredientAmount) | **GET** /food/ingredients/{id}/amount | Compute Ingredient Amount
[**getIngredientInformation**](IngredientsApi.md#getIngredientInformation) | **GET** /food/ingredients/{id}/information | Get Ingredient Information
[**getIngredientSubstitutes**](IngredientsApi.md#getIngredientSubstitutes) | **GET** /food/ingredients/substitutes | Get Ingredient Substitutes
[**getIngredientSubstitutesByID**](IngredientsApi.md#getIngredientSubstitutesByID) | **GET** /food/ingredients/{id}/substitutes | Get Ingredient Substitutes by ID
[**ingredientSearch**](IngredientsApi.md#ingredientSearch) | **GET** /food/ingredients/search | Ingredient Search
[**ingredientsByIDImage**](IngredientsApi.md#ingredientsByIDImage) | **GET** /recipes/{id}/ingredientWidget.png | Ingredients by ID Image
[**mapIngredientsToGroceryProducts**](IngredientsApi.md#mapIngredientsToGroceryProducts) | **POST** /food/ingredients/map | Map Ingredients to Grocery Products
[**visualizeIngredients**](IngredientsApi.md#visualizeIngredients) | **POST** /recipes/visualizeIngredients | Ingredients Widget


<a name="autocompleteIngredientSearch"></a>
# **autocompleteIngredientSearch**
> kotlin.Array&lt;InlineResponse20024&gt; autocompleteIngredientSearch(query, number, metaInformation, intolerances)

Autocomplete Ingredient Search

Autocomplete the entry of an ingredient.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = IngredientsApi()
val query : kotlin.String = burger // kotlin.String | The (natural language) search query.
val number : kotlin.Int = 10 // kotlin.Int | The maximum number of items to return (between 1 and 100). Defaults to 10.
val metaInformation : kotlin.Boolean = false // kotlin.Boolean | Whether to return more meta information about the ingredients.
val intolerances : kotlin.String = egg // kotlin.String | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.
try {
    val result : kotlin.Array<InlineResponse20024> = apiInstance.autocompleteIngredientSearch(query, number, metaInformation, intolerances)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling IngredientsApi#autocompleteIngredientSearch")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling IngredientsApi#autocompleteIngredientSearch")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **kotlin.String**| The (natural language) search query. | [optional]
 **number** | **kotlin.Int**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]
 **metaInformation** | **kotlin.Boolean**| Whether to return more meta information about the ingredients. | [optional]
 **intolerances** | **kotlin.String**| A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. | [optional]

### Return type

[**kotlin.Array&lt;InlineResponse20024&gt;**](InlineResponse20024.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="computeIngredientAmount"></a>
# **computeIngredientAmount**
> RecipesParseIngredientsNutritionWeightPerServing computeIngredientAmount(id, nutrient, target, unit)

Compute Ingredient Amount

Compute the amount you need of a certain ingredient for a certain nutritional goal. For example, how much pineapple do you have to eat to get 10 grams of protein?

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = IngredientsApi()
val id : java.math.BigDecimal = 9266 // java.math.BigDecimal | The id of the ingredient you want the amount for.
val nutrient : kotlin.String = protein // kotlin.String | The target nutrient. See a list of supported nutrients.
val target : java.math.BigDecimal = 2 // java.math.BigDecimal | The target number of the given nutrient.
val unit : kotlin.String = oz // kotlin.String | The target unit.
try {
    val result : RecipesParseIngredientsNutritionWeightPerServing = apiInstance.computeIngredientAmount(id, nutrient, target, unit)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling IngredientsApi#computeIngredientAmount")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling IngredientsApi#computeIngredientAmount")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **java.math.BigDecimal**| The id of the ingredient you want the amount for. |
 **nutrient** | **kotlin.String**| The target nutrient. See a list of supported nutrients. |
 **target** | **java.math.BigDecimal**| The target number of the given nutrient. |
 **unit** | **kotlin.String**| The target unit. | [optional]

### Return type

[**RecipesParseIngredientsNutritionWeightPerServing**](RecipesParseIngredientsNutritionWeightPerServing.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getIngredientInformation"></a>
# **getIngredientInformation**
> InlineResponse20022 getIngredientInformation(id, amount, unit)

Get Ingredient Information

Use an ingredient id to get all available information about an ingredient, such as its image and supermarket aisle.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = IngredientsApi()
val id : kotlin.Int = 1 // kotlin.Int | The item's id.
val amount : java.math.BigDecimal = 150 // java.math.BigDecimal | The amount of this ingredient.
val unit : kotlin.String = grams // kotlin.String | The unit for the given amount.
try {
    val result : InlineResponse20022 = apiInstance.getIngredientInformation(id, amount, unit)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling IngredientsApi#getIngredientInformation")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling IngredientsApi#getIngredientInformation")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **kotlin.Int**| The item&#39;s id. |
 **amount** | **java.math.BigDecimal**| The amount of this ingredient. | [optional]
 **unit** | **kotlin.String**| The unit for the given amount. | [optional]

### Return type

[**InlineResponse20022**](InlineResponse20022.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getIngredientSubstitutes"></a>
# **getIngredientSubstitutes**
> InlineResponse20026 getIngredientSubstitutes(ingredientName)

Get Ingredient Substitutes

Search for substitutes for a given ingredient.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = IngredientsApi()
val ingredientName : kotlin.String = butter // kotlin.String | The name of the ingredient you want to replace.
try {
    val result : InlineResponse20026 = apiInstance.getIngredientSubstitutes(ingredientName)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling IngredientsApi#getIngredientSubstitutes")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling IngredientsApi#getIngredientSubstitutes")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredientName** | **kotlin.String**| The name of the ingredient you want to replace. |

### Return type

[**InlineResponse20026**](InlineResponse20026.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getIngredientSubstitutesByID"></a>
# **getIngredientSubstitutesByID**
> InlineResponse20026 getIngredientSubstitutesByID(id)

Get Ingredient Substitutes by ID

Search for substitutes for a given ingredient.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = IngredientsApi()
val id : kotlin.Int = 1 // kotlin.Int | The item's id.
try {
    val result : InlineResponse20026 = apiInstance.getIngredientSubstitutesByID(id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling IngredientsApi#getIngredientSubstitutesByID")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling IngredientsApi#getIngredientSubstitutesByID")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **kotlin.Int**| The item&#39;s id. |

### Return type

[**InlineResponse20026**](InlineResponse20026.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="ingredientSearch"></a>
# **ingredientSearch**
> InlineResponse20025 ingredientSearch(query, addChildren, minProteinPercent, maxProteinPercent, minFatPercent, maxFatPercent, minCarbsPercent, maxCarbsPercent, metaInformation, intolerances, sort, sortDirection, offset, number)

Ingredient Search

Search for simple whole foods (e.g. fruits, vegetables, nuts, grains, meat, fish, dairy etc.).

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = IngredientsApi()
val query : kotlin.String = burger // kotlin.String | The (natural language) search query.
val addChildren : kotlin.Boolean = true // kotlin.Boolean | Whether to add children of found foods.
val minProteinPercent : java.math.BigDecimal = 10 // java.math.BigDecimal | The minimum percentage of protein the food must have (between 0 and 100).
val maxProteinPercent : java.math.BigDecimal = 90 // java.math.BigDecimal | The maximum percentage of protein the food can have (between 0 and 100).
val minFatPercent : java.math.BigDecimal = 10 // java.math.BigDecimal | The minimum percentage of fat the food must have (between 0 and 100).
val maxFatPercent : java.math.BigDecimal = 90 // java.math.BigDecimal | The maximum percentage of fat the food can have (between 0 and 100).
val minCarbsPercent : java.math.BigDecimal = 10 // java.math.BigDecimal | The minimum percentage of carbs the food must have (between 0 and 100).
val maxCarbsPercent : java.math.BigDecimal = 90 // java.math.BigDecimal | The maximum percentage of carbs the food can have (between 0 and 100).
val metaInformation : kotlin.Boolean = false // kotlin.Boolean | Whether to return more meta information about the ingredients.
val intolerances : kotlin.String = egg // kotlin.String | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.
val sort : kotlin.String = calories // kotlin.String | The strategy to sort recipes by. See a full list of supported sorting options.
val sortDirection : kotlin.String = asc // kotlin.String | The direction in which to sort. Must be either 'asc' (ascending) or 'desc' (descending).
val offset : kotlin.Int = 56 // kotlin.Int | The number of results to skip (between 0 and 900).
val number : kotlin.Int = 10 // kotlin.Int | The maximum number of items to return (between 1 and 100). Defaults to 10.
try {
    val result : InlineResponse20025 = apiInstance.ingredientSearch(query, addChildren, minProteinPercent, maxProteinPercent, minFatPercent, maxFatPercent, minCarbsPercent, maxCarbsPercent, metaInformation, intolerances, sort, sortDirection, offset, number)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling IngredientsApi#ingredientSearch")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling IngredientsApi#ingredientSearch")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **kotlin.String**| The (natural language) search query. | [optional]
 **addChildren** | **kotlin.Boolean**| Whether to add children of found foods. | [optional]
 **minProteinPercent** | **java.math.BigDecimal**| The minimum percentage of protein the food must have (between 0 and 100). | [optional]
 **maxProteinPercent** | **java.math.BigDecimal**| The maximum percentage of protein the food can have (between 0 and 100). | [optional]
 **minFatPercent** | **java.math.BigDecimal**| The minimum percentage of fat the food must have (between 0 and 100). | [optional]
 **maxFatPercent** | **java.math.BigDecimal**| The maximum percentage of fat the food can have (between 0 and 100). | [optional]
 **minCarbsPercent** | **java.math.BigDecimal**| The minimum percentage of carbs the food must have (between 0 and 100). | [optional]
 **maxCarbsPercent** | **java.math.BigDecimal**| The maximum percentage of carbs the food can have (between 0 and 100). | [optional]
 **metaInformation** | **kotlin.Boolean**| Whether to return more meta information about the ingredients. | [optional]
 **intolerances** | **kotlin.String**| A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. | [optional]
 **sort** | **kotlin.String**| The strategy to sort recipes by. See a full list of supported sorting options. | [optional]
 **sortDirection** | **kotlin.String**| The direction in which to sort. Must be either &#39;asc&#39; (ascending) or &#39;desc&#39; (descending). | [optional]
 **offset** | **kotlin.Int**| The number of results to skip (between 0 and 900). | [optional]
 **number** | **kotlin.Int**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]

### Return type

[**InlineResponse20025**](InlineResponse20025.md)

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

val apiInstance = IngredientsApi()
val id : java.math.BigDecimal = 1082038 // java.math.BigDecimal | The recipe id.
val measure : kotlin.String = metric // kotlin.String | Whether the the measures should be 'us' or 'metric'.
try {
    val result : kotlin.Any = apiInstance.ingredientsByIDImage(id, measure)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling IngredientsApi#ingredientsByIDImage")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling IngredientsApi#ingredientsByIDImage")
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

<a name="mapIngredientsToGroceryProducts"></a>
# **mapIngredientsToGroceryProducts**
> kotlin.Array&lt;InlineResponse20034&gt; mapIngredientsToGroceryProducts(inlineObject2)

Map Ingredients to Grocery Products

Map a set of ingredients to products you can buy in the grocery store.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = IngredientsApi()
val inlineObject2 : InlineObject2 =  // InlineObject2 | 
try {
    val result : kotlin.Array<InlineResponse20034> = apiInstance.mapIngredientsToGroceryProducts(inlineObject2)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling IngredientsApi#mapIngredientsToGroceryProducts")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling IngredientsApi#mapIngredientsToGroceryProducts")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inlineObject2** | [**InlineObject2**](InlineObject2.md)|  |

### Return type

[**kotlin.Array&lt;InlineResponse20034&gt;**](InlineResponse20034.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="visualizeIngredients"></a>
# **visualizeIngredients**
> kotlin.String visualizeIngredients(contentMinusType, language, accept)

Ingredients Widget

Visualize ingredients of a recipe. You can play around with that endpoint!

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = IngredientsApi()
val contentMinusType : kotlin.String = application/json // kotlin.String | The content type.
val language : kotlin.String = en // kotlin.String | The language of the input. Either 'en' or 'de'.
val accept : kotlin.String = application/json // kotlin.String | Accept header.
try {
    val result : kotlin.String = apiInstance.visualizeIngredients(contentMinusType, language, accept)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling IngredientsApi#visualizeIngredients")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling IngredientsApi#visualizeIngredients")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentMinusType** | **kotlin.String**| The content type. | [optional] [enum: application/x-www-form-urlencoded, application/json, multipart/form-data]
 **language** | **kotlin.String**| The language of the input. Either &#39;en&#39; or &#39;de&#39;. | [optional] [enum: en, de]
 **accept** | **kotlin.String**| Accept header. | [optional] [enum: application/json, text/html, media/*]

### Return type

**kotlin.String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/html

