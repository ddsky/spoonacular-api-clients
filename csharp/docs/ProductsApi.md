# com.spoonacular.ProductsApi

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AutocompleteProductSearch**](ProductsApi.md#autocompleteproductsearch) | **GET** /food/products/suggest | Autocomplete Product Search
[**ClassifyGroceryProduct**](ProductsApi.md#classifygroceryproduct) | **POST** /food/products/classify | Classify Grocery Product
[**ClassifyGroceryProductBulk**](ProductsApi.md#classifygroceryproductbulk) | **POST** /food/products/classifyBatch | Classify Grocery Product Bulk
[**GetComparableProducts**](ProductsApi.md#getcomparableproducts) | **GET** /food/products/upc/{upc}/comparable | Get Comparable Products
[**GetProductInformation**](ProductsApi.md#getproductinformation) | **GET** /food/products/{id} | Get Product Information
[**ProductNutritionByIDImage**](ProductsApi.md#productnutritionbyidimage) | **GET** /food/products/{id}/nutritionWidget.png | Product Nutrition by ID Image
[**ProductNutritionLabelImage**](ProductsApi.md#productnutritionlabelimage) | **GET** /food/products/{id}/nutritionLabel.png | Product Nutrition Label Image
[**ProductNutritionLabelWidget**](ProductsApi.md#productnutritionlabelwidget) | **GET** /food/products/{id}/nutritionLabel | Product Nutrition Label Widget
[**SearchGroceryProducts**](ProductsApi.md#searchgroceryproducts) | **GET** /food/products/search | Search Grocery Products
[**SearchGroceryProductsByUPC**](ProductsApi.md#searchgroceryproductsbyupc) | **GET** /food/products/upc/{upc} | Search Grocery Products by UPC
[**VisualizeProductNutritionByID**](ProductsApi.md#visualizeproductnutritionbyid) | **GET** /food/products/{id}/nutritionWidget | Product Nutrition by ID Widget


<a name="autocompleteproductsearch"></a>
# **AutocompleteProductSearch**
> InlineResponse20032 AutocompleteProductSearch (string query, int? number)

Autocomplete Product Search

Generate suggestions for grocery products based on a (partial) query. The matches will be found by looking in the title only.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class AutocompleteProductSearchExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new ProductsApi();
            var query = chicke;  // string | The (partial) search query.
            var number = 10;  // int? | The number of results to return (between 1 and 25). (optional) 

            try
            {
                // Autocomplete Product Search
                InlineResponse20032 result = apiInstance.AutocompleteProductSearch(query, number);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling ProductsApi.AutocompleteProductSearch: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The (partial) search query. | 
 **number** | **int?**| The number of results to return (between 1 and 25). | [optional] 

### Return type

[**InlineResponse20032**](InlineResponse20032.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="classifygroceryproduct"></a>
# **ClassifyGroceryProduct**
> InlineResponse20033 ClassifyGroceryProduct (InlineObject1 inlineObject1, string locale)

Classify Grocery Product

This endpoint allows you to match a packaged food to a basic category, e.g. a specific brand of milk to the category milk.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class ClassifyGroceryProductExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new ProductsApi();
            var inlineObject1 = new InlineObject1(); // InlineObject1 | 
            var locale = en_US;  // string | The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). (optional) 

            try
            {
                // Classify Grocery Product
                InlineResponse20033 result = apiInstance.ClassifyGroceryProduct(inlineObject1, locale);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling ProductsApi.ClassifyGroceryProduct: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inlineObject1** | [**InlineObject1**](InlineObject1.md)|  | 
 **locale** | **string**| The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). | [optional] 

### Return type

[**InlineResponse20033**](InlineResponse20033.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="classifygroceryproductbulk"></a>
# **ClassifyGroceryProductBulk**
> List<InlineResponse20033> ClassifyGroceryProductBulk (List<InlineObject> inlineObject, string locale)

Classify Grocery Product Bulk

Provide a set of product jsons, get back classified products.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class ClassifyGroceryProductBulkExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new ProductsApi();
            var inlineObject = new List<InlineObject>(); // List<InlineObject> | 
            var locale = en_US;  // string | The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). (optional) 

            try
            {
                // Classify Grocery Product Bulk
                List&lt;InlineResponse20033&gt; result = apiInstance.ClassifyGroceryProductBulk(inlineObject, locale);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling ProductsApi.ClassifyGroceryProductBulk: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inlineObject** | [**List<InlineObject>**](List.md)|  | 
 **locale** | **string**| The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). | [optional] 

### Return type

[**List<InlineResponse20033>**](InlineResponse20033.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getcomparableproducts"></a>
# **GetComparableProducts**
> InlineResponse20031 GetComparableProducts (decimal? upc)

Get Comparable Products

Find comparable products to the given one.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class GetComparableProductsExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new ProductsApi();
            var upc = 33698816271;  // decimal? | The UPC of the product for which you want to find comparable products.

            try
            {
                // Get Comparable Products
                InlineResponse20031 result = apiInstance.GetComparableProducts(upc);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling ProductsApi.GetComparableProducts: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **upc** | **decimal?**| The UPC of the product for which you want to find comparable products. | 

### Return type

[**InlineResponse20031**](InlineResponse20031.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getproductinformation"></a>
# **GetProductInformation**
> InlineResponse20030 GetProductInformation (int? id)

Get Product Information

Use a product id to get full information about a product, such as ingredients, nutrition, etc. The nutritional information is per serving.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class GetProductInformationExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new ProductsApi();
            var id = 1;  // int? | The item's id.

            try
            {
                // Get Product Information
                InlineResponse20030 result = apiInstance.GetProductInformation(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling ProductsApi.GetProductInformation: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int?**| The item&#39;s id. | 

### Return type

[**InlineResponse20030**](InlineResponse20030.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="productnutritionbyidimage"></a>
# **ProductNutritionByIDImage**
> Object ProductNutritionByIDImage (decimal? id)

Product Nutrition by ID Image

Visualize a product's nutritional information as an image.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class ProductNutritionByIDImageExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new ProductsApi();
            var id = 7657;  // decimal? | The id of the product.

            try
            {
                // Product Nutrition by ID Image
                Object result = apiInstance.ProductNutritionByIDImage(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling ProductsApi.ProductNutritionByIDImage: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **decimal?**| The id of the product. | 

### Return type

**Object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="productnutritionlabelimage"></a>
# **ProductNutritionLabelImage**
> Object ProductNutritionLabelImage (decimal? id, bool? showOptionalNutrients, bool? showZeroValues, bool? showIngredients)

Product Nutrition Label Image

Get a product's nutrition label as an image.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class ProductNutritionLabelImageExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new ProductsApi();
            var id = 22347;  // decimal? | The product id.
            var showOptionalNutrients = false;  // bool? | Whether to show optional nutrients. (optional) 
            var showZeroValues = false;  // bool? | Whether to show zero values. (optional) 
            var showIngredients = false;  // bool? | Whether to show a list of ingredients. (optional) 

            try
            {
                // Product Nutrition Label Image
                Object result = apiInstance.ProductNutritionLabelImage(id, showOptionalNutrients, showZeroValues, showIngredients);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling ProductsApi.ProductNutritionLabelImage: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **decimal?**| The product id. | 
 **showOptionalNutrients** | **bool?**| Whether to show optional nutrients. | [optional] 
 **showZeroValues** | **bool?**| Whether to show zero values. | [optional] 
 **showIngredients** | **bool?**| Whether to show a list of ingredients. | [optional] 

### Return type

**Object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="productnutritionlabelwidget"></a>
# **ProductNutritionLabelWidget**
> string ProductNutritionLabelWidget (decimal? id, bool? defaultCss, bool? showOptionalNutrients, bool? showZeroValues, bool? showIngredients)

Product Nutrition Label Widget

Get a product's nutrition label as an HTML widget.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class ProductNutritionLabelWidgetExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new ProductsApi();
            var id = 22347;  // decimal? | The product id.
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
            catch (Exception e)
            {
                Debug.Print("Exception when calling ProductsApi.ProductNutritionLabelWidget: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **decimal?**| The product id. | 
 **defaultCss** | **bool?**| Whether the default CSS should be added to the response. | [optional] [default to true]
 **showOptionalNutrients** | **bool?**| Whether to show optional nutrients. | [optional] 
 **showZeroValues** | **bool?**| Whether to show zero values. | [optional] 
 **showIngredients** | **bool?**| Whether to show a list of ingredients. | [optional] 

### Return type

**string**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="searchgroceryproducts"></a>
# **SearchGroceryProducts**
> InlineResponse20027 SearchGroceryProducts (string query, decimal? minCalories, decimal? maxCalories, decimal? minCarbs, decimal? maxCarbs, decimal? minProtein, decimal? maxProtein, decimal? minFat, decimal? maxFat, bool? addProductInformation, int? offset, int? number)

Search Grocery Products

Search packaged food products, such as frozen pizza or Greek yogurt.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class SearchGroceryProductsExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new ProductsApi();
            var query = burger;  // string | The (natural language) search query. (optional) 
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
                InlineResponse20027 result = apiInstance.SearchGroceryProducts(query, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, addProductInformation, offset, number);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling ProductsApi.SearchGroceryProducts: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The (natural language) search query. | [optional] 
 **minCalories** | **decimal?**| The minimum amount of calories the product must have. | [optional] 
 **maxCalories** | **decimal?**| The maximum amount of calories the product can have. | [optional] 
 **minCarbs** | **decimal?**| The minimum amount of carbohydrates in grams the product must have. | [optional] 
 **maxCarbs** | **decimal?**| The maximum amount of carbohydrates in grams the product can have. | [optional] 
 **minProtein** | **decimal?**| The minimum amount of protein in grams the product must have. | [optional] 
 **maxProtein** | **decimal?**| The maximum amount of protein in grams the product can have. | [optional] 
 **minFat** | **decimal?**| The minimum amount of fat in grams the product must have. | [optional] 
 **maxFat** | **decimal?**| The maximum amount of fat in grams the product can have. | [optional] 
 **addProductInformation** | **bool?**| If set to true, you get more information about the products returned. | [optional] 
 **offset** | **int?**| The number of results to skip (between 0 and 900). | [optional] 
 **number** | **int?**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]

### Return type

[**InlineResponse20027**](InlineResponse20027.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="searchgroceryproductsbyupc"></a>
# **SearchGroceryProductsByUPC**
> InlineResponse20028 SearchGroceryProductsByUPC (decimal? upc)

Search Grocery Products by UPC

Get information about a packaged food using its UPC.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class SearchGroceryProductsByUPCExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new ProductsApi();
            var upc = 41631000564;  // decimal? | The product's UPC.

            try
            {
                // Search Grocery Products by UPC
                InlineResponse20028 result = apiInstance.SearchGroceryProductsByUPC(upc);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling ProductsApi.SearchGroceryProductsByUPC: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **upc** | **decimal?**| The product&#39;s UPC. | 

### Return type

[**InlineResponse20028**](InlineResponse20028.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="visualizeproductnutritionbyid"></a>
# **VisualizeProductNutritionByID**
> string VisualizeProductNutritionByID (int? id, bool? defaultCss, string accept)

Product Nutrition by ID Widget

Visualize a product's nutritional information as HTML including CSS.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class VisualizeProductNutritionByIDExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new ProductsApi();
            var id = 1;  // int? | The item's id.
            var defaultCss = false;  // bool? | Whether the default CSS should be added to the response. (optional)  (default to true)
            var accept = application/json;  // string | Accept header. (optional) 

            try
            {
                // Product Nutrition by ID Widget
                string result = apiInstance.VisualizeProductNutritionByID(id, defaultCss, accept);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling ProductsApi.VisualizeProductNutritionByID: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int?**| The item&#39;s id. | 
 **defaultCss** | **bool?**| Whether the default CSS should be added to the response. | [optional] [default to true]
 **accept** | **string**| Accept header. | [optional] 

### Return type

**string**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

