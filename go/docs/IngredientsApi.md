# com.spoonacular.client\IngredientsApi

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AutocompleteIngredientSearch**](IngredientsApi.md#AutocompleteIngredientSearch) | **Get** /food/ingredients/autocomplete | Autocomplete Ingredient Search
[**ComputeIngredientAmount**](IngredientsApi.md#ComputeIngredientAmount) | **Get** /food/ingredients/{id}/amount | Compute Ingredient Amount
[**GetIngredientInformation**](IngredientsApi.md#GetIngredientInformation) | **Get** /food/ingredients/{id}/information | Get Ingredient Information
[**GetIngredientSubstitutes**](IngredientsApi.md#GetIngredientSubstitutes) | **Get** /food/ingredients/substitutes | Get Ingredient Substitutes
[**GetIngredientSubstitutesByID**](IngredientsApi.md#GetIngredientSubstitutesByID) | **Get** /food/ingredients/{id}/substitutes | Get Ingredient Substitutes by ID
[**IngredientSearch**](IngredientsApi.md#IngredientSearch) | **Get** /food/ingredients/search | Ingredient Search
[**IngredientsByIDImage**](IngredientsApi.md#IngredientsByIDImage) | **Get** /recipes/{id}/ingredientWidget.png | Ingredients by ID Image
[**MapIngredientsToGroceryProducts**](IngredientsApi.md#MapIngredientsToGroceryProducts) | **Post** /food/ingredients/map | Map Ingredients to Grocery Products
[**VisualizeIngredients**](IngredientsApi.md#VisualizeIngredients) | **Post** /recipes/visualizeIngredients | Ingredients Widget



## AutocompleteIngredientSearch

> []AutocompleteIngredientSearch200ResponseInner AutocompleteIngredientSearch(ctx).Query(query).Number(number).MetaInformation(metaInformation).Intolerances(intolerances).Language(language).Execute()

Autocomplete Ingredient Search



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
    number := int32(10) // int32 | The maximum number of items to return (between 1 and 100). Defaults to 10. (optional) (default to 10)
    metaInformation := false // bool | Whether to return more meta information about the ingredients. (optional)
    intolerances := "egg" // string | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. (optional)
    language := "en" // string | The language of the input. Either 'en' or 'de'. (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.IngredientsApi.AutocompleteIngredientSearch(context.Background()).Query(query).Number(number).MetaInformation(metaInformation).Intolerances(intolerances).Language(language).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `IngredientsApi.AutocompleteIngredientSearch``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `AutocompleteIngredientSearch`: []AutocompleteIngredientSearch200ResponseInner
    fmt.Fprintf(os.Stdout, "Response from `IngredientsApi.AutocompleteIngredientSearch`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiAutocompleteIngredientSearchRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string** | The (natural language) search query. | 
 **number** | **int32** | The maximum number of items to return (between 1 and 100). Defaults to 10. | [default to 10]
 **metaInformation** | **bool** | Whether to return more meta information about the ingredients. | 
 **intolerances** | **string** | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. | 
 **language** | **string** | The language of the input. Either &#39;en&#39; or &#39;de&#39;. | 

### Return type

[**[]AutocompleteIngredientSearch200ResponseInner**](AutocompleteIngredientSearch200ResponseInner.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ComputeIngredientAmount

> ComputeIngredientAmount200Response ComputeIngredientAmount(ctx, id).Nutrient(nutrient).Target(target).Unit(unit).Execute()

Compute Ingredient Amount



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
    id := float32(9266) // float32 | The id of the ingredient you want the amount for.
    nutrient := "protein" // string | The target nutrient. See a list of supported nutrients.
    target := float32(2) // float32 | The target number of the given nutrient.
    unit := "oz" // string | The target unit. (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.IngredientsApi.ComputeIngredientAmount(context.Background(), id).Nutrient(nutrient).Target(target).Unit(unit).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `IngredientsApi.ComputeIngredientAmount``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `ComputeIngredientAmount`: ComputeIngredientAmount200Response
    fmt.Fprintf(os.Stdout, "Response from `IngredientsApi.ComputeIngredientAmount`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **float32** | The id of the ingredient you want the amount for. | 

### Other Parameters

Other parameters are passed through a pointer to a apiComputeIngredientAmountRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **nutrient** | **string** | The target nutrient. See a list of supported nutrients. | 
 **target** | **float32** | The target number of the given nutrient. | 
 **unit** | **string** | The target unit. | 

### Return type

[**ComputeIngredientAmount200Response**](ComputeIngredientAmount200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetIngredientInformation

> GetIngredientInformation200Response GetIngredientInformation(ctx, id).Amount(amount).Unit(unit).Execute()

Get Ingredient Information



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
    amount := float32(150) // float32 | The amount of this ingredient. (optional)
    unit := "grams" // string | The unit for the given amount. (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.IngredientsApi.GetIngredientInformation(context.Background(), id).Amount(amount).Unit(unit).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `IngredientsApi.GetIngredientInformation``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `GetIngredientInformation`: GetIngredientInformation200Response
    fmt.Fprintf(os.Stdout, "Response from `IngredientsApi.GetIngredientInformation`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | The item&#39;s id. | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetIngredientInformationRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **amount** | **float32** | The amount of this ingredient. | 
 **unit** | **string** | The unit for the given amount. | 

### Return type

[**GetIngredientInformation200Response**](GetIngredientInformation200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetIngredientSubstitutes

> GetIngredientSubstitutes200Response GetIngredientSubstitutes(ctx).IngredientName(ingredientName).Execute()

Get Ingredient Substitutes



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
    ingredientName := "butter" // string | The name of the ingredient you want to replace.

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.IngredientsApi.GetIngredientSubstitutes(context.Background()).IngredientName(ingredientName).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `IngredientsApi.GetIngredientSubstitutes``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `GetIngredientSubstitutes`: GetIngredientSubstitutes200Response
    fmt.Fprintf(os.Stdout, "Response from `IngredientsApi.GetIngredientSubstitutes`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiGetIngredientSubstitutesRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredientName** | **string** | The name of the ingredient you want to replace. | 

### Return type

[**GetIngredientSubstitutes200Response**](GetIngredientSubstitutes200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetIngredientSubstitutesByID

> GetIngredientSubstitutes200Response GetIngredientSubstitutesByID(ctx, id).Execute()

Get Ingredient Substitutes by ID



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
    resp, r, err := apiClient.IngredientsApi.GetIngredientSubstitutesByID(context.Background(), id).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `IngredientsApi.GetIngredientSubstitutesByID``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `GetIngredientSubstitutesByID`: GetIngredientSubstitutes200Response
    fmt.Fprintf(os.Stdout, "Response from `IngredientsApi.GetIngredientSubstitutesByID`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | The item&#39;s id. | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetIngredientSubstitutesByIDRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**GetIngredientSubstitutes200Response**](GetIngredientSubstitutes200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## IngredientSearch

> IngredientSearch200Response IngredientSearch(ctx).Query(query).AddChildren(addChildren).MinProteinPercent(minProteinPercent).MaxProteinPercent(maxProteinPercent).MinFatPercent(minFatPercent).MaxFatPercent(maxFatPercent).MinCarbsPercent(minCarbsPercent).MaxCarbsPercent(maxCarbsPercent).MetaInformation(metaInformation).Intolerances(intolerances).Sort(sort).SortDirection(sortDirection).Offset(offset).Number(number).Language(language).Execute()

Ingredient Search



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
    addChildren := true // bool | Whether to add children of found foods. (optional)
    minProteinPercent := float32(10) // float32 | The minimum percentage of protein the food must have (between 0 and 100). (optional)
    maxProteinPercent := float32(90) // float32 | The maximum percentage of protein the food can have (between 0 and 100). (optional)
    minFatPercent := float32(10) // float32 | The minimum percentage of fat the food must have (between 0 and 100). (optional)
    maxFatPercent := float32(90) // float32 | The maximum percentage of fat the food can have (between 0 and 100). (optional)
    minCarbsPercent := float32(10) // float32 | The minimum percentage of carbs the food must have (between 0 and 100). (optional)
    maxCarbsPercent := float32(90) // float32 | The maximum percentage of carbs the food can have (between 0 and 100). (optional)
    metaInformation := false // bool | Whether to return more meta information about the ingredients. (optional)
    intolerances := "egg" // string | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. (optional)
    sort := "calories" // string | The strategy to sort recipes by. See a full list of supported sorting options. (optional)
    sortDirection := "asc" // string | The direction in which to sort. Must be either 'asc' (ascending) or 'desc' (descending). (optional)
    offset := int32(56) // int32 | The number of results to skip (between 0 and 900). (optional)
    number := int32(10) // int32 | The maximum number of items to return (between 1 and 100). Defaults to 10. (optional) (default to 10)
    language := "en" // string | The language of the input. Either 'en' or 'de'. (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.IngredientsApi.IngredientSearch(context.Background()).Query(query).AddChildren(addChildren).MinProteinPercent(minProteinPercent).MaxProteinPercent(maxProteinPercent).MinFatPercent(minFatPercent).MaxFatPercent(maxFatPercent).MinCarbsPercent(minCarbsPercent).MaxCarbsPercent(maxCarbsPercent).MetaInformation(metaInformation).Intolerances(intolerances).Sort(sort).SortDirection(sortDirection).Offset(offset).Number(number).Language(language).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `IngredientsApi.IngredientSearch``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `IngredientSearch`: IngredientSearch200Response
    fmt.Fprintf(os.Stdout, "Response from `IngredientsApi.IngredientSearch`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiIngredientSearchRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string** | The (natural language) search query. | 
 **addChildren** | **bool** | Whether to add children of found foods. | 
 **minProteinPercent** | **float32** | The minimum percentage of protein the food must have (between 0 and 100). | 
 **maxProteinPercent** | **float32** | The maximum percentage of protein the food can have (between 0 and 100). | 
 **minFatPercent** | **float32** | The minimum percentage of fat the food must have (between 0 and 100). | 
 **maxFatPercent** | **float32** | The maximum percentage of fat the food can have (between 0 and 100). | 
 **minCarbsPercent** | **float32** | The minimum percentage of carbs the food must have (between 0 and 100). | 
 **maxCarbsPercent** | **float32** | The maximum percentage of carbs the food can have (between 0 and 100). | 
 **metaInformation** | **bool** | Whether to return more meta information about the ingredients. | 
 **intolerances** | **string** | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. | 
 **sort** | **string** | The strategy to sort recipes by. See a full list of supported sorting options. | 
 **sortDirection** | **string** | The direction in which to sort. Must be either &#39;asc&#39; (ascending) or &#39;desc&#39; (descending). | 
 **offset** | **int32** | The number of results to skip (between 0 and 900). | 
 **number** | **int32** | The maximum number of items to return (between 1 and 100). Defaults to 10. | [default to 10]
 **language** | **string** | The language of the input. Either &#39;en&#39; or &#39;de&#39;. | 

### Return type

[**IngredientSearch200Response**](IngredientSearch200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## IngredientsByIDImage

> map[string]interface{} IngredientsByIDImage(ctx, id).Measure(measure).Execute()

Ingredients by ID Image



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
    id := float32(1082038) // float32 | The recipe id.
    measure := "metric" // string | Whether the the measures should be 'us' or 'metric'. (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.IngredientsApi.IngredientsByIDImage(context.Background(), id).Measure(measure).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `IngredientsApi.IngredientsByIDImage``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `IngredientsByIDImage`: map[string]interface{}
    fmt.Fprintf(os.Stdout, "Response from `IngredientsApi.IngredientsByIDImage`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **float32** | The recipe id. | 

### Other Parameters

Other parameters are passed through a pointer to a apiIngredientsByIDImageRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **measure** | **string** | Whether the the measures should be &#39;us&#39; or &#39;metric&#39;. | 

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


## MapIngredientsToGroceryProducts

> []MapIngredientsToGroceryProducts200ResponseInner MapIngredientsToGroceryProducts(ctx).MapIngredientsToGroceryProductsRequest(mapIngredientsToGroceryProductsRequest).Execute()

Map Ingredients to Grocery Products



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
    mapIngredientsToGroceryProductsRequest := *openapiclient.NewMapIngredientsToGroceryProductsRequest([]string{"Ingredients_example"}, float32(123)) // MapIngredientsToGroceryProductsRequest | 

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.IngredientsApi.MapIngredientsToGroceryProducts(context.Background()).MapIngredientsToGroceryProductsRequest(mapIngredientsToGroceryProductsRequest).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `IngredientsApi.MapIngredientsToGroceryProducts``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `MapIngredientsToGroceryProducts`: []MapIngredientsToGroceryProducts200ResponseInner
    fmt.Fprintf(os.Stdout, "Response from `IngredientsApi.MapIngredientsToGroceryProducts`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiMapIngredientsToGroceryProductsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mapIngredientsToGroceryProductsRequest** | [**MapIngredientsToGroceryProductsRequest**](MapIngredientsToGroceryProductsRequest.md) |  | 

### Return type

[**[]MapIngredientsToGroceryProducts200ResponseInner**](MapIngredientsToGroceryProducts200ResponseInner.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## VisualizeIngredients

> string VisualizeIngredients(ctx).ContentType(contentType).Language(language).Accept(accept).Execute()

Ingredients Widget



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
    contentType := "application/json" // string | The content type. (optional)
    language := "en" // string | The language of the input. Either 'en' or 'de'. (optional)
    accept := "application/json" // string | Accept header. (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.IngredientsApi.VisualizeIngredients(context.Background()).ContentType(contentType).Language(language).Accept(accept).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `IngredientsApi.VisualizeIngredients``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `VisualizeIngredients`: string
    fmt.Fprintf(os.Stdout, "Response from `IngredientsApi.VisualizeIngredients`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiVisualizeIngredientsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentType** | **string** | The content type. | 
 **language** | **string** | The language of the input. Either &#39;en&#39; or &#39;de&#39;. | 
 **accept** | **string** | Accept header. | 

### Return type

**string**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

