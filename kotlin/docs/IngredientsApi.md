# IngredientsApi

All URIs are relative to *https://api.spoonacular.com*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**autocompleteIngredientSearch**](IngredientsApi.md#autocompleteIngredientSearch) | **GET** /food/ingredients/autocomplete | Autocomplete Ingredient Search |
| [**computeIngredientAmount**](IngredientsApi.md#computeIngredientAmount) | **GET** /food/ingredients/{id}/amount | Compute Ingredient Amount |
| [**getIngredientInformation**](IngredientsApi.md#getIngredientInformation) | **GET** /food/ingredients/{id}/information | Get Ingredient Information |
| [**getIngredientSubstitutes**](IngredientsApi.md#getIngredientSubstitutes) | **GET** /food/ingredients/substitutes | Get Ingredient Substitutes |
| [**getIngredientSubstitutesByID**](IngredientsApi.md#getIngredientSubstitutesByID) | **GET** /food/ingredients/{id}/substitutes | Get Ingredient Substitutes by ID |
| [**ingredientSearch**](IngredientsApi.md#ingredientSearch) | **GET** /food/ingredients/search | Ingredient Search |
| [**ingredientsByIDImage**](IngredientsApi.md#ingredientsByIDImage) | **GET** /recipes/{id}/ingredientWidget.png | Ingredients by ID Image |
| [**mapIngredientsToGroceryProducts**](IngredientsApi.md#mapIngredientsToGroceryProducts) | **POST** /food/ingredients/map | Map Ingredients to Grocery Products |
| [**visualizeIngredients**](IngredientsApi.md#visualizeIngredients) | **POST** /recipes/visualizeIngredients | Ingredients Widget |


<a id="autocompleteIngredientSearch"></a>
# **autocompleteIngredientSearch**
> kotlin.collections.Set&lt;AutocompleteIngredientSearch200ResponseInner&gt; autocompleteIngredientSearch(query, number, metaInformation, intolerances, language)

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
val language : kotlin.String = en // kotlin.String | The language of the input. Either 'en' or 'de'.
try {
    val result : kotlin.collections.Set<AutocompleteIngredientSearch200ResponseInner> = apiInstance.autocompleteIngredientSearch(query, number, metaInformation, intolerances, language)
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
| **query** | **kotlin.String**| The (natural language) search query. | [optional] |
| **number** | **kotlin.Int**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10] |
| **metaInformation** | **kotlin.Boolean**| Whether to return more meta information about the ingredients. | [optional] |
| **intolerances** | **kotlin.String**| A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. | [optional] |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **language** | **kotlin.String**| The language of the input. Either &#39;en&#39; or &#39;de&#39;. | [optional] [enum: en, de] |

### Return type

[**kotlin.collections.Set&lt;AutocompleteIngredientSearch200ResponseInner&gt;**](AutocompleteIngredientSearch200ResponseInner.md)

### Authorization


Configure apiKeyScheme:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="computeIngredientAmount"></a>
# **computeIngredientAmount**
> ComputeIngredientAmount200Response computeIngredientAmount(id, nutrient, target, unit)

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
    val result : ComputeIngredientAmount200Response = apiInstance.computeIngredientAmount(id, nutrient, target, unit)
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
| **id** | **java.math.BigDecimal**| The id of the ingredient you want the amount for. | |
| **nutrient** | **kotlin.String**| The target nutrient. See a list of supported nutrients. | |
| **target** | **java.math.BigDecimal**| The target number of the given nutrient. | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **unit** | **kotlin.String**| The target unit. | [optional] |

### Return type

[**ComputeIngredientAmount200Response**](ComputeIngredientAmount200Response.md)

### Authorization


Configure apiKeyScheme:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="getIngredientInformation"></a>
# **getIngredientInformation**
> GetIngredientInformation200Response getIngredientInformation(id, amount, unit)

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
    val result : GetIngredientInformation200Response = apiInstance.getIngredientInformation(id, amount, unit)
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
| **id** | **kotlin.Int**| The item&#39;s id. | |
| **amount** | **java.math.BigDecimal**| The amount of this ingredient. | [optional] |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **unit** | **kotlin.String**| The unit for the given amount. | [optional] |

### Return type

[**GetIngredientInformation200Response**](GetIngredientInformation200Response.md)

### Authorization


Configure apiKeyScheme:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="getIngredientSubstitutes"></a>
# **getIngredientSubstitutes**
> GetIngredientSubstitutes200Response getIngredientSubstitutes(ingredientName)

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
    val result : GetIngredientSubstitutes200Response = apiInstance.getIngredientSubstitutes(ingredientName)
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
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **ingredientName** | **kotlin.String**| The name of the ingredient you want to replace. | |

### Return type

[**GetIngredientSubstitutes200Response**](GetIngredientSubstitutes200Response.md)

### Authorization


Configure apiKeyScheme:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="getIngredientSubstitutesByID"></a>
# **getIngredientSubstitutesByID**
> GetIngredientSubstitutes200Response getIngredientSubstitutesByID(id)

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
    val result : GetIngredientSubstitutes200Response = apiInstance.getIngredientSubstitutesByID(id)
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
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **kotlin.Int**| The item&#39;s id. | |

### Return type

[**GetIngredientSubstitutes200Response**](GetIngredientSubstitutes200Response.md)

### Authorization


Configure apiKeyScheme:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="ingredientSearch"></a>
# **ingredientSearch**
> IngredientSearch200Response ingredientSearch(query, addChildren, minProteinPercent, maxProteinPercent, minFatPercent, maxFatPercent, minCarbsPercent, maxCarbsPercent, metaInformation, intolerances, sort, sortDirection, offset, number, language)

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
val language : kotlin.String = en // kotlin.String | The language of the input. Either 'en' or 'de'.
try {
    val result : IngredientSearch200Response = apiInstance.ingredientSearch(query, addChildren, minProteinPercent, maxProteinPercent, minFatPercent, maxFatPercent, minCarbsPercent, maxCarbsPercent, metaInformation, intolerances, sort, sortDirection, offset, number, language)
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
| **query** | **kotlin.String**| The (natural language) search query. | [optional] |
| **addChildren** | **kotlin.Boolean**| Whether to add children of found foods. | [optional] |
| **minProteinPercent** | **java.math.BigDecimal**| The minimum percentage of protein the food must have (between 0 and 100). | [optional] |
| **maxProteinPercent** | **java.math.BigDecimal**| The maximum percentage of protein the food can have (between 0 and 100). | [optional] |
| **minFatPercent** | **java.math.BigDecimal**| The minimum percentage of fat the food must have (between 0 and 100). | [optional] |
| **maxFatPercent** | **java.math.BigDecimal**| The maximum percentage of fat the food can have (between 0 and 100). | [optional] |
| **minCarbsPercent** | **java.math.BigDecimal**| The minimum percentage of carbs the food must have (between 0 and 100). | [optional] |
| **maxCarbsPercent** | **java.math.BigDecimal**| The maximum percentage of carbs the food can have (between 0 and 100). | [optional] |
| **metaInformation** | **kotlin.Boolean**| Whether to return more meta information about the ingredients. | [optional] |
| **intolerances** | **kotlin.String**| A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. | [optional] |
| **sort** | **kotlin.String**| The strategy to sort recipes by. See a full list of supported sorting options. | [optional] |
| **sortDirection** | **kotlin.String**| The direction in which to sort. Must be either &#39;asc&#39; (ascending) or &#39;desc&#39; (descending). | [optional] |
| **offset** | **kotlin.Int**| The number of results to skip (between 0 and 900). | [optional] |
| **number** | **kotlin.Int**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10] |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **language** | **kotlin.String**| The language of the input. Either &#39;en&#39; or &#39;de&#39;. | [optional] [enum: en, de] |

### Return type

[**IngredientSearch200Response**](IngredientSearch200Response.md)

### Authorization


Configure apiKeyScheme:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="ingredientsByIDImage"></a>
# **ingredientsByIDImage**
> java.io.File ingredientsByIDImage(id, measure)

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
    val result : java.io.File = apiInstance.ingredientsByIDImage(id, measure)
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
| **id** | **java.math.BigDecimal**| The recipe id. | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **measure** | **kotlin.String**| Whether the the measures should be &#39;us&#39; or &#39;metric&#39;. | [optional] [enum: us, metric] |

### Return type

[**java.io.File**](java.io.File.md)

### Authorization


Configure apiKeyScheme:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a id="mapIngredientsToGroceryProducts"></a>
# **mapIngredientsToGroceryProducts**
> kotlin.collections.Set&lt;MapIngredientsToGroceryProducts200ResponseInner&gt; mapIngredientsToGroceryProducts(mapIngredientsToGroceryProductsRequest)

Map Ingredients to Grocery Products

Map a set of ingredients to products you can buy in the grocery store.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = IngredientsApi()
val mapIngredientsToGroceryProductsRequest : MapIngredientsToGroceryProductsRequest = {"ingredients":["eggs","bacon"],"servings":2} // MapIngredientsToGroceryProductsRequest | 
try {
    val result : kotlin.collections.Set<MapIngredientsToGroceryProducts200ResponseInner> = apiInstance.mapIngredientsToGroceryProducts(mapIngredientsToGroceryProductsRequest)
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
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **mapIngredientsToGroceryProductsRequest** | [**MapIngredientsToGroceryProductsRequest**](MapIngredientsToGroceryProductsRequest.md)|  | |

### Return type

[**kotlin.collections.Set&lt;MapIngredientsToGroceryProducts200ResponseInner&gt;**](MapIngredientsToGroceryProducts200ResponseInner.md)

### Authorization


Configure apiKeyScheme:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a id="visualizeIngredients"></a>
# **visualizeIngredients**
> kotlin.String visualizeIngredients(ingredientList, servings, language, measure, view, defaultCss, showBacklink)

Ingredients Widget

Visualize ingredients of a recipe. You can play around with that endpoint!

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = IngredientsApi()
val ingredientList : kotlin.String = ingredientList_example // kotlin.String | The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n).
val servings : java.math.BigDecimal = 8.14 // java.math.BigDecimal | The number of servings.
val language : kotlin.String = en // kotlin.String | The language of the input. Either 'en' or 'de'.
val measure : kotlin.String = measure_example // kotlin.String | The original system of measurement, either 'metric' or 'us'.
val view : kotlin.String = view_example // kotlin.String | How to visualize the ingredients, either 'grid' or 'list'.
val defaultCss : kotlin.Boolean = true // kotlin.Boolean | Whether the default CSS should be added to the response.
val showBacklink : kotlin.Boolean = true // kotlin.Boolean | Whether to show a backlink to spoonacular. If set false, this call counts against your quota.
try {
    val result : kotlin.String = apiInstance.visualizeIngredients(ingredientList, servings, language, measure, view, defaultCss, showBacklink)
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
| **ingredientList** | **kotlin.String**| The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n). | |
| **servings** | **java.math.BigDecimal**| The number of servings. | |
| **language** | **kotlin.String**| The language of the input. Either &#39;en&#39; or &#39;de&#39;. | [optional] [enum: en, de] |
| **measure** | **kotlin.String**| The original system of measurement, either &#39;metric&#39; or &#39;us&#39;. | [optional] [enum: us, metric] |
| **view** | **kotlin.String**| How to visualize the ingredients, either &#39;grid&#39; or &#39;list&#39;. | [optional] [enum: grid, list] |
| **defaultCss** | **kotlin.Boolean**| Whether the default CSS should be added to the response. | [optional] |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **showBacklink** | **kotlin.Boolean**| Whether to show a backlink to spoonacular. If set false, this call counts against your quota. | [optional] |

### Return type

**kotlin.String**

### Authorization


Configure apiKeyScheme:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: Not defined

