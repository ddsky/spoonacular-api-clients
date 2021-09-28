# WineApi

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getDishPairingForWine**](WineApi.md#getDishPairingForWine) | **GET** /food/wine/dishes | Dish Pairing for Wine
[**getWineDescription**](WineApi.md#getWineDescription) | **GET** /food/wine/description | Wine Description
[**getWinePairing**](WineApi.md#getWinePairing) | **GET** /food/wine/pairing | Wine Pairing
[**getWineRecommendation**](WineApi.md#getWineRecommendation) | **GET** /food/wine/recommendation | Wine Recommendation


<a name="getDishPairingForWine"></a>
# **getDishPairingForWine**
> InlineResponse20043 getDishPairingForWine(wine)

Dish Pairing for Wine

Find a dish that goes well with a given wine.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiClient;
//import com.spoonacular.client.ApiException;
//import com.spoonacular.client.Configuration;
//import com.spoonacular.client.auth.*;
//import com.spoonacular.WineApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: apiKeyScheme
ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
apiKeyScheme.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.setApiKeyPrefix("Token");

WineApi apiInstance = new WineApi();
String wine = malbec; // String | The type of wine that should be paired, e.g. \"merlot\", \"riesling\", or \"malbec\".
try {
    InlineResponse20043 result = apiInstance.getDishPairingForWine(wine);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling WineApi#getDishPairingForWine");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wine** | **String**| The type of wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;. |

### Return type

[**InlineResponse20043**](InlineResponse20043.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getWineDescription"></a>
# **getWineDescription**
> InlineResponse20045 getWineDescription(wine)

Wine Description

Get a simple description of a certain wine, e.g. \&quot;malbec\&quot;, \&quot;riesling\&quot;, or \&quot;merlot\&quot;.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiClient;
//import com.spoonacular.client.ApiException;
//import com.spoonacular.client.Configuration;
//import com.spoonacular.client.auth.*;
//import com.spoonacular.WineApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: apiKeyScheme
ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
apiKeyScheme.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.setApiKeyPrefix("Token");

WineApi apiInstance = new WineApi();
String wine = merlot; // String | The name of the wine that should be paired, e.g. \"merlot\", \"riesling\", or \"malbec\".
try {
    InlineResponse20045 result = apiInstance.getWineDescription(wine);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling WineApi#getWineDescription");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wine** | **String**| The name of the wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;. |

### Return type

[**InlineResponse20045**](InlineResponse20045.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getWinePairing"></a>
# **getWinePairing**
> InlineResponse20044 getWinePairing(food, maxPrice)

Wine Pairing

Find a wine that goes well with a food. Food can be a dish name (\&quot;steak\&quot;), an ingredient name (\&quot;salmon\&quot;), or a cuisine (\&quot;italian\&quot;).

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiClient;
//import com.spoonacular.client.ApiException;
//import com.spoonacular.client.Configuration;
//import com.spoonacular.client.auth.*;
//import com.spoonacular.WineApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: apiKeyScheme
ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
apiKeyScheme.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.setApiKeyPrefix("Token");

WineApi apiInstance = new WineApi();
String food = steak; // String | The food to get a pairing for. This can be a dish (\"steak\"), an ingredient (\"salmon\"), or a cuisine (\"italian\").
BigDecimal maxPrice = 50; // BigDecimal | The maximum price for the specific wine recommendation in USD.
try {
    InlineResponse20044 result = apiInstance.getWinePairing(food, maxPrice);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling WineApi#getWinePairing");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **food** | **String**| The food to get a pairing for. This can be a dish (\&quot;steak\&quot;), an ingredient (\&quot;salmon\&quot;), or a cuisine (\&quot;italian\&quot;). |
 **maxPrice** | **BigDecimal**| The maximum price for the specific wine recommendation in USD. | [optional]

### Return type

[**InlineResponse20044**](InlineResponse20044.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getWineRecommendation"></a>
# **getWineRecommendation**
> InlineResponse20046 getWineRecommendation(wine, maxPrice, minRating, number)

Wine Recommendation

Get a specific wine recommendation (concrete product) for a given wine type, e.g. \&quot;merlot\&quot;.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiClient;
//import com.spoonacular.client.ApiException;
//import com.spoonacular.client.Configuration;
//import com.spoonacular.client.auth.*;
//import com.spoonacular.WineApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: apiKeyScheme
ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
apiKeyScheme.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.setApiKeyPrefix("Token");

WineApi apiInstance = new WineApi();
String wine = merlot; // String | The type of wine to get a specific product recommendation for.
BigDecimal maxPrice = 50; // BigDecimal | The maximum price for the specific wine recommendation in USD.
BigDecimal minRating = 0.7; // BigDecimal | The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars.
BigDecimal number = 3; // BigDecimal | The number of wine recommendations expected (between 1 and 100).
try {
    InlineResponse20046 result = apiInstance.getWineRecommendation(wine, maxPrice, minRating, number);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling WineApi#getWineRecommendation");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wine** | **String**| The type of wine to get a specific product recommendation for. |
 **maxPrice** | **BigDecimal**| The maximum price for the specific wine recommendation in USD. | [optional]
 **minRating** | **BigDecimal**| The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars. | [optional]
 **number** | **BigDecimal**| The number of wine recommendations expected (between 1 and 100). | [optional] [default to 10d]

### Return type

[**InlineResponse20046**](InlineResponse20046.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

