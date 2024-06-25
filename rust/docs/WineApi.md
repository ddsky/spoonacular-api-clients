# \WineApi

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_dish_pairing_for_wine**](WineApi.md#get_dish_pairing_for_wine) | **GET** /food/wine/dishes | Dish Pairing for Wine
[**get_wine_description**](WineApi.md#get_wine_description) | **GET** /food/wine/description | Wine Description
[**get_wine_pairing**](WineApi.md#get_wine_pairing) | **GET** /food/wine/pairing | Wine Pairing
[**get_wine_recommendation**](WineApi.md#get_wine_recommendation) | **GET** /food/wine/recommendation | Wine Recommendation



## get_dish_pairing_for_wine

> models::GetDishPairingForWine200Response get_dish_pairing_for_wine(wine)
Dish Pairing for Wine

Find a dish that goes well with a given wine.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**wine** | **String** | The type of wine that should be paired, e.g. \"merlot\", \"riesling\", or \"malbec\". | [required] |

### Return type

[**models::GetDishPairingForWine200Response**](getDishPairingForWine_200_response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_wine_description

> models::GetWineDescription200Response get_wine_description(wine)
Wine Description

Get a simple description of a certain wine, e.g. \"malbec\", \"riesling\", or \"merlot\".

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**wine** | **String** | The name of the wine that should be paired, e.g. \"merlot\", \"riesling\", or \"malbec\". | [required] |

### Return type

[**models::GetWineDescription200Response**](getWineDescription_200_response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_wine_pairing

> models::GetWinePairing200Response get_wine_pairing(food, max_price)
Wine Pairing

Find a wine that goes well with a food. Food can be a dish name (\"steak\"), an ingredient name (\"salmon\"), or a cuisine (\"italian\").

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**food** | **String** | The food to get a pairing for. This can be a dish (\"steak\"), an ingredient (\"salmon\"), or a cuisine (\"italian\"). | [required] |
**max_price** | Option<**f64**> | The maximum price for the specific wine recommendation in USD. |  |

### Return type

[**models::GetWinePairing200Response**](getWinePairing_200_response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_wine_recommendation

> models::GetWineRecommendation200Response get_wine_recommendation(wine, max_price, min_rating, number)
Wine Recommendation

Get a specific wine recommendation (concrete product) for a given wine type, e.g. \"merlot\".

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**wine** | **String** | The type of wine to get a specific product recommendation for. | [required] |
**max_price** | Option<**f64**> | The maximum price for the specific wine recommendation in USD. |  |
**min_rating** | Option<**f64**> | The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars. |  |
**number** | Option<**f64**> | The number of wine recommendations expected (between 1 and 100). |  |[default to 10]

### Return type

[**models::GetWineRecommendation200Response**](getWineRecommendation_200_response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

