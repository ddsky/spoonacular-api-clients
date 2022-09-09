# com.spoonacular.client\MenuItemsApi

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AutocompleteMenuItemSearch**](MenuItemsApi.md#AutocompleteMenuItemSearch) | **Get** /food/menuItems/suggest | Autocomplete Menu Item Search
[**GetMenuItemInformation**](MenuItemsApi.md#GetMenuItemInformation) | **Get** /food/menuItems/{id} | Get Menu Item Information
[**MenuItemNutritionByIDImage**](MenuItemsApi.md#MenuItemNutritionByIDImage) | **Get** /food/menuItems/{id}/nutritionWidget.png | Menu Item Nutrition by ID Image
[**MenuItemNutritionLabelImage**](MenuItemsApi.md#MenuItemNutritionLabelImage) | **Get** /food/menuItems/{id}/nutritionLabel.png | Menu Item Nutrition Label Image
[**MenuItemNutritionLabelWidget**](MenuItemsApi.md#MenuItemNutritionLabelWidget) | **Get** /food/menuItems/{id}/nutritionLabel | Menu Item Nutrition Label Widget
[**SearchMenuItems**](MenuItemsApi.md#SearchMenuItems) | **Get** /food/menuItems/search | Search Menu Items
[**VisualizeMenuItemNutritionByID**](MenuItemsApi.md#VisualizeMenuItemNutritionByID) | **Get** /food/menuItems/{id}/nutritionWidget | Menu Item Nutrition by ID Widget



## AutocompleteMenuItemSearch

> AutocompleteMenuItemSearch200Response AutocompleteMenuItemSearch(ctx).Query(query).Number(number).Execute()

Autocomplete Menu Item Search



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
    query := "chicke" // string | The (partial) search query.
    number := float32(10) // float32 | The number of results to return (between 1 and 25). (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.MenuItemsApi.AutocompleteMenuItemSearch(context.Background()).Query(query).Number(number).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `MenuItemsApi.AutocompleteMenuItemSearch``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `AutocompleteMenuItemSearch`: AutocompleteMenuItemSearch200Response
    fmt.Fprintf(os.Stdout, "Response from `MenuItemsApi.AutocompleteMenuItemSearch`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiAutocompleteMenuItemSearchRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string** | The (partial) search query. | 
 **number** | **float32** | The number of results to return (between 1 and 25). | 

### Return type

[**AutocompleteMenuItemSearch200Response**](AutocompleteMenuItemSearch200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetMenuItemInformation

> GetMenuItemInformation200Response GetMenuItemInformation(ctx, id).Execute()

Get Menu Item Information



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
    id := int32(1) // int32 | The item's id.

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.MenuItemsApi.GetMenuItemInformation(context.Background(), id).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `MenuItemsApi.GetMenuItemInformation``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `GetMenuItemInformation`: GetMenuItemInformation200Response
    fmt.Fprintf(os.Stdout, "Response from `MenuItemsApi.GetMenuItemInformation`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | The item&#39;s id. | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetMenuItemInformationRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**GetMenuItemInformation200Response**](GetMenuItemInformation200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MenuItemNutritionByIDImage

> map[string]interface{} MenuItemNutritionByIDImage(ctx, id).Execute()

Menu Item Nutrition by ID Image



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
    id := float32(424571) // float32 | The menu item id.

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.MenuItemsApi.MenuItemNutritionByIDImage(context.Background(), id).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `MenuItemsApi.MenuItemNutritionByIDImage``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `MenuItemNutritionByIDImage`: map[string]interface{}
    fmt.Fprintf(os.Stdout, "Response from `MenuItemsApi.MenuItemNutritionByIDImage`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **float32** | The menu item id. | 

### Other Parameters

Other parameters are passed through a pointer to a apiMenuItemNutritionByIDImageRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

**map[string]interface{}**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MenuItemNutritionLabelImage

> map[string]interface{} MenuItemNutritionLabelImage(ctx, id).ShowOptionalNutrients(showOptionalNutrients).ShowZeroValues(showZeroValues).ShowIngredients(showIngredients).Execute()

Menu Item Nutrition Label Image



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
    id := float32(342313) // float32 | The menu item id.
    showOptionalNutrients := false // bool | Whether to show optional nutrients. (optional)
    showZeroValues := false // bool | Whether to show zero values. (optional)
    showIngredients := false // bool | Whether to show a list of ingredients. (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.MenuItemsApi.MenuItemNutritionLabelImage(context.Background(), id).ShowOptionalNutrients(showOptionalNutrients).ShowZeroValues(showZeroValues).ShowIngredients(showIngredients).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `MenuItemsApi.MenuItemNutritionLabelImage``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `MenuItemNutritionLabelImage`: map[string]interface{}
    fmt.Fprintf(os.Stdout, "Response from `MenuItemsApi.MenuItemNutritionLabelImage`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **float32** | The menu item id. | 

### Other Parameters

Other parameters are passed through a pointer to a apiMenuItemNutritionLabelImageRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **showOptionalNutrients** | **bool** | Whether to show optional nutrients. | 
 **showZeroValues** | **bool** | Whether to show zero values. | 
 **showIngredients** | **bool** | Whether to show a list of ingredients. | 

### Return type

**map[string]interface{}**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MenuItemNutritionLabelWidget

> string MenuItemNutritionLabelWidget(ctx, id).DefaultCss(defaultCss).ShowOptionalNutrients(showOptionalNutrients).ShowZeroValues(showZeroValues).ShowIngredients(showIngredients).Execute()

Menu Item Nutrition Label Widget



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
    id := float32(342313) // float32 | The menu item id.
    defaultCss := false // bool | Whether the default CSS should be added to the response. (optional) (default to true)
    showOptionalNutrients := false // bool | Whether to show optional nutrients. (optional)
    showZeroValues := false // bool | Whether to show zero values. (optional)
    showIngredients := false // bool | Whether to show a list of ingredients. (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.MenuItemsApi.MenuItemNutritionLabelWidget(context.Background(), id).DefaultCss(defaultCss).ShowOptionalNutrients(showOptionalNutrients).ShowZeroValues(showZeroValues).ShowIngredients(showIngredients).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `MenuItemsApi.MenuItemNutritionLabelWidget``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `MenuItemNutritionLabelWidget`: string
    fmt.Fprintf(os.Stdout, "Response from `MenuItemsApi.MenuItemNutritionLabelWidget`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **float32** | The menu item id. | 

### Other Parameters

Other parameters are passed through a pointer to a apiMenuItemNutritionLabelWidgetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **defaultCss** | **bool** | Whether the default CSS should be added to the response. | [default to true]
 **showOptionalNutrients** | **bool** | Whether to show optional nutrients. | 
 **showZeroValues** | **bool** | Whether to show zero values. | 
 **showIngredients** | **bool** | Whether to show a list of ingredients. | 

### Return type

**string**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SearchMenuItems

> SearchMenuItems200Response SearchMenuItems(ctx).Query(query).MinCalories(minCalories).MaxCalories(maxCalories).MinCarbs(minCarbs).MaxCarbs(maxCarbs).MinProtein(minProtein).MaxProtein(maxProtein).MinFat(minFat).MaxFat(maxFat).AddMenuItemInformation(addMenuItemInformation).Offset(offset).Number(number).Execute()

Search Menu Items



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
    query := "burger" // string | The (natural language) search query. (optional)
    minCalories := float32(50) // float32 | The minimum amount of calories the menu item must have. (optional)
    maxCalories := float32(800) // float32 | The maximum amount of calories the menu item can have. (optional)
    minCarbs := float32(10) // float32 | The minimum amount of carbohydrates in grams the menu item must have. (optional)
    maxCarbs := float32(100) // float32 | The maximum amount of carbohydrates in grams the menu item can have. (optional)
    minProtein := float32(10) // float32 | The minimum amount of protein in grams the menu item must have. (optional)
    maxProtein := float32(100) // float32 | The maximum amount of protein in grams the menu item can have. (optional)
    minFat := float32(1) // float32 | The minimum amount of fat in grams the menu item must have. (optional)
    maxFat := float32(100) // float32 | The maximum amount of fat in grams the menu item can have. (optional)
    addMenuItemInformation := true // bool | If set to true, you get more information about the menu items returned. (optional)
    offset := int32(56) // int32 | The number of results to skip (between 0 and 900). (optional)
    number := int32(10) // int32 | The maximum number of items to return (between 1 and 100). Defaults to 10. (optional) (default to 10)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.MenuItemsApi.SearchMenuItems(context.Background()).Query(query).MinCalories(minCalories).MaxCalories(maxCalories).MinCarbs(minCarbs).MaxCarbs(maxCarbs).MinProtein(minProtein).MaxProtein(maxProtein).MinFat(minFat).MaxFat(maxFat).AddMenuItemInformation(addMenuItemInformation).Offset(offset).Number(number).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `MenuItemsApi.SearchMenuItems``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `SearchMenuItems`: SearchMenuItems200Response
    fmt.Fprintf(os.Stdout, "Response from `MenuItemsApi.SearchMenuItems`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiSearchMenuItemsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string** | The (natural language) search query. | 
 **minCalories** | **float32** | The minimum amount of calories the menu item must have. | 
 **maxCalories** | **float32** | The maximum amount of calories the menu item can have. | 
 **minCarbs** | **float32** | The minimum amount of carbohydrates in grams the menu item must have. | 
 **maxCarbs** | **float32** | The maximum amount of carbohydrates in grams the menu item can have. | 
 **minProtein** | **float32** | The minimum amount of protein in grams the menu item must have. | 
 **maxProtein** | **float32** | The maximum amount of protein in grams the menu item can have. | 
 **minFat** | **float32** | The minimum amount of fat in grams the menu item must have. | 
 **maxFat** | **float32** | The maximum amount of fat in grams the menu item can have. | 
 **addMenuItemInformation** | **bool** | If set to true, you get more information about the menu items returned. | 
 **offset** | **int32** | The number of results to skip (between 0 and 900). | 
 **number** | **int32** | The maximum number of items to return (between 1 and 100). Defaults to 10. | [default to 10]

### Return type

[**SearchMenuItems200Response**](SearchMenuItems200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## VisualizeMenuItemNutritionByID

> string VisualizeMenuItemNutritionByID(ctx, id).DefaultCss(defaultCss).Accept(accept).Execute()

Menu Item Nutrition by ID Widget



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
    id := int32(1) // int32 | The item's id.
    defaultCss := false // bool | Whether the default CSS should be added to the response. (optional) (default to true)
    accept := "application/json" // string | Accept header. (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.MenuItemsApi.VisualizeMenuItemNutritionByID(context.Background(), id).DefaultCss(defaultCss).Accept(accept).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `MenuItemsApi.VisualizeMenuItemNutritionByID``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `VisualizeMenuItemNutritionByID`: string
    fmt.Fprintf(os.Stdout, "Response from `MenuItemsApi.VisualizeMenuItemNutritionByID`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | The item&#39;s id. | 

### Other Parameters

Other parameters are passed through a pointer to a apiVisualizeMenuItemNutritionByIDRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **defaultCss** | **bool** | Whether the default CSS should be added to the response. | [default to true]
 **accept** | **string** | Accept header. | 

### Return type

**string**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

