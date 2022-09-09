# com.spoonacular.client\WineApi

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetDishPairingForWine**](WineApi.md#GetDishPairingForWine) | **Get** /food/wine/dishes | Dish Pairing for Wine
[**GetWineDescription**](WineApi.md#GetWineDescription) | **Get** /food/wine/description | Wine Description
[**GetWinePairing**](WineApi.md#GetWinePairing) | **Get** /food/wine/pairing | Wine Pairing
[**GetWineRecommendation**](WineApi.md#GetWineRecommendation) | **Get** /food/wine/recommendation | Wine Recommendation



## GetDishPairingForWine

> GetDishPairingForWine200Response GetDishPairingForWine(ctx).Wine(wine).Execute()

Dish Pairing for Wine



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
    wine := "malbec" // string | The type of wine that should be paired, e.g. \"merlot\", \"riesling\", or \"malbec\".

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.WineApi.GetDishPairingForWine(context.Background()).Wine(wine).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `WineApi.GetDishPairingForWine``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `GetDishPairingForWine`: GetDishPairingForWine200Response
    fmt.Fprintf(os.Stdout, "Response from `WineApi.GetDishPairingForWine`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiGetDishPairingForWineRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wine** | **string** | The type of wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;. | 

### Return type

[**GetDishPairingForWine200Response**](GetDishPairingForWine200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetWineDescription

> GetWineDescription200Response GetWineDescription(ctx).Wine(wine).Execute()

Wine Description



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
    wine := "merlot" // string | The name of the wine that should be paired, e.g. \"merlot\", \"riesling\", or \"malbec\".

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.WineApi.GetWineDescription(context.Background()).Wine(wine).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `WineApi.GetWineDescription``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `GetWineDescription`: GetWineDescription200Response
    fmt.Fprintf(os.Stdout, "Response from `WineApi.GetWineDescription`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiGetWineDescriptionRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wine** | **string** | The name of the wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;. | 

### Return type

[**GetWineDescription200Response**](GetWineDescription200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetWinePairing

> GetWinePairing200Response GetWinePairing(ctx).Food(food).MaxPrice(maxPrice).Execute()

Wine Pairing



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
    food := "steak" // string | The food to get a pairing for. This can be a dish (\"steak\"), an ingredient (\"salmon\"), or a cuisine (\"italian\").
    maxPrice := float32(50) // float32 | The maximum price for the specific wine recommendation in USD. (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.WineApi.GetWinePairing(context.Background()).Food(food).MaxPrice(maxPrice).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `WineApi.GetWinePairing``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `GetWinePairing`: GetWinePairing200Response
    fmt.Fprintf(os.Stdout, "Response from `WineApi.GetWinePairing`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiGetWinePairingRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **food** | **string** | The food to get a pairing for. This can be a dish (\&quot;steak\&quot;), an ingredient (\&quot;salmon\&quot;), or a cuisine (\&quot;italian\&quot;). | 
 **maxPrice** | **float32** | The maximum price for the specific wine recommendation in USD. | 

### Return type

[**GetWinePairing200Response**](GetWinePairing200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetWineRecommendation

> GetWineRecommendation200Response GetWineRecommendation(ctx).Wine(wine).MaxPrice(maxPrice).MinRating(minRating).Number(number).Execute()

Wine Recommendation



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
    wine := "merlot" // string | The type of wine to get a specific product recommendation for.
    maxPrice := float32(50) // float32 | The maximum price for the specific wine recommendation in USD. (optional)
    minRating := float32(0.7) // float32 | The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars. (optional)
    number := float32(3) // float32 | The number of wine recommendations expected (between 1 and 100). (optional) (default to 10)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.WineApi.GetWineRecommendation(context.Background()).Wine(wine).MaxPrice(maxPrice).MinRating(minRating).Number(number).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `WineApi.GetWineRecommendation``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `GetWineRecommendation`: GetWineRecommendation200Response
    fmt.Fprintf(os.Stdout, "Response from `WineApi.GetWineRecommendation`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiGetWineRecommendationRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wine** | **string** | The type of wine to get a specific product recommendation for. | 
 **maxPrice** | **float32** | The maximum price for the specific wine recommendation in USD. | 
 **minRating** | **float32** | The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars. | 
 **number** | **float32** | The number of wine recommendations expected (between 1 and 100). | [default to 10]

### Return type

[**GetWineRecommendation200Response**](GetWineRecommendation200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

