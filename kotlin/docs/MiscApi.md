# MiscApi

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**detectFoodInText**](MiscApi.md#detectFoodInText) | **POST** /food/detect | Detect Food in Text
[**getARandomFoodJoke**](MiscApi.md#getARandomFoodJoke) | **GET** /food/jokes/random | Random Food Joke
[**getConversationSuggests**](MiscApi.md#getConversationSuggests) | **GET** /food/converse/suggest | Conversation Suggests
[**getRandomFoodTrivia**](MiscApi.md#getRandomFoodTrivia) | **GET** /food/trivia/random | Random Food Trivia
[**imageAnalysisByURL**](MiscApi.md#imageAnalysisByURL) | **GET** /food/images/analyze | Image Analysis by URL
[**imageClassificationByURL**](MiscApi.md#imageClassificationByURL) | **GET** /food/images/classify | Image Classification by URL
[**searchAllFood**](MiscApi.md#searchAllFood) | **GET** /food/search | Search All Food
[**searchCustomFoods**](MiscApi.md#searchCustomFoods) | **GET** /food/customFoods/search | Search Custom Foods
[**searchFoodVideos**](MiscApi.md#searchFoodVideos) | **GET** /food/videos/search | Search Food Videos
[**searchSiteContent**](MiscApi.md#searchSiteContent) | **GET** /food/site/search | Search Site Content
[**talkToChatbot**](MiscApi.md#talkToChatbot) | **GET** /food/converse | Talk to Chatbot


<a name="detectFoodInText"></a>
# **detectFoodInText**
> InlineResponse20051 detectFoodInText(contentMinusType)

Detect Food in Text

Take any text and find all mentions of food contained within it. This task is also called Named Entity Recognition (NER). In this case, the entities are foods. Either dishes, such as pizza or cheeseburger, or ingredients, such as cucumber or almonds.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = MiscApi()
val contentMinusType : kotlin.String = application/json // kotlin.String | The content type.
try {
    val result : InlineResponse20051 = apiInstance.detectFoodInText(contentMinusType)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MiscApi#detectFoodInText")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MiscApi#detectFoodInText")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentMinusType** | **kotlin.String**| The content type. | [optional] [enum: application/x-www-form-urlencoded, application/json, multipart/form-data]

### Return type

[**InlineResponse20051**](InlineResponse20051.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="getARandomFoodJoke"></a>
# **getARandomFoodJoke**
> InlineResponse20055 getARandomFoodJoke()

Random Food Joke

Get a random joke that is related to food. Caution: this is an endpoint for adults!

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = MiscApi()
try {
    val result : InlineResponse20055 = apiInstance.getARandomFoodJoke()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MiscApi#getARandomFoodJoke")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MiscApi#getARandomFoodJoke")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse20055**](InlineResponse20055.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getConversationSuggests"></a>
# **getConversationSuggests**
> InlineResponse20057 getConversationSuggests(query, number)

Conversation Suggests

This endpoint returns suggestions for things the user can say or ask the chatbot.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = MiscApi()
val query : kotlin.String = tell // kotlin.String | A (partial) query from the user. The endpoint will return if it matches topics it can talk about.
val number : java.math.BigDecimal = 5 // java.math.BigDecimal | The number of suggestions to return (between 1 and 25).
try {
    val result : InlineResponse20057 = apiInstance.getConversationSuggests(query, number)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MiscApi#getConversationSuggests")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MiscApi#getConversationSuggests")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **kotlin.String**| A (partial) query from the user. The endpoint will return if it matches topics it can talk about. |
 **number** | **java.math.BigDecimal**| The number of suggestions to return (between 1 and 25). | [optional]

### Return type

[**InlineResponse20057**](InlineResponse20057.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getRandomFoodTrivia"></a>
# **getRandomFoodTrivia**
> InlineResponse20055 getRandomFoodTrivia()

Random Food Trivia

Returns random food trivia.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = MiscApi()
try {
    val result : InlineResponse20055 = apiInstance.getRandomFoodTrivia()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MiscApi#getRandomFoodTrivia")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MiscApi#getRandomFoodTrivia")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse20055**](InlineResponse20055.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="imageAnalysisByURL"></a>
# **imageAnalysisByURL**
> InlineResponse20049 imageAnalysisByURL(imageUrl)

Image Analysis by URL

Analyze a food image. The API tries to classify the image, guess the nutrition, and find a matching recipes.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = MiscApi()
val imageUrl : kotlin.String = https://spoonacular.com/recipeImages/635350-240x150.jpg // kotlin.String | The URL of the image to be analyzed.
try {
    val result : InlineResponse20049 = apiInstance.imageAnalysisByURL(imageUrl)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MiscApi#imageAnalysisByURL")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MiscApi#imageAnalysisByURL")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imageUrl** | **kotlin.String**| The URL of the image to be analyzed. |

### Return type

[**InlineResponse20049**](InlineResponse20049.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="imageClassificationByURL"></a>
# **imageClassificationByURL**
> InlineResponse20048 imageClassificationByURL(imageUrl)

Image Classification by URL

Classify a food image.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = MiscApi()
val imageUrl : kotlin.String = https://spoonacular.com/recipeImages/635350-240x150.jpg // kotlin.String | The URL of the image to be classified.
try {
    val result : InlineResponse20048 = apiInstance.imageClassificationByURL(imageUrl)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MiscApi#imageClassificationByURL")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MiscApi#imageClassificationByURL")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imageUrl** | **kotlin.String**| The URL of the image to be classified. |

### Return type

[**InlineResponse20048**](InlineResponse20048.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="searchAllFood"></a>
# **searchAllFood**
> InlineResponse20053 searchAllFood(query, offset, number)

Search All Food

Search all food content with one call. That includes recipes, grocery products, menu items, simple foods (ingredients), and food videos.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = MiscApi()
val query : kotlin.String = apple // kotlin.String | The search query.
val offset : kotlin.Int = 56 // kotlin.Int | The number of results to skip (between 0 and 900).
val number : kotlin.Int = 10 // kotlin.Int | The maximum number of items to return (between 1 and 100). Defaults to 10.
try {
    val result : InlineResponse20053 = apiInstance.searchAllFood(query, offset, number)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MiscApi#searchAllFood")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MiscApi#searchAllFood")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **kotlin.String**| The search query. |
 **offset** | **kotlin.Int**| The number of results to skip (between 0 and 900). | [optional]
 **number** | **kotlin.Int**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]

### Return type

[**InlineResponse20053**](InlineResponse20053.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="searchCustomFoods"></a>
# **searchCustomFoods**
> InlineResponse20029 searchCustomFoods(username, hash, query, offset, number)

Search Custom Foods

Search custom foods in a user&#39;s account.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = MiscApi()
val username : kotlin.String = dsky // kotlin.String | The username.
val hash : kotlin.String = 4b5v4398573406 // kotlin.String | The private hash for the username.
val query : kotlin.String = burger // kotlin.String | The (natural language) search query.
val offset : kotlin.Int = 56 // kotlin.Int | The number of results to skip (between 0 and 900).
val number : kotlin.Int = 10 // kotlin.Int | The maximum number of items to return (between 1 and 100). Defaults to 10.
try {
    val result : InlineResponse20029 = apiInstance.searchCustomFoods(username, hash, query, offset, number)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MiscApi#searchCustomFoods")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MiscApi#searchCustomFoods")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **kotlin.String**| The username. |
 **hash** | **kotlin.String**| The private hash for the username. |
 **query** | **kotlin.String**| The (natural language) search query. | [optional]
 **offset** | **kotlin.Int**| The number of results to skip (between 0 and 900). | [optional]
 **number** | **kotlin.Int**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]

### Return type

[**InlineResponse20029**](InlineResponse20029.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="searchFoodVideos"></a>
# **searchFoodVideos**
> InlineResponse20054 searchFoodVideos(query, type, cuisine, diet, includeIngredients, excludeIngredients, minLength, maxLength, offset, number)

Search Food Videos

Find recipe and other food related videos.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = MiscApi()
val query : kotlin.String = burger // kotlin.String | The (natural language) search query.
val type : kotlin.String = main course // kotlin.String | The type of the recipes. See a full list of supported meal types.
val cuisine : kotlin.String = italian // kotlin.String | The cuisine(s) of the recipes. One or more, comma separated. See a full list of supported cuisines.
val diet : kotlin.String = vegetarian // kotlin.String | The diet for which the recipes must be suitable. See a full list of supported diets.
val includeIngredients : kotlin.String = tomato,cheese // kotlin.String | A comma-separated list of ingredients that the recipes should contain.
val excludeIngredients : kotlin.String = eggs // kotlin.String | A comma-separated list of ingredients or ingredient types that the recipes must not contain.
val minLength : java.math.BigDecimal = 0 // java.math.BigDecimal | Minimum video length in seconds.
val maxLength : java.math.BigDecimal = 999 // java.math.BigDecimal | Maximum video length in seconds.
val offset : kotlin.Int = 56 // kotlin.Int | The number of results to skip (between 0 and 900).
val number : kotlin.Int = 10 // kotlin.Int | The maximum number of items to return (between 1 and 100). Defaults to 10.
try {
    val result : InlineResponse20054 = apiInstance.searchFoodVideos(query, type, cuisine, diet, includeIngredients, excludeIngredients, minLength, maxLength, offset, number)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MiscApi#searchFoodVideos")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MiscApi#searchFoodVideos")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **kotlin.String**| The (natural language) search query. | [optional]
 **type** | **kotlin.String**| The type of the recipes. See a full list of supported meal types. | [optional]
 **cuisine** | **kotlin.String**| The cuisine(s) of the recipes. One or more, comma separated. See a full list of supported cuisines. | [optional]
 **diet** | **kotlin.String**| The diet for which the recipes must be suitable. See a full list of supported diets. | [optional]
 **includeIngredients** | **kotlin.String**| A comma-separated list of ingredients that the recipes should contain. | [optional]
 **excludeIngredients** | **kotlin.String**| A comma-separated list of ingredients or ingredient types that the recipes must not contain. | [optional]
 **minLength** | **java.math.BigDecimal**| Minimum video length in seconds. | [optional]
 **maxLength** | **java.math.BigDecimal**| Maximum video length in seconds. | [optional]
 **offset** | **kotlin.Int**| The number of results to skip (between 0 and 900). | [optional]
 **number** | **kotlin.Int**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]

### Return type

[**InlineResponse20054**](InlineResponse20054.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="searchSiteContent"></a>
# **searchSiteContent**
> InlineResponse20052 searchSiteContent(query)

Search Site Content

Search spoonacular&#39;s site content. You&#39;ll be able to find everything that you could also find using the search suggestions on spoonacular.com. This is a suggest API so you can send partial strings as queries.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = MiscApi()
val query : kotlin.String = past // kotlin.String | The query to search for. You can also use partial queries such as \"spagh\" to already find spaghetti recipes, articles, grocery products, and other content.
try {
    val result : InlineResponse20052 = apiInstance.searchSiteContent(query)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MiscApi#searchSiteContent")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MiscApi#searchSiteContent")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **kotlin.String**| The query to search for. You can also use partial queries such as \&quot;spagh\&quot; to already find spaghetti recipes, articles, grocery products, and other content. |

### Return type

[**InlineResponse20052**](InlineResponse20052.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="talkToChatbot"></a>
# **talkToChatbot**
> InlineResponse20056 talkToChatbot(text, contextId)

Talk to Chatbot

This endpoint can be used to have a conversation about food with the spoonacular chatbot. Use the \&quot;Get Conversation Suggests\&quot; endpoint to show your user what he or she can say.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = MiscApi()
val text : kotlin.String = donut recipes // kotlin.String | The request / question / answer from the user to the chatbot.
val contextId : kotlin.String = 342938 // kotlin.String | An arbitrary globally unique id for your conversation. The conversation can contain states so you should pass your context id if you want the bot to be able to remember the conversation.
try {
    val result : InlineResponse20056 = apiInstance.talkToChatbot(text, contextId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MiscApi#talkToChatbot")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MiscApi#talkToChatbot")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **kotlin.String**| The request / question / answer from the user to the chatbot. |
 **contextId** | **kotlin.String**| An arbitrary globally unique id for your conversation. The conversation can contain states so you should pass your context id if you want the bot to be able to remember the conversation. | [optional]

### Return type

[**InlineResponse20056**](InlineResponse20056.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

