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


<a id="detectFoodInText"></a>
# **detectFoodInText**
> DetectFoodInText200Response detectFoodInText(contentType)

Detect Food in Text

Take any text and find all mentions of food contained within it. This task is also called Named Entity Recognition (NER). In this case, the entities are foods. Either dishes, such as pizza or cheeseburger, or ingredients, such as cucumber or almonds.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = MiscApi()
val contentType : kotlin.String = application/json // kotlin.String | The content type.
try {
    val result : DetectFoodInText200Response = apiInstance.detectFoodInText(contentType)
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
 **contentType** | **kotlin.String**| The content type. | [optional] [enum: application/x-www-form-urlencoded, application/json, multipart/form-data]

### Return type

[**DetectFoodInText200Response**](DetectFoodInText200Response.md)

### Authorization


Configure apiKeyScheme:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a id="getARandomFoodJoke"></a>
# **getARandomFoodJoke**
> GetARandomFoodJoke200Response getARandomFoodJoke()

Random Food Joke

Get a random joke that is related to food. Caution: this is an endpoint for adults!

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = MiscApi()
try {
    val result : GetARandomFoodJoke200Response = apiInstance.getARandomFoodJoke()
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

[**GetARandomFoodJoke200Response**](GetARandomFoodJoke200Response.md)

### Authorization


Configure apiKeyScheme:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="getConversationSuggests"></a>
# **getConversationSuggests**
> GetConversationSuggests200Response getConversationSuggests(query, number)

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
    val result : GetConversationSuggests200Response = apiInstance.getConversationSuggests(query, number)
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

[**GetConversationSuggests200Response**](GetConversationSuggests200Response.md)

### Authorization


Configure apiKeyScheme:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="getRandomFoodTrivia"></a>
# **getRandomFoodTrivia**
> GetRandomFoodTrivia200Response getRandomFoodTrivia()

Random Food Trivia

Returns random food trivia.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = MiscApi()
try {
    val result : GetRandomFoodTrivia200Response = apiInstance.getRandomFoodTrivia()
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

[**GetRandomFoodTrivia200Response**](GetRandomFoodTrivia200Response.md)

### Authorization


Configure apiKeyScheme:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="imageAnalysisByURL"></a>
# **imageAnalysisByURL**
> ImageAnalysisByURL200Response imageAnalysisByURL(imageUrl)

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
    val result : ImageAnalysisByURL200Response = apiInstance.imageAnalysisByURL(imageUrl)
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

[**ImageAnalysisByURL200Response**](ImageAnalysisByURL200Response.md)

### Authorization


Configure apiKeyScheme:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="imageClassificationByURL"></a>
# **imageClassificationByURL**
> ImageClassificationByURL200Response imageClassificationByURL(imageUrl)

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
    val result : ImageClassificationByURL200Response = apiInstance.imageClassificationByURL(imageUrl)
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

[**ImageClassificationByURL200Response**](ImageClassificationByURL200Response.md)

### Authorization


Configure apiKeyScheme:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="searchAllFood"></a>
# **searchAllFood**
> SearchAllFood200Response searchAllFood(query, offset, number)

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
    val result : SearchAllFood200Response = apiInstance.searchAllFood(query, offset, number)
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

[**SearchAllFood200Response**](SearchAllFood200Response.md)

### Authorization


Configure apiKeyScheme:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="searchCustomFoods"></a>
# **searchCustomFoods**
> SearchCustomFoods200Response searchCustomFoods(username, hash, query, offset, number)

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
    val result : SearchCustomFoods200Response = apiInstance.searchCustomFoods(username, hash, query, offset, number)
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

[**SearchCustomFoods200Response**](SearchCustomFoods200Response.md)

### Authorization


Configure apiKeyScheme:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="searchFoodVideos"></a>
# **searchFoodVideos**
> SearchFoodVideos200Response searchFoodVideos(query, type, cuisine, diet, includeIngredients, excludeIngredients, minLength, maxLength, offset, number)

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
    val result : SearchFoodVideos200Response = apiInstance.searchFoodVideos(query, type, cuisine, diet, includeIngredients, excludeIngredients, minLength, maxLength, offset, number)
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

[**SearchFoodVideos200Response**](SearchFoodVideos200Response.md)

### Authorization


Configure apiKeyScheme:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="searchSiteContent"></a>
# **searchSiteContent**
> SearchSiteContent200Response searchSiteContent(query)

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
    val result : SearchSiteContent200Response = apiInstance.searchSiteContent(query)
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

[**SearchSiteContent200Response**](SearchSiteContent200Response.md)

### Authorization


Configure apiKeyScheme:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="talkToChatbot"></a>
# **talkToChatbot**
> TalkToChatbot200Response talkToChatbot(text, contextId)

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
    val result : TalkToChatbot200Response = apiInstance.talkToChatbot(text, contextId)
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

[**TalkToChatbot200Response**](TalkToChatbot200Response.md)

### Authorization


Configure apiKeyScheme:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

