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



## detectFoodInText

> DetectFoodInText200Response detectFoodInText(contentType)

Detect Food in Text

Take any text and find all mentions of food contained within it. This task is also called Named Entity Recognition (NER). In this case, the entities are foods. Either dishes, such as pizza or cheeseburger, or ingredients, such as cucumber or almonds.

### Example

```java
// Import classes:
//import com.spoonacular.MiscApi;

MiscApi apiInstance = new MiscApi();
String contentType = application/json; // String | The content type.
try {
    DetectFoodInText200Response result = apiInstance.detectFoodInText(contentType);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MiscApi#detectFoodInText");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentType** | **String**| The content type. | [optional] [default to null] [enum: application/x-www-form-urlencoded, application/json, multipart/form-data]

### Return type

[**DetectFoodInText200Response**](DetectFoodInText200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## getARandomFoodJoke

> GetARandomFoodJoke200Response getARandomFoodJoke()

Random Food Joke

Get a random joke that is related to food. Caution: this is an endpoint for adults!

### Example

```java
// Import classes:
//import com.spoonacular.MiscApi;

MiscApi apiInstance = new MiscApi();
try {
    GetARandomFoodJoke200Response result = apiInstance.getARandomFoodJoke();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MiscApi#getARandomFoodJoke");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetARandomFoodJoke200Response**](GetARandomFoodJoke200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getConversationSuggests

> GetConversationSuggests200Response getConversationSuggests(query, number)

Conversation Suggests

This endpoint returns suggestions for things the user can say or ask the chatbot.

### Example

```java
// Import classes:
//import com.spoonacular.MiscApi;

MiscApi apiInstance = new MiscApi();
String query = tell; // String | A (partial) query from the user. The endpoint will return if it matches topics it can talk about.
BigDecimal number = 5; // BigDecimal | The number of suggestions to return (between 1 and 25).
try {
    GetConversationSuggests200Response result = apiInstance.getConversationSuggests(query, number);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MiscApi#getConversationSuggests");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| A (partial) query from the user. The endpoint will return if it matches topics it can talk about. | [default to null]
 **number** | **BigDecimal**| The number of suggestions to return (between 1 and 25). | [optional] [default to null]

### Return type

[**GetConversationSuggests200Response**](GetConversationSuggests200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getRandomFoodTrivia

> GetRandomFoodTrivia200Response getRandomFoodTrivia()

Random Food Trivia

Returns random food trivia.

### Example

```java
// Import classes:
//import com.spoonacular.MiscApi;

MiscApi apiInstance = new MiscApi();
try {
    GetRandomFoodTrivia200Response result = apiInstance.getRandomFoodTrivia();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MiscApi#getRandomFoodTrivia");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetRandomFoodTrivia200Response**](GetRandomFoodTrivia200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## imageAnalysisByURL

> ImageAnalysisByURL200Response imageAnalysisByURL(imageUrl)

Image Analysis by URL

Analyze a food image. The API tries to classify the image, guess the nutrition, and find a matching recipes.

### Example

```java
// Import classes:
//import com.spoonacular.MiscApi;

MiscApi apiInstance = new MiscApi();
String imageUrl = https://spoonacular.com/recipeImages/635350-240x150.jpg; // String | The URL of the image to be analyzed.
try {
    ImageAnalysisByURL200Response result = apiInstance.imageAnalysisByURL(imageUrl);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MiscApi#imageAnalysisByURL");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imageUrl** | **String**| The URL of the image to be analyzed. | [default to null]

### Return type

[**ImageAnalysisByURL200Response**](ImageAnalysisByURL200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## imageClassificationByURL

> ImageClassificationByURL200Response imageClassificationByURL(imageUrl)

Image Classification by URL

Classify a food image.

### Example

```java
// Import classes:
//import com.spoonacular.MiscApi;

MiscApi apiInstance = new MiscApi();
String imageUrl = https://spoonacular.com/recipeImages/635350-240x150.jpg; // String | The URL of the image to be classified.
try {
    ImageClassificationByURL200Response result = apiInstance.imageClassificationByURL(imageUrl);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MiscApi#imageClassificationByURL");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imageUrl** | **String**| The URL of the image to be classified. | [default to null]

### Return type

[**ImageClassificationByURL200Response**](ImageClassificationByURL200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## searchAllFood

> SearchAllFood200Response searchAllFood(query, offset, number)

Search All Food

Search all food content with one call. That includes recipes, grocery products, menu items, simple foods (ingredients), and food videos.

### Example

```java
// Import classes:
//import com.spoonacular.MiscApi;

MiscApi apiInstance = new MiscApi();
String query = apple; // String | The search query.
Integer offset = null; // Integer | The number of results to skip (between 0 and 900).
Integer number = 10; // Integer | The maximum number of items to return (between 1 and 100). Defaults to 10.
try {
    SearchAllFood200Response result = apiInstance.searchAllFood(query, offset, number);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MiscApi#searchAllFood");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The search query. | [default to null]
 **offset** | **Integer**| The number of results to skip (between 0 and 900). | [optional] [default to null]
 **number** | **Integer**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]

### Return type

[**SearchAllFood200Response**](SearchAllFood200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## searchCustomFoods

> SearchCustomFoods200Response searchCustomFoods(username, hash, query, offset, number)

Search Custom Foods

Search custom foods in a user&#39;s account.

### Example

```java
// Import classes:
//import com.spoonacular.MiscApi;

MiscApi apiInstance = new MiscApi();
String username = dsky; // String | The username.
String hash = 4b5v4398573406; // String | The private hash for the username.
String query = burger; // String | The (natural language) search query.
Integer offset = null; // Integer | The number of results to skip (between 0 and 900).
Integer number = 10; // Integer | The maximum number of items to return (between 1 and 100). Defaults to 10.
try {
    SearchCustomFoods200Response result = apiInstance.searchCustomFoods(username, hash, query, offset, number);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MiscApi#searchCustomFoods");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | [default to null]
 **hash** | **String**| The private hash for the username. | [default to null]
 **query** | **String**| The (natural language) search query. | [optional] [default to null]
 **offset** | **Integer**| The number of results to skip (between 0 and 900). | [optional] [default to null]
 **number** | **Integer**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]

### Return type

[**SearchCustomFoods200Response**](SearchCustomFoods200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## searchFoodVideos

> SearchFoodVideos200Response searchFoodVideos(query, type, cuisine, diet, includeIngredients, excludeIngredients, minLength, maxLength, offset, number)

Search Food Videos

Find recipe and other food related videos.

### Example

```java
// Import classes:
//import com.spoonacular.MiscApi;

MiscApi apiInstance = new MiscApi();
String query = burger; // String | The (natural language) search query.
String type = main course; // String | The type of the recipes. See a full list of supported meal types.
String cuisine = italian; // String | The cuisine(s) of the recipes. One or more, comma separated. See a full list of supported cuisines.
String diet = vegetarian; // String | The diet for which the recipes must be suitable. See a full list of supported diets.
String includeIngredients = tomato,cheese; // String | A comma-separated list of ingredients that the recipes should contain.
String excludeIngredients = eggs; // String | A comma-separated list of ingredients or ingredient types that the recipes must not contain.
BigDecimal minLength = 0; // BigDecimal | Minimum video length in seconds.
BigDecimal maxLength = 999; // BigDecimal | Maximum video length in seconds.
Integer offset = null; // Integer | The number of results to skip (between 0 and 900).
Integer number = 10; // Integer | The maximum number of items to return (between 1 and 100). Defaults to 10.
try {
    SearchFoodVideos200Response result = apiInstance.searchFoodVideos(query, type, cuisine, diet, includeIngredients, excludeIngredients, minLength, maxLength, offset, number);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MiscApi#searchFoodVideos");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The (natural language) search query. | [optional] [default to null]
 **type** | **String**| The type of the recipes. See a full list of supported meal types. | [optional] [default to null]
 **cuisine** | **String**| The cuisine(s) of the recipes. One or more, comma separated. See a full list of supported cuisines. | [optional] [default to null]
 **diet** | **String**| The diet for which the recipes must be suitable. See a full list of supported diets. | [optional] [default to null]
 **includeIngredients** | **String**| A comma-separated list of ingredients that the recipes should contain. | [optional] [default to null]
 **excludeIngredients** | **String**| A comma-separated list of ingredients or ingredient types that the recipes must not contain. | [optional] [default to null]
 **minLength** | **BigDecimal**| Minimum video length in seconds. | [optional] [default to null]
 **maxLength** | **BigDecimal**| Maximum video length in seconds. | [optional] [default to null]
 **offset** | **Integer**| The number of results to skip (between 0 and 900). | [optional] [default to null]
 **number** | **Integer**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]

### Return type

[**SearchFoodVideos200Response**](SearchFoodVideos200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## searchSiteContent

> SearchSiteContent200Response searchSiteContent(query)

Search Site Content

Search spoonacular&#39;s site content. You&#39;ll be able to find everything that you could also find using the search suggestions on spoonacular.com. This is a suggest API so you can send partial strings as queries.

### Example

```java
// Import classes:
//import com.spoonacular.MiscApi;

MiscApi apiInstance = new MiscApi();
String query = past; // String | The query to search for. You can also use partial queries such as \"spagh\" to already find spaghetti recipes, articles, grocery products, and other content.
try {
    SearchSiteContent200Response result = apiInstance.searchSiteContent(query);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MiscApi#searchSiteContent");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The query to search for. You can also use partial queries such as \&quot;spagh\&quot; to already find spaghetti recipes, articles, grocery products, and other content. | [default to null]

### Return type

[**SearchSiteContent200Response**](SearchSiteContent200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## talkToChatbot

> TalkToChatbot200Response talkToChatbot(text, contextId)

Talk to Chatbot

This endpoint can be used to have a conversation about food with the spoonacular chatbot. Use the \&quot;Get Conversation Suggests\&quot; endpoint to show your user what he or she can say.

### Example

```java
// Import classes:
//import com.spoonacular.MiscApi;

MiscApi apiInstance = new MiscApi();
String text = donut recipes; // String | The request / question / answer from the user to the chatbot.
String contextId = 342938; // String | An arbitrary globally unique id for your conversation. The conversation can contain states so you should pass your context id if you want the bot to be able to remember the conversation.
try {
    TalkToChatbot200Response result = apiInstance.talkToChatbot(text, contextId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MiscApi#talkToChatbot");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **String**| The request / question / answer from the user to the chatbot. | [default to null]
 **contextId** | **String**| An arbitrary globally unique id for your conversation. The conversation can contain states so you should pass your context id if you want the bot to be able to remember the conversation. | [optional] [default to null]

### Return type

[**TalkToChatbot200Response**](TalkToChatbot200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

