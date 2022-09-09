# com.spoonacular.MiscApi

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DetectFoodInText**](MiscApi.md#detectfoodintext) | **POST** /food/detect | Detect Food in Text
[**GetARandomFoodJoke**](MiscApi.md#getarandomfoodjoke) | **GET** /food/jokes/random | Random Food Joke
[**GetConversationSuggests**](MiscApi.md#getconversationsuggests) | **GET** /food/converse/suggest | Conversation Suggests
[**GetRandomFoodTrivia**](MiscApi.md#getrandomfoodtrivia) | **GET** /food/trivia/random | Random Food Trivia
[**ImageAnalysisByURL**](MiscApi.md#imageanalysisbyurl) | **GET** /food/images/analyze | Image Analysis by URL
[**ImageClassificationByURL**](MiscApi.md#imageclassificationbyurl) | **GET** /food/images/classify | Image Classification by URL
[**SearchAllFood**](MiscApi.md#searchallfood) | **GET** /food/search | Search All Food
[**SearchCustomFoods**](MiscApi.md#searchcustomfoods) | **GET** /food/customFoods/search | Search Custom Foods
[**SearchFoodVideos**](MiscApi.md#searchfoodvideos) | **GET** /food/videos/search | Search Food Videos
[**SearchSiteContent**](MiscApi.md#searchsitecontent) | **GET** /food/site/search | Search Site Content
[**TalkToChatbot**](MiscApi.md#talktochatbot) | **GET** /food/converse | Talk to Chatbot


<a name="detectfoodintext"></a>
# **DetectFoodInText**
> DetectFoodInText200Response DetectFoodInText (string contentType)

Detect Food in Text

Take any text and find all mentions of food contained within it. This task is also called Named Entity Recognition (NER). In this case, the entities are foods. Either dishes, such as pizza or cheeseburger, or ingredients, such as cucumber or almonds.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class DetectFoodInTextExample
    {
        public void main()
        {
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("x-api-key", "Bearer");

            var apiInstance = new MiscApi();
            var contentType = application/json;  // string | The content type. (optional) 

            try
            {
                // Detect Food in Text
                DetectFoodInText200Response result = apiInstance.DetectFoodInText(contentType);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling MiscApi.DetectFoodInText: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentType** | **string**| The content type. | [optional] 

### Return type

[**DetectFoodInText200Response**](DetectFoodInText200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getarandomfoodjoke"></a>
# **GetARandomFoodJoke**
> GetARandomFoodJoke200Response GetARandomFoodJoke ()

Random Food Joke

Get a random joke that is related to food. Caution: this is an endpoint for adults!

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class GetARandomFoodJokeExample
    {
        public void main()
        {
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("x-api-key", "Bearer");

            var apiInstance = new MiscApi();

            try
            {
                // Random Food Joke
                GetARandomFoodJoke200Response result = apiInstance.GetARandomFoodJoke();
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling MiscApi.GetARandomFoodJoke: " + e.Message );
            }
        }
    }
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getconversationsuggests"></a>
# **GetConversationSuggests**
> GetConversationSuggests200Response GetConversationSuggests (string query, decimal? number)

Conversation Suggests

This endpoint returns suggestions for things the user can say or ask the chatbot.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class GetConversationSuggestsExample
    {
        public void main()
        {
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("x-api-key", "Bearer");

            var apiInstance = new MiscApi();
            var query = tell;  // string | A (partial) query from the user. The endpoint will return if it matches topics it can talk about.
            var number = 5;  // decimal? | The number of suggestions to return (between 1 and 25). (optional) 

            try
            {
                // Conversation Suggests
                GetConversationSuggests200Response result = apiInstance.GetConversationSuggests(query, number);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling MiscApi.GetConversationSuggests: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| A (partial) query from the user. The endpoint will return if it matches topics it can talk about. | 
 **number** | **decimal?**| The number of suggestions to return (between 1 and 25). | [optional] 

### Return type

[**GetConversationSuggests200Response**](GetConversationSuggests200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getrandomfoodtrivia"></a>
# **GetRandomFoodTrivia**
> GetRandomFoodTrivia200Response GetRandomFoodTrivia ()

Random Food Trivia

Returns random food trivia.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class GetRandomFoodTriviaExample
    {
        public void main()
        {
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("x-api-key", "Bearer");

            var apiInstance = new MiscApi();

            try
            {
                // Random Food Trivia
                GetRandomFoodTrivia200Response result = apiInstance.GetRandomFoodTrivia();
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling MiscApi.GetRandomFoodTrivia: " + e.Message );
            }
        }
    }
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="imageanalysisbyurl"></a>
# **ImageAnalysisByURL**
> ImageAnalysisByURL200Response ImageAnalysisByURL (string imageUrl)

Image Analysis by URL

Analyze a food image. The API tries to classify the image, guess the nutrition, and find a matching recipes.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class ImageAnalysisByURLExample
    {
        public void main()
        {
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("x-api-key", "Bearer");

            var apiInstance = new MiscApi();
            var imageUrl = https://spoonacular.com/recipeImages/635350-240x150.jpg;  // string | The URL of the image to be analyzed.

            try
            {
                // Image Analysis by URL
                ImageAnalysisByURL200Response result = apiInstance.ImageAnalysisByURL(imageUrl);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling MiscApi.ImageAnalysisByURL: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imageUrl** | **string**| The URL of the image to be analyzed. | 

### Return type

[**ImageAnalysisByURL200Response**](ImageAnalysisByURL200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="imageclassificationbyurl"></a>
# **ImageClassificationByURL**
> ImageClassificationByURL200Response ImageClassificationByURL (string imageUrl)

Image Classification by URL

Classify a food image.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class ImageClassificationByURLExample
    {
        public void main()
        {
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("x-api-key", "Bearer");

            var apiInstance = new MiscApi();
            var imageUrl = https://spoonacular.com/recipeImages/635350-240x150.jpg;  // string | The URL of the image to be classified.

            try
            {
                // Image Classification by URL
                ImageClassificationByURL200Response result = apiInstance.ImageClassificationByURL(imageUrl);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling MiscApi.ImageClassificationByURL: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imageUrl** | **string**| The URL of the image to be classified. | 

### Return type

[**ImageClassificationByURL200Response**](ImageClassificationByURL200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="searchallfood"></a>
# **SearchAllFood**
> SearchAllFood200Response SearchAllFood (string query, int? offset, int? number)

Search All Food

Search all food content with one call. That includes recipes, grocery products, menu items, simple foods (ingredients), and food videos.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class SearchAllFoodExample
    {
        public void main()
        {
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("x-api-key", "Bearer");

            var apiInstance = new MiscApi();
            var query = apple;  // string | The search query.
            var offset = 56;  // int? | The number of results to skip (between 0 and 900). (optional) 
            var number = 10;  // int? | The maximum number of items to return (between 1 and 100). Defaults to 10. (optional)  (default to 10)

            try
            {
                // Search All Food
                SearchAllFood200Response result = apiInstance.SearchAllFood(query, offset, number);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling MiscApi.SearchAllFood: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The search query. | 
 **offset** | **int?**| The number of results to skip (between 0 and 900). | [optional] 
 **number** | **int?**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]

### Return type

[**SearchAllFood200Response**](SearchAllFood200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="searchcustomfoods"></a>
# **SearchCustomFoods**
> SearchCustomFoods200Response SearchCustomFoods (string username, string hash, string query, int? offset, int? number)

Search Custom Foods

Search custom foods in a user's account.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class SearchCustomFoodsExample
    {
        public void main()
        {
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("x-api-key", "Bearer");

            var apiInstance = new MiscApi();
            var username = dsky;  // string | The username.
            var hash = 4b5v4398573406;  // string | The private hash for the username.
            var query = burger;  // string | The (natural language) search query. (optional) 
            var offset = 56;  // int? | The number of results to skip (between 0 and 900). (optional) 
            var number = 10;  // int? | The maximum number of items to return (between 1 and 100). Defaults to 10. (optional)  (default to 10)

            try
            {
                // Search Custom Foods
                SearchCustomFoods200Response result = apiInstance.SearchCustomFoods(username, hash, query, offset, number);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling MiscApi.SearchCustomFoods: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username. | 
 **hash** | **string**| The private hash for the username. | 
 **query** | **string**| The (natural language) search query. | [optional] 
 **offset** | **int?**| The number of results to skip (between 0 and 900). | [optional] 
 **number** | **int?**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]

### Return type

[**SearchCustomFoods200Response**](SearchCustomFoods200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="searchfoodvideos"></a>
# **SearchFoodVideos**
> SearchFoodVideos200Response SearchFoodVideos (string query, string type, string cuisine, string diet, string includeIngredients, string excludeIngredients, decimal? minLength, decimal? maxLength, int? offset, int? number)

Search Food Videos

Find recipe and other food related videos.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class SearchFoodVideosExample
    {
        public void main()
        {
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("x-api-key", "Bearer");

            var apiInstance = new MiscApi();
            var query = burger;  // string | The (natural language) search query. (optional) 
            var type = main course;  // string | The type of the recipes. See a full list of supported meal types. (optional) 
            var cuisine = italian;  // string | The cuisine(s) of the recipes. One or more, comma separated. See a full list of supported cuisines. (optional) 
            var diet = vegetarian;  // string | The diet for which the recipes must be suitable. See a full list of supported diets. (optional) 
            var includeIngredients = tomato,cheese;  // string | A comma-separated list of ingredients that the recipes should contain. (optional) 
            var excludeIngredients = eggs;  // string | A comma-separated list of ingredients or ingredient types that the recipes must not contain. (optional) 
            var minLength = 0;  // decimal? | Minimum video length in seconds. (optional) 
            var maxLength = 999;  // decimal? | Maximum video length in seconds. (optional) 
            var offset = 56;  // int? | The number of results to skip (between 0 and 900). (optional) 
            var number = 10;  // int? | The maximum number of items to return (between 1 and 100). Defaults to 10. (optional)  (default to 10)

            try
            {
                // Search Food Videos
                SearchFoodVideos200Response result = apiInstance.SearchFoodVideos(query, type, cuisine, diet, includeIngredients, excludeIngredients, minLength, maxLength, offset, number);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling MiscApi.SearchFoodVideos: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The (natural language) search query. | [optional] 
 **type** | **string**| The type of the recipes. See a full list of supported meal types. | [optional] 
 **cuisine** | **string**| The cuisine(s) of the recipes. One or more, comma separated. See a full list of supported cuisines. | [optional] 
 **diet** | **string**| The diet for which the recipes must be suitable. See a full list of supported diets. | [optional] 
 **includeIngredients** | **string**| A comma-separated list of ingredients that the recipes should contain. | [optional] 
 **excludeIngredients** | **string**| A comma-separated list of ingredients or ingredient types that the recipes must not contain. | [optional] 
 **minLength** | **decimal?**| Minimum video length in seconds. | [optional] 
 **maxLength** | **decimal?**| Maximum video length in seconds. | [optional] 
 **offset** | **int?**| The number of results to skip (between 0 and 900). | [optional] 
 **number** | **int?**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]

### Return type

[**SearchFoodVideos200Response**](SearchFoodVideos200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="searchsitecontent"></a>
# **SearchSiteContent**
> SearchSiteContent200Response SearchSiteContent (string query)

Search Site Content

Search spoonacular's site content. You'll be able to find everything that you could also find using the search suggestions on spoonacular.com. This is a suggest API so you can send partial strings as queries.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class SearchSiteContentExample
    {
        public void main()
        {
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("x-api-key", "Bearer");

            var apiInstance = new MiscApi();
            var query = past;  // string | The query to search for. You can also use partial queries such as \"spagh\" to already find spaghetti recipes, articles, grocery products, and other content.

            try
            {
                // Search Site Content
                SearchSiteContent200Response result = apiInstance.SearchSiteContent(query);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling MiscApi.SearchSiteContent: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The query to search for. You can also use partial queries such as \&quot;spagh\&quot; to already find spaghetti recipes, articles, grocery products, and other content. | 

### Return type

[**SearchSiteContent200Response**](SearchSiteContent200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="talktochatbot"></a>
# **TalkToChatbot**
> TalkToChatbot200Response TalkToChatbot (string text, string contextId)

Talk to Chatbot

This endpoint can be used to have a conversation about food with the spoonacular chatbot. Use the \"Get Conversation Suggests\" endpoint to show your user what he or she can say.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class TalkToChatbotExample
    {
        public void main()
        {
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("x-api-key", "Bearer");

            var apiInstance = new MiscApi();
            var text = donut recipes;  // string | The request / question / answer from the user to the chatbot.
            var contextId = 342938;  // string | An arbitrary globally unique id for your conversation. The conversation can contain states so you should pass your context id if you want the bot to be able to remember the conversation. (optional) 

            try
            {
                // Talk to Chatbot
                TalkToChatbot200Response result = apiInstance.TalkToChatbot(text, contextId);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling MiscApi.TalkToChatbot: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **string**| The request / question / answer from the user to the chatbot. | 
 **contextId** | **string**| An arbitrary globally unique id for your conversation. The conversation can contain states so you should pass your context id if you want the bot to be able to remember the conversation. | [optional] 

### Return type

[**TalkToChatbot200Response**](TalkToChatbot200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

