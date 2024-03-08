# \DefaultApi

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**analyze_recipe**](DefaultApi.md#analyze_recipe) | **POST** /recipes/analyze | Analyze Recipe
[**create_recipe_card_get**](DefaultApi.md#create_recipe_card_get) | **GET** /recipes/{id}/card | Create Recipe Card
[**search_restaurants**](DefaultApi.md#search_restaurants) | **GET** /food/restaurants/search | Search Restaurants



## analyze_recipe

> serde_json::Value analyze_recipe(analyze_recipe_request, language, include_nutrition, include_taste)
Analyze Recipe

This endpoint allows you to send raw recipe information, such as title, servings, and ingredients, to then see what we compute (badges, diets, nutrition, and more). This is useful if you have your own recipe data and want to enrich it with our semantic analysis.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**analyze_recipe_request** | [**AnalyzeRecipeRequest**](AnalyzeRecipeRequest.md) | Example request body. | [required] |
**language** | Option<**String**> | The input language, either \"en\" or \"de\". |  |
**include_nutrition** | Option<**bool**> | Whether nutrition data should be added to correctly parsed ingredients. |  |
**include_taste** | Option<**bool**> | Whether taste data should be added to correctly parsed ingredients. |  |

### Return type

[**serde_json::Value**](serde_json::Value.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: , application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## create_recipe_card_get

> serde_json::Value create_recipe_card_get(id, mask, background_image, background_color, font_color)
Create Recipe Card

Generate a recipe card for a recipe.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **f32** | The recipe id. | [required] |
**mask** | Option<**String**> | The mask to put over the recipe image (\"ellipseMask\", \"diamondMask\", \"starMask\", \"heartMask\", \"potMask\", \"fishMask\"). |  |
**background_image** | Option<**String**> | The background image (\"none\",\"background1\", or \"background2\"). |  |
**background_color** | Option<**String**> | The background color for the recipe card as a hex-string. |  |
**font_color** | Option<**String**> | The font color for the recipe card as a hex-string. |  |

### Return type

[**serde_json::Value**](serde_json::Value.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## search_restaurants

> crate::models::SearchRestaurants200Response search_restaurants(query, lat, lng, distance, budget, cuisine, min_rating, is_open, sort, page)
Search Restaurants

Search through thousands of restaurants (in North America) by location, cuisine, budget, and more.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**query** | Option<**String**> | The search query. |  |
**lat** | Option<**f32**> | The latitude of the user's location. |  |
**lng** | Option<**f32**> | The longitude of the user's location.\". |  |
**distance** | Option<**f32**> | The distance around the location in miles. |  |
**budget** | Option<**f32**> | The user's budget for a meal in USD. |  |
**cuisine** | Option<**String**> | The cuisine of the restaurant. |  |
**min_rating** | Option<**f32**> | The minimum rating of the restaurant between 0 and 5. |  |
**is_open** | Option<**bool**> | Whether the restaurant must be open at the time of search. |  |
**sort** | Option<**String**> | How to sort the results, one of the following 'cheapest', 'fastest', 'rating', 'distance' or the default 'relevance'. |  |
**page** | Option<**f32**> | The page number of results. |  |

### Return type

[**crate::models::SearchRestaurants200Response**](searchRestaurants_200_response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

