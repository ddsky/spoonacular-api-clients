# com.spoonacular.WineApi

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetDishPairingForWine**](WineApi.md#getdishpairingforwine) | **GET** /food/wine/dishes | Dish Pairing for Wine
[**GetWineDescription**](WineApi.md#getwinedescription) | **GET** /food/wine/description | Wine Description
[**GetWinePairing**](WineApi.md#getwinepairing) | **GET** /food/wine/pairing | Wine Pairing
[**GetWineRecommendation**](WineApi.md#getwinerecommendation) | **GET** /food/wine/recommendation | Wine Recommendation


<a name="getdishpairingforwine"></a>
# **GetDishPairingForWine**
> InlineResponse20044 GetDishPairingForWine (string wine)

Dish Pairing for Wine

Find a dish that goes well with a given wine.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class GetDishPairingForWineExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new WineApi();
            var wine = malbec;  // string | The type of wine that should be paired, e.g. \"merlot\", \"riesling\", or \"malbec\".

            try
            {
                // Dish Pairing for Wine
                InlineResponse20044 result = apiInstance.GetDishPairingForWine(wine);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling WineApi.GetDishPairingForWine: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wine** | **string**| The type of wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;. | 

### Return type

[**InlineResponse20044**](InlineResponse20044.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getwinedescription"></a>
# **GetWineDescription**
> InlineResponse20046 GetWineDescription (string wine)

Wine Description

Get a simple description of a certain wine, e.g. \"malbec\", \"riesling\", or \"merlot\".

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class GetWineDescriptionExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new WineApi();
            var wine = merlot;  // string | The name of the wine that should be paired, e.g. \"merlot\", \"riesling\", or \"malbec\".

            try
            {
                // Wine Description
                InlineResponse20046 result = apiInstance.GetWineDescription(wine);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling WineApi.GetWineDescription: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wine** | **string**| The name of the wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;. | 

### Return type

[**InlineResponse20046**](InlineResponse20046.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getwinepairing"></a>
# **GetWinePairing**
> InlineResponse20045 GetWinePairing (string food, decimal? maxPrice)

Wine Pairing

Find a wine that goes well with a food. Food can be a dish name (\"steak\"), an ingredient name (\"salmon\"), or a cuisine (\"italian\").

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class GetWinePairingExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new WineApi();
            var food = steak;  // string | The food to get a pairing for. This can be a dish (\"steak\"), an ingredient (\"salmon\"), or a cuisine (\"italian\").
            var maxPrice = 50;  // decimal? | The maximum price for the specific wine recommendation in USD. (optional) 

            try
            {
                // Wine Pairing
                InlineResponse20045 result = apiInstance.GetWinePairing(food, maxPrice);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling WineApi.GetWinePairing: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **food** | **string**| The food to get a pairing for. This can be a dish (\&quot;steak\&quot;), an ingredient (\&quot;salmon\&quot;), or a cuisine (\&quot;italian\&quot;). | 
 **maxPrice** | **decimal?**| The maximum price for the specific wine recommendation in USD. | [optional] 

### Return type

[**InlineResponse20045**](InlineResponse20045.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getwinerecommendation"></a>
# **GetWineRecommendation**
> InlineResponse20047 GetWineRecommendation (string wine, decimal? maxPrice, decimal? minRating, decimal? number)

Wine Recommendation

Get a specific wine recommendation (concrete product) for a given wine type, e.g. \"merlot\".

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class GetWineRecommendationExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new WineApi();
            var wine = merlot;  // string | The type of wine to get a specific product recommendation for.
            var maxPrice = 50;  // decimal? | The maximum price for the specific wine recommendation in USD. (optional) 
            var minRating = 0.7;  // decimal? | The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars. (optional) 
            var number = 3;  // decimal? | The number of wine recommendations expected (between 1 and 100). (optional)  (default to 10M)

            try
            {
                // Wine Recommendation
                InlineResponse20047 result = apiInstance.GetWineRecommendation(wine, maxPrice, minRating, number);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling WineApi.GetWineRecommendation: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wine** | **string**| The type of wine to get a specific product recommendation for. | 
 **maxPrice** | **decimal?**| The maximum price for the specific wine recommendation in USD. | [optional] 
 **minRating** | **decimal?**| The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars. | [optional] 
 **number** | **decimal?**| The number of wine recommendations expected (between 1 and 100). | [optional] [default to 10M]

### Return type

[**InlineResponse20047**](InlineResponse20047.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

