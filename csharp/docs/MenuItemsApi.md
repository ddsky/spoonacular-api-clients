# spoonacular.Api.MenuItemsApi

All URIs are relative to *https://api.spoonacular.com*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**AutocompleteMenuItemSearch**](MenuItemsApi.md#autocompletemenuitemsearch) | **GET** /food/menuItems/suggest | Autocomplete Menu Item Search |
| [**GetMenuItemInformation**](MenuItemsApi.md#getmenuiteminformation) | **GET** /food/menuItems/{id} | Get Menu Item Information |
| [**MenuItemNutritionByIDImage**](MenuItemsApi.md#menuitemnutritionbyidimage) | **GET** /food/menuItems/{id}/nutritionWidget.png | Menu Item Nutrition by ID Image |
| [**MenuItemNutritionLabelImage**](MenuItemsApi.md#menuitemnutritionlabelimage) | **GET** /food/menuItems/{id}/nutritionLabel.png | Menu Item Nutrition Label Image |
| [**MenuItemNutritionLabelWidget**](MenuItemsApi.md#menuitemnutritionlabelwidget) | **GET** /food/menuItems/{id}/nutritionLabel | Menu Item Nutrition Label Widget |
| [**SearchMenuItems**](MenuItemsApi.md#searchmenuitems) | **GET** /food/menuItems/search | Search Menu Items |
| [**VisualizeMenuItemNutritionByID**](MenuItemsApi.md#visualizemenuitemnutritionbyid) | **GET** /food/menuItems/{id}/nutritionWidget | Menu Item Nutrition by ID Widget |

<a id="autocompletemenuitemsearch"></a>
# **AutocompleteMenuItemSearch**
> AutocompleteMenuItemSearch200Response AutocompleteMenuItemSearch (string query, decimal? number = null)

Autocomplete Menu Item Search

Generate suggestions for menu items based on a (partial) query. The matches will be found by looking in the title only.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using spoonacular.Api;
using spoonacular.Client;
using spoonacular.Model;

namespace Example
{
    public class AutocompleteMenuItemSearchExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.spoonacular.com";
            // Configure API key authorization: apiKeyScheme
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new MenuItemsApi(config);
            var query = chicke;  // string | The (partial) search query.
            var number = 10;  // decimal? | The number of results to return (between 1 and 25). (optional) 

            try
            {
                // Autocomplete Menu Item Search
                AutocompleteMenuItemSearch200Response result = apiInstance.AutocompleteMenuItemSearch(query, number);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling MenuItemsApi.AutocompleteMenuItemSearch: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the AutocompleteMenuItemSearchWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Autocomplete Menu Item Search
    ApiResponse<AutocompleteMenuItemSearch200Response> response = apiInstance.AutocompleteMenuItemSearchWithHttpInfo(query, number);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling MenuItemsApi.AutocompleteMenuItemSearchWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **query** | **string** | The (partial) search query. |  |
| **number** | **decimal?** | The number of results to return (between 1 and 25). | [optional]  |

### Return type

[**AutocompleteMenuItemSearch200Response**](AutocompleteMenuItemSearch200Response.md)

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

<a id="getmenuiteminformation"></a>
# **GetMenuItemInformation**
> GetMenuItemInformation200Response GetMenuItemInformation (int id)

Get Menu Item Information

Use a menu item id to get all available information about a menu item, such as nutrition.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using spoonacular.Api;
using spoonacular.Client;
using spoonacular.Model;

namespace Example
{
    public class GetMenuItemInformationExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.spoonacular.com";
            // Configure API key authorization: apiKeyScheme
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new MenuItemsApi(config);
            var id = 1;  // int | The item's id.

            try
            {
                // Get Menu Item Information
                GetMenuItemInformation200Response result = apiInstance.GetMenuItemInformation(id);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling MenuItemsApi.GetMenuItemInformation: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetMenuItemInformationWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Get Menu Item Information
    ApiResponse<GetMenuItemInformation200Response> response = apiInstance.GetMenuItemInformationWithHttpInfo(id);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling MenuItemsApi.GetMenuItemInformationWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **int** | The item&#39;s id. |  |

### Return type

[**GetMenuItemInformation200Response**](GetMenuItemInformation200Response.md)

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

<a id="menuitemnutritionbyidimage"></a>
# **MenuItemNutritionByIDImage**
> Object MenuItemNutritionByIDImage (decimal id)

Menu Item Nutrition by ID Image

Visualize a menu item's nutritional information as HTML including CSS.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using spoonacular.Api;
using spoonacular.Client;
using spoonacular.Model;

namespace Example
{
    public class MenuItemNutritionByIDImageExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.spoonacular.com";
            // Configure API key authorization: apiKeyScheme
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new MenuItemsApi(config);
            var id = 424571;  // decimal | The menu item id.

            try
            {
                // Menu Item Nutrition by ID Image
                Object result = apiInstance.MenuItemNutritionByIDImage(id);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling MenuItemsApi.MenuItemNutritionByIDImage: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the MenuItemNutritionByIDImageWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Menu Item Nutrition by ID Image
    ApiResponse<Object> response = apiInstance.MenuItemNutritionByIDImageWithHttpInfo(id);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling MenuItemsApi.MenuItemNutritionByIDImageWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **decimal** | The menu item id. |  |

### Return type

**Object**

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

<a id="menuitemnutritionlabelimage"></a>
# **MenuItemNutritionLabelImage**
> Object MenuItemNutritionLabelImage (decimal id, bool? showOptionalNutrients = null, bool? showZeroValues = null, bool? showIngredients = null)

Menu Item Nutrition Label Image

Visualize a menu item's nutritional label information as an image.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using spoonacular.Api;
using spoonacular.Client;
using spoonacular.Model;

namespace Example
{
    public class MenuItemNutritionLabelImageExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.spoonacular.com";
            // Configure API key authorization: apiKeyScheme
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new MenuItemsApi(config);
            var id = 342313;  // decimal | The menu item id.
            var showOptionalNutrients = false;  // bool? | Whether to show optional nutrients. (optional) 
            var showZeroValues = false;  // bool? | Whether to show zero values. (optional) 
            var showIngredients = false;  // bool? | Whether to show a list of ingredients. (optional) 

            try
            {
                // Menu Item Nutrition Label Image
                Object result = apiInstance.MenuItemNutritionLabelImage(id, showOptionalNutrients, showZeroValues, showIngredients);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling MenuItemsApi.MenuItemNutritionLabelImage: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the MenuItemNutritionLabelImageWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Menu Item Nutrition Label Image
    ApiResponse<Object> response = apiInstance.MenuItemNutritionLabelImageWithHttpInfo(id, showOptionalNutrients, showZeroValues, showIngredients);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling MenuItemsApi.MenuItemNutritionLabelImageWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **decimal** | The menu item id. |  |
| **showOptionalNutrients** | **bool?** | Whether to show optional nutrients. | [optional]  |
| **showZeroValues** | **bool?** | Whether to show zero values. | [optional]  |
| **showIngredients** | **bool?** | Whether to show a list of ingredients. | [optional]  |

### Return type

**Object**

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

<a id="menuitemnutritionlabelwidget"></a>
# **MenuItemNutritionLabelWidget**
> string MenuItemNutritionLabelWidget (decimal id, bool? defaultCss = null, bool? showOptionalNutrients = null, bool? showZeroValues = null, bool? showIngredients = null)

Menu Item Nutrition Label Widget

Visualize a menu item's nutritional label information as HTML including CSS.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using spoonacular.Api;
using spoonacular.Client;
using spoonacular.Model;

namespace Example
{
    public class MenuItemNutritionLabelWidgetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.spoonacular.com";
            // Configure API key authorization: apiKeyScheme
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new MenuItemsApi(config);
            var id = 342313;  // decimal | The menu item id.
            var defaultCss = false;  // bool? | Whether the default CSS should be added to the response. (optional)  (default to true)
            var showOptionalNutrients = false;  // bool? | Whether to show optional nutrients. (optional) 
            var showZeroValues = false;  // bool? | Whether to show zero values. (optional) 
            var showIngredients = false;  // bool? | Whether to show a list of ingredients. (optional) 

            try
            {
                // Menu Item Nutrition Label Widget
                string result = apiInstance.MenuItemNutritionLabelWidget(id, defaultCss, showOptionalNutrients, showZeroValues, showIngredients);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling MenuItemsApi.MenuItemNutritionLabelWidget: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the MenuItemNutritionLabelWidgetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Menu Item Nutrition Label Widget
    ApiResponse<string> response = apiInstance.MenuItemNutritionLabelWidgetWithHttpInfo(id, defaultCss, showOptionalNutrients, showZeroValues, showIngredients);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling MenuItemsApi.MenuItemNutritionLabelWidgetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **decimal** | The menu item id. |  |
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

<a id="searchmenuitems"></a>
# **SearchMenuItems**
> SearchMenuItems200Response SearchMenuItems (string? query = null, decimal? minCalories = null, decimal? maxCalories = null, decimal? minCarbs = null, decimal? maxCarbs = null, decimal? minProtein = null, decimal? maxProtein = null, decimal? minFat = null, decimal? maxFat = null, bool? addMenuItemInformation = null, int? offset = null, int? number = null)

Search Menu Items

Search over 115,000 menu items from over 800 fast food and chain restaurants. For example, McDonald's Big Mac or Starbucks Mocha.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using spoonacular.Api;
using spoonacular.Client;
using spoonacular.Model;

namespace Example
{
    public class SearchMenuItemsExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.spoonacular.com";
            // Configure API key authorization: apiKeyScheme
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new MenuItemsApi(config);
            var query = burger;  // string? | The (natural language) search query. (optional) 
            var minCalories = 50;  // decimal? | The minimum amount of calories the menu item must have. (optional) 
            var maxCalories = 800;  // decimal? | The maximum amount of calories the menu item can have. (optional) 
            var minCarbs = 10;  // decimal? | The minimum amount of carbohydrates in grams the menu item must have. (optional) 
            var maxCarbs = 100;  // decimal? | The maximum amount of carbohydrates in grams the menu item can have. (optional) 
            var minProtein = 10;  // decimal? | The minimum amount of protein in grams the menu item must have. (optional) 
            var maxProtein = 100;  // decimal? | The maximum amount of protein in grams the menu item can have. (optional) 
            var minFat = 1;  // decimal? | The minimum amount of fat in grams the menu item must have. (optional) 
            var maxFat = 100;  // decimal? | The maximum amount of fat in grams the menu item can have. (optional) 
            var addMenuItemInformation = true;  // bool? | If set to true, you get more information about the menu items returned. (optional) 
            var offset = 56;  // int? | The number of results to skip (between 0 and 900). (optional) 
            var number = 10;  // int? | The maximum number of items to return (between 1 and 100). Defaults to 10. (optional)  (default to 10)

            try
            {
                // Search Menu Items
                SearchMenuItems200Response result = apiInstance.SearchMenuItems(query, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, addMenuItemInformation, offset, number);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling MenuItemsApi.SearchMenuItems: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SearchMenuItemsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Search Menu Items
    ApiResponse<SearchMenuItems200Response> response = apiInstance.SearchMenuItemsWithHttpInfo(query, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, addMenuItemInformation, offset, number);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling MenuItemsApi.SearchMenuItemsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **query** | **string?** | The (natural language) search query. | [optional]  |
| **minCalories** | **decimal?** | The minimum amount of calories the menu item must have. | [optional]  |
| **maxCalories** | **decimal?** | The maximum amount of calories the menu item can have. | [optional]  |
| **minCarbs** | **decimal?** | The minimum amount of carbohydrates in grams the menu item must have. | [optional]  |
| **maxCarbs** | **decimal?** | The maximum amount of carbohydrates in grams the menu item can have. | [optional]  |
| **minProtein** | **decimal?** | The minimum amount of protein in grams the menu item must have. | [optional]  |
| **maxProtein** | **decimal?** | The maximum amount of protein in grams the menu item can have. | [optional]  |
| **minFat** | **decimal?** | The minimum amount of fat in grams the menu item must have. | [optional]  |
| **maxFat** | **decimal?** | The maximum amount of fat in grams the menu item can have. | [optional]  |
| **addMenuItemInformation** | **bool?** | If set to true, you get more information about the menu items returned. | [optional]  |
| **offset** | **int?** | The number of results to skip (between 0 and 900). | [optional]  |
| **number** | **int?** | The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10] |

### Return type

[**SearchMenuItems200Response**](SearchMenuItems200Response.md)

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

<a id="visualizemenuitemnutritionbyid"></a>
# **VisualizeMenuItemNutritionByID**
> string VisualizeMenuItemNutritionByID (int id, bool? defaultCss = null, string? accept = null)

Menu Item Nutrition by ID Widget

Visualize a menu item's nutritional information as HTML including CSS.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using spoonacular.Api;
using spoonacular.Client;
using spoonacular.Model;

namespace Example
{
    public class VisualizeMenuItemNutritionByIDExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.spoonacular.com";
            // Configure API key authorization: apiKeyScheme
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new MenuItemsApi(config);
            var id = 1;  // int | The item's id.
            var defaultCss = false;  // bool? | Whether the default CSS should be added to the response. (optional)  (default to true)
            var accept = application/json;  // string? | Accept header. (optional) 

            try
            {
                // Menu Item Nutrition by ID Widget
                string result = apiInstance.VisualizeMenuItemNutritionByID(id, defaultCss, accept);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling MenuItemsApi.VisualizeMenuItemNutritionByID: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the VisualizeMenuItemNutritionByIDWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Menu Item Nutrition by ID Widget
    ApiResponse<string> response = apiInstance.VisualizeMenuItemNutritionByIDWithHttpInfo(id, defaultCss, accept);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling MenuItemsApi.VisualizeMenuItemNutritionByIDWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **int** | The item&#39;s id. |  |
| **defaultCss** | **bool?** | Whether the default CSS should be added to the response. | [optional] [default to true] |
| **accept** | **string?** | Accept header. | [optional]  |

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

