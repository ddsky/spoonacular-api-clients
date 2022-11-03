# com.spoonacular.client\DefaultApi

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AnalyzeRecipe**](DefaultApi.md#AnalyzeRecipe) | **Post** /recipes/analyze | Analyze Recipe
[**CreateRecipeCardGet**](DefaultApi.md#CreateRecipeCardGet) | **Get** /recipes/{id}/card | Create Recipe Card
[**SearchRestaurants**](DefaultApi.md#SearchRestaurants) | **Get** /food/restaurants/search | Search Restaurants



## AnalyzeRecipe

> map[string]interface{} AnalyzeRecipe(ctx).AnalyzeRecipeRequest(analyzeRecipeRequest).Language(language).IncludeNutrition(includeNutrition).IncludeTaste(includeTaste).Execute()

Analyze Recipe



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    analyzeRecipeRequest := *openapiclient.NewAnalyzeRecipeRequest() // AnalyzeRecipeRequest | Example request body.
    language := "en" // string | The input language, either \"en\" or \"de\". (optional)
    includeNutrition := false // bool | Whether nutrition data should be added to correctly parsed ingredients. (optional)
    includeTaste := false // bool | Whether taste data should be added to correctly parsed ingredients. (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.DefaultApi.AnalyzeRecipe(context.Background()).AnalyzeRecipeRequest(analyzeRecipeRequest).Language(language).IncludeNutrition(includeNutrition).IncludeTaste(includeTaste).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DefaultApi.AnalyzeRecipe``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `AnalyzeRecipe`: map[string]interface{}
    fmt.Fprintf(os.Stdout, "Response from `DefaultApi.AnalyzeRecipe`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiAnalyzeRecipeRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **analyzeRecipeRequest** | [**AnalyzeRecipeRequest**](AnalyzeRecipeRequest.md) | Example request body. | 
 **language** | **string** | The input language, either \&quot;en\&quot; or \&quot;de\&quot;. | 
 **includeNutrition** | **bool** | Whether nutrition data should be added to correctly parsed ingredients. | 
 **includeTaste** | **bool** | Whether taste data should be added to correctly parsed ingredients. | 

### Return type

**map[string]interface{}**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: , application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CreateRecipeCardGet

> map[string]interface{} CreateRecipeCardGet(ctx, id).Mask(mask).BackgroundImage(backgroundImage).BackgroundColor(backgroundColor).FontColor(fontColor).Execute()

Create Recipe Card



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    id := float32(4632) // float32 | The recipe id.
    mask := "ellipseMask" // string | The mask to put over the recipe image (\"ellipseMask\", \"diamondMask\", \"starMask\", \"heartMask\", \"potMask\", \"fishMask\"). (optional)
    backgroundImage := "background1" // string | The background image (\"none\",\"background1\", or \"background2\"). (optional)
    backgroundColor := "ffffff" // string | The background color for the recipe card as a hex-string. (optional)
    fontColor := "333333" // string | The font color for the recipe card as a hex-string. (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.DefaultApi.CreateRecipeCardGet(context.Background(), id).Mask(mask).BackgroundImage(backgroundImage).BackgroundColor(backgroundColor).FontColor(fontColor).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DefaultApi.CreateRecipeCardGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `CreateRecipeCardGet`: map[string]interface{}
    fmt.Fprintf(os.Stdout, "Response from `DefaultApi.CreateRecipeCardGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **float32** | The recipe id. | 

### Other Parameters

Other parameters are passed through a pointer to a apiCreateRecipeCardGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **mask** | **string** | The mask to put over the recipe image (\&quot;ellipseMask\&quot;, \&quot;diamondMask\&quot;, \&quot;starMask\&quot;, \&quot;heartMask\&quot;, \&quot;potMask\&quot;, \&quot;fishMask\&quot;). | 
 **backgroundImage** | **string** | The background image (\&quot;none\&quot;,\&quot;background1\&quot;, or \&quot;background2\&quot;). | 
 **backgroundColor** | **string** | The background color for the recipe card as a hex-string. | 
 **fontColor** | **string** | The font color for the recipe card as a hex-string. | 

### Return type

**map[string]interface{}**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SearchRestaurants

> SearchRestaurants200Response SearchRestaurants(ctx).Query(query).Lat(lat).Lng(lng).Distance(distance).Budget(budget).Cuisine(cuisine).MinRating(minRating).IsOpen(isOpen).Sort(sort).Page(page).Execute()

Search Restaurants



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    query := "beach cafe" // string | The search query. (optional)
    lat := float32(37.7786357) // float32 | The latitude of the user's location. (optional)
    lng := float32(-122.3918135) // float32 | The longitude of the user's location.\". (optional)
    distance := float32(2) // float32 | The distance around the location in miles. (optional)
    budget := float32(20) // float32 | The user's budget for a meal in USD. (optional)
    cuisine := "italian" // string | The cuisine of the restaurant. (optional)
    minRating := float32(4.4) // float32 | The minimum rating of the restaurant between 0 and 5. (optional)
    isOpen := true // bool | Whether the restaurant must be open at the time of search. (optional)
    sort := "distance" // string | How to sort the results, one of the following 'cheapest', 'fastest', 'rating', 'distance' or the default 'relevance'. (optional)
    page := float32(0) // float32 | The page number of results. (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.DefaultApi.SearchRestaurants(context.Background()).Query(query).Lat(lat).Lng(lng).Distance(distance).Budget(budget).Cuisine(cuisine).MinRating(minRating).IsOpen(isOpen).Sort(sort).Page(page).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DefaultApi.SearchRestaurants``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `SearchRestaurants`: SearchRestaurants200Response
    fmt.Fprintf(os.Stdout, "Response from `DefaultApi.SearchRestaurants`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiSearchRestaurantsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string** | The search query. | 
 **lat** | **float32** | The latitude of the user&#39;s location. | 
 **lng** | **float32** | The longitude of the user&#39;s location.\&quot;. | 
 **distance** | **float32** | The distance around the location in miles. | 
 **budget** | **float32** | The user&#39;s budget for a meal in USD. | 
 **cuisine** | **string** | The cuisine of the restaurant. | 
 **minRating** | **float32** | The minimum rating of the restaurant between 0 and 5. | 
 **isOpen** | **bool** | Whether the restaurant must be open at the time of search. | 
 **sort** | **string** | How to sort the results, one of the following &#39;cheapest&#39;, &#39;fastest&#39;, &#39;rating&#39;, &#39;distance&#39; or the default &#39;relevance&#39;. | 
 **page** | **float32** | The page number of results. | 

### Return type

[**SearchRestaurants200Response**](SearchRestaurants200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

