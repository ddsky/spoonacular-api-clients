# com.spoonacular.client\ProductsApi

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AutocompleteProductSearch**](ProductsApi.md#AutocompleteProductSearch) | **Get** /food/products/suggest | Autocomplete Product Search
[**ClassifyGroceryProduct**](ProductsApi.md#ClassifyGroceryProduct) | **Post** /food/products/classify | Classify Grocery Product
[**ClassifyGroceryProductBulk**](ProductsApi.md#ClassifyGroceryProductBulk) | **Post** /food/products/classifyBatch | Classify Grocery Product Bulk
[**GetComparableProducts**](ProductsApi.md#GetComparableProducts) | **Get** /food/products/upc/{upc}/comparable | Get Comparable Products
[**GetProductInformation**](ProductsApi.md#GetProductInformation) | **Get** /food/products/{id} | Get Product Information
[**ProductNutritionByIDImage**](ProductsApi.md#ProductNutritionByIDImage) | **Get** /food/products/{id}/nutritionWidget.png | Product Nutrition by ID Image
[**ProductNutritionLabelImage**](ProductsApi.md#ProductNutritionLabelImage) | **Get** /food/products/{id}/nutritionLabel.png | Product Nutrition Label Image
[**ProductNutritionLabelWidget**](ProductsApi.md#ProductNutritionLabelWidget) | **Get** /food/products/{id}/nutritionLabel | Product Nutrition Label Widget
[**SearchGroceryProducts**](ProductsApi.md#SearchGroceryProducts) | **Get** /food/products/search | Search Grocery Products
[**SearchGroceryProductsByUPC**](ProductsApi.md#SearchGroceryProductsByUPC) | **Get** /food/products/upc/{upc} | Search Grocery Products by UPC
[**VisualizeProductNutritionByID**](ProductsApi.md#VisualizeProductNutritionByID) | **Get** /food/products/{id}/nutritionWidget | Product Nutrition by ID Widget



## AutocompleteProductSearch

> InlineResponse20032 AutocompleteProductSearch(ctx, query, optional)
Autocomplete Product Search

Generate suggestions for grocery products based on a (partial) query. The matches will be found by looking in the title only.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**query** | **string**| The (partial) search query. | 
 **optional** | ***AutocompleteProductSearchOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a AutocompleteProductSearchOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **number** | **optional.Int32**| The number of results to return (between 1 and 25). | 

### Return type

[**InlineResponse20032**](inline_response_200_32.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ClassifyGroceryProduct

> InlineResponse20033 ClassifyGroceryProduct(ctx, inlineObject1, optional)
Classify Grocery Product

This endpoint allows you to match a packaged food to a basic category, e.g. a specific brand of milk to the category milk.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**inlineObject1** | [**InlineObject1**](InlineObject1.md)|  | 
 **optional** | ***ClassifyGroceryProductOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a ClassifyGroceryProductOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **locale** | **optional.String**| The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). | 

### Return type

[**InlineResponse20033**](inline_response_200_33.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ClassifyGroceryProductBulk

> []InlineResponse20033 ClassifyGroceryProductBulk(ctx, inlineObject, optional)
Classify Grocery Product Bulk

Provide a set of product jsons, get back classified products.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**inlineObject** | [**[]InlineObject**](array.md)|  | 
 **optional** | ***ClassifyGroceryProductBulkOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a ClassifyGroceryProductBulkOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **locale** | **optional.String**| The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). | 

### Return type

[**[]InlineResponse20033**](inline_response_200_33.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetComparableProducts

> InlineResponse20031 GetComparableProducts(ctx, upc)
Get Comparable Products

Find comparable products to the given one.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**upc** | **float32**| The UPC of the product for which you want to find comparable products. | 

### Return type

[**InlineResponse20031**](inline_response_200_31.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetProductInformation

> InlineResponse20030 GetProductInformation(ctx, id)
Get Product Information

Use a product id to get full information about a product, such as ingredients, nutrition, etc. The nutritional information is per serving.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32**| The item&#39;s id. | 

### Return type

[**InlineResponse20030**](inline_response_200_30.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ProductNutritionByIDImage

> map[string]interface{} ProductNutritionByIDImage(ctx, id)
Product Nutrition by ID Image

Visualize a product's nutritional information as an image.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **float32**| The id of the product. | 

### Return type

[**map[string]interface{}**](map[string]interface{}.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ProductNutritionLabelImage

> map[string]interface{} ProductNutritionLabelImage(ctx, id, optional)
Product Nutrition Label Image

Get a product's nutrition label as an image.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **float32**| The product id. | 
 **optional** | ***ProductNutritionLabelImageOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a ProductNutritionLabelImageOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **showOptionalNutrients** | **optional.Bool**| Whether to show optional nutrients. | 
 **showZeroValues** | **optional.Bool**| Whether to show zero values. | 
 **showIngredients** | **optional.Bool**| Whether to show a list of ingredients. | 

### Return type

[**map[string]interface{}**](map[string]interface{}.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ProductNutritionLabelWidget

> string ProductNutritionLabelWidget(ctx, id, optional)
Product Nutrition Label Widget

Get a product's nutrition label as an HTML widget.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **float32**| The product id. | 
 **optional** | ***ProductNutritionLabelWidgetOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a ProductNutritionLabelWidgetOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **defaultCss** | **optional.Bool**| Whether the default CSS should be added to the response. | [default to true]
 **showOptionalNutrients** | **optional.Bool**| Whether to show optional nutrients. | 
 **showZeroValues** | **optional.Bool**| Whether to show zero values. | 
 **showIngredients** | **optional.Bool**| Whether to show a list of ingredients. | 

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

> InlineResponse20027 SearchGroceryProducts(ctx, optional)
Search Grocery Products

Search packaged food products, such as frozen pizza or Greek yogurt.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***SearchGroceryProductsOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a SearchGroceryProductsOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **optional.String**| The (natural language) search query. | 
 **minCalories** | **optional.Float32**| The minimum amount of calories the product must have. | 
 **maxCalories** | **optional.Float32**| The maximum amount of calories the product can have. | 
 **minCarbs** | **optional.Float32**| The minimum amount of carbohydrates in grams the product must have. | 
 **maxCarbs** | **optional.Float32**| The maximum amount of carbohydrates in grams the product can have. | 
 **minProtein** | **optional.Float32**| The minimum amount of protein in grams the product must have. | 
 **maxProtein** | **optional.Float32**| The maximum amount of protein in grams the product can have. | 
 **minFat** | **optional.Float32**| The minimum amount of fat in grams the product must have. | 
 **maxFat** | **optional.Float32**| The maximum amount of fat in grams the product can have. | 
 **addProductInformation** | **optional.Bool**| If set to true, you get more information about the products returned. | 
 **offset** | **optional.Int32**| The number of results to skip (between 0 and 900). | 
 **number** | **optional.Int32**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [default to 10]

### Return type

[**InlineResponse20027**](inline_response_200_27.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SearchGroceryProductsByUPC

> InlineResponse20028 SearchGroceryProductsByUPC(ctx, upc)
Search Grocery Products by UPC

Get information about a packaged food using its UPC.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**upc** | **float32**| The product&#39;s UPC. | 

### Return type

[**InlineResponse20028**](inline_response_200_28.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## VisualizeProductNutritionByID

> string VisualizeProductNutritionByID(ctx, id, optional)
Product Nutrition by ID Widget

Visualize a product's nutritional information as HTML including CSS.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32**| The item&#39;s id. | 
 **optional** | ***VisualizeProductNutritionByIDOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a VisualizeProductNutritionByIDOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **defaultCss** | **optional.Bool**| Whether the default CSS should be added to the response. | [default to true]
 **accept** | **optional.String**| Accept header. | 

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

