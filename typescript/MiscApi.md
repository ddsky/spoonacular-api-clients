# .MiscApi

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


# **detectFoodInText**
> DetectFoodInText200Response detectFoodInText()

Take any text and find all mentions of food contained within it. This task is also called Named Entity Recognition (NER). In this case, the entities are foods. Either dishes, such as pizza or cheeseburger, or ingredients, such as cucumber or almonds.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .MiscApi(configuration);

let body:.MiscApiDetectFoodInTextRequest = {
  // 'application/x-www-form-urlencoded' | 'application/json' | 'multipart/form-data' | The content type. (optional)
  contentType: "application/json",
};

apiInstance.detectFoodInText(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentType** | [**&#39;application/x-www-form-urlencoded&#39; | &#39;application/json&#39; | &#39;multipart/form-data&#39;**]**Array<&#39;application/x-www-form-urlencoded&#39; &#124; &#39;application/json&#39; &#124; &#39;multipart/form-data&#39;>** | The content type. | (optional) defaults to undefined


### Return type

**DetectFoodInText200Response**

### Authorization

[apiKeyScheme](README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **getARandomFoodJoke**
> GetARandomFoodJoke200Response getARandomFoodJoke()

Get a random joke that is related to food. Caution: this is an endpoint for adults!

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .MiscApi(configuration);

let body:any = {};

apiInstance.getARandomFoodJoke(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters
This endpoint does not need any parameter.


### Return type

**GetARandomFoodJoke200Response**

### Authorization

[apiKeyScheme](README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **getConversationSuggests**
> GetConversationSuggests200Response getConversationSuggests()

This endpoint returns suggestions for things the user can say or ask the chatbot.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .MiscApi(configuration);

let body:.MiscApiGetConversationSuggestsRequest = {
  // string | A (partial) query from the user. The endpoint will return if it matches topics it can talk about.
  query: "tell",
  // number | The number of suggestions to return (between 1 and 25). (optional)
  number: 5,
};

apiInstance.getConversationSuggests(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | [**string**] | A (partial) query from the user. The endpoint will return if it matches topics it can talk about. | defaults to undefined
 **number** | [**number**] | The number of suggestions to return (between 1 and 25). | (optional) defaults to undefined


### Return type

**GetConversationSuggests200Response**

### Authorization

[apiKeyScheme](README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **getRandomFoodTrivia**
> GetRandomFoodTrivia200Response getRandomFoodTrivia()

Returns random food trivia.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .MiscApi(configuration);

let body:any = {};

apiInstance.getRandomFoodTrivia(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters
This endpoint does not need any parameter.


### Return type

**GetRandomFoodTrivia200Response**

### Authorization

[apiKeyScheme](README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **imageAnalysisByURL**
> ImageAnalysisByURL200Response imageAnalysisByURL()

Analyze a food image. The API tries to classify the image, guess the nutrition, and find a matching recipes.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .MiscApi(configuration);

let body:.MiscApiImageAnalysisByURLRequest = {
  // string | The URL of the image to be analyzed.
  imageUrl: "https://spoonacular.com/recipeImages/635350-240x150.jpg",
};

apiInstance.imageAnalysisByURL(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imageUrl** | [**string**] | The URL of the image to be analyzed. | defaults to undefined


### Return type

**ImageAnalysisByURL200Response**

### Authorization

[apiKeyScheme](README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **imageClassificationByURL**
> ImageClassificationByURL200Response imageClassificationByURL()

Classify a food image.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .MiscApi(configuration);

let body:.MiscApiImageClassificationByURLRequest = {
  // string | The URL of the image to be classified.
  imageUrl: "https://spoonacular.com/recipeImages/635350-240x150.jpg",
};

apiInstance.imageClassificationByURL(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imageUrl** | [**string**] | The URL of the image to be classified. | defaults to undefined


### Return type

**ImageClassificationByURL200Response**

### Authorization

[apiKeyScheme](README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **searchAllFood**
> SearchAllFood200Response searchAllFood()

Search all food content with one call. That includes recipes, grocery products, menu items, simple foods (ingredients), and food videos.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .MiscApi(configuration);

let body:.MiscApiSearchAllFoodRequest = {
  // string | The search query.
  query: "apple",
  // number | The number of results to skip (between 0 and 900). (optional)
  offset: 0,
  // number | The maximum number of items to return (between 1 and 100). Defaults to 10. (optional)
  number: 10,
};

apiInstance.searchAllFood(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | [**string**] | The search query. | defaults to undefined
 **offset** | [**number**] | The number of results to skip (between 0 and 900). | (optional) defaults to undefined
 **number** | [**number**] | The maximum number of items to return (between 1 and 100). Defaults to 10. | (optional) defaults to 10


### Return type

**SearchAllFood200Response**

### Authorization

[apiKeyScheme](README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **searchCustomFoods**
> SearchCustomFoods200Response searchCustomFoods()

Search custom foods in a user's account.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .MiscApi(configuration);

let body:.MiscApiSearchCustomFoodsRequest = {
  // string | The username.
  username: "dsky",
  // string | The private hash for the username.
  hash: "4b5v4398573406",
  // string | The (natural language) search query. (optional)
  query: "burger",
  // number | The number of results to skip (between 0 and 900). (optional)
  offset: 0,
  // number | The maximum number of items to return (between 1 and 100). Defaults to 10. (optional)
  number: 10,
};

apiInstance.searchCustomFoods(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | [**string**] | The username. | defaults to undefined
 **hash** | [**string**] | The private hash for the username. | defaults to undefined
 **query** | [**string**] | The (natural language) search query. | (optional) defaults to undefined
 **offset** | [**number**] | The number of results to skip (between 0 and 900). | (optional) defaults to undefined
 **number** | [**number**] | The maximum number of items to return (between 1 and 100). Defaults to 10. | (optional) defaults to 10


### Return type

**SearchCustomFoods200Response**

### Authorization

[apiKeyScheme](README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **searchFoodVideos**
> SearchFoodVideos200Response searchFoodVideos()

Find recipe and other food related videos.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .MiscApi(configuration);

let body:.MiscApiSearchFoodVideosRequest = {
  // string | The (natural language) search query. (optional)
  query: "burger",
  // string | The type of the recipes. See a full list of supported meal types. (optional)
  type: "main course",
  // string | The cuisine(s) of the recipes. One or more, comma separated. See a full list of supported cuisines. (optional)
  cuisine: "italian",
  // string | The diet for which the recipes must be suitable. See a full list of supported diets. (optional)
  diet: "vegetarian",
  // string | A comma-separated list of ingredients that the recipes should contain. (optional)
  includeIngredients: "tomato,cheese",
  // string | A comma-separated list of ingredients or ingredient types that the recipes must not contain. (optional)
  excludeIngredients: "eggs",
  // number | Minimum video length in seconds. (optional)
  minLength: 0,
  // number | Maximum video length in seconds. (optional)
  maxLength: 999,
  // number | The number of results to skip (between 0 and 900). (optional)
  offset: 0,
  // number | The maximum number of items to return (between 1 and 100). Defaults to 10. (optional)
  number: 10,
};

apiInstance.searchFoodVideos(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | [**string**] | The (natural language) search query. | (optional) defaults to undefined
 **type** | [**string**] | The type of the recipes. See a full list of supported meal types. | (optional) defaults to undefined
 **cuisine** | [**string**] | The cuisine(s) of the recipes. One or more, comma separated. See a full list of supported cuisines. | (optional) defaults to undefined
 **diet** | [**string**] | The diet for which the recipes must be suitable. See a full list of supported diets. | (optional) defaults to undefined
 **includeIngredients** | [**string**] | A comma-separated list of ingredients that the recipes should contain. | (optional) defaults to undefined
 **excludeIngredients** | [**string**] | A comma-separated list of ingredients or ingredient types that the recipes must not contain. | (optional) defaults to undefined
 **minLength** | [**number**] | Minimum video length in seconds. | (optional) defaults to undefined
 **maxLength** | [**number**] | Maximum video length in seconds. | (optional) defaults to undefined
 **offset** | [**number**] | The number of results to skip (between 0 and 900). | (optional) defaults to undefined
 **number** | [**number**] | The maximum number of items to return (between 1 and 100). Defaults to 10. | (optional) defaults to 10


### Return type

**SearchFoodVideos200Response**

### Authorization

[apiKeyScheme](README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **searchSiteContent**
> SearchSiteContent200Response searchSiteContent()

Search spoonacular's site content. You'll be able to find everything that you could also find using the search suggestions on spoonacular.com. This is a suggest API so you can send partial strings as queries.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .MiscApi(configuration);

let body:.MiscApiSearchSiteContentRequest = {
  // string | The query to search for. You can also use partial queries such as \"spagh\" to already find spaghetti recipes, articles, grocery products, and other content.
  query: "past",
};

apiInstance.searchSiteContent(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | [**string**] | The query to search for. You can also use partial queries such as \&quot;spagh\&quot; to already find spaghetti recipes, articles, grocery products, and other content. | defaults to undefined


### Return type

**SearchSiteContent200Response**

### Authorization

[apiKeyScheme](README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **talkToChatbot**
> TalkToChatbot200Response talkToChatbot()

This endpoint can be used to have a conversation about food with the spoonacular chatbot. Use the \"Get Conversation Suggests\" endpoint to show your user what he or she can say.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .MiscApi(configuration);

let body:.MiscApiTalkToChatbotRequest = {
  // string | The request / question / answer from the user to the chatbot.
  text: "donut recipes",
  // string | An arbitrary globally unique id for your conversation. The conversation can contain states so you should pass your context id if you want the bot to be able to remember the conversation. (optional)
  contextId: "342938",
};

apiInstance.talkToChatbot(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | [**string**] | The request / question / answer from the user to the chatbot. | defaults to undefined
 **contextId** | [**string**] | An arbitrary globally unique id for your conversation. The conversation can contain states so you should pass your context id if you want the bot to be able to remember the conversation. | (optional) defaults to undefined


### Return type

**TalkToChatbot200Response**

### Authorization

[apiKeyScheme](README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)


