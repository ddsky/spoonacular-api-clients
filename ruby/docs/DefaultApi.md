# OpenapiClient::DefaultApi

All URIs are relative to *https://api.spoonacular.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**analyze_recipe**](DefaultApi.md#analyze_recipe) | **POST** /recipes/analyze | Analyze Recipe |
| [**search_restaurants**](DefaultApi.md#search_restaurants) | **GET** /food/restaurants/search | Search Restaurants |


## analyze_recipe

> Object analyze_recipe(analyze_recipe_request, opts)

Analyze Recipe

This endpoint allows you to send raw recipe information, such as title, servings, and ingredients, to then see what we compute (badges, diets, nutrition, and more). This is useful if you have your own recipe data and want to enrich it with our semantic analysis.

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

api_instance = OpenapiClient::DefaultApi.new
analyze_recipe_request = OpenapiClient::AnalyzeRecipeRequest.new # AnalyzeRecipeRequest | Example request body.
opts = {
  language: 'en', # String | The input language, either \"en\" or \"de\".
  include_nutrition: false, # Boolean | Whether nutrition data should be added to correctly parsed ingredients.
  include_taste: false # Boolean | Whether taste data should be added to correctly parsed ingredients.
}

begin
  # Analyze Recipe
  result = api_instance.analyze_recipe(analyze_recipe_request, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->analyze_recipe: #{e}"
end
```

#### Using the analyze_recipe_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> analyze_recipe_with_http_info(analyze_recipe_request, opts)

```ruby
begin
  # Analyze Recipe
  data, status_code, headers = api_instance.analyze_recipe_with_http_info(analyze_recipe_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->analyze_recipe_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **analyze_recipe_request** | [**AnalyzeRecipeRequest**](AnalyzeRecipeRequest.md) | Example request body. |  |
| **language** | **String** | The input language, either \&quot;en\&quot; or \&quot;de\&quot;. | [optional] |
| **include_nutrition** | **Boolean** | Whether nutrition data should be added to correctly parsed ingredients. | [optional] |
| **include_taste** | **Boolean** | Whether taste data should be added to correctly parsed ingredients. | [optional] |

### Return type

**Object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: , application/json
- **Accept**: application/json


## search_restaurants

> <SearchRestaurants200Response> search_restaurants(opts)

Search Restaurants

Search through thousands of restaurants (in North America) by location, cuisine, budget, and more.

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

api_instance = OpenapiClient::DefaultApi.new
opts = {
  query: 'beach cafe', # String | The search query.
  lat: 37.7786357, # Float | The latitude of the user's location.
  lng: -122.3918135, # Float | The longitude of the user's location.\".
  distance: 2, # Float | The distance around the location in miles.
  budget: 20, # Float | The user's budget for a meal in USD.
  cuisine: 'italian', # String | The cuisine of the restaurant.
  min_rating: 4.4, # Float | The minimum rating of the restaurant between 0 and 5.
  is_open: true, # Boolean | Whether the restaurant must be open at the time of search.
  sort: 'distance', # String | How to sort the results, one of the following 'cheapest', 'fastest', 'rating', 'distance' or the default 'relevance'.
  page: 0 # Float | The page number of results.
}

begin
  # Search Restaurants
  result = api_instance.search_restaurants(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->search_restaurants: #{e}"
end
```

#### Using the search_restaurants_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchRestaurants200Response>, Integer, Hash)> search_restaurants_with_http_info(opts)

```ruby
begin
  # Search Restaurants
  data, status_code, headers = api_instance.search_restaurants_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchRestaurants200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->search_restaurants_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **query** | **String** | The search query. | [optional] |
| **lat** | **Float** | The latitude of the user&#39;s location. | [optional] |
| **lng** | **Float** | The longitude of the user&#39;s location.\&quot;. | [optional] |
| **distance** | **Float** | The distance around the location in miles. | [optional] |
| **budget** | **Float** | The user&#39;s budget for a meal in USD. | [optional] |
| **cuisine** | **String** | The cuisine of the restaurant. | [optional] |
| **min_rating** | **Float** | The minimum rating of the restaurant between 0 and 5. | [optional] |
| **is_open** | **Boolean** | Whether the restaurant must be open at the time of search. | [optional] |
| **sort** | **String** | How to sort the results, one of the following &#39;cheapest&#39;, &#39;fastest&#39;, &#39;rating&#39;, &#39;distance&#39; or the default &#39;relevance&#39;. | [optional] |
| **page** | **Float** | The page number of results. | [optional] |

### Return type

[**SearchRestaurants200Response**](SearchRestaurants200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

