# ProductsApi

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



## autocompleteProductSearch

> AutocompleteProductSearch200Response autocompleteProductSearch(query, number)

Autocomplete Product Search

Generate suggestions for grocery products based on a (partial) query. The matches will be found by looking in the title only.

### Example

```java
// Import classes:
//import com.spoonacular.ProductsApi;

ProductsApi apiInstance = new ProductsApi();
String query = chicke; // String | The (partial) search query.
Integer number = 10; // Integer | The number of results to return (between 1 and 25).
try {
    AutocompleteProductSearch200Response result = apiInstance.autocompleteProductSearch(query, number);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ProductsApi#autocompleteProductSearch");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The (partial) search query. | [default to null]
 **number** | **Integer**| The number of results to return (between 1 and 25). | [optional] [default to null]

### Return type

[**AutocompleteProductSearch200Response**](AutocompleteProductSearch200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## classifyGroceryProduct

> ClassifyGroceryProduct200Response classifyGroceryProduct(classifyGroceryProductRequest, locale)

Classify Grocery Product

This endpoint allows you to match a packaged food to a basic category, e.g. a specific brand of milk to the category milk.

### Example

```java
// Import classes:
//import com.spoonacular.ProductsApi;

ProductsApi apiInstance = new ProductsApi();
ClassifyGroceryProductRequest classifyGroceryProductRequest = {"title":"Kroger Vitamin A & D Reduced Fat 2% Milk","upc":"","plu_code":""}; // ClassifyGroceryProductRequest | 
String locale = en_US; // String | The display name of the returned category, supported is en_US (for American English) and en_GB (for British English).
try {
    ClassifyGroceryProduct200Response result = apiInstance.classifyGroceryProduct(classifyGroceryProductRequest, locale);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ProductsApi#classifyGroceryProduct");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **classifyGroceryProductRequest** | [**ClassifyGroceryProductRequest**](ClassifyGroceryProductRequest.md)|  |
 **locale** | **String**| The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). | [optional] [default to null] [enum: en_US, en_GB]

### Return type

[**ClassifyGroceryProduct200Response**](ClassifyGroceryProduct200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## classifyGroceryProductBulk

> Set&lt;ClassifyGroceryProductBulk200ResponseInner&gt; classifyGroceryProductBulk(classifyGroceryProductBulkRequestInner, locale)

Classify Grocery Product Bulk

Provide a set of product jsons, get back classified products.

### Example

```java
// Import classes:
//import com.spoonacular.ProductsApi;

ProductsApi apiInstance = new ProductsApi();
Set<ClassifyGroceryProductBulkRequestInner> classifyGroceryProductBulkRequestInner = [{"title":"Kroger Vitamin A & D Reduced Fat 2% Milk","upc":"","plu_code":""}]; // Set<ClassifyGroceryProductBulkRequestInner> | 
String locale = en_US; // String | The display name of the returned category, supported is en_US (for American English) and en_GB (for British English).
try {
    Set<ClassifyGroceryProductBulk200ResponseInner> result = apiInstance.classifyGroceryProductBulk(classifyGroceryProductBulkRequestInner, locale);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ProductsApi#classifyGroceryProductBulk");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **classifyGroceryProductBulkRequestInner** | [**Set&lt;ClassifyGroceryProductBulkRequestInner&gt;**](ClassifyGroceryProductBulkRequestInner.md)|  |
 **locale** | **String**| The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). | [optional] [default to null]

### Return type

[**Set&lt;ClassifyGroceryProductBulk200ResponseInner&gt;**](ClassifyGroceryProductBulk200ResponseInner.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## getComparableProducts

> GetComparableProducts200Response getComparableProducts(upc)

Get Comparable Products

Find comparable products to the given one.

### Example

```java
// Import classes:
//import com.spoonacular.ProductsApi;

ProductsApi apiInstance = new ProductsApi();
BigDecimal upc = 33698816271; // BigDecimal | The UPC of the product for which you want to find comparable products.
try {
    GetComparableProducts200Response result = apiInstance.getComparableProducts(upc);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ProductsApi#getComparableProducts");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **upc** | **BigDecimal**| The UPC of the product for which you want to find comparable products. | [default to null]

### Return type

[**GetComparableProducts200Response**](GetComparableProducts200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getProductInformation

> GetProductInformation200Response getProductInformation(id)

Get Product Information

Use a product id to get full information about a product, such as ingredients, nutrition, etc. The nutritional information is per serving.

### Example

```java
// Import classes:
//import com.spoonacular.ProductsApi;

ProductsApi apiInstance = new ProductsApi();
Integer id = 1; // Integer | The item's id.
try {
    GetProductInformation200Response result = apiInstance.getProductInformation(id);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ProductsApi#getProductInformation");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The item&#39;s id. | [default to null]

### Return type

[**GetProductInformation200Response**](GetProductInformation200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## productNutritionByIDImage

> Object productNutritionByIDImage(id)

Product Nutrition by ID Image

Visualize a product&#39;s nutritional information as an image.

### Example

```java
// Import classes:
//import com.spoonacular.ProductsApi;

ProductsApi apiInstance = new ProductsApi();
BigDecimal id = 7657; // BigDecimal | The id of the product.
try {
    Object result = apiInstance.productNutritionByIDImage(id);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ProductsApi#productNutritionByIDImage");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **BigDecimal**| The id of the product. | [default to null]

### Return type

**Object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/png


## productNutritionLabelImage

> Object productNutritionLabelImage(id, showOptionalNutrients, showZeroValues, showIngredients)

Product Nutrition Label Image

Get a product&#39;s nutrition label as an image.

### Example

```java
// Import classes:
//import com.spoonacular.ProductsApi;

ProductsApi apiInstance = new ProductsApi();
BigDecimal id = 22347; // BigDecimal | The product id.
Boolean showOptionalNutrients = false; // Boolean | Whether to show optional nutrients.
Boolean showZeroValues = false; // Boolean | Whether to show zero values.
Boolean showIngredients = false; // Boolean | Whether to show a list of ingredients.
try {
    Object result = apiInstance.productNutritionLabelImage(id, showOptionalNutrients, showZeroValues, showIngredients);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ProductsApi#productNutritionLabelImage");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **BigDecimal**| The product id. | [default to null]
 **showOptionalNutrients** | **Boolean**| Whether to show optional nutrients. | [optional] [default to null]
 **showZeroValues** | **Boolean**| Whether to show zero values. | [optional] [default to null]
 **showIngredients** | **Boolean**| Whether to show a list of ingredients. | [optional] [default to null]

### Return type

**Object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/png


## productNutritionLabelWidget

> String productNutritionLabelWidget(id, defaultCss, showOptionalNutrients, showZeroValues, showIngredients)

Product Nutrition Label Widget

Get a product&#39;s nutrition label as an HTML widget.

### Example

```java
// Import classes:
//import com.spoonacular.ProductsApi;

ProductsApi apiInstance = new ProductsApi();
BigDecimal id = 22347; // BigDecimal | The product id.
Boolean defaultCss = false; // Boolean | Whether the default CSS should be added to the response.
Boolean showOptionalNutrients = false; // Boolean | Whether to show optional nutrients.
Boolean showZeroValues = false; // Boolean | Whether to show zero values.
Boolean showIngredients = false; // Boolean | Whether to show a list of ingredients.
try {
    String result = apiInstance.productNutritionLabelWidget(id, defaultCss, showOptionalNutrients, showZeroValues, showIngredients);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ProductsApi#productNutritionLabelWidget");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **BigDecimal**| The product id. | [default to null]
 **defaultCss** | **Boolean**| Whether the default CSS should be added to the response. | [optional] [default to true]
 **showOptionalNutrients** | **Boolean**| Whether to show optional nutrients. | [optional] [default to null]
 **showZeroValues** | **Boolean**| Whether to show zero values. | [optional] [default to null]
 **showIngredients** | **Boolean**| Whether to show a list of ingredients. | [optional] [default to null]

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html


## searchGroceryProducts

> SearchGroceryProducts200Response searchGroceryProducts(query, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, addProductInformation, offset, number)

Search Grocery Products

Search packaged food products, such as frozen pizza or Greek yogurt.

### Example

```java
// Import classes:
//import com.spoonacular.ProductsApi;

ProductsApi apiInstance = new ProductsApi();
String query = burger; // String | The (natural language) search query.
BigDecimal minCalories = 50; // BigDecimal | The minimum amount of calories the product must have.
BigDecimal maxCalories = 800; // BigDecimal | The maximum amount of calories the product can have.
BigDecimal minCarbs = 10; // BigDecimal | The minimum amount of carbohydrates in grams the product must have.
BigDecimal maxCarbs = 100; // BigDecimal | The maximum amount of carbohydrates in grams the product can have.
BigDecimal minProtein = 10; // BigDecimal | The minimum amount of protein in grams the product must have.
BigDecimal maxProtein = 100; // BigDecimal | The maximum amount of protein in grams the product can have.
BigDecimal minFat = 1; // BigDecimal | The minimum amount of fat in grams the product must have.
BigDecimal maxFat = 100; // BigDecimal | The maximum amount of fat in grams the product can have.
Boolean addProductInformation = true; // Boolean | If set to true, you get more information about the products returned.
Integer offset = null; // Integer | The number of results to skip (between 0 and 900).
Integer number = 10; // Integer | The maximum number of items to return (between 1 and 100). Defaults to 10.
try {
    SearchGroceryProducts200Response result = apiInstance.searchGroceryProducts(query, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, addProductInformation, offset, number);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ProductsApi#searchGroceryProducts");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The (natural language) search query. | [optional] [default to null]
 **minCalories** | **BigDecimal**| The minimum amount of calories the product must have. | [optional] [default to null]
 **maxCalories** | **BigDecimal**| The maximum amount of calories the product can have. | [optional] [default to null]
 **minCarbs** | **BigDecimal**| The minimum amount of carbohydrates in grams the product must have. | [optional] [default to null]
 **maxCarbs** | **BigDecimal**| The maximum amount of carbohydrates in grams the product can have. | [optional] [default to null]
 **minProtein** | **BigDecimal**| The minimum amount of protein in grams the product must have. | [optional] [default to null]
 **maxProtein** | **BigDecimal**| The maximum amount of protein in grams the product can have. | [optional] [default to null]
 **minFat** | **BigDecimal**| The minimum amount of fat in grams the product must have. | [optional] [default to null]
 **maxFat** | **BigDecimal**| The maximum amount of fat in grams the product can have. | [optional] [default to null]
 **addProductInformation** | **Boolean**| If set to true, you get more information about the products returned. | [optional] [default to null] [enum: false, true]
 **offset** | **Integer**| The number of results to skip (between 0 and 900). | [optional] [default to null]
 **number** | **Integer**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]

### Return type

[**SearchGroceryProducts200Response**](SearchGroceryProducts200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## searchGroceryProductsByUPC

> SearchGroceryProductsByUPC200Response searchGroceryProductsByUPC(upc)

Search Grocery Products by UPC

Get information about a packaged food using its UPC.

### Example

```java
// Import classes:
//import com.spoonacular.ProductsApi;

ProductsApi apiInstance = new ProductsApi();
BigDecimal upc = 41631000564; // BigDecimal | The product's UPC.
try {
    SearchGroceryProductsByUPC200Response result = apiInstance.searchGroceryProductsByUPC(upc);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ProductsApi#searchGroceryProductsByUPC");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **upc** | **BigDecimal**| The product&#39;s UPC. | [default to null]

### Return type

[**SearchGroceryProductsByUPC200Response**](SearchGroceryProductsByUPC200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## visualizeProductNutritionByID

> String visualizeProductNutritionByID(id, defaultCss, accept)

Product Nutrition by ID Widget

Visualize a product&#39;s nutritional information as HTML including CSS.

### Example

```java
// Import classes:
//import com.spoonacular.ProductsApi;

ProductsApi apiInstance = new ProductsApi();
Integer id = 1; // Integer | The item's id.
Boolean defaultCss = false; // Boolean | Whether the default CSS should be added to the response.
String accept = application/json; // String | Accept header.
try {
    String result = apiInstance.visualizeProductNutritionByID(id, defaultCss, accept);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ProductsApi#visualizeProductNutritionByID");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The item&#39;s id. | [default to null]
 **defaultCss** | **Boolean**| Whether the default CSS should be added to the response. | [optional] [default to true]
 **accept** | **String**| Accept header. | [optional] [default to null] [enum: application/json, text/html, media/*]

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

