# \ProductsAPI

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AutocompleteProductSearch**](ProductsAPI.md#AutocompleteProductSearch) | **Get** /food/products/suggest | Autocomplete Product Search
[**ClassifyGroceryProduct**](ProductsAPI.md#ClassifyGroceryProduct) | **Post** /food/products/classify | Classify Grocery Product
[**ClassifyGroceryProductBulk**](ProductsAPI.md#ClassifyGroceryProductBulk) | **Post** /food/products/classifyBatch | Classify Grocery Product Bulk
[**GetComparableProducts**](ProductsAPI.md#GetComparableProducts) | **Get** /food/products/upc/{upc}/comparable | Get Comparable Products
[**GetProductInformation**](ProductsAPI.md#GetProductInformation) | **Get** /food/products/{id} | Get Product Information
[**ProductNutritionByIDImage**](ProductsAPI.md#ProductNutritionByIDImage) | **Get** /food/products/{id}/nutritionWidget.png | Product Nutrition by ID Image
[**ProductNutritionLabelImage**](ProductsAPI.md#ProductNutritionLabelImage) | **Get** /food/products/{id}/nutritionLabel.png | Product Nutrition Label Image
[**ProductNutritionLabelWidget**](ProductsAPI.md#ProductNutritionLabelWidget) | **Get** /food/products/{id}/nutritionLabel | Product Nutrition Label Widget
[**SearchGroceryProducts**](ProductsAPI.md#SearchGroceryProducts) | **Get** /food/products/search | Search Grocery Products
[**SearchGroceryProductsByUPC**](ProductsAPI.md#SearchGroceryProductsByUPC) | **Get** /food/products/upc/{upc} | Search Grocery Products by UPC
[**VisualizeProductNutritionByID**](ProductsAPI.md#VisualizeProductNutritionByID) | **Get** /food/products/{id}/nutritionWidget | Product Nutrition by ID Widget



## AutocompleteProductSearch

> AutocompleteProductSearch200Response AutocompleteProductSearch(ctx).Query(query).Number(number).Execute()

Autocomplete Product Search



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/ddsky/spoonacular-api-clients/go"
)

func main() {
	query := "chicke" // string | The (partial) search query.
	number := int32(10) // int32 | The number of results to return (between 1 and 25). (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ProductsAPI.AutocompleteProductSearch(context.Background()).Query(query).Number(number).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ProductsAPI.AutocompleteProductSearch``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AutocompleteProductSearch`: AutocompleteProductSearch200Response
	fmt.Fprintf(os.Stdout, "Response from `ProductsAPI.AutocompleteProductSearch`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiAutocompleteProductSearchRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string** | The (partial) search query. | 
 **number** | **int32** | The number of results to return (between 1 and 25). | 

### Return type

[**AutocompleteProductSearch200Response**](AutocompleteProductSearch200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ClassifyGroceryProduct

> ClassifyGroceryProduct200Response ClassifyGroceryProduct(ctx).ClassifyGroceryProductRequest(classifyGroceryProductRequest).Locale(locale).Execute()

Classify Grocery Product



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/ddsky/spoonacular-api-clients/go"
)

func main() {
	classifyGroceryProductRequest := *openapiclient.NewClassifyGroceryProductRequest("Title_example", "Upc_example", "PluCode_example") // ClassifyGroceryProductRequest | 
	locale := "en_US" // string | The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ProductsAPI.ClassifyGroceryProduct(context.Background()).ClassifyGroceryProductRequest(classifyGroceryProductRequest).Locale(locale).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ProductsAPI.ClassifyGroceryProduct``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ClassifyGroceryProduct`: ClassifyGroceryProduct200Response
	fmt.Fprintf(os.Stdout, "Response from `ProductsAPI.ClassifyGroceryProduct`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiClassifyGroceryProductRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **classifyGroceryProductRequest** | [**ClassifyGroceryProductRequest**](ClassifyGroceryProductRequest.md) |  | 
 **locale** | **string** | The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). | 

### Return type

[**ClassifyGroceryProduct200Response**](ClassifyGroceryProduct200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ClassifyGroceryProductBulk

> []ClassifyGroceryProductBulk200ResponseInner ClassifyGroceryProductBulk(ctx).ClassifyGroceryProductBulkRequestInner(classifyGroceryProductBulkRequestInner).Locale(locale).Execute()

Classify Grocery Product Bulk



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/ddsky/spoonacular-api-clients/go"
)

func main() {
	classifyGroceryProductBulkRequestInner := []openapiclient.ClassifyGroceryProductBulkRequestInner{*openapiclient.NewClassifyGroceryProductBulkRequestInner("Title_example", "Upc_example", "PluCode_example")} // []ClassifyGroceryProductBulkRequestInner | 
	locale := "en_US" // string | The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ProductsAPI.ClassifyGroceryProductBulk(context.Background()).ClassifyGroceryProductBulkRequestInner(classifyGroceryProductBulkRequestInner).Locale(locale).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ProductsAPI.ClassifyGroceryProductBulk``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ClassifyGroceryProductBulk`: []ClassifyGroceryProductBulk200ResponseInner
	fmt.Fprintf(os.Stdout, "Response from `ProductsAPI.ClassifyGroceryProductBulk`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiClassifyGroceryProductBulkRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **classifyGroceryProductBulkRequestInner** | [**[]ClassifyGroceryProductBulkRequestInner**](ClassifyGroceryProductBulkRequestInner.md) |  | 
 **locale** | **string** | The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). | 

### Return type

[**[]ClassifyGroceryProductBulk200ResponseInner**](ClassifyGroceryProductBulk200ResponseInner.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetComparableProducts

> GetComparableProducts200Response GetComparableProducts(ctx, upc).Execute()

Get Comparable Products



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/ddsky/spoonacular-api-clients/go"
)

func main() {
	upc := "033698816271" // string | The UPC of the product for which you want to find comparable products.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ProductsAPI.GetComparableProducts(context.Background(), upc).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ProductsAPI.GetComparableProducts``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetComparableProducts`: GetComparableProducts200Response
	fmt.Fprintf(os.Stdout, "Response from `ProductsAPI.GetComparableProducts`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**upc** | **string** | The UPC of the product for which you want to find comparable products. | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetComparableProductsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**GetComparableProducts200Response**](GetComparableProducts200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetProductInformation

> ProductInformation GetProductInformation(ctx, id).Execute()

Get Product Information



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/ddsky/spoonacular-api-clients/go"
)

func main() {
	id := int32(22347) // int32 | The id of the packaged food.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ProductsAPI.GetProductInformation(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ProductsAPI.GetProductInformation``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetProductInformation`: ProductInformation
	fmt.Fprintf(os.Stdout, "Response from `ProductsAPI.GetProductInformation`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | The id of the packaged food. | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetProductInformationRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**ProductInformation**](ProductInformation.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ProductNutritionByIDImage

> *os.File ProductNutritionByIDImage(ctx, id).Execute()

Product Nutrition by ID Image



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/ddsky/spoonacular-api-clients/go"
)

func main() {
	id := int32(7657) // int32 | The id of the product.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ProductsAPI.ProductNutritionByIDImage(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ProductsAPI.ProductNutritionByIDImage``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ProductNutritionByIDImage`: *os.File
	fmt.Fprintf(os.Stdout, "Response from `ProductsAPI.ProductNutritionByIDImage`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | The id of the product. | 

### Other Parameters

Other parameters are passed through a pointer to a apiProductNutritionByIDImageRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[***os.File**](*os.File.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ProductNutritionLabelImage

> *os.File ProductNutritionLabelImage(ctx, id).ShowOptionalNutrients(showOptionalNutrients).ShowZeroValues(showZeroValues).ShowIngredients(showIngredients).Execute()

Product Nutrition Label Image



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/ddsky/spoonacular-api-clients/go"
)

func main() {
	id := int32(22347) // int32 | The product id.
	showOptionalNutrients := false // bool | Whether to show optional nutrients. (optional)
	showZeroValues := false // bool | Whether to show zero values. (optional)
	showIngredients := false // bool | Whether to show a list of ingredients. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ProductsAPI.ProductNutritionLabelImage(context.Background(), id).ShowOptionalNutrients(showOptionalNutrients).ShowZeroValues(showZeroValues).ShowIngredients(showIngredients).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ProductsAPI.ProductNutritionLabelImage``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ProductNutritionLabelImage`: *os.File
	fmt.Fprintf(os.Stdout, "Response from `ProductsAPI.ProductNutritionLabelImage`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | The product id. | 

### Other Parameters

Other parameters are passed through a pointer to a apiProductNutritionLabelImageRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **showOptionalNutrients** | **bool** | Whether to show optional nutrients. | 
 **showZeroValues** | **bool** | Whether to show zero values. | 
 **showIngredients** | **bool** | Whether to show a list of ingredients. | 

### Return type

[***os.File**](*os.File.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ProductNutritionLabelWidget

> string ProductNutritionLabelWidget(ctx, id).DefaultCss(defaultCss).ShowOptionalNutrients(showOptionalNutrients).ShowZeroValues(showZeroValues).ShowIngredients(showIngredients).Execute()

Product Nutrition Label Widget



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/ddsky/spoonacular-api-clients/go"
)

func main() {
	id := int32(22347) // int32 | The product id.
	defaultCss := false // bool | Whether the default CSS should be added to the response. (optional) (default to true)
	showOptionalNutrients := false // bool | Whether to show optional nutrients. (optional)
	showZeroValues := false // bool | Whether to show zero values. (optional)
	showIngredients := false // bool | Whether to show a list of ingredients. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ProductsAPI.ProductNutritionLabelWidget(context.Background(), id).DefaultCss(defaultCss).ShowOptionalNutrients(showOptionalNutrients).ShowZeroValues(showZeroValues).ShowIngredients(showIngredients).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ProductsAPI.ProductNutritionLabelWidget``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ProductNutritionLabelWidget`: string
	fmt.Fprintf(os.Stdout, "Response from `ProductsAPI.ProductNutritionLabelWidget`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | The product id. | 

### Other Parameters

Other parameters are passed through a pointer to a apiProductNutritionLabelWidgetRequest struct via the builder pattern


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


## SearchGroceryProducts

> SearchGroceryProducts200Response SearchGroceryProducts(ctx).Query(query).MinCalories(minCalories).MaxCalories(maxCalories).MinCarbs(minCarbs).MaxCarbs(maxCarbs).MinProtein(minProtein).MaxProtein(maxProtein).MinFat(minFat).MaxFat(maxFat).AddProductInformation(addProductInformation).Offset(offset).Number(number).Execute()

Search Grocery Products



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/ddsky/spoonacular-api-clients/go"
)

func main() {
	query := "burger" // string | The (natural language) search query.
	minCalories := float32(50) // float32 | The minimum amount of calories the product must have. (optional)
	maxCalories := float32(800) // float32 | The maximum amount of calories the product can have. (optional)
	minCarbs := float32(10) // float32 | The minimum amount of carbohydrates in grams the product must have. (optional)
	maxCarbs := float32(100) // float32 | The maximum amount of carbohydrates in grams the product can have. (optional)
	minProtein := float32(10) // float32 | The minimum amount of protein in grams the product must have. (optional)
	maxProtein := float32(100) // float32 | The maximum amount of protein in grams the product can have. (optional)
	minFat := float32(1) // float32 | The minimum amount of fat in grams the product must have. (optional)
	maxFat := float32(100) // float32 | The maximum amount of fat in grams the product can have. (optional)
	addProductInformation := true // bool | If set to true, you get more information about the products returned. (optional)
	offset := int32(56) // int32 | The number of results to skip (between 0 and 900). (optional)
	number := int32(10) // int32 | The maximum number of items to return (between 1 and 100). Defaults to 10. (optional) (default to 10)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ProductsAPI.SearchGroceryProducts(context.Background()).Query(query).MinCalories(minCalories).MaxCalories(maxCalories).MinCarbs(minCarbs).MaxCarbs(maxCarbs).MinProtein(minProtein).MaxProtein(maxProtein).MinFat(minFat).MaxFat(maxFat).AddProductInformation(addProductInformation).Offset(offset).Number(number).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ProductsAPI.SearchGroceryProducts``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `SearchGroceryProducts`: SearchGroceryProducts200Response
	fmt.Fprintf(os.Stdout, "Response from `ProductsAPI.SearchGroceryProducts`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiSearchGroceryProductsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string** | The (natural language) search query. | 
 **minCalories** | **float32** | The minimum amount of calories the product must have. | 
 **maxCalories** | **float32** | The maximum amount of calories the product can have. | 
 **minCarbs** | **float32** | The minimum amount of carbohydrates in grams the product must have. | 
 **maxCarbs** | **float32** | The maximum amount of carbohydrates in grams the product can have. | 
 **minProtein** | **float32** | The minimum amount of protein in grams the product must have. | 
 **maxProtein** | **float32** | The maximum amount of protein in grams the product can have. | 
 **minFat** | **float32** | The minimum amount of fat in grams the product must have. | 
 **maxFat** | **float32** | The maximum amount of fat in grams the product can have. | 
 **addProductInformation** | **bool** | If set to true, you get more information about the products returned. | 
 **offset** | **int32** | The number of results to skip (between 0 and 900). | 
 **number** | **int32** | The maximum number of items to return (between 1 and 100). Defaults to 10. | [default to 10]

### Return type

[**SearchGroceryProducts200Response**](SearchGroceryProducts200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SearchGroceryProductsByUPC

> SearchGroceryProductsByUPC200Response SearchGroceryProductsByUPC(ctx, upc).Execute()

Search Grocery Products by UPC



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/ddsky/spoonacular-api-clients/go"
)

func main() {
	upc := "041631000564" // string | The product's UPC.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ProductsAPI.SearchGroceryProductsByUPC(context.Background(), upc).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ProductsAPI.SearchGroceryProductsByUPC``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `SearchGroceryProductsByUPC`: SearchGroceryProductsByUPC200Response
	fmt.Fprintf(os.Stdout, "Response from `ProductsAPI.SearchGroceryProductsByUPC`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**upc** | **string** | The product&#39;s UPC. | 

### Other Parameters

Other parameters are passed through a pointer to a apiSearchGroceryProductsByUPCRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**SearchGroceryProductsByUPC200Response**](SearchGroceryProductsByUPC200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## VisualizeProductNutritionByID

> string VisualizeProductNutritionByID(ctx, id).DefaultCss(defaultCss).Execute()

Product Nutrition by ID Widget



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/ddsky/spoonacular-api-clients/go"
)

func main() {
	id := int32(7657) // int32 | The id of the product.
	defaultCss := false // bool | Whether the default CSS should be added to the response. (optional) (default to true)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ProductsAPI.VisualizeProductNutritionByID(context.Background(), id).DefaultCss(defaultCss).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ProductsAPI.VisualizeProductNutritionByID``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `VisualizeProductNutritionByID`: string
	fmt.Fprintf(os.Stdout, "Response from `ProductsAPI.VisualizeProductNutritionByID`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | The id of the product. | 

### Other Parameters

Other parameters are passed through a pointer to a apiVisualizeProductNutritionByIDRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **defaultCss** | **bool** | Whether the default CSS should be added to the response. | [default to true]

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

