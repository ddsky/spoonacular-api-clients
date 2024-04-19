# DefaultApi

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**analyzeRecipe**](DefaultApi.md#analyzeRecipe) | **POST** /recipes/analyze | Analyze Recipe
[**createRecipeCardGet**](DefaultApi.md#createRecipeCardGet) | **GET** /recipes/{id}/card | Create Recipe Card
[**searchRestaurants**](DefaultApi.md#searchRestaurants) | **GET** /food/restaurants/search | Search Restaurants


<a id="analyzeRecipe"></a>
# **analyzeRecipe**
> kotlin.Any analyzeRecipe(analyzeRecipeRequest, language, includeNutrition, includeTaste)

Analyze Recipe

This endpoint allows you to send raw recipe information, such as title, servings, and ingredients, to then see what we compute (badges, diets, nutrition, and more). This is useful if you have your own recipe data and want to enrich it with our semantic analysis.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = DefaultApi()
val analyzeRecipeRequest : AnalyzeRecipeRequest = {"title":"Spaghetti Carbonara","servings":2,"ingredients":["1 lb spaghetti","3.5 oz pancetta","2 Tbsps olive oil","1  egg","0.5 cup parmesan cheese"],"instructions":"Bring a large pot of water to a boil and season generously with salt. Add the pasta to the water once boiling and cook until al dente. Reserve 2 cups of cooking water and drain the pasta. "} // AnalyzeRecipeRequest | Example request body.
val language : kotlin.String = en // kotlin.String | The input language, either \"en\" or \"de\".
val includeNutrition : kotlin.Boolean = false // kotlin.Boolean | Whether nutrition data should be added to correctly parsed ingredients.
val includeTaste : kotlin.Boolean = false // kotlin.Boolean | Whether taste data should be added to correctly parsed ingredients.
try {
    val result : kotlin.Any = apiInstance.analyzeRecipe(analyzeRecipeRequest, language, includeNutrition, includeTaste)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#analyzeRecipe")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#analyzeRecipe")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **analyzeRecipeRequest** | [**AnalyzeRecipeRequest**](AnalyzeRecipeRequest.md)| Example request body. |
 **language** | **kotlin.String**| The input language, either \&quot;en\&quot; or \&quot;de\&quot;. | [optional]
 **includeNutrition** | **kotlin.Boolean**| Whether nutrition data should be added to correctly parsed ingredients. | [optional]
 **includeTaste** | **kotlin.Boolean**| Whether taste data should be added to correctly parsed ingredients. | [optional]

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization


Configure apiKeyScheme:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a id="createRecipeCardGet"></a>
# **createRecipeCardGet**
> kotlin.Any createRecipeCardGet(id, mask, backgroundImage, backgroundColor, fontColor)

Create Recipe Card

Generate a recipe card for a recipe.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = DefaultApi()
val id : java.math.BigDecimal = 4632 // java.math.BigDecimal | The recipe id.
val mask : kotlin.String = ellipseMask // kotlin.String | The mask to put over the recipe image (\"ellipseMask\", \"diamondMask\", \"starMask\", \"heartMask\", \"potMask\", \"fishMask\").
val backgroundImage : kotlin.String = background1 // kotlin.String | The background image (\"none\",\"background1\", or \"background2\").
val backgroundColor : kotlin.String = ffffff // kotlin.String | The background color for the recipe card as a hex-string.
val fontColor : kotlin.String = 333333 // kotlin.String | The font color for the recipe card as a hex-string.
try {
    val result : kotlin.Any = apiInstance.createRecipeCardGet(id, mask, backgroundImage, backgroundColor, fontColor)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#createRecipeCardGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#createRecipeCardGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **java.math.BigDecimal**| The recipe id. |
 **mask** | **kotlin.String**| The mask to put over the recipe image (\&quot;ellipseMask\&quot;, \&quot;diamondMask\&quot;, \&quot;starMask\&quot;, \&quot;heartMask\&quot;, \&quot;potMask\&quot;, \&quot;fishMask\&quot;). | [optional]
 **backgroundImage** | **kotlin.String**| The background image (\&quot;none\&quot;,\&quot;background1\&quot;, or \&quot;background2\&quot;). | [optional]
 **backgroundColor** | **kotlin.String**| The background color for the recipe card as a hex-string. | [optional]
 **fontColor** | **kotlin.String**| The font color for the recipe card as a hex-string. | [optional]

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization


Configure apiKeyScheme:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="searchRestaurants"></a>
# **searchRestaurants**
> SearchRestaurants200Response searchRestaurants(query, lat, lng, distance, budget, cuisine, minRating, isOpen, sort, page)

Search Restaurants

Search through thousands of restaurants (in North America) by location, cuisine, budget, and more.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = DefaultApi()
val query : kotlin.String = beach cafe // kotlin.String | The search query.
val lat : java.math.BigDecimal = 37.7786357 // java.math.BigDecimal | The latitude of the user's location.
val lng : java.math.BigDecimal = -122.3918135 // java.math.BigDecimal | The longitude of the user's location.\".
val distance : java.math.BigDecimal = 2 // java.math.BigDecimal | The distance around the location in miles.
val budget : java.math.BigDecimal = 20 // java.math.BigDecimal | The user's budget for a meal in USD.
val cuisine : kotlin.String = italian // kotlin.String | The cuisine of the restaurant.
val minRating : java.math.BigDecimal = 4.4 // java.math.BigDecimal | The minimum rating of the restaurant between 0 and 5.
val isOpen : kotlin.Boolean = true // kotlin.Boolean | Whether the restaurant must be open at the time of search.
val sort : kotlin.String = distance // kotlin.String | How to sort the results, one of the following 'cheapest', 'fastest', 'rating', 'distance' or the default 'relevance'.
val page : java.math.BigDecimal = 0 // java.math.BigDecimal | The page number of results.
try {
    val result : SearchRestaurants200Response = apiInstance.searchRestaurants(query, lat, lng, distance, budget, cuisine, minRating, isOpen, sort, page)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#searchRestaurants")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#searchRestaurants")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **kotlin.String**| The search query. | [optional]
 **lat** | **java.math.BigDecimal**| The latitude of the user&#39;s location. | [optional]
 **lng** | **java.math.BigDecimal**| The longitude of the user&#39;s location.\&quot;. | [optional]
 **distance** | **java.math.BigDecimal**| The distance around the location in miles. | [optional]
 **budget** | **java.math.BigDecimal**| The user&#39;s budget for a meal in USD. | [optional]
 **cuisine** | **kotlin.String**| The cuisine of the restaurant. | [optional]
 **minRating** | **java.math.BigDecimal**| The minimum rating of the restaurant between 0 and 5. | [optional]
 **isOpen** | **kotlin.Boolean**| Whether the restaurant must be open at the time of search. | [optional]
 **sort** | **kotlin.String**| How to sort the results, one of the following &#39;cheapest&#39;, &#39;fastest&#39;, &#39;rating&#39;, &#39;distance&#39; or the default &#39;relevance&#39;. | [optional]
 **page** | **java.math.BigDecimal**| The page number of results. | [optional]

### Return type

[**SearchRestaurants200Response**](SearchRestaurants200Response.md)

### Authorization


Configure apiKeyScheme:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

