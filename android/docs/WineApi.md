# WineApi

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getDishPairingForWine**](WineApi.md#getDishPairingForWine) | **GET** /food/wine/dishes | Dish Pairing for Wine
[**getWineDescription**](WineApi.md#getWineDescription) | **GET** /food/wine/description | Wine Description
[**getWinePairing**](WineApi.md#getWinePairing) | **GET** /food/wine/pairing | Wine Pairing
[**getWineRecommendation**](WineApi.md#getWineRecommendation) | **GET** /food/wine/recommendation | Wine Recommendation



## getDishPairingForWine

> GetDishPairingForWine200Response getDishPairingForWine(wine)

Dish Pairing for Wine

Find a dish that goes well with a given wine.

### Example

```java
// Import classes:
//import com.spoonacular.WineApi;

WineApi apiInstance = new WineApi();
String wine = malbec; // String | The type of wine that should be paired, e.g. \"merlot\", \"riesling\", or \"malbec\".
try {
    GetDishPairingForWine200Response result = apiInstance.getDishPairingForWine(wine);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling WineApi#getDishPairingForWine");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wine** | **String**| The type of wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;. | [default to null]

### Return type

[**GetDishPairingForWine200Response**](GetDishPairingForWine200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getWineDescription

> GetWineDescription200Response getWineDescription(wine)

Wine Description

Get a simple description of a certain wine, e.g. \&quot;malbec\&quot;, \&quot;riesling\&quot;, or \&quot;merlot\&quot;.

### Example

```java
// Import classes:
//import com.spoonacular.WineApi;

WineApi apiInstance = new WineApi();
String wine = merlot; // String | The name of the wine that should be paired, e.g. \"merlot\", \"riesling\", or \"malbec\".
try {
    GetWineDescription200Response result = apiInstance.getWineDescription(wine);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling WineApi#getWineDescription");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wine** | **String**| The name of the wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;. | [default to null]

### Return type

[**GetWineDescription200Response**](GetWineDescription200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getWinePairing

> GetWinePairing200Response getWinePairing(food, maxPrice)

Wine Pairing

Find a wine that goes well with a food. Food can be a dish name (\&quot;steak\&quot;), an ingredient name (\&quot;salmon\&quot;), or a cuisine (\&quot;italian\&quot;).

### Example

```java
// Import classes:
//import com.spoonacular.WineApi;

WineApi apiInstance = new WineApi();
String food = steak; // String | The food to get a pairing for. This can be a dish (\"steak\"), an ingredient (\"salmon\"), or a cuisine (\"italian\").
BigDecimal maxPrice = 50; // BigDecimal | The maximum price for the specific wine recommendation in USD.
try {
    GetWinePairing200Response result = apiInstance.getWinePairing(food, maxPrice);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling WineApi#getWinePairing");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **food** | **String**| The food to get a pairing for. This can be a dish (\&quot;steak\&quot;), an ingredient (\&quot;salmon\&quot;), or a cuisine (\&quot;italian\&quot;). | [default to null]
 **maxPrice** | **BigDecimal**| The maximum price for the specific wine recommendation in USD. | [optional] [default to null]

### Return type

[**GetWinePairing200Response**](GetWinePairing200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getWineRecommendation

> GetWineRecommendation200Response getWineRecommendation(wine, maxPrice, minRating, number)

Wine Recommendation

Get a specific wine recommendation (concrete product) for a given wine type, e.g. \&quot;merlot\&quot;.

### Example

```java
// Import classes:
//import com.spoonacular.WineApi;

WineApi apiInstance = new WineApi();
String wine = merlot; // String | The type of wine to get a specific product recommendation for.
BigDecimal maxPrice = 50; // BigDecimal | The maximum price for the specific wine recommendation in USD.
BigDecimal minRating = 0.7; // BigDecimal | The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars.
BigDecimal number = 3; // BigDecimal | The number of wine recommendations expected (between 1 and 100).
try {
    GetWineRecommendation200Response result = apiInstance.getWineRecommendation(wine, maxPrice, minRating, number);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling WineApi#getWineRecommendation");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wine** | **String**| The type of wine to get a specific product recommendation for. | [default to null]
 **maxPrice** | **BigDecimal**| The maximum price for the specific wine recommendation in USD. | [optional] [default to null]
 **minRating** | **BigDecimal**| The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars. | [optional] [default to null]
 **number** | **BigDecimal**| The number of wine recommendations expected (between 1 and 100). | [optional] [default to 10]

### Return type

[**GetWineRecommendation200Response**](GetWineRecommendation200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

