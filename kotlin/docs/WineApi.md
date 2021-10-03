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
> InlineResponse20044 getDishPairingForWine(wine)

Dish Pairing for Wine

Find a dish that goes well with a given wine.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = WineApi()
val wine : kotlin.String = malbec // kotlin.String | The type of wine that should be paired, e.g. \"merlot\", \"riesling\", or \"malbec\".
try {
    val result : InlineResponse20044 = apiInstance.getDishPairingForWine(wine)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling WineApi#getDishPairingForWine")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling WineApi#getDishPairingForWine")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wine** | **kotlin.String**| The type of wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;. |

### Return type

[**InlineResponse20044**](InlineResponse20044.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getWineDescription"></a>
# **getWineDescription**
> InlineResponse20046 getWineDescription(wine)

Wine Description

Get a simple description of a certain wine, e.g. \&quot;malbec\&quot;, \&quot;riesling\&quot;, or \&quot;merlot\&quot;.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = WineApi()
val wine : kotlin.String = merlot // kotlin.String | The name of the wine that should be paired, e.g. \"merlot\", \"riesling\", or \"malbec\".
try {
    val result : InlineResponse20046 = apiInstance.getWineDescription(wine)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling WineApi#getWineDescription")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling WineApi#getWineDescription")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wine** | **kotlin.String**| The name of the wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;. |

### Return type

[**InlineResponse20046**](InlineResponse20046.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getWinePairing"></a>
# **getWinePairing**
> InlineResponse20045 getWinePairing(food, maxPrice)

Wine Pairing

Find a wine that goes well with a food. Food can be a dish name (\&quot;steak\&quot;), an ingredient name (\&quot;salmon\&quot;), or a cuisine (\&quot;italian\&quot;).

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = WineApi()
val food : kotlin.String = steak // kotlin.String | The food to get a pairing for. This can be a dish (\"steak\"), an ingredient (\"salmon\"), or a cuisine (\"italian\").
val maxPrice : java.math.BigDecimal = 50 // java.math.BigDecimal | The maximum price for the specific wine recommendation in USD.
try {
    val result : InlineResponse20045 = apiInstance.getWinePairing(food, maxPrice)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling WineApi#getWinePairing")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling WineApi#getWinePairing")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **food** | **kotlin.String**| The food to get a pairing for. This can be a dish (\&quot;steak\&quot;), an ingredient (\&quot;salmon\&quot;), or a cuisine (\&quot;italian\&quot;). |
 **maxPrice** | **java.math.BigDecimal**| The maximum price for the specific wine recommendation in USD. | [optional]

### Return type

[**InlineResponse20045**](InlineResponse20045.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getWineRecommendation"></a>
# **getWineRecommendation**
> InlineResponse20047 getWineRecommendation(wine, maxPrice, minRating, number)

Wine Recommendation

Get a specific wine recommendation (concrete product) for a given wine type, e.g. \&quot;merlot\&quot;.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = WineApi()
val wine : kotlin.String = merlot // kotlin.String | The type of wine to get a specific product recommendation for.
val maxPrice : java.math.BigDecimal = 50 // java.math.BigDecimal | The maximum price for the specific wine recommendation in USD.
val minRating : java.math.BigDecimal = 0.7 // java.math.BigDecimal | The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars.
val number : java.math.BigDecimal = 3 // java.math.BigDecimal | The number of wine recommendations expected (between 1 and 100).
try {
    val result : InlineResponse20047 = apiInstance.getWineRecommendation(wine, maxPrice, minRating, number)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling WineApi#getWineRecommendation")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling WineApi#getWineRecommendation")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wine** | **kotlin.String**| The type of wine to get a specific product recommendation for. |
 **maxPrice** | **java.math.BigDecimal**| The maximum price for the specific wine recommendation in USD. | [optional]
 **minRating** | **java.math.BigDecimal**| The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars. | [optional]
 **number** | **java.math.BigDecimal**| The number of wine recommendations expected (between 1 and 100). | [optional] [default to 10]

### Return type

[**InlineResponse20047**](InlineResponse20047.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

