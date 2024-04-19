# WWW::OpenAPIClient::DefaultApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::DefaultApi;
```

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**analyze_recipe**](DefaultApi.md#analyze_recipe) | **POST** /recipes/analyze | Analyze Recipe
[**create_recipe_card_get**](DefaultApi.md#create_recipe_card_get) | **GET** /recipes/{id}/card | Create Recipe Card
[**search_restaurants**](DefaultApi.md#search_restaurants) | **GET** /food/restaurants/search | Search Restaurants


# **analyze_recipe**
> object analyze_recipe(analyze_recipe_request => $analyze_recipe_request, language => $language, include_nutrition => $include_nutrition, include_taste => $include_taste)

Analyze Recipe

This endpoint allows you to send raw recipe information, such as title, servings, and ingredients, to then see what we compute (badges, diets, nutrition, and more). This is useful if you have your own recipe data and want to enrich it with our semantic analysis.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $analyze_recipe_request = WWW::OpenAPIClient::Object::AnalyzeRecipeRequest->new(); # AnalyzeRecipeRequest | Example request body.
my $language = en; # string | The input language, either \"en\" or \"de\".
my $include_nutrition = false; # boolean | Whether nutrition data should be added to correctly parsed ingredients.
my $include_taste = false; # boolean | Whether taste data should be added to correctly parsed ingredients.

eval {
    my $result = $api_instance->analyze_recipe(analyze_recipe_request => $analyze_recipe_request, language => $language, include_nutrition => $include_nutrition, include_taste => $include_taste);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->analyze_recipe: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **analyze_recipe_request** | [**AnalyzeRecipeRequest**](AnalyzeRecipeRequest.md)| Example request body. | 
 **language** | **string**| The input language, either \&quot;en\&quot; or \&quot;de\&quot;. | [optional] 
 **include_nutrition** | **boolean**| Whether nutrition data should be added to correctly parsed ingredients. | [optional] 
 **include_taste** | **boolean**| Whether taste data should be added to correctly parsed ingredients. | [optional] 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_recipe_card_get**
> object create_recipe_card_get(id => $id, mask => $mask, background_image => $background_image, background_color => $background_color, font_color => $font_color)

Create Recipe Card

Generate a recipe card for a recipe.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = 4632; # double | The recipe id.
my $mask = ellipseMask; # string | The mask to put over the recipe image (\"ellipseMask\", \"diamondMask\", \"starMask\", \"heartMask\", \"potMask\", \"fishMask\").
my $background_image = background1; # string | The background image (\"none\",\"background1\", or \"background2\").
my $background_color = ffffff; # string | The background color for the recipe card as a hex-string.
my $font_color = 333333; # string | The font color for the recipe card as a hex-string.

eval {
    my $result = $api_instance->create_recipe_card_get(id => $id, mask => $mask, background_image => $background_image, background_color => $background_color, font_color => $font_color);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->create_recipe_card_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **double**| The recipe id. | 
 **mask** | **string**| The mask to put over the recipe image (\&quot;ellipseMask\&quot;, \&quot;diamondMask\&quot;, \&quot;starMask\&quot;, \&quot;heartMask\&quot;, \&quot;potMask\&quot;, \&quot;fishMask\&quot;). | [optional] 
 **background_image** | **string**| The background image (\&quot;none\&quot;,\&quot;background1\&quot;, or \&quot;background2\&quot;). | [optional] 
 **background_color** | **string**| The background color for the recipe card as a hex-string. | [optional] 
 **font_color** | **string**| The font color for the recipe card as a hex-string. | [optional] 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_restaurants**
> SearchRestaurants200Response search_restaurants(query => $query, lat => $lat, lng => $lng, distance => $distance, budget => $budget, cuisine => $cuisine, min_rating => $min_rating, is_open => $is_open, sort => $sort, page => $page)

Search Restaurants

Search through thousands of restaurants (in North America) by location, cuisine, budget, and more.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $query = beach cafe; # string | The search query.
my $lat = 37.7786357; # double | The latitude of the user's location.
my $lng = -122.3918135; # double | The longitude of the user's location.\".
my $distance = 2; # double | The distance around the location in miles.
my $budget = 20; # double | The user's budget for a meal in USD.
my $cuisine = italian; # string | The cuisine of the restaurant.
my $min_rating = 4.4; # double | The minimum rating of the restaurant between 0 and 5.
my $is_open = true; # boolean | Whether the restaurant must be open at the time of search.
my $sort = distance; # string | How to sort the results, one of the following 'cheapest', 'fastest', 'rating', 'distance' or the default 'relevance'.
my $page = 0; # double | The page number of results.

eval {
    my $result = $api_instance->search_restaurants(query => $query, lat => $lat, lng => $lng, distance => $distance, budget => $budget, cuisine => $cuisine, min_rating => $min_rating, is_open => $is_open, sort => $sort, page => $page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->search_restaurants: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The search query. | [optional] 
 **lat** | **double**| The latitude of the user&#39;s location. | [optional] 
 **lng** | **double**| The longitude of the user&#39;s location.\&quot;. | [optional] 
 **distance** | **double**| The distance around the location in miles. | [optional] 
 **budget** | **double**| The user&#39;s budget for a meal in USD. | [optional] 
 **cuisine** | **string**| The cuisine of the restaurant. | [optional] 
 **min_rating** | **double**| The minimum rating of the restaurant between 0 and 5. | [optional] 
 **is_open** | **boolean**| Whether the restaurant must be open at the time of search. | [optional] 
 **sort** | **string**| How to sort the results, one of the following &#39;cheapest&#39;, &#39;fastest&#39;, &#39;rating&#39;, &#39;distance&#39; or the default &#39;relevance&#39;. | [optional] 
 **page** | **double**| The page number of results. | [optional] 

### Return type

[**SearchRestaurants200Response**](SearchRestaurants200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

