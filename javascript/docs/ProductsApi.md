# SpoonacularApi.ProductsApi

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

> InlineResponse20032 autocompleteProductSearch(query, opts)

Autocomplete Product Search

Generate suggestions for grocery products based on a (partial) query. The matches will be found by looking in the title only.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.ProductsApi();
let query = chicke; // String | The (partial) search query.
let opts = {
  '_number': 10 // Number | The number of results to return (between 1 and 25).
};
apiInstance.autocompleteProductSearch(query, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The (partial) search query. | 
 **_number** | **Number**| The number of results to return (between 1 and 25). | [optional] 

### Return type

[**InlineResponse20032**](InlineResponse20032.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## classifyGroceryProduct

> InlineResponse20033 classifyGroceryProduct(inlineObject1, opts)

Classify Grocery Product

This endpoint allows you to match a packaged food to a basic category, e.g. a specific brand of milk to the category milk.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.ProductsApi();
let inlineObject1 = new SpoonacularApi.InlineObject1(); // InlineObject1 | 
let opts = {
  'locale': en_US // String | The display name of the returned category, supported is en_US (for American English) and en_GB (for British English).
};
apiInstance.classifyGroceryProduct(inlineObject1, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inlineObject1** | [**InlineObject1**](InlineObject1.md)|  | 
 **locale** | **String**| The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). | [optional] 

### Return type

[**InlineResponse20033**](InlineResponse20033.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## classifyGroceryProductBulk

> [InlineResponse20033] classifyGroceryProductBulk(inlineObject, opts)

Classify Grocery Product Bulk

Provide a set of product jsons, get back classified products.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.ProductsApi();
let inlineObject = [{"title":"Kroger Vitamin A & D Reduced Fat 2% Milk","upc":"","plu_code":""}]; // [InlineObject] | 
let opts = {
  'locale': en_US // String | The display name of the returned category, supported is en_US (for American English) and en_GB (for British English).
};
apiInstance.classifyGroceryProductBulk(inlineObject, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inlineObject** | [**[InlineObject]**](Array.md)|  | 
 **locale** | **String**| The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). | [optional] 

### Return type

[**[InlineResponse20033]**](InlineResponse20033.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## getComparableProducts

> InlineResponse20031 getComparableProducts(upc)

Get Comparable Products

Find comparable products to the given one.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.ProductsApi();
let upc = 33698816271; // Number | The UPC of the product for which you want to find comparable products.
apiInstance.getComparableProducts(upc, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **upc** | **Number**| The UPC of the product for which you want to find comparable products. | 

### Return type

[**InlineResponse20031**](InlineResponse20031.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getProductInformation

> InlineResponse20030 getProductInformation(id)

Get Product Information

Use a product id to get full information about a product, such as ingredients, nutrition, etc. The nutritional information is per serving.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.ProductsApi();
let id = 1; // Number | The item's id.
apiInstance.getProductInformation(id, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Number**| The item&#39;s id. | 

### Return type

[**InlineResponse20030**](InlineResponse20030.md)

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

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.ProductsApi();
let id = 7657; // Number | The id of the product.
apiInstance.productNutritionByIDImage(id, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Number**| The id of the product. | 

### Return type

**Object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/png


## productNutritionLabelImage

> Object productNutritionLabelImage(id, opts)

Product Nutrition Label Image

Get a product&#39;s nutrition label as an image.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.ProductsApi();
let id = 22347; // Number | The product id.
let opts = {
  'showOptionalNutrients': false, // Boolean | Whether to show optional nutrients.
  'showZeroValues': false, // Boolean | Whether to show zero values.
  'showIngredients': false // Boolean | Whether to show a list of ingredients.
};
apiInstance.productNutritionLabelImage(id, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Number**| The product id. | 
 **showOptionalNutrients** | **Boolean**| Whether to show optional nutrients. | [optional] 
 **showZeroValues** | **Boolean**| Whether to show zero values. | [optional] 
 **showIngredients** | **Boolean**| Whether to show a list of ingredients. | [optional] 

### Return type

**Object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/png


## productNutritionLabelWidget

> String productNutritionLabelWidget(id, opts)

Product Nutrition Label Widget

Get a product&#39;s nutrition label as an HTML widget.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.ProductsApi();
let id = 22347; // Number | The product id.
let opts = {
  'defaultCss': false, // Boolean | Whether the default CSS should be added to the response.
  'showOptionalNutrients': false, // Boolean | Whether to show optional nutrients.
  'showZeroValues': false, // Boolean | Whether to show zero values.
  'showIngredients': false // Boolean | Whether to show a list of ingredients.
};
apiInstance.productNutritionLabelWidget(id, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Number**| The product id. | 
 **defaultCss** | **Boolean**| Whether the default CSS should be added to the response. | [optional] [default to true]
 **showOptionalNutrients** | **Boolean**| Whether to show optional nutrients. | [optional] 
 **showZeroValues** | **Boolean**| Whether to show zero values. | [optional] 
 **showIngredients** | **Boolean**| Whether to show a list of ingredients. | [optional] 

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html


## searchGroceryProducts

> InlineResponse20027 searchGroceryProducts(opts)

Search Grocery Products

Search packaged food products, such as frozen pizza or Greek yogurt.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.ProductsApi();
let opts = {
  'query': burger, // String | The (natural language) search query.
  'minCalories': 50, // Number | The minimum amount of calories the product must have.
  'maxCalories': 800, // Number | The maximum amount of calories the product can have.
  'minCarbs': 10, // Number | The minimum amount of carbohydrates in grams the product must have.
  'maxCarbs': 100, // Number | The maximum amount of carbohydrates in grams the product can have.
  'minProtein': 10, // Number | The minimum amount of protein in grams the product must have.
  'maxProtein': 100, // Number | The maximum amount of protein in grams the product can have.
  'minFat': 1, // Number | The minimum amount of fat in grams the product must have.
  'maxFat': 100, // Number | The maximum amount of fat in grams the product can have.
  'addProductInformation': true, // Boolean | If set to true, you get more information about the products returned.
  'offset': 56, // Number | The number of results to skip (between 0 and 900).
  '_number': 10 // Number | The maximum number of items to return (between 1 and 100). Defaults to 10.
};
apiInstance.searchGroceryProducts(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The (natural language) search query. | [optional] 
 **minCalories** | **Number**| The minimum amount of calories the product must have. | [optional] 
 **maxCalories** | **Number**| The maximum amount of calories the product can have. | [optional] 
 **minCarbs** | **Number**| The minimum amount of carbohydrates in grams the product must have. | [optional] 
 **maxCarbs** | **Number**| The maximum amount of carbohydrates in grams the product can have. | [optional] 
 **minProtein** | **Number**| The minimum amount of protein in grams the product must have. | [optional] 
 **maxProtein** | **Number**| The maximum amount of protein in grams the product can have. | [optional] 
 **minFat** | **Number**| The minimum amount of fat in grams the product must have. | [optional] 
 **maxFat** | **Number**| The maximum amount of fat in grams the product can have. | [optional] 
 **addProductInformation** | **Boolean**| If set to true, you get more information about the products returned. | [optional] 
 **offset** | **Number**| The number of results to skip (between 0 and 900). | [optional] 
 **_number** | **Number**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]

### Return type

[**InlineResponse20027**](InlineResponse20027.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## searchGroceryProductsByUPC

> InlineResponse20028 searchGroceryProductsByUPC(upc)

Search Grocery Products by UPC

Get information about a packaged food using its UPC.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.ProductsApi();
let upc = 41631000564; // Number | The product's UPC.
apiInstance.searchGroceryProductsByUPC(upc, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **upc** | **Number**| The product&#39;s UPC. | 

### Return type

[**InlineResponse20028**](InlineResponse20028.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## visualizeProductNutritionByID

> String visualizeProductNutritionByID(id, opts)

Product Nutrition by ID Widget

Visualize a product&#39;s nutritional information as HTML including CSS.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.ProductsApi();
let id = 1; // Number | The item's id.
let opts = {
  'defaultCss': false, // Boolean | Whether the default CSS should be added to the response.
  'accept': application/json // String | Accept header.
};
apiInstance.visualizeProductNutritionByID(id, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Number**| The item&#39;s id. | 
 **defaultCss** | **Boolean**| Whether the default CSS should be added to the response. | [optional] [default to true]
 **accept** | **String**| Accept header. | [optional] 

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

