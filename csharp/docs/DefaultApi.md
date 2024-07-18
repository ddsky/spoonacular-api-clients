# spoonacular.Api.DefaultApi

All URIs are relative to *https://api.spoonacular.com*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**AnalyzeRecipe**](DefaultApi.md#analyzerecipe) | **POST** /recipes/analyze | Analyze Recipe |
| [**CreateRecipeCardGet**](DefaultApi.md#createrecipecardget) | **GET** /recipes/{id}/card | Create Recipe Card |
| [**SearchRestaurants**](DefaultApi.md#searchrestaurants) | **GET** /food/restaurants/search | Search Restaurants |

<a id="analyzerecipe"></a>
# **AnalyzeRecipe**
> Object AnalyzeRecipe (AnalyzeRecipeRequest analyzeRecipeRequest, string? language = null, bool? includeNutrition = null, bool? includeTaste = null)

Analyze Recipe

This endpoint allows you to send raw recipe information, such as title, servings, and ingredients, to then see what we compute (badges, diets, nutrition, and more). This is useful if you have your own recipe data and want to enrich it with our semantic analysis.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using spoonacular.Api;
using spoonacular.Client;
using spoonacular.Model;

namespace Example
{
    public class AnalyzeRecipeExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.spoonacular.com";
            // Configure API key authorization: apiKeyScheme
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new DefaultApi(config);
            var analyzeRecipeRequest = new AnalyzeRecipeRequest(); // AnalyzeRecipeRequest | Example request body.
            var language = en;  // string? | The input language, either \"en\" or \"de\". (optional) 
            var includeNutrition = false;  // bool? | Whether nutrition data should be added to correctly parsed ingredients. (optional) 
            var includeTaste = false;  // bool? | Whether taste data should be added to correctly parsed ingredients. (optional) 

            try
            {
                // Analyze Recipe
                Object result = apiInstance.AnalyzeRecipe(analyzeRecipeRequest, language, includeNutrition, includeTaste);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DefaultApi.AnalyzeRecipe: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the AnalyzeRecipeWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Analyze Recipe
    ApiResponse<Object> response = apiInstance.AnalyzeRecipeWithHttpInfo(analyzeRecipeRequest, language, includeNutrition, includeTaste);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling DefaultApi.AnalyzeRecipeWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **analyzeRecipeRequest** | [**AnalyzeRecipeRequest**](AnalyzeRecipeRequest.md) | Example request body. |  |
| **language** | **string?** | The input language, either \&quot;en\&quot; or \&quot;de\&quot;. | [optional]  |
| **includeNutrition** | **bool?** | Whether nutrition data should be added to correctly parsed ingredients. | [optional]  |
| **includeTaste** | **bool?** | Whether taste data should be added to correctly parsed ingredients. | [optional]  |

### Return type

**Object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="createrecipecardget"></a>
# **CreateRecipeCardGet**
> Object CreateRecipeCardGet (int id, string? mask = null, string? backgroundImage = null, string? backgroundColor = null, string? fontColor = null)

Create Recipe Card

Generate a recipe card for a recipe.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using spoonacular.Api;
using spoonacular.Client;
using spoonacular.Model;

namespace Example
{
    public class CreateRecipeCardGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.spoonacular.com";
            // Configure API key authorization: apiKeyScheme
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new DefaultApi(config);
            var id = 4632;  // int | The recipe id.
            var mask = ellipseMask;  // string? | The mask to put over the recipe image (\"ellipseMask\", \"diamondMask\", \"starMask\", \"heartMask\", \"potMask\", \"fishMask\"). (optional) 
            var backgroundImage = background1;  // string? | The background image (\"none\",\"background1\", or \"background2\"). (optional) 
            var backgroundColor = ffffff;  // string? | The background color for the recipe card as a hex-string. (optional) 
            var fontColor = 333333;  // string? | The font color for the recipe card as a hex-string. (optional) 

            try
            {
                // Create Recipe Card
                Object result = apiInstance.CreateRecipeCardGet(id, mask, backgroundImage, backgroundColor, fontColor);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DefaultApi.CreateRecipeCardGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CreateRecipeCardGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Create Recipe Card
    ApiResponse<Object> response = apiInstance.CreateRecipeCardGetWithHttpInfo(id, mask, backgroundImage, backgroundColor, fontColor);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling DefaultApi.CreateRecipeCardGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **int** | The recipe id. |  |
| **mask** | **string?** | The mask to put over the recipe image (\&quot;ellipseMask\&quot;, \&quot;diamondMask\&quot;, \&quot;starMask\&quot;, \&quot;heartMask\&quot;, \&quot;potMask\&quot;, \&quot;fishMask\&quot;). | [optional]  |
| **backgroundImage** | **string?** | The background image (\&quot;none\&quot;,\&quot;background1\&quot;, or \&quot;background2\&quot;). | [optional]  |
| **backgroundColor** | **string?** | The background color for the recipe card as a hex-string. | [optional]  |
| **fontColor** | **string?** | The font color for the recipe card as a hex-string. | [optional]  |

### Return type

**Object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="searchrestaurants"></a>
# **SearchRestaurants**
> SearchRestaurants200Response SearchRestaurants (string? query = null, decimal? lat = null, decimal? lng = null, decimal? distance = null, decimal? budget = null, string? cuisine = null, decimal? minRating = null, bool? isOpen = null, string? sort = null, decimal? page = null)

Search Restaurants

Search through thousands of restaurants (in North America) by location, cuisine, budget, and more.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using spoonacular.Api;
using spoonacular.Client;
using spoonacular.Model;

namespace Example
{
    public class SearchRestaurantsExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.spoonacular.com";
            // Configure API key authorization: apiKeyScheme
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new DefaultApi(config);
            var query = beach cafe;  // string? | The search query. (optional) 
            var lat = 37.7786357;  // decimal? | The latitude of the user's location. (optional) 
            var lng = -122.3918135;  // decimal? | The longitude of the user's location.\". (optional) 
            var distance = 2;  // decimal? | The distance around the location in miles. (optional) 
            var budget = 20;  // decimal? | The user's budget for a meal in USD. (optional) 
            var cuisine = italian;  // string? | The cuisine of the restaurant. (optional) 
            var minRating = 4.4;  // decimal? | The minimum rating of the restaurant between 0 and 5. (optional) 
            var isOpen = true;  // bool? | Whether the restaurant must be open at the time of search. (optional) 
            var sort = distance;  // string? | How to sort the results, one of the following 'cheapest', 'fastest', 'rating', 'distance' or the default 'relevance'. (optional) 
            var page = 0;  // decimal? | The page number of results. (optional) 

            try
            {
                // Search Restaurants
                SearchRestaurants200Response result = apiInstance.SearchRestaurants(query, lat, lng, distance, budget, cuisine, minRating, isOpen, sort, page);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DefaultApi.SearchRestaurants: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SearchRestaurantsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Search Restaurants
    ApiResponse<SearchRestaurants200Response> response = apiInstance.SearchRestaurantsWithHttpInfo(query, lat, lng, distance, budget, cuisine, minRating, isOpen, sort, page);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling DefaultApi.SearchRestaurantsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **query** | **string?** | The search query. | [optional]  |
| **lat** | **decimal?** | The latitude of the user&#39;s location. | [optional]  |
| **lng** | **decimal?** | The longitude of the user&#39;s location.\&quot;. | [optional]  |
| **distance** | **decimal?** | The distance around the location in miles. | [optional]  |
| **budget** | **decimal?** | The user&#39;s budget for a meal in USD. | [optional]  |
| **cuisine** | **string?** | The cuisine of the restaurant. | [optional]  |
| **minRating** | **decimal?** | The minimum rating of the restaurant between 0 and 5. | [optional]  |
| **isOpen** | **bool?** | Whether the restaurant must be open at the time of search. | [optional]  |
| **sort** | **string?** | How to sort the results, one of the following &#39;cheapest&#39;, &#39;fastest&#39;, &#39;rating&#39;, &#39;distance&#39; or the default &#39;relevance&#39;. | [optional]  |
| **page** | **decimal?** | The page number of results. | [optional]  |

### Return type

[**SearchRestaurants200Response**](SearchRestaurants200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

