# OAIMiscApi

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**detectFoodInText**](OAIMiscApi.md#detectfoodintext) | **POST** /food/detect | Detect Food in Text
[**getARandomFoodJoke**](OAIMiscApi.md#getarandomfoodjoke) | **GET** /food/jokes/random | Random Food Joke
[**getConversationSuggests**](OAIMiscApi.md#getconversationsuggests) | **GET** /food/converse/suggest | Conversation Suggests
[**getRandomFoodTrivia**](OAIMiscApi.md#getrandomfoodtrivia) | **GET** /food/trivia/random | Random Food Trivia
[**imageAnalysisByURL**](OAIMiscApi.md#imageanalysisbyurl) | **GET** /food/images/analyze | Image Analysis by URL
[**imageClassificationByURL**](OAIMiscApi.md#imageclassificationbyurl) | **GET** /food/images/classify | Image Classification by URL
[**searchAllFood**](OAIMiscApi.md#searchallfood) | **GET** /food/search | Search All Food
[**searchCustomFoods**](OAIMiscApi.md#searchcustomfoods) | **GET** /food/customFoods/search | Search Custom Foods
[**searchFoodVideos**](OAIMiscApi.md#searchfoodvideos) | **GET** /food/videos/search | Search Food Videos
[**searchSiteContent**](OAIMiscApi.md#searchsitecontent) | **GET** /food/site/search | Search Site Content
[**talkToChatbot**](OAIMiscApi.md#talktochatbot) | **GET** /food/converse | Talk to Chatbot


# **detectFoodInText**
```objc
-(NSURLSessionTask*) detectFoodInTextWithContentType: (NSString*) contentType
        completionHandler: (void (^)(OAIInlineResponse20051* output, NSError* error)) handler;
```

Detect Food in Text

Take any text and find all mentions of food contained within it. This task is also called Named Entity Recognition (NER). In this case, the entities are foods. Either dishes, such as pizza or cheeseburger, or ingredients, such as cucumber or almonds.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKeyScheme)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"apiKey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"apiKey"];


NSString* contentType = application/json; // The content type. (optional)

OAIMiscApi*apiInstance = [[OAIMiscApi alloc] init];

// Detect Food in Text
[apiInstance detectFoodInTextWithContentType:contentType
          completionHandler: ^(OAIInlineResponse20051* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMiscApi->detectFoodInText: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentType** | **NSString***| The content type. | [optional] 

### Return type

[**OAIInlineResponse20051***](OAIInlineResponse20051.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getARandomFoodJoke**
```objc
-(NSURLSessionTask*) getARandomFoodJokeWithCompletionHandler: 
        (void (^)(OAIInlineResponse20055* output, NSError* error)) handler;
```

Random Food Joke

Get a random joke that is related to food. Caution: this is an endpoint for adults!

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKeyScheme)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"apiKey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"apiKey"];



OAIMiscApi*apiInstance = [[OAIMiscApi alloc] init];

// Random Food Joke
[apiInstance getARandomFoodJokeWithCompletionHandler: 
          ^(OAIInlineResponse20055* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMiscApi->getARandomFoodJoke: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIInlineResponse20055***](OAIInlineResponse20055.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getConversationSuggests**
```objc
-(NSURLSessionTask*) getConversationSuggestsWithQuery: (NSString*) query
    number: (NSNumber*) number
        completionHandler: (void (^)(OAIInlineResponse20057* output, NSError* error)) handler;
```

Conversation Suggests

This endpoint returns suggestions for things the user can say or ask the chatbot.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKeyScheme)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"apiKey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"apiKey"];


NSString* query = tell; // A (partial) query from the user. The endpoint will return if it matches topics it can talk about.
NSNumber* number = 5; // The number of suggestions to return (between 1 and 25). (optional)

OAIMiscApi*apiInstance = [[OAIMiscApi alloc] init];

// Conversation Suggests
[apiInstance getConversationSuggestsWithQuery:query
              number:number
          completionHandler: ^(OAIInlineResponse20057* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMiscApi->getConversationSuggests: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **NSString***| A (partial) query from the user. The endpoint will return if it matches topics it can talk about. | 
 **number** | **NSNumber***| The number of suggestions to return (between 1 and 25). | [optional] 

### Return type

[**OAIInlineResponse20057***](OAIInlineResponse20057.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRandomFoodTrivia**
```objc
-(NSURLSessionTask*) getRandomFoodTriviaWithCompletionHandler: 
        (void (^)(OAIInlineResponse20055* output, NSError* error)) handler;
```

Random Food Trivia

Returns random food trivia.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKeyScheme)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"apiKey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"apiKey"];



OAIMiscApi*apiInstance = [[OAIMiscApi alloc] init];

// Random Food Trivia
[apiInstance getRandomFoodTriviaWithCompletionHandler: 
          ^(OAIInlineResponse20055* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMiscApi->getRandomFoodTrivia: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIInlineResponse20055***](OAIInlineResponse20055.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **imageAnalysisByURL**
```objc
-(NSURLSessionTask*) imageAnalysisByURLWithImageUrl: (NSString*) imageUrl
        completionHandler: (void (^)(OAIInlineResponse20049* output, NSError* error)) handler;
```

Image Analysis by URL

Analyze a food image. The API tries to classify the image, guess the nutrition, and find a matching recipes.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKeyScheme)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"apiKey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"apiKey"];


NSString* imageUrl = https://spoonacular.com/recipeImages/635350-240x150.jpg; // The URL of the image to be analyzed.

OAIMiscApi*apiInstance = [[OAIMiscApi alloc] init];

// Image Analysis by URL
[apiInstance imageAnalysisByURLWithImageUrl:imageUrl
          completionHandler: ^(OAIInlineResponse20049* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMiscApi->imageAnalysisByURL: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imageUrl** | **NSString***| The URL of the image to be analyzed. | 

### Return type

[**OAIInlineResponse20049***](OAIInlineResponse20049.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **imageClassificationByURL**
```objc
-(NSURLSessionTask*) imageClassificationByURLWithImageUrl: (NSString*) imageUrl
        completionHandler: (void (^)(OAIInlineResponse20048* output, NSError* error)) handler;
```

Image Classification by URL

Classify a food image.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKeyScheme)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"apiKey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"apiKey"];


NSString* imageUrl = https://spoonacular.com/recipeImages/635350-240x150.jpg; // The URL of the image to be classified.

OAIMiscApi*apiInstance = [[OAIMiscApi alloc] init];

// Image Classification by URL
[apiInstance imageClassificationByURLWithImageUrl:imageUrl
          completionHandler: ^(OAIInlineResponse20048* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMiscApi->imageClassificationByURL: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imageUrl** | **NSString***| The URL of the image to be classified. | 

### Return type

[**OAIInlineResponse20048***](OAIInlineResponse20048.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchAllFood**
```objc
-(NSURLSessionTask*) searchAllFoodWithQuery: (NSString*) query
    offset: (NSNumber*) offset
    number: (NSNumber*) number
        completionHandler: (void (^)(OAIInlineResponse20053* output, NSError* error)) handler;
```

Search All Food

Search all food content with one call. That includes recipes, grocery products, menu items, simple foods (ingredients), and food videos.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKeyScheme)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"apiKey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"apiKey"];


NSString* query = apple; // The search query.
NSNumber* offset = @56; // The number of results to skip (between 0 and 900). (optional)
NSNumber* number = 10; // The maximum number of items to return (between 1 and 100). Defaults to 10. (optional) (default to @10)

OAIMiscApi*apiInstance = [[OAIMiscApi alloc] init];

// Search All Food
[apiInstance searchAllFoodWithQuery:query
              offset:offset
              number:number
          completionHandler: ^(OAIInlineResponse20053* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMiscApi->searchAllFood: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **NSString***| The search query. | 
 **offset** | **NSNumber***| The number of results to skip (between 0 and 900). | [optional] 
 **number** | **NSNumber***| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to @10]

### Return type

[**OAIInlineResponse20053***](OAIInlineResponse20053.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchCustomFoods**
```objc
-(NSURLSessionTask*) searchCustomFoodsWithUsername: (NSString*) username
    hash: (NSString*) hash
    query: (NSString*) query
    offset: (NSNumber*) offset
    number: (NSNumber*) number
        completionHandler: (void (^)(OAIInlineResponse20029* output, NSError* error)) handler;
```

Search Custom Foods

Search custom foods in a user's account.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKeyScheme)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"apiKey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"apiKey"];


NSString* username = dsky; // The username.
NSString* hash = 4b5v4398573406; // The private hash for the username.
NSString* query = burger; // The (natural language) search query. (optional)
NSNumber* offset = @56; // The number of results to skip (between 0 and 900). (optional)
NSNumber* number = 10; // The maximum number of items to return (between 1 and 100). Defaults to 10. (optional) (default to @10)

OAIMiscApi*apiInstance = [[OAIMiscApi alloc] init];

// Search Custom Foods
[apiInstance searchCustomFoodsWithUsername:username
              hash:hash
              query:query
              offset:offset
              number:number
          completionHandler: ^(OAIInlineResponse20029* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMiscApi->searchCustomFoods: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **NSString***| The username. | 
 **hash** | **NSString***| The private hash for the username. | 
 **query** | **NSString***| The (natural language) search query. | [optional] 
 **offset** | **NSNumber***| The number of results to skip (between 0 and 900). | [optional] 
 **number** | **NSNumber***| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to @10]

### Return type

[**OAIInlineResponse20029***](OAIInlineResponse20029.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchFoodVideos**
```objc
-(NSURLSessionTask*) searchFoodVideosWithQuery: (NSString*) query
    type: (NSString*) type
    cuisine: (NSString*) cuisine
    diet: (NSString*) diet
    includeIngredients: (NSString*) includeIngredients
    excludeIngredients: (NSString*) excludeIngredients
    minLength: (NSNumber*) minLength
    maxLength: (NSNumber*) maxLength
    offset: (NSNumber*) offset
    number: (NSNumber*) number
        completionHandler: (void (^)(OAIInlineResponse20054* output, NSError* error)) handler;
```

Search Food Videos

Find recipe and other food related videos.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKeyScheme)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"apiKey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"apiKey"];


NSString* query = burger; // The (natural language) search query. (optional)
NSString* type = main course; // The type of the recipes. See a full list of supported meal types. (optional)
NSString* cuisine = italian; // The cuisine(s) of the recipes. One or more, comma separated. See a full list of supported cuisines. (optional)
NSString* diet = vegetarian; // The diet for which the recipes must be suitable. See a full list of supported diets. (optional)
NSString* includeIngredients = tomato,cheese; // A comma-separated list of ingredients that the recipes should contain. (optional)
NSString* excludeIngredients = eggs; // A comma-separated list of ingredients or ingredient types that the recipes must not contain. (optional)
NSNumber* minLength = 0; // Minimum video length in seconds. (optional)
NSNumber* maxLength = 999; // Maximum video length in seconds. (optional)
NSNumber* offset = @56; // The number of results to skip (between 0 and 900). (optional)
NSNumber* number = 10; // The maximum number of items to return (between 1 and 100). Defaults to 10. (optional) (default to @10)

OAIMiscApi*apiInstance = [[OAIMiscApi alloc] init];

// Search Food Videos
[apiInstance searchFoodVideosWithQuery:query
              type:type
              cuisine:cuisine
              diet:diet
              includeIngredients:includeIngredients
              excludeIngredients:excludeIngredients
              minLength:minLength
              maxLength:maxLength
              offset:offset
              number:number
          completionHandler: ^(OAIInlineResponse20054* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMiscApi->searchFoodVideos: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **NSString***| The (natural language) search query. | [optional] 
 **type** | **NSString***| The type of the recipes. See a full list of supported meal types. | [optional] 
 **cuisine** | **NSString***| The cuisine(s) of the recipes. One or more, comma separated. See a full list of supported cuisines. | [optional] 
 **diet** | **NSString***| The diet for which the recipes must be suitable. See a full list of supported diets. | [optional] 
 **includeIngredients** | **NSString***| A comma-separated list of ingredients that the recipes should contain. | [optional] 
 **excludeIngredients** | **NSString***| A comma-separated list of ingredients or ingredient types that the recipes must not contain. | [optional] 
 **minLength** | **NSNumber***| Minimum video length in seconds. | [optional] 
 **maxLength** | **NSNumber***| Maximum video length in seconds. | [optional] 
 **offset** | **NSNumber***| The number of results to skip (between 0 and 900). | [optional] 
 **number** | **NSNumber***| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to @10]

### Return type

[**OAIInlineResponse20054***](OAIInlineResponse20054.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchSiteContent**
```objc
-(NSURLSessionTask*) searchSiteContentWithQuery: (NSString*) query
        completionHandler: (void (^)(OAIInlineResponse20052* output, NSError* error)) handler;
```

Search Site Content

Search spoonacular's site content. You'll be able to find everything that you could also find using the search suggestions on spoonacular.com. This is a suggest API so you can send partial strings as queries.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKeyScheme)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"apiKey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"apiKey"];


NSString* query = past; // The query to search for. You can also use partial queries such as \"spagh\" to already find spaghetti recipes, articles, grocery products, and other content.

OAIMiscApi*apiInstance = [[OAIMiscApi alloc] init];

// Search Site Content
[apiInstance searchSiteContentWithQuery:query
          completionHandler: ^(OAIInlineResponse20052* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMiscApi->searchSiteContent: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **NSString***| The query to search for. You can also use partial queries such as \&quot;spagh\&quot; to already find spaghetti recipes, articles, grocery products, and other content. | 

### Return type

[**OAIInlineResponse20052***](OAIInlineResponse20052.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **talkToChatbot**
```objc
-(NSURLSessionTask*) talkToChatbotWithText: (NSString*) text
    contextId: (NSString*) contextId
        completionHandler: (void (^)(OAIInlineResponse20056* output, NSError* error)) handler;
```

Talk to Chatbot

This endpoint can be used to have a conversation about food with the spoonacular chatbot. Use the \"Get Conversation Suggests\" endpoint to show your user what he or she can say.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKeyScheme)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"apiKey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"apiKey"];


NSString* text = donut recipes; // The request / question / answer from the user to the chatbot.
NSString* contextId = 342938; // An arbitrary globally unique id for your conversation. The conversation can contain states so you should pass your context id if you want the bot to be able to remember the conversation. (optional)

OAIMiscApi*apiInstance = [[OAIMiscApi alloc] init];

// Talk to Chatbot
[apiInstance talkToChatbotWithText:text
              contextId:contextId
          completionHandler: ^(OAIInlineResponse20056* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMiscApi->talkToChatbot: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **NSString***| The request / question / answer from the user to the chatbot. | 
 **contextId** | **NSString***| An arbitrary globally unique id for your conversation. The conversation can contain states so you should pass your context id if you want the bot to be able to remember the conversation. | [optional] 

### Return type

[**OAIInlineResponse20056***](OAIInlineResponse20056.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

