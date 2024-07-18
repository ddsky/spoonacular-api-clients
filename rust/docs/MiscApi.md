# \MiscApi

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**detect_food_in_text**](MiscApi.md#detect_food_in_text) | **POST** /food/detect | Detect Food in Text
[**get_a_random_food_joke**](MiscApi.md#get_a_random_food_joke) | **GET** /food/jokes/random | Random Food Joke
[**get_conversation_suggests**](MiscApi.md#get_conversation_suggests) | **GET** /food/converse/suggest | Conversation Suggests
[**get_random_food_trivia**](MiscApi.md#get_random_food_trivia) | **GET** /food/trivia/random | Random Food Trivia
[**image_analysis_by_url**](MiscApi.md#image_analysis_by_url) | **GET** /food/images/analyze | Image Analysis by URL
[**image_classification_by_url**](MiscApi.md#image_classification_by_url) | **GET** /food/images/classify | Image Classification by URL
[**search_all_food**](MiscApi.md#search_all_food) | **GET** /food/search | Search All Food
[**search_custom_foods**](MiscApi.md#search_custom_foods) | **GET** /food/customFoods/search | Search Custom Foods
[**search_food_videos**](MiscApi.md#search_food_videos) | **GET** /food/videos/search | Search Food Videos
[**search_site_content**](MiscApi.md#search_site_content) | **GET** /food/site/search | Search Site Content
[**talk_to_chatbot**](MiscApi.md#talk_to_chatbot) | **GET** /food/converse | Talk to Chatbot



## detect_food_in_text

> models::DetectFoodInText200Response detect_food_in_text(text)
Detect Food in Text

Take any text and find all mentions of food contained within it. This task is also called Named Entity Recognition (NER). In this case, the entities are foods. Either dishes, such as pizza or cheeseburger, or ingredients, such as cucumber or almonds.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**text** | **String** |  | [required] |

### Return type

[**models::DetectFoodInText200Response**](detectFoodInText_200_response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_a_random_food_joke

> models::GetARandomFoodJoke200Response get_a_random_food_joke()
Random Food Joke

Get a random joke that is related to food. Caution: this is an endpoint for adults!

### Parameters

This endpoint does not need any parameter.

### Return type

[**models::GetARandomFoodJoke200Response**](getARandomFoodJoke_200_response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_conversation_suggests

> models::GetConversationSuggests200Response get_conversation_suggests(query, number)
Conversation Suggests

This endpoint returns suggestions for things the user can say or ask the chatbot.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**query** | **String** | A (partial) query from the user. The endpoint will return if it matches topics it can talk about. | [required] |
**number** | Option<**f64**> | The number of suggestions to return (between 1 and 25). |  |

### Return type

[**models::GetConversationSuggests200Response**](getConversationSuggests_200_response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_random_food_trivia

> models::GetARandomFoodJoke200Response get_random_food_trivia()
Random Food Trivia

Returns random food trivia.

### Parameters

This endpoint does not need any parameter.

### Return type

[**models::GetARandomFoodJoke200Response**](getARandomFoodJoke_200_response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## image_analysis_by_url

> models::ImageAnalysisByUrl200Response image_analysis_by_url(image_url)
Image Analysis by URL

Analyze a food image. The API tries to classify the image, guess the nutrition, and find a matching recipes.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**image_url** | **String** | The URL of the image to be analyzed. | [required] |

### Return type

[**models::ImageAnalysisByUrl200Response**](imageAnalysisByURL_200_response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## image_classification_by_url

> models::ImageClassificationByUrl200Response image_classification_by_url(image_url)
Image Classification by URL

Classify a food image.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**image_url** | **String** | The URL of the image to be classified. | [required] |

### Return type

[**models::ImageClassificationByUrl200Response**](imageClassificationByURL_200_response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## search_all_food

> models::SearchAllFood200Response search_all_food(query, offset, number)
Search All Food

Search all food content with one call. That includes recipes, grocery products, menu items, simple foods (ingredients), and food videos.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**query** | **String** | The search query. | [required] |
**offset** | Option<**i32**> | The number of results to skip (between 0 and 900). |  |
**number** | Option<**i32**> | The maximum number of items to return (between 1 and 100). Defaults to 10. |  |[default to 10]

### Return type

[**models::SearchAllFood200Response**](searchAllFood_200_response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## search_custom_foods

> models::SearchCustomFoods200Response search_custom_foods(query, username, hash, offset, number)
Search Custom Foods

Search custom foods in a user's account.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**query** | **String** | The (natural language) search query. | [required] |
**username** | **String** | The username. | [required] |
**hash** | **String** | The private hash for the username. | [required] |
**offset** | Option<**i32**> | The number of results to skip (between 0 and 900). |  |
**number** | Option<**i32**> | The maximum number of items to return (between 1 and 100). Defaults to 10. |  |[default to 10]

### Return type

[**models::SearchCustomFoods200Response**](searchCustomFoods_200_response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## search_food_videos

> models::SearchFoodVideos200Response search_food_videos(query, r#type, cuisine, diet, include_ingredients, exclude_ingredients, min_length, max_length, offset, number)
Search Food Videos

Find recipe and other food related videos.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**query** | **String** | The (natural language) search query. | [required] |
**r#type** | Option<**String**> | The type of the recipes. See a full list of supported meal types. |  |
**cuisine** | Option<**String**> | The cuisine(s) of the recipes. One or more, comma separated. See a full list of supported cuisines. |  |
**diet** | Option<**String**> | The diet for which the recipes must be suitable. See a full list of supported diets. |  |
**include_ingredients** | Option<**String**> | A comma-separated list of ingredients that the recipes should contain. |  |
**exclude_ingredients** | Option<**String**> | A comma-separated list of ingredients or ingredient types that the recipes must not contain. |  |
**min_length** | Option<**f64**> | Minimum video length in seconds. |  |
**max_length** | Option<**f64**> | Maximum video length in seconds. |  |
**offset** | Option<**i32**> | The number of results to skip (between 0 and 900). |  |
**number** | Option<**i32**> | The maximum number of items to return (between 1 and 100). Defaults to 10. |  |[default to 10]

### Return type

[**models::SearchFoodVideos200Response**](searchFoodVideos_200_response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## search_site_content

> models::SearchSiteContent200Response search_site_content(query)
Search Site Content

Search spoonacular's site content. You'll be able to find everything that you could also find using the search suggestions on spoonacular.com. This is a suggest API so you can send partial strings as queries.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**query** | **String** | The query to search for. You can also use partial queries such as \"spagh\" to already find spaghetti recipes, articles, grocery products, and other content. | [required] |

### Return type

[**models::SearchSiteContent200Response**](searchSiteContent_200_response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## talk_to_chatbot

> models::TalkToChatbot200Response talk_to_chatbot(text, context_id)
Talk to Chatbot

This endpoint can be used to have a conversation about food with the spoonacular chatbot. Use the \"Get Conversation Suggests\" endpoint to show your user what he or she can say.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**text** | **String** | The request / question / answer from the user to the chatbot. | [required] |
**context_id** | Option<**String**> | An arbitrary globally unique id for your conversation. The conversation can contain states so you should pass your context id if you want the bot to be able to remember the conversation. |  |

### Return type

[**models::TalkToChatbot200Response**](talkToChatbot_200_response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

