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
> InlineResponse20051 detectFoodInText(contentType)

Detect Food in Text

Take any text and find all mentions of food contained within it. This task is also called Named Entity Recognition (NER). In this case, the entities are foods. Either dishes, such as pizza or cheeseburger, or ingredients, such as cucumber or almonds.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiClient;
//import com.spoonacular.client.ApiException;
//import com.spoonacular.client.Configuration;
//import com.spoonacular.client.auth.*;
//import com.spoonacular.MiscApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: apiKeyScheme
ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
apiKeyScheme.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.setApiKeyPrefix("Token");

MiscApi apiInstance = new MiscApi();
String contentType = application/json; // String | The content type.
try {
    InlineResponse20051 result = apiInstance.detectFoodInText(contentType);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MiscApi#detectFoodInText");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentType** | **String**| The content type. | [optional] [enum: application/x-www-form-urlencoded, application/json, multipart/form-data]

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
```java
// Import classes:
//import com.spoonacular.client.ApiClient;
//import com.spoonacular.client.ApiException;
//import com.spoonacular.client.Configuration;
//import com.spoonacular.client.auth.*;
//import com.spoonacular.MiscApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: apiKeyScheme
ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
apiKeyScheme.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.setApiKeyPrefix("Token");

MiscApi apiInstance = new MiscApi();
try {
    InlineResponse20055 result = apiInstance.getARandomFoodJoke();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MiscApi#getARandomFoodJoke");
    e.printStackTrace();
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
```java
// Import classes:
//import com.spoonacular.client.ApiClient;
//import com.spoonacular.client.ApiException;
//import com.spoonacular.client.Configuration;
//import com.spoonacular.client.auth.*;
//import com.spoonacular.MiscApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: apiKeyScheme
ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
apiKeyScheme.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.setApiKeyPrefix("Token");

MiscApi apiInstance = new MiscApi();
String query = tell; // String | A (partial) query from the user. The endpoint will return if it matches topics it can talk about.
BigDecimal number = 5; // BigDecimal | The number of suggestions to return (between 1 and 25).
try {
    InlineResponse20057 result = apiInstance.getConversationSuggests(query, number);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MiscApi#getConversationSuggests");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| A (partial) query from the user. The endpoint will return if it matches topics it can talk about. |
 **number** | **BigDecimal**| The number of suggestions to return (between 1 and 25). | [optional]

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
```java
// Import classes:
//import com.spoonacular.client.ApiClient;
//import com.spoonacular.client.ApiException;
//import com.spoonacular.client.Configuration;
//import com.spoonacular.client.auth.*;
//import com.spoonacular.MiscApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: apiKeyScheme
ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
apiKeyScheme.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.setApiKeyPrefix("Token");

MiscApi apiInstance = new MiscApi();
try {
    InlineResponse20055 result = apiInstance.getRandomFoodTrivia();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MiscApi#getRandomFoodTrivia");
    e.printStackTrace();
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
```java
// Import classes:
//import com.spoonacular.client.ApiClient;
//import com.spoonacular.client.ApiException;
//import com.spoonacular.client.Configuration;
//import com.spoonacular.client.auth.*;
//import com.spoonacular.MiscApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: apiKeyScheme
ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
apiKeyScheme.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.setApiKeyPrefix("Token");

MiscApi apiInstance = new MiscApi();
String imageUrl = https://spoonacular.com/recipeImages/635350-240x150.jpg; // String | The URL of the image to be analyzed.
try {
    InlineResponse20049 result = apiInstance.imageAnalysisByURL(imageUrl);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MiscApi#imageAnalysisByURL");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imageUrl** | **String**| The URL of the image to be analyzed. |

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
```java
// Import classes:
//import com.spoonacular.client.ApiClient;
//import com.spoonacular.client.ApiException;
//import com.spoonacular.client.Configuration;
//import com.spoonacular.client.auth.*;
//import com.spoonacular.MiscApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: apiKeyScheme
ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
apiKeyScheme.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.setApiKeyPrefix("Token");

MiscApi apiInstance = new MiscApi();
String imageUrl = https://spoonacular.com/recipeImages/635350-240x150.jpg; // String | The URL of the image to be classified.
try {
    InlineResponse20048 result = apiInstance.imageClassificationByURL(imageUrl);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MiscApi#imageClassificationByURL");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imageUrl** | **String**| The URL of the image to be classified. |

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
```java
// Import classes:
//import com.spoonacular.client.ApiClient;
//import com.spoonacular.client.ApiException;
//import com.spoonacular.client.Configuration;
//import com.spoonacular.client.auth.*;
//import com.spoonacular.MiscApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: apiKeyScheme
ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
apiKeyScheme.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.setApiKeyPrefix("Token");

MiscApi apiInstance = new MiscApi();
String query = apple; // String | The search query.
Integer offset = 56; // Integer | The number of results to skip (between 0 and 900).
Integer number = 10; // Integer | The maximum number of items to return (between 1 and 100). Defaults to 10.
try {
    InlineResponse20053 result = apiInstance.searchAllFood(query, offset, number);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MiscApi#searchAllFood");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The search query. |
 **offset** | **Integer**| The number of results to skip (between 0 and 900). | [optional]
 **number** | **Integer**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]

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
```java
// Import classes:
//import com.spoonacular.client.ApiClient;
//import com.spoonacular.client.ApiException;
//import com.spoonacular.client.Configuration;
//import com.spoonacular.client.auth.*;
//import com.spoonacular.MiscApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: apiKeyScheme
ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
apiKeyScheme.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.setApiKeyPrefix("Token");

MiscApi apiInstance = new MiscApi();
String username = dsky; // String | The username.
String hash = 4b5v4398573406; // String | The private hash for the username.
String query = burger; // String | The (natural language) search query.
Integer offset = 56; // Integer | The number of results to skip (between 0 and 900).
Integer number = 10; // Integer | The maximum number of items to return (between 1 and 100). Defaults to 10.
try {
    InlineResponse20029 result = apiInstance.searchCustomFoods(username, hash, query, offset, number);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MiscApi#searchCustomFoods");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. |
 **hash** | **String**| The private hash for the username. |
 **query** | **String**| The (natural language) search query. | [optional]
 **offset** | **Integer**| The number of results to skip (between 0 and 900). | [optional]
 **number** | **Integer**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]

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
```java
// Import classes:
//import com.spoonacular.client.ApiClient;
//import com.spoonacular.client.ApiException;
//import com.spoonacular.client.Configuration;
//import com.spoonacular.client.auth.*;
//import com.spoonacular.MiscApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: apiKeyScheme
ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
apiKeyScheme.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.setApiKeyPrefix("Token");

MiscApi apiInstance = new MiscApi();
String query = burger; // String | The (natural language) search query.
String type = main course; // String | The type of the recipes. See a full list of supported meal types.
String cuisine = italian; // String | The cuisine(s) of the recipes. One or more, comma separated. See a full list of supported cuisines.
String diet = vegetarian; // String | The diet for which the recipes must be suitable. See a full list of supported diets.
String includeIngredients = tomato,cheese; // String | A comma-separated list of ingredients that the recipes should contain.
String excludeIngredients = eggs; // String | A comma-separated list of ingredients or ingredient types that the recipes must not contain.
BigDecimal minLength = 0; // BigDecimal | Minimum video length in seconds.
BigDecimal maxLength = 999; // BigDecimal | Maximum video length in seconds.
Integer offset = 56; // Integer | The number of results to skip (between 0 and 900).
Integer number = 10; // Integer | The maximum number of items to return (between 1 and 100). Defaults to 10.
try {
    InlineResponse20054 result = apiInstance.searchFoodVideos(query, type, cuisine, diet, includeIngredients, excludeIngredients, minLength, maxLength, offset, number);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MiscApi#searchFoodVideos");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The (natural language) search query. | [optional]
 **type** | **String**| The type of the recipes. See a full list of supported meal types. | [optional]
 **cuisine** | **String**| The cuisine(s) of the recipes. One or more, comma separated. See a full list of supported cuisines. | [optional]
 **diet** | **String**| The diet for which the recipes must be suitable. See a full list of supported diets. | [optional]
 **includeIngredients** | **String**| A comma-separated list of ingredients that the recipes should contain. | [optional]
 **excludeIngredients** | **String**| A comma-separated list of ingredients or ingredient types that the recipes must not contain. | [optional]
 **minLength** | **BigDecimal**| Minimum video length in seconds. | [optional]
 **maxLength** | **BigDecimal**| Maximum video length in seconds. | [optional]
 **offset** | **Integer**| The number of results to skip (between 0 and 900). | [optional]
 **number** | **Integer**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]

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
```java
// Import classes:
//import com.spoonacular.client.ApiClient;
//import com.spoonacular.client.ApiException;
//import com.spoonacular.client.Configuration;
//import com.spoonacular.client.auth.*;
//import com.spoonacular.MiscApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: apiKeyScheme
ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
apiKeyScheme.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.setApiKeyPrefix("Token");

MiscApi apiInstance = new MiscApi();
String query = past; // String | The query to search for. You can also use partial queries such as \"spagh\" to already find spaghetti recipes, articles, grocery products, and other content.
try {
    InlineResponse20052 result = apiInstance.searchSiteContent(query);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MiscApi#searchSiteContent");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The query to search for. You can also use partial queries such as \&quot;spagh\&quot; to already find spaghetti recipes, articles, grocery products, and other content. |

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
```java
// Import classes:
//import com.spoonacular.client.ApiClient;
//import com.spoonacular.client.ApiException;
//import com.spoonacular.client.Configuration;
//import com.spoonacular.client.auth.*;
//import com.spoonacular.MiscApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: apiKeyScheme
ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
apiKeyScheme.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.setApiKeyPrefix("Token");

MiscApi apiInstance = new MiscApi();
String text = donut recipes; // String | The request / question / answer from the user to the chatbot.
String contextId = 342938; // String | An arbitrary globally unique id for your conversation. The conversation can contain states so you should pass your context id if you want the bot to be able to remember the conversation.
try {
    InlineResponse20056 result = apiInstance.talkToChatbot(text, contextId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MiscApi#talkToChatbot");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **String**| The request / question / answer from the user to the chatbot. |
 **contextId** | **String**| An arbitrary globally unique id for your conversation. The conversation can contain states so you should pass your context id if you want the bot to be able to remember the conversation. | [optional]

### Return type

[**InlineResponse20056**](InlineResponse20056.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

