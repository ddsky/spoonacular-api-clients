# openapi.api.ProductsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**autocompleteProductSearch**](ProductsApi.md#autocompleteProductSearch) | **GET** /food/products/suggest | Autocomplete Product Search
[**classifyGroceryProduct**](ProductsApi.md#classifyGroceryProduct) | **POST** /food/products/classify | Classify Grocery Product
[**classifyGroceryProductBulk**](ProductsApi.md#classifyGroceryProductBulk) | **POST** /food/products/classifyBatch | Classify Grocery Product Bulk
[**getComparableProducts**](ProductsApi.md#getComparableProducts) | **GET** /food/products/upc/{upc}/comparable | Get Comparable Products
[**getProductInformation**](ProductsApi.md#getProductInformation) | **GET** /food/products/{id} | Get Product Information
[**productNutritionByIDImage**](ProductsApi.md#productNutritionByIDImage) | **GET** /food/products/{id}/nutritionWidget.png | Product Nutrition by ID Image
[**productNutritionLabelImage**](ProductsApi.md#productNutritionLabelImage) | **GET** /food/products/{id}/nutritionLabel.png | Product Nutrition Label Image
[**productNutritionLabelWidget**](ProductsApi.md#productNutritionLabelWidget) | **GET** /food/products/{id}/nutritionLabel | Product Nutrition Label Widget
[**searchGroceryProducts**](ProductsApi.md#searchGroceryProducts) | **GET** /food/products/search | Search Grocery Products
[**searchGroceryProductsByUPC**](ProductsApi.md#searchGroceryProductsByUPC) | **GET** /food/products/upc/{upc} | Search Grocery Products by UPC
[**visualizeProductNutritionByID**](ProductsApi.md#visualizeProductNutritionByID) | **GET** /food/products/{id}/nutritionWidget | Product Nutrition by ID Widget


# **autocompleteProductSearch**
> InlineResponse20032 autocompleteProductSearch(query, number)

Autocomplete Product Search

Generate suggestions for grocery products based on a (partial) query. The matches will be found by looking in the title only.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new ProductsApi();
var query = chicke; // String | The (partial) search query.
var number = 10; // int | The number of results to return (between 1 and 25).

try { 
    var result = api_instance.autocompleteProductSearch(query, number);
    print(result);
} catch (e) {
    print("Exception when calling ProductsApi->autocompleteProductSearch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The (partial) search query. | [default to null]
 **number** | **int**| The number of results to return (between 1 and 25). | [optional] [default to null]

### Return type

[**InlineResponse20032**](InlineResponse20032.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **classifyGroceryProduct**
> InlineResponse20033 classifyGroceryProduct(inlineObject1, locale)

Classify Grocery Product

This endpoint allows you to match a packaged food to a basic category, e.g. a specific brand of milk to the category milk.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new ProductsApi();
var inlineObject1 = new InlineObject1(); // InlineObject1 | 
var locale = en_US; // String | The display name of the returned category, supported is en_US (for American English) and en_GB (for British English).

try { 
    var result = api_instance.classifyGroceryProduct(inlineObject1, locale);
    print(result);
} catch (e) {
    print("Exception when calling ProductsApi->classifyGroceryProduct: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inlineObject1** | [**InlineObject1**](InlineObject1.md)|  | 
 **locale** | **String**| The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). | [optional] [default to null]

### Return type

[**InlineResponse20033**](InlineResponse20033.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **classifyGroceryProductBulk**
> List<InlineResponse20033> classifyGroceryProductBulk(inlineObject, locale)

Classify Grocery Product Bulk

Provide a set of product jsons, get back classified products.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new ProductsApi();
var inlineObject = [new List&lt;InlineObject&gt;()]; // List<InlineObject> | 
var locale = en_US; // String | The display name of the returned category, supported is en_US (for American English) and en_GB (for British English).

try { 
    var result = api_instance.classifyGroceryProductBulk(inlineObject, locale);
    print(result);
} catch (e) {
    print("Exception when calling ProductsApi->classifyGroceryProductBulk: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inlineObject** | [**List&lt;InlineObject&gt;**](List.md)|  | 
 **locale** | **String**| The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). | [optional] [default to null]

### Return type

[**List<InlineResponse20033>**](InlineResponse20033.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getComparableProducts**
> InlineResponse20031 getComparableProducts(upc)

Get Comparable Products

Find comparable products to the given one.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new ProductsApi();
var upc = 33698816271; // num | The UPC of the product for which you want to find comparable products.

try { 
    var result = api_instance.getComparableProducts(upc);
    print(result);
} catch (e) {
    print("Exception when calling ProductsApi->getComparableProducts: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **upc** | **num**| The UPC of the product for which you want to find comparable products. | [default to null]

### Return type

[**InlineResponse20031**](InlineResponse20031.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProductInformation**
> InlineResponse20030 getProductInformation(id)

Get Product Information

Use a product id to get full information about a product, such as ingredients, nutrition, etc. The nutritional information is per serving.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new ProductsApi();
var id = 1; // int | The item's id.

try { 
    var result = api_instance.getProductInformation(id);
    print(result);
} catch (e) {
    print("Exception when calling ProductsApi->getProductInformation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The item&#39;s id. | [default to null]

### Return type

[**InlineResponse20030**](InlineResponse20030.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **productNutritionByIDImage**
> Object productNutritionByIDImage(id)

Product Nutrition by ID Image

Visualize a product's nutritional information as an image.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new ProductsApi();
var id = 7657; // num | The id of the product.

try { 
    var result = api_instance.productNutritionByIDImage(id);
    print(result);
} catch (e) {
    print("Exception when calling ProductsApi->productNutritionByIDImage: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **num**| The id of the product. | [default to null]

### Return type

[**Object**](Object.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **productNutritionLabelImage**
> Object productNutritionLabelImage(id, showOptionalNutrients, showZeroValues, showIngredients)

Product Nutrition Label Image

Get a product's nutrition label as an image.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new ProductsApi();
var id = 22347; // num | The product id.
var showOptionalNutrients = false; // bool | Whether to show optional nutrients.
var showZeroValues = false; // bool | Whether to show zero values.
var showIngredients = false; // bool | Whether to show a list of ingredients.

try { 
    var result = api_instance.productNutritionLabelImage(id, showOptionalNutrients, showZeroValues, showIngredients);
    print(result);
} catch (e) {
    print("Exception when calling ProductsApi->productNutritionLabelImage: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **num**| The product id. | [default to null]
 **showOptionalNutrients** | **bool**| Whether to show optional nutrients. | [optional] [default to null]
 **showZeroValues** | **bool**| Whether to show zero values. | [optional] [default to null]
 **showIngredients** | **bool**| Whether to show a list of ingredients. | [optional] [default to null]

### Return type

[**Object**](Object.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **productNutritionLabelWidget**
> String productNutritionLabelWidget(id, defaultCss, showOptionalNutrients, showZeroValues, showIngredients)

Product Nutrition Label Widget

Get a product's nutrition label as an HTML widget.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new ProductsApi();
var id = 22347; // num | The product id.
var defaultCss = false; // bool | Whether the default CSS should be added to the response.
var showOptionalNutrients = false; // bool | Whether to show optional nutrients.
var showZeroValues = false; // bool | Whether to show zero values.
var showIngredients = false; // bool | Whether to show a list of ingredients.

try { 
    var result = api_instance.productNutritionLabelWidget(id, defaultCss, showOptionalNutrients, showZeroValues, showIngredients);
    print(result);
} catch (e) {
    print("Exception when calling ProductsApi->productNutritionLabelWidget: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **num**| The product id. | [default to null]
 **defaultCss** | **bool**| Whether the default CSS should be added to the response. | [optional] [default to true]
 **showOptionalNutrients** | **bool**| Whether to show optional nutrients. | [optional] [default to null]
 **showZeroValues** | **bool**| Whether to show zero values. | [optional] [default to null]
 **showIngredients** | **bool**| Whether to show a list of ingredients. | [optional] [default to null]

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchGroceryProducts**
> InlineResponse20027 searchGroceryProducts(query, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, offset, number)

Search Grocery Products

Search packaged food products, such as frozen pizza or Greek yogurt.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new ProductsApi();
var query = burger; // String | The (natural language) search query.
var minCalories = 50; // num | The minimum amount of calories the product must have.
var maxCalories = 800; // num | The maximum amount of calories the product can have.
var minCarbs = 10; // num | The minimum amount of carbohydrates in grams the product must have.
var maxCarbs = 100; // num | The maximum amount of carbohydrates in grams the product can have.
var minProtein = 10; // num | The minimum amount of protein in grams the product must have.
var maxProtein = 100; // num | The maximum amount of protein in grams the product can have.
var minFat = 1; // num | The minimum amount of fat in grams the product must have.
var maxFat = 100; // num | The maximum amount of fat in grams the product can have.
var offset = 56; // int | The number of results to skip (between 0 and 900).
var number = 10; // int | The maximum number of items to return (between 1 and 100). Defaults to 10.

try { 
    var result = api_instance.searchGroceryProducts(query, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, offset, number);
    print(result);
} catch (e) {
    print("Exception when calling ProductsApi->searchGroceryProducts: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The (natural language) search query. | [optional] [default to null]
 **minCalories** | **num**| The minimum amount of calories the product must have. | [optional] [default to null]
 **maxCalories** | **num**| The maximum amount of calories the product can have. | [optional] [default to null]
 **minCarbs** | **num**| The minimum amount of carbohydrates in grams the product must have. | [optional] [default to null]
 **maxCarbs** | **num**| The maximum amount of carbohydrates in grams the product can have. | [optional] [default to null]
 **minProtein** | **num**| The minimum amount of protein in grams the product must have. | [optional] [default to null]
 **maxProtein** | **num**| The maximum amount of protein in grams the product can have. | [optional] [default to null]
 **minFat** | **num**| The minimum amount of fat in grams the product must have. | [optional] [default to null]
 **maxFat** | **num**| The maximum amount of fat in grams the product can have. | [optional] [default to null]
 **offset** | **int**| The number of results to skip (between 0 and 900). | [optional] [default to null]
 **number** | **int**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]

### Return type

[**InlineResponse20027**](InlineResponse20027.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchGroceryProductsByUPC**
> InlineResponse20028 searchGroceryProductsByUPC(upc)

Search Grocery Products by UPC

Get information about a packaged food using its UPC.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new ProductsApi();
var upc = 41631000564; // num | The product's UPC.

try { 
    var result = api_instance.searchGroceryProductsByUPC(upc);
    print(result);
} catch (e) {
    print("Exception when calling ProductsApi->searchGroceryProductsByUPC: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **upc** | **num**| The product&#39;s UPC. | [default to null]

### Return type

[**InlineResponse20028**](InlineResponse20028.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualizeProductNutritionByID**
> String visualizeProductNutritionByID(id, defaultCss, accept)

Product Nutrition by ID Widget

Visualize a product's nutritional information as HTML including CSS.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new ProductsApi();
var id = 1; // int | The item's id.
var defaultCss = false; // bool | Whether the default CSS should be added to the response.
var accept = application/json; // String | Accept header.

try { 
    var result = api_instance.visualizeProductNutritionByID(id, defaultCss, accept);
    print(result);
} catch (e) {
    print("Exception when calling ProductsApi->visualizeProductNutritionByID: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The item&#39;s id. | [default to null]
 **defaultCss** | **bool**| Whether the default CSS should be added to the response. | [optional] [default to true]
 **accept** | **String**| Accept header. | [optional] [default to null]

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

