# spoonacular.Api.WineApi

All URIs are relative to *https://api.spoonacular.com*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**GetDishPairingForWine**](WineApi.md#getdishpairingforwine) | **GET** /food/wine/dishes | Dish Pairing for Wine |
| [**GetWineDescription**](WineApi.md#getwinedescription) | **GET** /food/wine/description | Wine Description |
| [**GetWinePairing**](WineApi.md#getwinepairing) | **GET** /food/wine/pairing | Wine Pairing |
| [**GetWineRecommendation**](WineApi.md#getwinerecommendation) | **GET** /food/wine/recommendation | Wine Recommendation |

<a id="getdishpairingforwine"></a>
# **GetDishPairingForWine**
> GetDishPairingForWine200Response GetDishPairingForWine (string wine)

Dish Pairing for Wine

Find a dish that goes well with a given wine.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using spoonacular.Api;
using spoonacular.Client;
using spoonacular.Model;

namespace Example
{
    public class GetDishPairingForWineExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.spoonacular.com";
            // Configure API key authorization: apiKeyScheme
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new WineApi(config);
            var wine = malbec;  // string | The type of wine that should be paired, e.g. \"merlot\", \"riesling\", or \"malbec\".

            try
            {
                // Dish Pairing for Wine
                GetDishPairingForWine200Response result = apiInstance.GetDishPairingForWine(wine);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling WineApi.GetDishPairingForWine: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetDishPairingForWineWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Dish Pairing for Wine
    ApiResponse<GetDishPairingForWine200Response> response = apiInstance.GetDishPairingForWineWithHttpInfo(wine);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling WineApi.GetDishPairingForWineWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **wine** | **string** | The type of wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;. |  |

### Return type

[**GetDishPairingForWine200Response**](GetDishPairingForWine200Response.md)

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

<a id="getwinedescription"></a>
# **GetWineDescription**
> GetWineDescription200Response GetWineDescription (string wine)

Wine Description

Get a simple description of a certain wine, e.g. \"malbec\", \"riesling\", or \"merlot\".

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using spoonacular.Api;
using spoonacular.Client;
using spoonacular.Model;

namespace Example
{
    public class GetWineDescriptionExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.spoonacular.com";
            // Configure API key authorization: apiKeyScheme
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new WineApi(config);
            var wine = merlot;  // string | The name of the wine that should be paired, e.g. \"merlot\", \"riesling\", or \"malbec\".

            try
            {
                // Wine Description
                GetWineDescription200Response result = apiInstance.GetWineDescription(wine);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling WineApi.GetWineDescription: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetWineDescriptionWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Wine Description
    ApiResponse<GetWineDescription200Response> response = apiInstance.GetWineDescriptionWithHttpInfo(wine);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling WineApi.GetWineDescriptionWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **wine** | **string** | The name of the wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;. |  |

### Return type

[**GetWineDescription200Response**](GetWineDescription200Response.md)

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

<a id="getwinepairing"></a>
# **GetWinePairing**
> GetWinePairing200Response GetWinePairing (string food, decimal? maxPrice = null)

Wine Pairing

Find a wine that goes well with a food. Food can be a dish name (\"steak\"), an ingredient name (\"salmon\"), or a cuisine (\"italian\").

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using spoonacular.Api;
using spoonacular.Client;
using spoonacular.Model;

namespace Example
{
    public class GetWinePairingExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.spoonacular.com";
            // Configure API key authorization: apiKeyScheme
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new WineApi(config);
            var food = steak;  // string | The food to get a pairing for. This can be a dish (\"steak\"), an ingredient (\"salmon\"), or a cuisine (\"italian\").
            var maxPrice = 50;  // decimal? | The maximum price for the specific wine recommendation in USD. (optional) 

            try
            {
                // Wine Pairing
                GetWinePairing200Response result = apiInstance.GetWinePairing(food, maxPrice);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling WineApi.GetWinePairing: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetWinePairingWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Wine Pairing
    ApiResponse<GetWinePairing200Response> response = apiInstance.GetWinePairingWithHttpInfo(food, maxPrice);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling WineApi.GetWinePairingWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **food** | **string** | The food to get a pairing for. This can be a dish (\&quot;steak\&quot;), an ingredient (\&quot;salmon\&quot;), or a cuisine (\&quot;italian\&quot;). |  |
| **maxPrice** | **decimal?** | The maximum price for the specific wine recommendation in USD. | [optional]  |

### Return type

[**GetWinePairing200Response**](GetWinePairing200Response.md)

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

<a id="getwinerecommendation"></a>
# **GetWineRecommendation**
> GetWineRecommendation200Response GetWineRecommendation (string wine, decimal? maxPrice = null, decimal? minRating = null, decimal? number = null)

Wine Recommendation

Get a specific wine recommendation (concrete product) for a given wine type, e.g. \"merlot\".

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using spoonacular.Api;
using spoonacular.Client;
using spoonacular.Model;

namespace Example
{
    public class GetWineRecommendationExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.spoonacular.com";
            // Configure API key authorization: apiKeyScheme
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new WineApi(config);
            var wine = merlot;  // string | The type of wine to get a specific product recommendation for.
            var maxPrice = 50;  // decimal? | The maximum price for the specific wine recommendation in USD. (optional) 
            var minRating = 0.7;  // decimal? | The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars. (optional) 
            var number = 3;  // decimal? | The number of wine recommendations expected (between 1 and 100). (optional)  (default to 10M)

            try
            {
                // Wine Recommendation
                GetWineRecommendation200Response result = apiInstance.GetWineRecommendation(wine, maxPrice, minRating, number);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling WineApi.GetWineRecommendation: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetWineRecommendationWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Wine Recommendation
    ApiResponse<GetWineRecommendation200Response> response = apiInstance.GetWineRecommendationWithHttpInfo(wine, maxPrice, minRating, number);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling WineApi.GetWineRecommendationWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **wine** | **string** | The type of wine to get a specific product recommendation for. |  |
| **maxPrice** | **decimal?** | The maximum price for the specific wine recommendation in USD. | [optional]  |
| **minRating** | **decimal?** | The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars. | [optional]  |
| **number** | **decimal?** | The number of wine recommendations expected (between 1 and 100). | [optional] [default to 10M] |

### Return type

[**GetWineRecommendation200Response**](GetWineRecommendation200Response.md)

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

