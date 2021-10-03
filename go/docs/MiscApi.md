# com.spoonacular.client\MiscApi

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DetectFoodInText**](MiscApi.md#DetectFoodInText) | **Post** /food/detect | Detect Food in Text
[**GetARandomFoodJoke**](MiscApi.md#GetARandomFoodJoke) | **Get** /food/jokes/random | Random Food Joke
[**GetConversationSuggests**](MiscApi.md#GetConversationSuggests) | **Get** /food/converse/suggest | Conversation Suggests
[**GetRandomFoodTrivia**](MiscApi.md#GetRandomFoodTrivia) | **Get** /food/trivia/random | Random Food Trivia
[**ImageAnalysisByURL**](MiscApi.md#ImageAnalysisByURL) | **Get** /food/images/analyze | Image Analysis by URL
[**ImageClassificationByURL**](MiscApi.md#ImageClassificationByURL) | **Get** /food/images/classify | Image Classification by URL
[**SearchAllFood**](MiscApi.md#SearchAllFood) | **Get** /food/search | Search All Food
[**SearchCustomFoods**](MiscApi.md#SearchCustomFoods) | **Get** /food/customFoods/search | Search Custom Foods
[**SearchFoodVideos**](MiscApi.md#SearchFoodVideos) | **Get** /food/videos/search | Search Food Videos
[**SearchSiteContent**](MiscApi.md#SearchSiteContent) | **Get** /food/site/search | Search Site Content
[**TalkToChatbot**](MiscApi.md#TalkToChatbot) | **Get** /food/converse | Talk to Chatbot



## DetectFoodInText

> InlineResponse20051 DetectFoodInText(ctx, optional)
Detect Food in Text

Take any text and find all mentions of food contained within it. This task is also called Named Entity Recognition (NER). In this case, the entities are foods. Either dishes, such as pizza or cheeseburger, or ingredients, such as cucumber or almonds.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***DetectFoodInTextOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a DetectFoodInTextOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentType** | **optional.String**| The content type. | 

### Return type

[**InlineResponse20051**](inline_response_200_51.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetARandomFoodJoke

> InlineResponse20055 GetARandomFoodJoke(ctx, )
Random Food Joke

Get a random joke that is related to food. Caution: this is an endpoint for adults!

### Required Parameters

This endpoint does not need any parameter.

### Return type

[**InlineResponse20055**](inline_response_200_55.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetConversationSuggests

> InlineResponse20057 GetConversationSuggests(ctx, query, optional)
Conversation Suggests

This endpoint returns suggestions for things the user can say or ask the chatbot.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**query** | **string**| A (partial) query from the user. The endpoint will return if it matches topics it can talk about. | 
 **optional** | ***GetConversationSuggestsOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a GetConversationSuggestsOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **number** | **optional.Float32**| The number of suggestions to return (between 1 and 25). | 

### Return type

[**InlineResponse20057**](inline_response_200_57.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetRandomFoodTrivia

> InlineResponse20055 GetRandomFoodTrivia(ctx, )
Random Food Trivia

Returns random food trivia.

### Required Parameters

This endpoint does not need any parameter.

### Return type

[**InlineResponse20055**](inline_response_200_55.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ImageAnalysisByURL

> InlineResponse20049 ImageAnalysisByURL(ctx, imageUrl)
Image Analysis by URL

Analyze a food image. The API tries to classify the image, guess the nutrition, and find a matching recipes.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**imageUrl** | **string**| The URL of the image to be analyzed. | 

### Return type

[**InlineResponse20049**](inline_response_200_49.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ImageClassificationByURL

> InlineResponse20048 ImageClassificationByURL(ctx, imageUrl)
Image Classification by URL

Classify a food image.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**imageUrl** | **string**| The URL of the image to be classified. | 

### Return type

[**InlineResponse20048**](inline_response_200_48.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SearchAllFood

> InlineResponse20053 SearchAllFood(ctx, query, optional)
Search All Food

Search all food content with one call. That includes recipes, grocery products, menu items, simple foods (ingredients), and food videos.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**query** | **string**| The search query. | 
 **optional** | ***SearchAllFoodOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a SearchAllFoodOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **offset** | **optional.Int32**| The number of results to skip (between 0 and 900). | 
 **number** | **optional.Int32**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [default to 10]

### Return type

[**InlineResponse20053**](inline_response_200_53.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SearchCustomFoods

> InlineResponse20029 SearchCustomFoods(ctx, username, hash, optional)
Search Custom Foods

Search custom foods in a user's account.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**username** | **string**| The username. | 
**hash** | **string**| The private hash for the username. | 
 **optional** | ***SearchCustomFoodsOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a SearchCustomFoodsOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **query** | **optional.String**| The (natural language) search query. | 
 **offset** | **optional.Int32**| The number of results to skip (between 0 and 900). | 
 **number** | **optional.Int32**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [default to 10]

### Return type

[**InlineResponse20029**](inline_response_200_29.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SearchFoodVideos

> InlineResponse20054 SearchFoodVideos(ctx, optional)
Search Food Videos

Find recipe and other food related videos.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***SearchFoodVideosOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a SearchFoodVideosOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **optional.String**| The (natural language) search query. | 
 **type_** | **optional.String**| The type of the recipes. See a full list of supported meal types. | 
 **cuisine** | **optional.String**| The cuisine(s) of the recipes. One or more, comma separated. See a full list of supported cuisines. | 
 **diet** | **optional.String**| The diet for which the recipes must be suitable. See a full list of supported diets. | 
 **includeIngredients** | **optional.String**| A comma-separated list of ingredients that the recipes should contain. | 
 **excludeIngredients** | **optional.String**| A comma-separated list of ingredients or ingredient types that the recipes must not contain. | 
 **minLength** | **optional.Float32**| Minimum video length in seconds. | 
 **maxLength** | **optional.Float32**| Maximum video length in seconds. | 
 **offset** | **optional.Int32**| The number of results to skip (between 0 and 900). | 
 **number** | **optional.Int32**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [default to 10]

### Return type

[**InlineResponse20054**](inline_response_200_54.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SearchSiteContent

> InlineResponse20052 SearchSiteContent(ctx, query)
Search Site Content

Search spoonacular's site content. You'll be able to find everything that you could also find using the search suggestions on spoonacular.com. This is a suggest API so you can send partial strings as queries.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**query** | **string**| The query to search for. You can also use partial queries such as \&quot;spagh\&quot; to already find spaghetti recipes, articles, grocery products, and other content. | 

### Return type

[**InlineResponse20052**](inline_response_200_52.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## TalkToChatbot

> InlineResponse20056 TalkToChatbot(ctx, text, optional)
Talk to Chatbot

This endpoint can be used to have a conversation about food with the spoonacular chatbot. Use the \"Get Conversation Suggests\" endpoint to show your user what he or she can say.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**text** | **string**| The request / question / answer from the user to the chatbot. | 
 **optional** | ***TalkToChatbotOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a TalkToChatbotOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **contextId** | **optional.String**| An arbitrary globally unique id for your conversation. The conversation can contain states so you should pass your context id if you want the bot to be able to remember the conversation. | 

### Return type

[**InlineResponse20056**](inline_response_200_56.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

