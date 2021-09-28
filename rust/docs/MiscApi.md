# com.spoonacular.client\MiscApi

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**detect_food_in_text**](MiscApi.md#detect_food_in_text) | **Post** /food/detect | Detect Food in Text
[**get_a_random_food_joke**](MiscApi.md#get_a_random_food_joke) | **Get** /food/jokes/random | Random Food Joke
[**get_conversation_suggests**](MiscApi.md#get_conversation_suggests) | **Get** /food/converse/suggest | Conversation Suggests
[**get_random_food_trivia**](MiscApi.md#get_random_food_trivia) | **Get** /food/trivia/random | Random Food Trivia
[**image_analysis_by_url**](MiscApi.md#image_analysis_by_url) | **Get** /food/images/analyze | Image Analysis by URL
[**image_classification_by_url**](MiscApi.md#image_classification_by_url) | **Get** /food/images/classify | Image Classification by URL
[**search_all_food**](MiscApi.md#search_all_food) | **Get** /food/search | Search All Food
[**search_custom_foods**](MiscApi.md#search_custom_foods) | **Get** /food/customFoods/search | Search Custom Foods
[**search_food_videos**](MiscApi.md#search_food_videos) | **Get** /food/videos/search | Search Food Videos
[**search_site_content**](MiscApi.md#search_site_content) | **Get** /food/site/search | Search Site Content
[**talk_to_chatbot**](MiscApi.md#talk_to_chatbot) | **Get** /food/converse | Talk to Chatbot



## detect_food_in_text

> ::models::InlineResponse20050 detect_food_in_text(ctx, optional)
Detect Food in Text

Take any text and find all mentions of food contained within it. This task is also called Named Entity Recognition (NER). In this case, the entities are foods. Either dishes, such as pizza or cheeseburger, or ingredients, such as cucumber or almonds.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content_type** | **String**| The content type. | 

### Return type

[**::models::InlineResponse20050**](inline_response_200_50.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_a_random_food_joke

> ::models::InlineResponse20054 get_a_random_food_joke(ctx, )
Random Food Joke

Get a random joke that is related to food. Caution: this is an endpoint for adults!

### Required Parameters

This endpoint does not need any parameter.

### Return type

[**::models::InlineResponse20054**](inline_response_200_54.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_conversation_suggests

> ::models::InlineResponse20056 get_conversation_suggests(ctx, query, optional)
Conversation Suggests

This endpoint returns suggestions for things the user can say or ask the chatbot.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **query** | **String**| A (partial) query from the user. The endpoint will return if it matches topics it can talk about. | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| A (partial) query from the user. The endpoint will return if it matches topics it can talk about. | 
 **number** | **f32**| The number of suggestions to return (between 1 and 25). | 

### Return type

[**::models::InlineResponse20056**](inline_response_200_56.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_random_food_trivia

> ::models::InlineResponse20054 get_random_food_trivia(ctx, )
Random Food Trivia

Returns random food trivia.

### Required Parameters

This endpoint does not need any parameter.

### Return type

[**::models::InlineResponse20054**](inline_response_200_54.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## image_analysis_by_url

> ::models::InlineResponse20048 image_analysis_by_url(ctx, image_url)
Image Analysis by URL

Analyze a food image. The API tries to classify the image, guess the nutrition, and find a matching recipes.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **image_url** | **String**| The URL of the image to be analyzed. | 

### Return type

[**::models::InlineResponse20048**](inline_response_200_48.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## image_classification_by_url

> ::models::InlineResponse20047 image_classification_by_url(ctx, image_url)
Image Classification by URL

Classify a food image.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **image_url** | **String**| The URL of the image to be classified. | 

### Return type

[**::models::InlineResponse20047**](inline_response_200_47.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## search_all_food

> ::models::InlineResponse20052 search_all_food(ctx, query, optional)
Search All Food

Search all food content with one call. That includes recipes, grocery products, menu items, simple foods (ingredients), and food videos.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **query** | **String**| The search query. | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The search query. | 
 **offset** | **i32**| The number of results to skip (between 0 and 900). | 
 **number** | **i32**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [default to 10]

### Return type

[**::models::InlineResponse20052**](inline_response_200_52.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## search_custom_foods

> ::models::InlineResponse20029 search_custom_foods(ctx, username, hash, optional)
Search Custom Foods

Search custom foods in a user's account.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **username** | **String**| The username. | 
  **hash** | **String**| The private hash for the username. | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | 
 **hash** | **String**| The private hash for the username. | 
 **query** | **String**| The (natural language) search query. | 
 **offset** | **i32**| The number of results to skip (between 0 and 900). | 
 **number** | **i32**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [default to 10]

### Return type

[**::models::InlineResponse20029**](inline_response_200_29.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## search_food_videos

> ::models::InlineResponse20053 search_food_videos(ctx, optional)
Search Food Videos

Find recipe and other food related videos.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The (natural language) search query. | 
 **_type** | **String**| The type of the recipes. See a full list of supported meal types. | 
 **cuisine** | **String**| The cuisine(s) of the recipes. One or more, comma separated. See a full list of supported cuisines. | 
 **diet** | **String**| The diet for which the recipes must be suitable. See a full list of supported diets. | 
 **include_ingredients** | **String**| A comma-separated list of ingredients that the recipes should contain. | 
 **exclude_ingredients** | **String**| A comma-separated list of ingredients or ingredient types that the recipes must not contain. | 
 **min_length** | **f32**| Minimum video length in seconds. | 
 **max_length** | **f32**| Maximum video length in seconds. | 
 **offset** | **i32**| The number of results to skip (between 0 and 900). | 
 **number** | **i32**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [default to 10]

### Return type

[**::models::InlineResponse20053**](inline_response_200_53.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## search_site_content

> ::models::InlineResponse20051 search_site_content(ctx, query)
Search Site Content

Search spoonacular's site content. You'll be able to find everything that you could also find using the search suggestions on spoonacular.com. This is a suggest API so you can send partial strings as queries.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **query** | **String**| The query to search for. You can also use partial queries such as \"spagh\" to already find spaghetti recipes, articles, grocery products, and other content. | 

### Return type

[**::models::InlineResponse20051**](inline_response_200_51.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## talk_to_chatbot

> ::models::InlineResponse20055 talk_to_chatbot(ctx, text, optional)
Talk to Chatbot

This endpoint can be used to have a conversation about food with the spoonacular chatbot. Use the \"Get Conversation Suggests\" endpoint to show your user what he or she can say.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **text** | **String**| The request / question / answer from the user to the chatbot. | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **String**| The request / question / answer from the user to the chatbot. | 
 **context_id** | **String**| An arbitrary globally unique id for your conversation. The conversation can contain states so you should pass your context id if you want the bot to be able to remember the conversation. | 

### Return type

[**::models::InlineResponse20055**](inline_response_200_55.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

