# OpenapiClient::MiscApi

All URIs are relative to *https://api.spoonacular.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**detect_food_in_text**](MiscApi.md#detect_food_in_text) | **POST** /food/detect | Detect Food in Text |
| [**get_a_random_food_joke**](MiscApi.md#get_a_random_food_joke) | **GET** /food/jokes/random | Random Food Joke |
| [**get_conversation_suggests**](MiscApi.md#get_conversation_suggests) | **GET** /food/converse/suggest | Conversation Suggests |
| [**get_random_food_trivia**](MiscApi.md#get_random_food_trivia) | **GET** /food/trivia/random | Random Food Trivia |
| [**image_analysis_by_url**](MiscApi.md#image_analysis_by_url) | **GET** /food/images/analyze | Image Analysis by URL |
| [**image_classification_by_url**](MiscApi.md#image_classification_by_url) | **GET** /food/images/classify | Image Classification by URL |
| [**search_all_food**](MiscApi.md#search_all_food) | **GET** /food/search | Search All Food |
| [**search_custom_foods**](MiscApi.md#search_custom_foods) | **GET** /food/customFoods/search | Search Custom Foods |
| [**search_food_videos**](MiscApi.md#search_food_videos) | **GET** /food/videos/search | Search Food Videos |
| [**search_site_content**](MiscApi.md#search_site_content) | **GET** /food/site/search | Search Site Content |
| [**talk_to_chatbot**](MiscApi.md#talk_to_chatbot) | **GET** /food/converse | Talk to Chatbot |


## detect_food_in_text

> <DetectFoodInText200Response> detect_food_in_text(opts)

Detect Food in Text

Take any text and find all mentions of food contained within it. This task is also called Named Entity Recognition (NER). In this case, the entities are foods. Either dishes, such as pizza or cheeseburger, or ingredients, such as cucumber or almonds.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKeyScheme
  config.api_key['apiKeyScheme'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKeyScheme'] = 'Bearer'
end

api_instance = OpenapiClient::MiscApi.new
opts = {
  content_type: 'application/x-www-form-urlencoded' # String | The content type.
}

begin
  # Detect Food in Text
  result = api_instance.detect_food_in_text(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MiscApi->detect_food_in_text: #{e}"
end
```

#### Using the detect_food_in_text_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DetectFoodInText200Response>, Integer, Hash)> detect_food_in_text_with_http_info(opts)

```ruby
begin
  # Detect Food in Text
  data, status_code, headers = api_instance.detect_food_in_text_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DetectFoodInText200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MiscApi->detect_food_in_text_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **content_type** | **String** | The content type. | [optional] |

### Return type

[**DetectFoodInText200Response**](DetectFoodInText200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## get_a_random_food_joke

> <GetARandomFoodJoke200Response> get_a_random_food_joke

Random Food Joke

Get a random joke that is related to food. Caution: this is an endpoint for adults!

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKeyScheme
  config.api_key['apiKeyScheme'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKeyScheme'] = 'Bearer'
end

api_instance = OpenapiClient::MiscApi.new

begin
  # Random Food Joke
  result = api_instance.get_a_random_food_joke
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MiscApi->get_a_random_food_joke: #{e}"
end
```

#### Using the get_a_random_food_joke_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetARandomFoodJoke200Response>, Integer, Hash)> get_a_random_food_joke_with_http_info

```ruby
begin
  # Random Food Joke
  data, status_code, headers = api_instance.get_a_random_food_joke_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetARandomFoodJoke200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MiscApi->get_a_random_food_joke_with_http_info: #{e}"
end
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


## get_conversation_suggests

> <GetConversationSuggests200Response> get_conversation_suggests(query, opts)

Conversation Suggests

This endpoint returns suggestions for things the user can say or ask the chatbot.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKeyScheme
  config.api_key['apiKeyScheme'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKeyScheme'] = 'Bearer'
end

api_instance = OpenapiClient::MiscApi.new
query = 'tell' # String | A (partial) query from the user. The endpoint will return if it matches topics it can talk about.
opts = {
  number: 5 # Float | The number of suggestions to return (between 1 and 25).
}

begin
  # Conversation Suggests
  result = api_instance.get_conversation_suggests(query, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MiscApi->get_conversation_suggests: #{e}"
end
```

#### Using the get_conversation_suggests_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetConversationSuggests200Response>, Integer, Hash)> get_conversation_suggests_with_http_info(query, opts)

```ruby
begin
  # Conversation Suggests
  data, status_code, headers = api_instance.get_conversation_suggests_with_http_info(query, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetConversationSuggests200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MiscApi->get_conversation_suggests_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **query** | **String** | A (partial) query from the user. The endpoint will return if it matches topics it can talk about. |  |
| **number** | **Float** | The number of suggestions to return (between 1 and 25). | [optional] |

### Return type

[**GetConversationSuggests200Response**](GetConversationSuggests200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_random_food_trivia

> <GetRandomFoodTrivia200Response> get_random_food_trivia

Random Food Trivia

Returns random food trivia.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKeyScheme
  config.api_key['apiKeyScheme'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKeyScheme'] = 'Bearer'
end

api_instance = OpenapiClient::MiscApi.new

begin
  # Random Food Trivia
  result = api_instance.get_random_food_trivia
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MiscApi->get_random_food_trivia: #{e}"
end
```

#### Using the get_random_food_trivia_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetRandomFoodTrivia200Response>, Integer, Hash)> get_random_food_trivia_with_http_info

```ruby
begin
  # Random Food Trivia
  data, status_code, headers = api_instance.get_random_food_trivia_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetRandomFoodTrivia200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MiscApi->get_random_food_trivia_with_http_info: #{e}"
end
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


## image_analysis_by_url

> <ImageAnalysisByURL200Response> image_analysis_by_url(image_url)

Image Analysis by URL

Analyze a food image. The API tries to classify the image, guess the nutrition, and find a matching recipes.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKeyScheme
  config.api_key['apiKeyScheme'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKeyScheme'] = 'Bearer'
end

api_instance = OpenapiClient::MiscApi.new
image_url = 'https://spoonacular.com/recipeImages/635350-240x150.jpg' # String | The URL of the image to be analyzed.

begin
  # Image Analysis by URL
  result = api_instance.image_analysis_by_url(image_url)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MiscApi->image_analysis_by_url: #{e}"
end
```

#### Using the image_analysis_by_url_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ImageAnalysisByURL200Response>, Integer, Hash)> image_analysis_by_url_with_http_info(image_url)

```ruby
begin
  # Image Analysis by URL
  data, status_code, headers = api_instance.image_analysis_by_url_with_http_info(image_url)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ImageAnalysisByURL200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MiscApi->image_analysis_by_url_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **image_url** | **String** | The URL of the image to be analyzed. |  |

### Return type

[**ImageAnalysisByURL200Response**](ImageAnalysisByURL200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## image_classification_by_url

> <ImageClassificationByURL200Response> image_classification_by_url(image_url)

Image Classification by URL

Classify a food image.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKeyScheme
  config.api_key['apiKeyScheme'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKeyScheme'] = 'Bearer'
end

api_instance = OpenapiClient::MiscApi.new
image_url = 'https://spoonacular.com/recipeImages/635350-240x150.jpg' # String | The URL of the image to be classified.

begin
  # Image Classification by URL
  result = api_instance.image_classification_by_url(image_url)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MiscApi->image_classification_by_url: #{e}"
end
```

#### Using the image_classification_by_url_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ImageClassificationByURL200Response>, Integer, Hash)> image_classification_by_url_with_http_info(image_url)

```ruby
begin
  # Image Classification by URL
  data, status_code, headers = api_instance.image_classification_by_url_with_http_info(image_url)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ImageClassificationByURL200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MiscApi->image_classification_by_url_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **image_url** | **String** | The URL of the image to be classified. |  |

### Return type

[**ImageClassificationByURL200Response**](ImageClassificationByURL200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_all_food

> <SearchAllFood200Response> search_all_food(query, opts)

Search All Food

Search all food content with one call. That includes recipes, grocery products, menu items, simple foods (ingredients), and food videos.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKeyScheme
  config.api_key['apiKeyScheme'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKeyScheme'] = 'Bearer'
end

api_instance = OpenapiClient::MiscApi.new
query = 'apple' # String | The search query.
opts = {
  offset: 56, # Integer | The number of results to skip (between 0 and 900).
  number: 10 # Integer | The maximum number of items to return (between 1 and 100). Defaults to 10.
}

begin
  # Search All Food
  result = api_instance.search_all_food(query, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MiscApi->search_all_food: #{e}"
end
```

#### Using the search_all_food_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchAllFood200Response>, Integer, Hash)> search_all_food_with_http_info(query, opts)

```ruby
begin
  # Search All Food
  data, status_code, headers = api_instance.search_all_food_with_http_info(query, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchAllFood200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MiscApi->search_all_food_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **query** | **String** | The search query. |  |
| **offset** | **Integer** | The number of results to skip (between 0 and 900). | [optional] |
| **number** | **Integer** | The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional][default to 10] |

### Return type

[**SearchAllFood200Response**](SearchAllFood200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_custom_foods

> <SearchCustomFoods200Response> search_custom_foods(username, hash, opts)

Search Custom Foods

Search custom foods in a user's account.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKeyScheme
  config.api_key['apiKeyScheme'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKeyScheme'] = 'Bearer'
end

api_instance = OpenapiClient::MiscApi.new
username = 'dsky' # String | The username.
hash = '4b5v4398573406' # String | The private hash for the username.
opts = {
  query: 'burger', # String | The (natural language) search query.
  offset: 56, # Integer | The number of results to skip (between 0 and 900).
  number: 10 # Integer | The maximum number of items to return (between 1 and 100). Defaults to 10.
}

begin
  # Search Custom Foods
  result = api_instance.search_custom_foods(username, hash, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MiscApi->search_custom_foods: #{e}"
end
```

#### Using the search_custom_foods_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchCustomFoods200Response>, Integer, Hash)> search_custom_foods_with_http_info(username, hash, opts)

```ruby
begin
  # Search Custom Foods
  data, status_code, headers = api_instance.search_custom_foods_with_http_info(username, hash, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchCustomFoods200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MiscApi->search_custom_foods_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **username** | **String** | The username. |  |
| **hash** | **String** | The private hash for the username. |  |
| **query** | **String** | The (natural language) search query. | [optional] |
| **offset** | **Integer** | The number of results to skip (between 0 and 900). | [optional] |
| **number** | **Integer** | The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional][default to 10] |

### Return type

[**SearchCustomFoods200Response**](SearchCustomFoods200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_food_videos

> <SearchFoodVideos200Response> search_food_videos(opts)

Search Food Videos

Find recipe and other food related videos.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKeyScheme
  config.api_key['apiKeyScheme'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKeyScheme'] = 'Bearer'
end

api_instance = OpenapiClient::MiscApi.new
opts = {
  query: 'burger', # String | The (natural language) search query.
  type: 'main course', # String | The type of the recipes. See a full list of supported meal types.
  cuisine: 'italian', # String | The cuisine(s) of the recipes. One or more, comma separated. See a full list of supported cuisines.
  diet: 'vegetarian', # String | The diet for which the recipes must be suitable. See a full list of supported diets.
  include_ingredients: 'tomato,cheese', # String | A comma-separated list of ingredients that the recipes should contain.
  exclude_ingredients: 'eggs', # String | A comma-separated list of ingredients or ingredient types that the recipes must not contain.
  min_length: 0, # Float | Minimum video length in seconds.
  max_length: 999, # Float | Maximum video length in seconds.
  offset: 56, # Integer | The number of results to skip (between 0 and 900).
  number: 10 # Integer | The maximum number of items to return (between 1 and 100). Defaults to 10.
}

begin
  # Search Food Videos
  result = api_instance.search_food_videos(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MiscApi->search_food_videos: #{e}"
end
```

#### Using the search_food_videos_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchFoodVideos200Response>, Integer, Hash)> search_food_videos_with_http_info(opts)

```ruby
begin
  # Search Food Videos
  data, status_code, headers = api_instance.search_food_videos_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchFoodVideos200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MiscApi->search_food_videos_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **query** | **String** | The (natural language) search query. | [optional] |
| **type** | **String** | The type of the recipes. See a full list of supported meal types. | [optional] |
| **cuisine** | **String** | The cuisine(s) of the recipes. One or more, comma separated. See a full list of supported cuisines. | [optional] |
| **diet** | **String** | The diet for which the recipes must be suitable. See a full list of supported diets. | [optional] |
| **include_ingredients** | **String** | A comma-separated list of ingredients that the recipes should contain. | [optional] |
| **exclude_ingredients** | **String** | A comma-separated list of ingredients or ingredient types that the recipes must not contain. | [optional] |
| **min_length** | **Float** | Minimum video length in seconds. | [optional] |
| **max_length** | **Float** | Maximum video length in seconds. | [optional] |
| **offset** | **Integer** | The number of results to skip (between 0 and 900). | [optional] |
| **number** | **Integer** | The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional][default to 10] |

### Return type

[**SearchFoodVideos200Response**](SearchFoodVideos200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_site_content

> <SearchSiteContent200Response> search_site_content(query)

Search Site Content

Search spoonacular's site content. You'll be able to find everything that you could also find using the search suggestions on spoonacular.com. This is a suggest API so you can send partial strings as queries.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKeyScheme
  config.api_key['apiKeyScheme'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKeyScheme'] = 'Bearer'
end

api_instance = OpenapiClient::MiscApi.new
query = 'past' # String | The query to search for. You can also use partial queries such as \"spagh\" to already find spaghetti recipes, articles, grocery products, and other content.

begin
  # Search Site Content
  result = api_instance.search_site_content(query)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MiscApi->search_site_content: #{e}"
end
```

#### Using the search_site_content_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchSiteContent200Response>, Integer, Hash)> search_site_content_with_http_info(query)

```ruby
begin
  # Search Site Content
  data, status_code, headers = api_instance.search_site_content_with_http_info(query)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchSiteContent200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MiscApi->search_site_content_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **query** | **String** | The query to search for. You can also use partial queries such as \&quot;spagh\&quot; to already find spaghetti recipes, articles, grocery products, and other content. |  |

### Return type

[**SearchSiteContent200Response**](SearchSiteContent200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## talk_to_chatbot

> <TalkToChatbot200Response> talk_to_chatbot(text, opts)

Talk to Chatbot

This endpoint can be used to have a conversation about food with the spoonacular chatbot. Use the \"Get Conversation Suggests\" endpoint to show your user what he or she can say.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKeyScheme
  config.api_key['apiKeyScheme'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKeyScheme'] = 'Bearer'
end

api_instance = OpenapiClient::MiscApi.new
text = 'donut recipes' # String | The request / question / answer from the user to the chatbot.
opts = {
  context_id: '342938' # String | An arbitrary globally unique id for your conversation. The conversation can contain states so you should pass your context id if you want the bot to be able to remember the conversation.
}

begin
  # Talk to Chatbot
  result = api_instance.talk_to_chatbot(text, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MiscApi->talk_to_chatbot: #{e}"
end
```

#### Using the talk_to_chatbot_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TalkToChatbot200Response>, Integer, Hash)> talk_to_chatbot_with_http_info(text, opts)

```ruby
begin
  # Talk to Chatbot
  data, status_code, headers = api_instance.talk_to_chatbot_with_http_info(text, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TalkToChatbot200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MiscApi->talk_to_chatbot_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **text** | **String** | The request / question / answer from the user to the chatbot. |  |
| **context_id** | **String** | An arbitrary globally unique id for your conversation. The conversation can contain states so you should pass your context id if you want the bot to be able to remember the conversation. | [optional] |

### Return type

[**TalkToChatbot200Response**](TalkToChatbot200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

