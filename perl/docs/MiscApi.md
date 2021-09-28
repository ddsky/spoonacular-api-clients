# WWW::OpenAPIClient::MiscApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::MiscApi;
```

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


# **detect_food_in_text**
> InlineResponse20050 detect_food_in_text(content_type => $content_type)

Detect Food in Text

Take any text and find all mentions of food contained within it. This task is also called Named Entity Recognition (NER). In this case, the entities are foods. Either dishes, such as pizza or cheeseburger, or ingredients, such as cucumber or almonds.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MiscApi;
my $api_instance = WWW::OpenAPIClient::MiscApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $content_type = application/json; # string | The content type.

eval { 
    my $result = $api_instance->detect_food_in_text(content_type => $content_type);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MiscApi->detect_food_in_text: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content_type** | **string**| The content type. | [optional] 

### Return type

[**InlineResponse20050**](InlineResponse20050.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_a_random_food_joke**
> InlineResponse20054 get_a_random_food_joke()

Random Food Joke

Get a random joke that is related to food. Caution: this is an endpoint for adults!

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MiscApi;
my $api_instance = WWW::OpenAPIClient::MiscApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);


eval { 
    my $result = $api_instance->get_a_random_food_joke();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MiscApi->get_a_random_food_joke: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse20054**](InlineResponse20054.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_conversation_suggests**
> InlineResponse20056 get_conversation_suggests(query => $query, number => $number)

Conversation Suggests

This endpoint returns suggestions for things the user can say or ask the chatbot.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MiscApi;
my $api_instance = WWW::OpenAPIClient::MiscApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $query = tell; # string | A (partial) query from the user. The endpoint will return if it matches topics it can talk about.
my $number = 5; # double | The number of suggestions to return (between 1 and 25).

eval { 
    my $result = $api_instance->get_conversation_suggests(query => $query, number => $number);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MiscApi->get_conversation_suggests: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| A (partial) query from the user. The endpoint will return if it matches topics it can talk about. | 
 **number** | **double**| The number of suggestions to return (between 1 and 25). | [optional] 

### Return type

[**InlineResponse20056**](InlineResponse20056.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_random_food_trivia**
> InlineResponse20054 get_random_food_trivia()

Random Food Trivia

Returns random food trivia.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MiscApi;
my $api_instance = WWW::OpenAPIClient::MiscApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);


eval { 
    my $result = $api_instance->get_random_food_trivia();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MiscApi->get_random_food_trivia: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse20054**](InlineResponse20054.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **image_analysis_by_url**
> InlineResponse20048 image_analysis_by_url(image_url => $image_url)

Image Analysis by URL

Analyze a food image. The API tries to classify the image, guess the nutrition, and find a matching recipes.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MiscApi;
my $api_instance = WWW::OpenAPIClient::MiscApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $image_url = https://spoonacular.com/recipeImages/635350-240x150.jpg; # string | The URL of the image to be analyzed.

eval { 
    my $result = $api_instance->image_analysis_by_url(image_url => $image_url);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MiscApi->image_analysis_by_url: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_url** | **string**| The URL of the image to be analyzed. | 

### Return type

[**InlineResponse20048**](InlineResponse20048.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **image_classification_by_url**
> InlineResponse20047 image_classification_by_url(image_url => $image_url)

Image Classification by URL

Classify a food image.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MiscApi;
my $api_instance = WWW::OpenAPIClient::MiscApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $image_url = https://spoonacular.com/recipeImages/635350-240x150.jpg; # string | The URL of the image to be classified.

eval { 
    my $result = $api_instance->image_classification_by_url(image_url => $image_url);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MiscApi->image_classification_by_url: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_url** | **string**| The URL of the image to be classified. | 

### Return type

[**InlineResponse20047**](InlineResponse20047.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_all_food**
> InlineResponse20052 search_all_food(query => $query, offset => $offset, number => $number)

Search All Food

Search all food content with one call. That includes recipes, grocery products, menu items, simple foods (ingredients), and food videos.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MiscApi;
my $api_instance = WWW::OpenAPIClient::MiscApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $query = apple; # string | The search query.
my $offset = 56; # int | The number of results to skip (between 0 and 900).
my $number = 10; # int | The maximum number of items to return (between 1 and 100). Defaults to 10.

eval { 
    my $result = $api_instance->search_all_food(query => $query, offset => $offset, number => $number);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MiscApi->search_all_food: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The search query. | 
 **offset** | **int**| The number of results to skip (between 0 and 900). | [optional] 
 **number** | **int**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]

### Return type

[**InlineResponse20052**](InlineResponse20052.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_custom_foods**
> InlineResponse20029 search_custom_foods(username => $username, hash => $hash, query => $query, offset => $offset, number => $number)

Search Custom Foods

Search custom foods in a user's account.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MiscApi;
my $api_instance = WWW::OpenAPIClient::MiscApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $username = dsky; # string | The username.
my $hash = 4b5v4398573406; # string | The private hash for the username.
my $query = burger; # string | The (natural language) search query.
my $offset = 56; # int | The number of results to skip (between 0 and 900).
my $number = 10; # int | The maximum number of items to return (between 1 and 100). Defaults to 10.

eval { 
    my $result = $api_instance->search_custom_foods(username => $username, hash => $hash, query => $query, offset => $offset, number => $number);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MiscApi->search_custom_foods: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username. | 
 **hash** | **string**| The private hash for the username. | 
 **query** | **string**| The (natural language) search query. | [optional] 
 **offset** | **int**| The number of results to skip (between 0 and 900). | [optional] 
 **number** | **int**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]

### Return type

[**InlineResponse20029**](InlineResponse20029.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_food_videos**
> InlineResponse20053 search_food_videos(query => $query, type => $type, cuisine => $cuisine, diet => $diet, include_ingredients => $include_ingredients, exclude_ingredients => $exclude_ingredients, min_length => $min_length, max_length => $max_length, offset => $offset, number => $number)

Search Food Videos

Find recipe and other food related videos.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MiscApi;
my $api_instance = WWW::OpenAPIClient::MiscApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $query = burger; # string | The (natural language) search query.
my $type = main course; # string | The type of the recipes. See a full list of supported meal types.
my $cuisine = italian; # string | The cuisine(s) of the recipes. One or more, comma separated. See a full list of supported cuisines.
my $diet = vegetarian; # string | The diet for which the recipes must be suitable. See a full list of supported diets.
my $include_ingredients = tomato,cheese; # string | A comma-separated list of ingredients that the recipes should contain.
my $exclude_ingredients = eggs; # string | A comma-separated list of ingredients or ingredient types that the recipes must not contain.
my $min_length = 0; # double | Minimum video length in seconds.
my $max_length = 999; # double | Maximum video length in seconds.
my $offset = 56; # int | The number of results to skip (between 0 and 900).
my $number = 10; # int | The maximum number of items to return (between 1 and 100). Defaults to 10.

eval { 
    my $result = $api_instance->search_food_videos(query => $query, type => $type, cuisine => $cuisine, diet => $diet, include_ingredients => $include_ingredients, exclude_ingredients => $exclude_ingredients, min_length => $min_length, max_length => $max_length, offset => $offset, number => $number);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MiscApi->search_food_videos: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The (natural language) search query. | [optional] 
 **type** | **string**| The type of the recipes. See a full list of supported meal types. | [optional] 
 **cuisine** | **string**| The cuisine(s) of the recipes. One or more, comma separated. See a full list of supported cuisines. | [optional] 
 **diet** | **string**| The diet for which the recipes must be suitable. See a full list of supported diets. | [optional] 
 **include_ingredients** | **string**| A comma-separated list of ingredients that the recipes should contain. | [optional] 
 **exclude_ingredients** | **string**| A comma-separated list of ingredients or ingredient types that the recipes must not contain. | [optional] 
 **min_length** | **double**| Minimum video length in seconds. | [optional] 
 **max_length** | **double**| Maximum video length in seconds. | [optional] 
 **offset** | **int**| The number of results to skip (between 0 and 900). | [optional] 
 **number** | **int**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]

### Return type

[**InlineResponse20053**](InlineResponse20053.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_site_content**
> InlineResponse20051 search_site_content(query => $query)

Search Site Content

Search spoonacular's site content. You'll be able to find everything that you could also find using the search suggestions on spoonacular.com. This is a suggest API so you can send partial strings as queries.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MiscApi;
my $api_instance = WWW::OpenAPIClient::MiscApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $query = past; # string | The query to search for. You can also use partial queries such as \"spagh\" to already find spaghetti recipes, articles, grocery products, and other content.

eval { 
    my $result = $api_instance->search_site_content(query => $query);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MiscApi->search_site_content: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The query to search for. You can also use partial queries such as \&quot;spagh\&quot; to already find spaghetti recipes, articles, grocery products, and other content. | 

### Return type

[**InlineResponse20051**](InlineResponse20051.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **talk_to_chatbot**
> InlineResponse20055 talk_to_chatbot(text => $text, context_id => $context_id)

Talk to Chatbot

This endpoint can be used to have a conversation about food with the spoonacular chatbot. Use the \"Get Conversation Suggests\" endpoint to show your user what he or she can say.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MiscApi;
my $api_instance = WWW::OpenAPIClient::MiscApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $text = donut recipes; # string | The request / question / answer from the user to the chatbot.
my $context_id = 342938; # string | An arbitrary globally unique id for your conversation. The conversation can contain states so you should pass your context id if you want the bot to be able to remember the conversation.

eval { 
    my $result = $api_instance->talk_to_chatbot(text => $text, context_id => $context_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MiscApi->talk_to_chatbot: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **string**| The request / question / answer from the user to the chatbot. | 
 **context_id** | **string**| An arbitrary globally unique id for your conversation. The conversation can contain states so you should pass your context id if you want the bot to be able to remember the conversation. | [optional] 

### Return type

[**InlineResponse20055**](InlineResponse20055.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

