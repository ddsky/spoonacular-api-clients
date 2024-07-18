# spoonacular.Api.ProductsApi

All URIs are relative to *https://api.spoonacular.com*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**AutocompleteProductSearch**](ProductsApi.md#autocompleteproductsearch) | **GET** /food/products/suggest | Autocomplete Product Search |
| [**ClassifyGroceryProduct**](ProductsApi.md#classifygroceryproduct) | **POST** /food/products/classify | Classify Grocery Product |
| [**ClassifyGroceryProductBulk**](ProductsApi.md#classifygroceryproductbulk) | **POST** /food/products/classifyBatch | Classify Grocery Product Bulk |
| [**GetComparableProducts**](ProductsApi.md#getcomparableproducts) | **GET** /food/products/upc/{upc}/comparable | Get Comparable Products |
| [**GetProductInformation**](ProductsApi.md#getproductinformation) | **GET** /food/products/{id} | Get Product Information |
| [**ProductNutritionByIDImage**](ProductsApi.md#productnutritionbyidimage) | **GET** /food/products/{id}/nutritionWidget.png | Product Nutrition by ID Image |
| [**ProductNutritionLabelImage**](ProductsApi.md#productnutritionlabelimage) | **GET** /food/products/{id}/nutritionLabel.png | Product Nutrition Label Image |
| [**ProductNutritionLabelWidget**](ProductsApi.md#productnutritionlabelwidget) | **GET** /food/products/{id}/nutritionLabel | Product Nutrition Label Widget |
| [**SearchGroceryProducts**](ProductsApi.md#searchgroceryproducts) | **GET** /food/products/search | Search Grocery Products |
| [**SearchGroceryProductsByUPC**](ProductsApi.md#searchgroceryproductsbyupc) | **GET** /food/products/upc/{upc} | Search Grocery Products by UPC |
| [**VisualizeProductNutritionByID**](ProductsApi.md#visualizeproductnutritionbyid) | **GET** /food/products/{id}/nutritionWidget | Product Nutrition by ID Widget |

<a id="autocompleteproductsearch"></a>
# **AutocompleteProductSearch**
> AutocompleteProductSearch200Response AutocompleteProductSearch (string query, int? number = null)

Autocomplete Product Search

Generate suggestions for grocery products based on a (partial) query. The matches will be found by looking in the title only.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using spoonacular.Api;
using spoonacular.Client;
using spoonacular.Model;

namespace Example
{
    public class AutocompleteProductSearchExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.spoonacular.com";
            // Configure API key authorization: apiKeyScheme
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new ProductsApi(config);
            var query = chicke;  // string | The (partial) search query.
            var number = 10;  // int? | The number of results to return (between 1 and 25). (optional) 

            try
            {
                // Autocomplete Product Search
                AutocompleteProductSearch200Response result = apiInstance.AutocompleteProductSearch(query, number);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling ProductsApi.AutocompleteProductSearch: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the AutocompleteProductSearchWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Autocomplete Product Search
    ApiResponse<AutocompleteProductSearch200Response> response = apiInstance.AutocompleteProductSearchWithHttpInfo(query, number);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling ProductsApi.AutocompleteProductSearchWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **query** | **string** | The (partial) search query. |  |
| **number** | **int?** | The number of results to return (between 1 and 25). | [optional]  |

### Return type

[**AutocompleteProductSearch200Response**](AutocompleteProductSearch200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="classifygroceryproduct"></a>
# **ClassifyGroceryProduct**
> ClassifyGroceryProduct200Response ClassifyGroceryProduct (ClassifyGroceryProductRequest classifyGroceryProductRequest, string? locale = null)

Classify Grocery Product

This endpoint allows you to match a packaged food to a basic category, e.g. a specific brand of milk to the category milk.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using spoonacular.Api;
using spoonacular.Client;
using spoonacular.Model;

namespace Example
{
    public class ClassifyGroceryProductExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.spoonacular.com";
            // Configure API key authorization: apiKeyScheme
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new ProductsApi(config);
            var classifyGroceryProductRequest = new ClassifyGroceryProductRequest(); // ClassifyGroceryProductRequest | 
            var locale = en_US;  // string? | The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). (optional) 

            try
            {
                // Classify Grocery Product
                ClassifyGroceryProduct200Response result = apiInstance.ClassifyGroceryProduct(classifyGroceryProductRequest, locale);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling ProductsApi.ClassifyGroceryProduct: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ClassifyGroceryProductWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Classify Grocery Product
    ApiResponse<ClassifyGroceryProduct200Response> response = apiInstance.ClassifyGroceryProductWithHttpInfo(classifyGroceryProductRequest, locale);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling ProductsApi.ClassifyGroceryProductWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **classifyGroceryProductRequest** | [**ClassifyGroceryProductRequest**](ClassifyGroceryProductRequest.md) |  |  |
| **locale** | **string?** | The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). | [optional]  |

### Return type

[**ClassifyGroceryProduct200Response**](ClassifyGroceryProduct200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="classifygroceryproductbulk"></a>
# **ClassifyGroceryProductBulk**
> List&lt;ClassifyGroceryProductBulk200ResponseInner&gt; ClassifyGroceryProductBulk (List<ClassifyGroceryProductBulkRequestInner> classifyGroceryProductBulkRequestInner, string? locale = null)

Classify Grocery Product Bulk

Provide a set of product jsons, get back classified products.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using spoonacular.Api;
using spoonacular.Client;
using spoonacular.Model;

namespace Example
{
    public class ClassifyGroceryProductBulkExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.spoonacular.com";
            // Configure API key authorization: apiKeyScheme
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new ProductsApi(config);
            var classifyGroceryProductBulkRequestInner = new List<ClassifyGroceryProductBulkRequestInner>(); // List<ClassifyGroceryProductBulkRequestInner> | 
            var locale = en_US;  // string? | The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). (optional) 

            try
            {
                // Classify Grocery Product Bulk
                List<ClassifyGroceryProductBulk200ResponseInner> result = apiInstance.ClassifyGroceryProductBulk(classifyGroceryProductBulkRequestInner, locale);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling ProductsApi.ClassifyGroceryProductBulk: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ClassifyGroceryProductBulkWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Classify Grocery Product Bulk
    ApiResponse<List<ClassifyGroceryProductBulk200ResponseInner>> response = apiInstance.ClassifyGroceryProductBulkWithHttpInfo(classifyGroceryProductBulkRequestInner, locale);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling ProductsApi.ClassifyGroceryProductBulkWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **classifyGroceryProductBulkRequestInner** | [**List&lt;ClassifyGroceryProductBulkRequestInner&gt;**](ClassifyGroceryProductBulkRequestInner.md) |  |  |
| **locale** | **string?** | The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). | [optional]  |

### Return type

[**List&lt;ClassifyGroceryProductBulk200ResponseInner&gt;**](ClassifyGroceryProductBulk200ResponseInner.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="getcomparableproducts"></a>
# **GetComparableProducts**
> GetComparableProducts200Response GetComparableProducts (string upc)

Get Comparable Products

Find comparable products to the given one.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using spoonacular.Api;
using spoonacular.Client;
using spoonacular.Model;

namespace Example
{
    public class GetComparableProductsExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.spoonacular.com";
            // Configure API key authorization: apiKeyScheme
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new ProductsApi(config);
            var upc = 033698816271;  // string | The UPC of the product for which you want to find comparable products.

            try
            {
                // Get Comparable Products
                GetComparableProducts200Response result = apiInstance.GetComparableProducts(upc);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling ProductsApi.GetComparableProducts: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetComparableProductsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Get Comparable Products
    ApiResponse<GetComparableProducts200Response> response = apiInstance.GetComparableProductsWithHttpInfo(upc);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling ProductsApi.GetComparableProductsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **upc** | **string** | The UPC of the product for which you want to find comparable products. |  |

### Return type

[**GetComparableProducts200Response**](GetComparableProducts200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="getproductinformation"></a>
# **GetProductInformation**
> ProductInformation GetProductInformation (int id)

Get Product Information

Use a product id to get full information about a product, such as ingredients, nutrition, etc. The nutritional information is per serving.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using spoonacular.Api;
using spoonacular.Client;
using spoonacular.Model;

namespace Example
{
    public class GetProductInformationExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.spoonacular.com";
            // Configure API key authorization: apiKeyScheme
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new ProductsApi(config);
            var id = 22347;  // int | The id of the packaged food.

            try
            {
                // Get Product Information
                ProductInformation result = apiInstance.GetProductInformation(id);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling ProductsApi.GetProductInformation: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetProductInformationWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Get Product Information
    ApiResponse<ProductInformation> response = apiInstance.GetProductInformationWithHttpInfo(id);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling ProductsApi.GetProductInformationWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **int** | The id of the packaged food. |  |

### Return type

[**ProductInformation**](ProductInformation.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="productnutritionbyidimage"></a>
# **ProductNutritionByIDImage**
> System.IO.Stream ProductNutritionByIDImage (int id)

Product Nutrition by ID Image

Visualize a product's nutritional information as an image.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using spoonacular.Api;
using spoonacular.Client;
using spoonacular.Model;

namespace Example
{
    public class ProductNutritionByIDImageExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.spoonacular.com";
            // Configure API key authorization: apiKeyScheme
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new ProductsApi(config);
            var id = 7657;  // int | The id of the product.

            try
            {
                // Product Nutrition by ID Image
                System.IO.Stream result = apiInstance.ProductNutritionByIDImage(id);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling ProductsApi.ProductNutritionByIDImage: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ProductNutritionByIDImageWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Product Nutrition by ID Image
    ApiResponse<System.IO.Stream> response = apiInstance.ProductNutritionByIDImageWithHttpInfo(id);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling ProductsApi.ProductNutritionByIDImageWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **int** | The id of the product. |  |

### Return type

**System.IO.Stream**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="productnutritionlabelimage"></a>
# **ProductNutritionLabelImage**
> System.IO.Stream ProductNutritionLabelImage (int id, bool? showOptionalNutrients = null, bool? showZeroValues = null, bool? showIngredients = null)

Product Nutrition Label Image

Get a product's nutrition label as an image.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using spoonacular.Api;
using spoonacular.Client;
using spoonacular.Model;

namespace Example
{
    public class ProductNutritionLabelImageExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.spoonacular.com";
            // Configure API key authorization: apiKeyScheme
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new ProductsApi(config);
            var id = 22347;  // int | The product id.
            var showOptionalNutrients = false;  // bool? | Whether to show optional nutrients. (optional) 
            var showZeroValues = false;  // bool? | Whether to show zero values. (optional) 
            var showIngredients = false;  // bool? | Whether to show a list of ingredients. (optional) 

            try
            {
                // Product Nutrition Label Image
                System.IO.Stream result = apiInstance.ProductNutritionLabelImage(id, showOptionalNutrients, showZeroValues, showIngredients);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling ProductsApi.ProductNutritionLabelImage: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ProductNutritionLabelImageWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Product Nutrition Label Image
    ApiResponse<System.IO.Stream> response = apiInstance.ProductNutritionLabelImageWithHttpInfo(id, showOptionalNutrients, showZeroValues, showIngredients);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling ProductsApi.ProductNutritionLabelImageWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **int** | The product id. |  |
| **showOptionalNutrients** | **bool?** | Whether to show optional nutrients. | [optional]  |
| **showZeroValues** | **bool?** | Whether to show zero values. | [optional]  |
| **showIngredients** | **bool?** | Whether to show a list of ingredients. | [optional]  |

### Return type

**System.IO.Stream**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="productnutritionlabelwidget"></a>
# **ProductNutritionLabelWidget**
> string ProductNutritionLabelWidget (int id, bool? defaultCss = null, bool? showOptionalNutrients = null, bool? showZeroValues = null, bool? showIngredients = null)

Product Nutrition Label Widget

Get a product's nutrition label as an HTML widget.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using spoonacular.Api;
using spoonacular.Client;
using spoonacular.Model;

namespace Example
{
    public class ProductNutritionLabelWidgetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.spoonacular.com";
            // Configure API key authorization: apiKeyScheme
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new ProductsApi(config);
            var id = 22347;  // int | The product id.
            var defaultCss = false;  // bool? | Whether the default CSS should be added to the response. (optional)  (default to true)
            var showOptionalNutrients = false;  // bool? | Whether to show optional nutrients. (optional) 
            var showZeroValues = false;  // bool? | Whether to show zero values. (optional) 
            var showIngredients = false;  // bool? | Whether to show a list of ingredients. (optional) 

            try
            {
                // Product Nutrition Label Widget
                string result = apiInstance.ProductNutritionLabelWidget(id, defaultCss, showOptionalNutrients, showZeroValues, showIngredients);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling ProductsApi.ProductNutritionLabelWidget: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ProductNutritionLabelWidgetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Product Nutrition Label Widget
    ApiResponse<string> response = apiInstance.ProductNutritionLabelWidgetWithHttpInfo(id, defaultCss, showOptionalNutrients, showZeroValues, showIngredients);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling ProductsApi.ProductNutritionLabelWidgetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **int** | The product id. |  |
| **defaultCss** | **bool?** | Whether the default CSS should be added to the response. | [optional] [default to true] |
| **showOptionalNutrients** | **bool?** | Whether to show optional nutrients. | [optional]  |
| **showZeroValues** | **bool?** | Whether to show zero values. | [optional]  |
| **showIngredients** | **bool?** | Whether to show a list of ingredients. | [optional]  |

### Return type

**string**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="searchgroceryproducts"></a>
# **SearchGroceryProducts**
> SearchGroceryProducts200Response SearchGroceryProducts (string query, decimal? minCalories = null, decimal? maxCalories = null, decimal? minCarbs = null, decimal? maxCarbs = null, decimal? minProtein = null, decimal? maxProtein = null, decimal? minFat = null, decimal? maxFat = null, bool? addProductInformation = null, int? offset = null, int? number = null)

Search Grocery Products

Search packaged food products, such as frozen pizza or Greek yogurt.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using spoonacular.Api;
using spoonacular.Client;
using spoonacular.Model;

namespace Example
{
    public class SearchGroceryProductsExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.spoonacular.com";
            // Configure API key authorization: apiKeyScheme
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new ProductsApi(config);
            var query = burger;  // string | The (natural language) search query.
            var minCalories = 50;  // decimal? | The minimum amount of calories the product must have. (optional) 
            var maxCalories = 800;  // decimal? | The maximum amount of calories the product can have. (optional) 
            var minCarbs = 10;  // decimal? | The minimum amount of carbohydrates in grams the product must have. (optional) 
            var maxCarbs = 100;  // decimal? | The maximum amount of carbohydrates in grams the product can have. (optional) 
            var minProtein = 10;  // decimal? | The minimum amount of protein in grams the product must have. (optional) 
            var maxProtein = 100;  // decimal? | The maximum amount of protein in grams the product can have. (optional) 
            var minFat = 1;  // decimal? | The minimum amount of fat in grams the product must have. (optional) 
            var maxFat = 100;  // decimal? | The maximum amount of fat in grams the product can have. (optional) 
            var addProductInformation = true;  // bool? | If set to true, you get more information about the products returned. (optional) 
            var offset = 56;  // int? | The number of results to skip (between 0 and 900). (optional) 
            var number = 10;  // int? | The maximum number of items to return (between 1 and 100). Defaults to 10. (optional)  (default to 10)

            try
            {
                // Search Grocery Products
                SearchGroceryProducts200Response result = apiInstance.SearchGroceryProducts(query, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, addProductInformation, offset, number);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling ProductsApi.SearchGroceryProducts: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SearchGroceryProductsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Search Grocery Products
    ApiResponse<SearchGroceryProducts200Response> response = apiInstance.SearchGroceryProductsWithHttpInfo(query, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, addProductInformation, offset, number);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling ProductsApi.SearchGroceryProductsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **query** | **string** | The (natural language) search query. |  |
| **minCalories** | **decimal?** | The minimum amount of calories the product must have. | [optional]  |
| **maxCalories** | **decimal?** | The maximum amount of calories the product can have. | [optional]  |
| **minCarbs** | **decimal?** | The minimum amount of carbohydrates in grams the product must have. | [optional]  |
| **maxCarbs** | **decimal?** | The maximum amount of carbohydrates in grams the product can have. | [optional]  |
| **minProtein** | **decimal?** | The minimum amount of protein in grams the product must have. | [optional]  |
| **maxProtein** | **decimal?** | The maximum amount of protein in grams the product can have. | [optional]  |
| **minFat** | **decimal?** | The minimum amount of fat in grams the product must have. | [optional]  |
| **maxFat** | **decimal?** | The maximum amount of fat in grams the product can have. | [optional]  |
| **addProductInformation** | **bool?** | If set to true, you get more information about the products returned. | [optional]  |
| **offset** | **int?** | The number of results to skip (between 0 and 900). | [optional]  |
| **number** | **int?** | The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10] |

### Return type

[**SearchGroceryProducts200Response**](SearchGroceryProducts200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="searchgroceryproductsbyupc"></a>
# **SearchGroceryProductsByUPC**
> SearchGroceryProductsByUPC200Response SearchGroceryProductsByUPC (string upc)

Search Grocery Products by UPC

Get information about a packaged food using its UPC.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using spoonacular.Api;
using spoonacular.Client;
using spoonacular.Model;

namespace Example
{
    public class SearchGroceryProductsByUPCExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.spoonacular.com";
            // Configure API key authorization: apiKeyScheme
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new ProductsApi(config);
            var upc = 041631000564;  // string | The product's UPC.

            try
            {
                // Search Grocery Products by UPC
                SearchGroceryProductsByUPC200Response result = apiInstance.SearchGroceryProductsByUPC(upc);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling ProductsApi.SearchGroceryProductsByUPC: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SearchGroceryProductsByUPCWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Search Grocery Products by UPC
    ApiResponse<SearchGroceryProductsByUPC200Response> response = apiInstance.SearchGroceryProductsByUPCWithHttpInfo(upc);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling ProductsApi.SearchGroceryProductsByUPCWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **upc** | **string** | The product&#39;s UPC. |  |

### Return type

[**SearchGroceryProductsByUPC200Response**](SearchGroceryProductsByUPC200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="visualizeproductnutritionbyid"></a>
# **VisualizeProductNutritionByID**
> string VisualizeProductNutritionByID (int id, bool? defaultCss = null)

Product Nutrition by ID Widget

Visualize a product's nutritional information as HTML including CSS.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using spoonacular.Api;
using spoonacular.Client;
using spoonacular.Model;

namespace Example
{
    public class VisualizeProductNutritionByIDExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.spoonacular.com";
            // Configure API key authorization: apiKeyScheme
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new ProductsApi(config);
            var id = 7657;  // int | The id of the product.
            var defaultCss = false;  // bool? | Whether the default CSS should be added to the response. (optional)  (default to true)

            try
            {
                // Product Nutrition by ID Widget
                string result = apiInstance.VisualizeProductNutritionByID(id, defaultCss);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling ProductsApi.VisualizeProductNutritionByID: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the VisualizeProductNutritionByIDWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Product Nutrition by ID Widget
    ApiResponse<string> response = apiInstance.VisualizeProductNutritionByIDWithHttpInfo(id, defaultCss);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling ProductsApi.VisualizeProductNutritionByIDWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **int** | The id of the product. |  |
| **defaultCss** | **bool?** | Whether the default CSS should be added to the response. | [optional] [default to true] |

### Return type

**string**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

