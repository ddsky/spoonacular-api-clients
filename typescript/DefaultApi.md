# .DefaultApi

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**analyzeRecipe**](DefaultApi.md#analyzeRecipe) | **POST** /recipes/analyze | Analyze Recipe
[**createRecipeCardGet**](DefaultApi.md#createRecipeCardGet) | **GET** /recipes/{id}/card | Create Recipe Card
[**searchRestaurants**](DefaultApi.md#searchRestaurants) | **GET** /food/restaurants/search | Search Restaurants


# **analyzeRecipe**
> any analyzeRecipe(analyzeRecipeRequest)

This endpoint allows you to send raw recipe information, such as title, servings, and ingredients, to then see what we compute (badges, diets, nutrition, and more). This is useful if you have your own recipe data and want to enrich it with our semantic analysis.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .DefaultApi(configuration);

let body:.DefaultApiAnalyzeRecipeRequest = {
  // AnalyzeRecipeRequest | Example request body.
  analyzeRecipeRequest: {
    language: "en",
    includeNutrition: false,
    includeTaste: false,
  },
  // string | The input language, either \"en\" or \"de\". (optional)
  language: "en",
  // boolean | Whether nutrition data should be added to correctly parsed ingredients. (optional)
  includeNutrition: false,
  // boolean | Whether taste data should be added to correctly parsed ingredients. (optional)
  includeTaste: false,
};

apiInstance.analyzeRecipe(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **analyzeRecipeRequest** | **AnalyzeRecipeRequest**| Example request body. |
 **language** | [**string**] | The input language, either \&quot;en\&quot; or \&quot;de\&quot;. | (optional) defaults to undefined
 **includeNutrition** | [**boolean**] | Whether nutrition data should be added to correctly parsed ingredients. | (optional) defaults to undefined
 **includeTaste** | [**boolean**] | Whether taste data should be added to correctly parsed ingredients. | (optional) defaults to undefined


### Return type

**any**

### Authorization

[apiKeyScheme](README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: , application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **createRecipeCardGet**
> any createRecipeCardGet()

Generate a recipe card for a recipe.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .DefaultApi(configuration);

let body:.DefaultApiCreateRecipeCardGetRequest = {
  // number | The recipe id.
  id: 4632,
  // string | The mask to put over the recipe image (\"ellipseMask\", \"diamondMask\", \"starMask\", \"heartMask\", \"potMask\", \"fishMask\"). (optional)
  mask: "ellipseMask",
  // string | The background image (\"none\",\"background1\", or \"background2\"). (optional)
  backgroundImage: "background1",
  // string | The background color for the recipe card as a hex-string. (optional)
  backgroundColor: "ffffff",
  // string | The font color for the recipe card as a hex-string. (optional)
  fontColor: "333333",
};

apiInstance.createRecipeCardGet(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**number**] | The recipe id. | defaults to undefined
 **mask** | [**string**] | The mask to put over the recipe image (\&quot;ellipseMask\&quot;, \&quot;diamondMask\&quot;, \&quot;starMask\&quot;, \&quot;heartMask\&quot;, \&quot;potMask\&quot;, \&quot;fishMask\&quot;). | (optional) defaults to undefined
 **backgroundImage** | [**string**] | The background image (\&quot;none\&quot;,\&quot;background1\&quot;, or \&quot;background2\&quot;). | (optional) defaults to undefined
 **backgroundColor** | [**string**] | The background color for the recipe card as a hex-string. | (optional) defaults to undefined
 **fontColor** | [**string**] | The font color for the recipe card as a hex-string. | (optional) defaults to undefined


### Return type

**any**

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

# **searchRestaurants**
> SearchRestaurants200Response searchRestaurants()

Search through thousands of restaurants (in North America) by location, cuisine, budget, and more.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .DefaultApi(configuration);

let body:.DefaultApiSearchRestaurantsRequest = {
  // string | The search query. (optional)
  query: "beach cafe",
  // number | The latitude of the user's location. (optional)
  lat: 37.7786357,
  // number | The longitude of the user's location.\". (optional)
  lng: -122.3918135,
  // number | The distance around the location in miles. (optional)
  distance: 2,
  // number | The user's budget for a meal in USD. (optional)
  budget: 20,
  // string | The cuisine of the restaurant. (optional)
  cuisine: "italian",
  // number | The minimum rating of the restaurant between 0 and 5. (optional)
  minRating: 4.4,
  // boolean | Whether the restaurant must be open at the time of search. (optional)
  isOpen: true,
  // string | How to sort the results, one of the following 'cheapest', 'fastest', 'rating', 'distance' or the default 'relevance'. (optional)
  sort: "distance",
  // number | The page number of results. (optional)
  page: 0,
};

apiInstance.searchRestaurants(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | [**string**] | The search query. | (optional) defaults to undefined
 **lat** | [**number**] | The latitude of the user&#39;s location. | (optional) defaults to undefined
 **lng** | [**number**] | The longitude of the user&#39;s location.\&quot;. | (optional) defaults to undefined
 **distance** | [**number**] | The distance around the location in miles. | (optional) defaults to undefined
 **budget** | [**number**] | The user&#39;s budget for a meal in USD. | (optional) defaults to undefined
 **cuisine** | [**string**] | The cuisine of the restaurant. | (optional) defaults to undefined
 **minRating** | [**number**] | The minimum rating of the restaurant between 0 and 5. | (optional) defaults to undefined
 **isOpen** | [**boolean**] | Whether the restaurant must be open at the time of search. | (optional) defaults to undefined
 **sort** | [**string**] | How to sort the results, one of the following &#39;cheapest&#39;, &#39;fastest&#39;, &#39;rating&#39;, &#39;distance&#39; or the default &#39;relevance&#39;. | (optional) defaults to undefined
 **page** | [**number**] | The page number of results. | (optional) defaults to undefined


### Return type

**SearchRestaurants200Response**

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


