# openapi.api.ProductsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**autocompleteProductSearch**](ProductsApi.md#autocompleteproductsearch) | **GET** /food/products/suggest | Autocomplete Product Search
[**classifyGroceryProduct**](ProductsApi.md#classifygroceryproduct) | **POST** /food/products/classify | Classify Grocery Product
[**classifyGroceryProductBulk**](ProductsApi.md#classifygroceryproductbulk) | **POST** /food/products/classifyBatch | Classify Grocery Product Bulk
[**getComparableProducts**](ProductsApi.md#getcomparableproducts) | **GET** /food/products/upc/{upc}/comparable | Get Comparable Products
[**getProductInformation**](ProductsApi.md#getproductinformation) | **GET** /food/products/{id} | Get Product Information
[**productNutritionByIDImage**](ProductsApi.md#productnutritionbyidimage) | **GET** /food/products/{id}/nutritionWidget.png | Product Nutrition by ID Image
[**productNutritionLabelImage**](ProductsApi.md#productnutritionlabelimage) | **GET** /food/products/{id}/nutritionLabel.png | Product Nutrition Label Image
[**productNutritionLabelWidget**](ProductsApi.md#productnutritionlabelwidget) | **GET** /food/products/{id}/nutritionLabel | Product Nutrition Label Widget
[**searchGroceryProducts**](ProductsApi.md#searchgroceryproducts) | **GET** /food/products/search | Search Grocery Products
[**searchGroceryProductsByUPC**](ProductsApi.md#searchgroceryproductsbyupc) | **GET** /food/products/upc/{upc} | Search Grocery Products by UPC
[**visualizeProductNutritionByID**](ProductsApi.md#visualizeproductnutritionbyid) | **GET** /food/products/{id}/nutritionWidget | Product Nutrition by ID Widget


# **autocompleteProductSearch**
> AutocompleteProductSearch200Response autocompleteProductSearch(query, number)

Autocomplete Product Search

Generate suggestions for grocery products based on a (partial) query. The matches will be found by looking in the title only.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = ProductsApi();
final query = chicke; // String | The (partial) search query.
final number = 10; // int | The number of results to return (between 1 and 25).

try {
    final result = api_instance.autocompleteProductSearch(query, number);
    print(result);
} catch (e) {
    print('Exception when calling ProductsApi->autocompleteProductSearch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The (partial) search query. | 
 **number** | **int**| The number of results to return (between 1 and 25). | [optional] 

### Return type

[**AutocompleteProductSearch200Response**](AutocompleteProductSearch200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **classifyGroceryProduct**
> ClassifyGroceryProduct200Response classifyGroceryProduct(classifyGroceryProductRequest, locale)

Classify Grocery Product

This endpoint allows you to match a packaged food to a basic category, e.g. a specific brand of milk to the category milk.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = ProductsApi();
final classifyGroceryProductRequest = ClassifyGroceryProductRequest(); // ClassifyGroceryProductRequest | 
final locale = en_US; // String | The display name of the returned category, supported is en_US (for American English) and en_GB (for British English).

try {
    final result = api_instance.classifyGroceryProduct(classifyGroceryProductRequest, locale);
    print(result);
} catch (e) {
    print('Exception when calling ProductsApi->classifyGroceryProduct: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **classifyGroceryProductRequest** | [**ClassifyGroceryProductRequest**](ClassifyGroceryProductRequest.md)|  | 
 **locale** | **String**| The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). | [optional] 

### Return type

[**ClassifyGroceryProduct200Response**](ClassifyGroceryProduct200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **classifyGroceryProductBulk**
> Set<ClassifyGroceryProductBulk200ResponseInner> classifyGroceryProductBulk(classifyGroceryProductBulkRequestInner, locale)

Classify Grocery Product Bulk

Provide a set of product jsons, get back classified products.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = ProductsApi();
final classifyGroceryProductBulkRequestInner = [Set<ClassifyGroceryProductBulkRequestInner>()]; // Set<ClassifyGroceryProductBulkRequestInner> | 
final locale = en_US; // String | The display name of the returned category, supported is en_US (for American English) and en_GB (for British English).

try {
    final result = api_instance.classifyGroceryProductBulk(classifyGroceryProductBulkRequestInner, locale);
    print(result);
} catch (e) {
    print('Exception when calling ProductsApi->classifyGroceryProductBulk: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **classifyGroceryProductBulkRequestInner** | [**Set<ClassifyGroceryProductBulkRequestInner>**](ClassifyGroceryProductBulkRequestInner.md)|  | 
 **locale** | **String**| The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). | [optional] 

### Return type

[**Set<ClassifyGroceryProductBulk200ResponseInner>**](ClassifyGroceryProductBulk200ResponseInner.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getComparableProducts**
> GetComparableProducts200Response getComparableProducts(upc)

Get Comparable Products

Find comparable products to the given one.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = ProductsApi();
final upc = 033698816271; // String | The UPC of the product for which you want to find comparable products.

try {
    final result = api_instance.getComparableProducts(upc);
    print(result);
} catch (e) {
    print('Exception when calling ProductsApi->getComparableProducts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **upc** | **String**| The UPC of the product for which you want to find comparable products. | 

### Return type

[**GetComparableProducts200Response**](GetComparableProducts200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProductInformation**
> ProductInformation getProductInformation(id)

Get Product Information

Use a product id to get full information about a product, such as ingredients, nutrition, etc. The nutritional information is per serving.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = ProductsApi();
final id = 22347; // int | The id of the packaged food.

try {
    final result = api_instance.getProductInformation(id);
    print(result);
} catch (e) {
    print('Exception when calling ProductsApi->getProductInformation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the packaged food. | 

### Return type

[**ProductInformation**](ProductInformation.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **productNutritionByIDImage**
> MultipartFile productNutritionByIDImage(id)

Product Nutrition by ID Image

Visualize a product's nutritional information as an image.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = ProductsApi();
final id = 7657; // int | The id of the product.

try {
    final result = api_instance.productNutritionByIDImage(id);
    print(result);
} catch (e) {
    print('Exception when calling ProductsApi->productNutritionByIDImage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the product. | 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **productNutritionLabelImage**
> MultipartFile productNutritionLabelImage(id, showOptionalNutrients, showZeroValues, showIngredients)

Product Nutrition Label Image

Get a product's nutrition label as an image.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = ProductsApi();
final id = 22347; // int | The product id.
final showOptionalNutrients = false; // bool | Whether to show optional nutrients.
final showZeroValues = false; // bool | Whether to show zero values.
final showIngredients = false; // bool | Whether to show a list of ingredients.

try {
    final result = api_instance.productNutritionLabelImage(id, showOptionalNutrients, showZeroValues, showIngredients);
    print(result);
} catch (e) {
    print('Exception when calling ProductsApi->productNutritionLabelImage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The product id. | 
 **showOptionalNutrients** | **bool**| Whether to show optional nutrients. | [optional] 
 **showZeroValues** | **bool**| Whether to show zero values. | [optional] 
 **showIngredients** | **bool**| Whether to show a list of ingredients. | [optional] 

### Return type

[**MultipartFile**](MultipartFile.md)

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

final api_instance = ProductsApi();
final id = 22347; // int | The product id.
final defaultCss = false; // bool | Whether the default CSS should be added to the response.
final showOptionalNutrients = false; // bool | Whether to show optional nutrients.
final showZeroValues = false; // bool | Whether to show zero values.
final showIngredients = false; // bool | Whether to show a list of ingredients.

try {
    final result = api_instance.productNutritionLabelWidget(id, defaultCss, showOptionalNutrients, showZeroValues, showIngredients);
    print(result);
} catch (e) {
    print('Exception when calling ProductsApi->productNutritionLabelWidget: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The product id. | 
 **defaultCss** | **bool**| Whether the default CSS should be added to the response. | [optional] [default to true]
 **showOptionalNutrients** | **bool**| Whether to show optional nutrients. | [optional] 
 **showZeroValues** | **bool**| Whether to show zero values. | [optional] 
 **showIngredients** | **bool**| Whether to show a list of ingredients. | [optional] 

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchGroceryProducts**
> SearchGroceryProducts200Response searchGroceryProducts(query, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, addProductInformation, offset, number)

Search Grocery Products

Search packaged food products, such as frozen pizza or Greek yogurt.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = ProductsApi();
final query = burger; // String | The (natural language) search query.
final minCalories = 50; // num | The minimum amount of calories the product must have.
final maxCalories = 800; // num | The maximum amount of calories the product can have.
final minCarbs = 10; // num | The minimum amount of carbohydrates in grams the product must have.
final maxCarbs = 100; // num | The maximum amount of carbohydrates in grams the product can have.
final minProtein = 10; // num | The minimum amount of protein in grams the product must have.
final maxProtein = 100; // num | The maximum amount of protein in grams the product can have.
final minFat = 1; // num | The minimum amount of fat in grams the product must have.
final maxFat = 100; // num | The maximum amount of fat in grams the product can have.
final addProductInformation = true; // bool | If set to true, you get more information about the products returned.
final offset = 56; // int | The number of results to skip (between 0 and 900).
final number = 10; // int | The maximum number of items to return (between 1 and 100). Defaults to 10.

try {
    final result = api_instance.searchGroceryProducts(query, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, addProductInformation, offset, number);
    print(result);
} catch (e) {
    print('Exception when calling ProductsApi->searchGroceryProducts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The (natural language) search query. | 
 **minCalories** | **num**| The minimum amount of calories the product must have. | [optional] 
 **maxCalories** | **num**| The maximum amount of calories the product can have. | [optional] 
 **minCarbs** | **num**| The minimum amount of carbohydrates in grams the product must have. | [optional] 
 **maxCarbs** | **num**| The maximum amount of carbohydrates in grams the product can have. | [optional] 
 **minProtein** | **num**| The minimum amount of protein in grams the product must have. | [optional] 
 **maxProtein** | **num**| The maximum amount of protein in grams the product can have. | [optional] 
 **minFat** | **num**| The minimum amount of fat in grams the product must have. | [optional] 
 **maxFat** | **num**| The maximum amount of fat in grams the product can have. | [optional] 
 **addProductInformation** | **bool**| If set to true, you get more information about the products returned. | [optional] 
 **offset** | **int**| The number of results to skip (between 0 and 900). | [optional] 
 **number** | **int**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]

### Return type

[**SearchGroceryProducts200Response**](SearchGroceryProducts200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchGroceryProductsByUPC**
> SearchGroceryProductsByUPC200Response searchGroceryProductsByUPC(upc)

Search Grocery Products by UPC

Get information about a packaged food using its UPC.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = ProductsApi();
final upc = 041631000564; // String | The product's UPC.

try {
    final result = api_instance.searchGroceryProductsByUPC(upc);
    print(result);
} catch (e) {
    print('Exception when calling ProductsApi->searchGroceryProductsByUPC: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **upc** | **String**| The product's UPC. | 

### Return type

[**SearchGroceryProductsByUPC200Response**](SearchGroceryProductsByUPC200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualizeProductNutritionByID**
> String visualizeProductNutritionByID(id, defaultCss)

Product Nutrition by ID Widget

Visualize a product's nutritional information as HTML including CSS.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = ProductsApi();
final id = 7657; // int | The id of the product.
final defaultCss = false; // bool | Whether the default CSS should be added to the response.

try {
    final result = api_instance.visualizeProductNutritionByID(id, defaultCss);
    print(result);
} catch (e) {
    print('Exception when calling ProductsApi->visualizeProductNutritionByID: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the product. | 
 **defaultCss** | **bool**| Whether the default CSS should be added to the response. | [optional] [default to true]

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

