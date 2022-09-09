# .ProductsApi

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
> AutocompleteProductSearch200Response autocompleteProductSearch()

Generate suggestions for grocery products based on a (partial) query. The matches will be found by looking in the title only.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .ProductsApi(configuration);

let body:.ProductsApiAutocompleteProductSearchRequest = {
  // string | The (partial) search query.
  query: "chicke",
  // number | The number of results to return (between 1 and 25). (optional)
  number: 10,
};

apiInstance.autocompleteProductSearch(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | [**string**] | The (partial) search query. | defaults to undefined
 **number** | [**number**] | The number of results to return (between 1 and 25). | (optional) defaults to undefined


### Return type

**AutocompleteProductSearch200Response**

### Authorization

[apiKeyScheme](README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **classifyGroceryProduct**
> ClassifyGroceryProduct200Response classifyGroceryProduct(classifyGroceryProductRequest)

This endpoint allows you to match a packaged food to a basic category, e.g. a specific brand of milk to the category milk.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .ProductsApi(configuration);

let body:.ProductsApiClassifyGroceryProductRequest = {
  // ClassifyGroceryProductRequest
  classifyGroceryProductRequest: {
    title: "title_example",
    upc: "upc_example",
    pluCode: "pluCode_example",
  },
  // 'en_US' | 'en_GB' | The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). (optional)
  locale: "en_US",
};

apiInstance.classifyGroceryProduct(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **classifyGroceryProductRequest** | **ClassifyGroceryProductRequest**|  |
 **locale** | [**&#39;en_US&#39; | &#39;en_GB&#39;**]**Array<&#39;en_US&#39; &#124; &#39;en_GB&#39;>** | The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). | (optional) defaults to undefined


### Return type

**ClassifyGroceryProduct200Response**

### Authorization

[apiKeyScheme](README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **classifyGroceryProductBulk**
> Set<ClassifyGroceryProductBulk200ResponseInner> classifyGroceryProductBulk(classifyGroceryProductBulkRequestInner)

Provide a set of product jsons, get back classified products.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .ProductsApi(configuration);

let body:.ProductsApiClassifyGroceryProductBulkRequest = {
  // Set<ClassifyGroceryProductBulkRequestInner>
  classifyGroceryProductBulkRequestInner: [
    {
      title: "title_example",
      upc: "upc_example",
      pluCode: "pluCode_example",
    },
  ],
  // string | The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). (optional)
  locale: "en_US",
};

apiInstance.classifyGroceryProductBulk(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **classifyGroceryProductBulkRequestInner** | **Set<ClassifyGroceryProductBulkRequestInner>**|  |
 **locale** | [**string**] | The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). | (optional) defaults to undefined


### Return type

**Set<ClassifyGroceryProductBulk200ResponseInner>**

### Authorization

[apiKeyScheme](README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **getComparableProducts**
> GetComparableProducts200Response getComparableProducts()

Find comparable products to the given one.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .ProductsApi(configuration);

let body:.ProductsApiGetComparableProductsRequest = {
  // number | The UPC of the product for which you want to find comparable products.
  upc: 33698816271,
};

apiInstance.getComparableProducts(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **upc** | [**number**] | The UPC of the product for which you want to find comparable products. | defaults to undefined


### Return type

**GetComparableProducts200Response**

### Authorization

[apiKeyScheme](README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **getProductInformation**
> GetProductInformation200Response getProductInformation()

Use a product id to get full information about a product, such as ingredients, nutrition, etc. The nutritional information is per serving.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .ProductsApi(configuration);

let body:.ProductsApiGetProductInformationRequest = {
  // number | The item's id.
  id: 1,
};

apiInstance.getProductInformation(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**number**] | The item&#39;s id. | defaults to undefined


### Return type

**GetProductInformation200Response**

### Authorization

[apiKeyScheme](README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **productNutritionByIDImage**
> any productNutritionByIDImage()

Visualize a product's nutritional information as an image.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .ProductsApi(configuration);

let body:.ProductsApiProductNutritionByIDImageRequest = {
  // number | The id of the product.
  id: 7657,
};

apiInstance.productNutritionByIDImage(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**number**] | The id of the product. | defaults to undefined


### Return type

**any**

### Authorization

[apiKeyScheme](README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **productNutritionLabelImage**
> any productNutritionLabelImage()

Get a product's nutrition label as an image.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .ProductsApi(configuration);

let body:.ProductsApiProductNutritionLabelImageRequest = {
  // number | The product id.
  id: 22347,
  // boolean | Whether to show optional nutrients. (optional)
  showOptionalNutrients: false,
  // boolean | Whether to show zero values. (optional)
  showZeroValues: false,
  // boolean | Whether to show a list of ingredients. (optional)
  showIngredients: false,
};

apiInstance.productNutritionLabelImage(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**number**] | The product id. | defaults to undefined
 **showOptionalNutrients** | [**boolean**] | Whether to show optional nutrients. | (optional) defaults to undefined
 **showZeroValues** | [**boolean**] | Whether to show zero values. | (optional) defaults to undefined
 **showIngredients** | [**boolean**] | Whether to show a list of ingredients. | (optional) defaults to undefined


### Return type

**any**

### Authorization

[apiKeyScheme](README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **productNutritionLabelWidget**
> string productNutritionLabelWidget()

Get a product's nutrition label as an HTML widget.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .ProductsApi(configuration);

let body:.ProductsApiProductNutritionLabelWidgetRequest = {
  // number | The product id.
  id: 22347,
  // boolean | Whether the default CSS should be added to the response. (optional)
  defaultCss: false,
  // boolean | Whether to show optional nutrients. (optional)
  showOptionalNutrients: false,
  // boolean | Whether to show zero values. (optional)
  showZeroValues: false,
  // boolean | Whether to show a list of ingredients. (optional)
  showIngredients: false,
};

apiInstance.productNutritionLabelWidget(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**number**] | The product id. | defaults to undefined
 **defaultCss** | [**boolean**] | Whether the default CSS should be added to the response. | (optional) defaults to undefined
 **showOptionalNutrients** | [**boolean**] | Whether to show optional nutrients. | (optional) defaults to undefined
 **showZeroValues** | [**boolean**] | Whether to show zero values. | (optional) defaults to undefined
 **showIngredients** | [**boolean**] | Whether to show a list of ingredients. | (optional) defaults to undefined


### Return type

**string**

### Authorization

[apiKeyScheme](README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **searchGroceryProducts**
> SearchGroceryProducts200Response searchGroceryProducts()

Search packaged food products, such as frozen pizza or Greek yogurt.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .ProductsApi(configuration);

let body:.ProductsApiSearchGroceryProductsRequest = {
  // string | The (natural language) search query. (optional)
  query: "burger",
  // number | The minimum amount of calories the product must have. (optional)
  minCalories: 50,
  // number | The maximum amount of calories the product can have. (optional)
  maxCalories: 800,
  // number | The minimum amount of carbohydrates in grams the product must have. (optional)
  minCarbs: 10,
  // number | The maximum amount of carbohydrates in grams the product can have. (optional)
  maxCarbs: 100,
  // number | The minimum amount of protein in grams the product must have. (optional)
  minProtein: 10,
  // number | The maximum amount of protein in grams the product can have. (optional)
  maxProtein: 100,
  // number | The minimum amount of fat in grams the product must have. (optional)
  minFat: 1,
  // number | The maximum amount of fat in grams the product can have. (optional)
  maxFat: 100,
  // boolean | If set to true, you get more information about the products returned. (optional)
  addProductInformation: true,
  // number | The number of results to skip (between 0 and 900). (optional)
  offset: 0,
  // number | The maximum number of items to return (between 1 and 100). Defaults to 10. (optional)
  number: 10,
};

apiInstance.searchGroceryProducts(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | [**string**] | The (natural language) search query. | (optional) defaults to undefined
 **minCalories** | [**number**] | The minimum amount of calories the product must have. | (optional) defaults to undefined
 **maxCalories** | [**number**] | The maximum amount of calories the product can have. | (optional) defaults to undefined
 **minCarbs** | [**number**] | The minimum amount of carbohydrates in grams the product must have. | (optional) defaults to undefined
 **maxCarbs** | [**number**] | The maximum amount of carbohydrates in grams the product can have. | (optional) defaults to undefined
 **minProtein** | [**number**] | The minimum amount of protein in grams the product must have. | (optional) defaults to undefined
 **maxProtein** | [**number**] | The maximum amount of protein in grams the product can have. | (optional) defaults to undefined
 **minFat** | [**number**] | The minimum amount of fat in grams the product must have. | (optional) defaults to undefined
 **maxFat** | [**number**] | The maximum amount of fat in grams the product can have. | (optional) defaults to undefined
 **addProductInformation** | [**boolean**]**Array<&#39;false&#39; &#124; &#39;true&#39;>** | If set to true, you get more information about the products returned. | (optional) defaults to undefined
 **offset** | [**number**] | The number of results to skip (between 0 and 900). | (optional) defaults to undefined
 **number** | [**number**] | The maximum number of items to return (between 1 and 100). Defaults to 10. | (optional) defaults to 10


### Return type

**SearchGroceryProducts200Response**

### Authorization

[apiKeyScheme](README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **searchGroceryProductsByUPC**
> SearchGroceryProductsByUPC200Response searchGroceryProductsByUPC()

Get information about a packaged food using its UPC.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .ProductsApi(configuration);

let body:.ProductsApiSearchGroceryProductsByUPCRequest = {
  // number | The product's UPC.
  upc: 41631000564,
};

apiInstance.searchGroceryProductsByUPC(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **upc** | [**number**] | The product&#39;s UPC. | defaults to undefined


### Return type

**SearchGroceryProductsByUPC200Response**

### Authorization

[apiKeyScheme](README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **visualizeProductNutritionByID**
> string visualizeProductNutritionByID()

Visualize a product's nutritional information as HTML including CSS.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .ProductsApi(configuration);

let body:.ProductsApiVisualizeProductNutritionByIDRequest = {
  // number | The item's id.
  id: 1,
  // boolean | Whether the default CSS should be added to the response. (optional)
  defaultCss: false,
  // 'application/json' | 'text/html' | 'media/_*' | Accept header. (optional)
  accept: "application/json",
};

apiInstance.visualizeProductNutritionByID(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**number**] | The item&#39;s id. | defaults to undefined
 **defaultCss** | [**boolean**] | Whether the default CSS should be added to the response. | (optional) defaults to undefined
 **accept** | [**&#39;application/json&#39; | &#39;text/html&#39; | &#39;media/_*&#39;**]**Array<&#39;application/json&#39; &#124; &#39;text/html&#39; &#124; &#39;media/_*&#39;>** | Accept header. | (optional) defaults to undefined


### Return type

**string**

### Authorization

[apiKeyScheme](README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)


