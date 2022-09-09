# .WineApi

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getDishPairingForWine**](WineApi.md#getDishPairingForWine) | **GET** /food/wine/dishes | Dish Pairing for Wine
[**getWineDescription**](WineApi.md#getWineDescription) | **GET** /food/wine/description | Wine Description
[**getWinePairing**](WineApi.md#getWinePairing) | **GET** /food/wine/pairing | Wine Pairing
[**getWineRecommendation**](WineApi.md#getWineRecommendation) | **GET** /food/wine/recommendation | Wine Recommendation


# **getDishPairingForWine**
> GetDishPairingForWine200Response getDishPairingForWine()

Find a dish that goes well with a given wine.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .WineApi(configuration);

let body:.WineApiGetDishPairingForWineRequest = {
  // string | The type of wine that should be paired, e.g. \"merlot\", \"riesling\", or \"malbec\".
  wine: "malbec",
};

apiInstance.getDishPairingForWine(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wine** | [**string**] | The type of wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;. | defaults to undefined


### Return type

**GetDishPairingForWine200Response**

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

# **getWineDescription**
> GetWineDescription200Response getWineDescription()

Get a simple description of a certain wine, e.g. \"malbec\", \"riesling\", or \"merlot\".

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .WineApi(configuration);

let body:.WineApiGetWineDescriptionRequest = {
  // string | The name of the wine that should be paired, e.g. \"merlot\", \"riesling\", or \"malbec\".
  wine: "merlot",
};

apiInstance.getWineDescription(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wine** | [**string**] | The name of the wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;. | defaults to undefined


### Return type

**GetWineDescription200Response**

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

# **getWinePairing**
> GetWinePairing200Response getWinePairing()

Find a wine that goes well with a food. Food can be a dish name (\"steak\"), an ingredient name (\"salmon\"), or a cuisine (\"italian\").

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .WineApi(configuration);

let body:.WineApiGetWinePairingRequest = {
  // string | The food to get a pairing for. This can be a dish (\"steak\"), an ingredient (\"salmon\"), or a cuisine (\"italian\").
  food: "steak",
  // number | The maximum price for the specific wine recommendation in USD. (optional)
  maxPrice: 50,
};

apiInstance.getWinePairing(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **food** | [**string**] | The food to get a pairing for. This can be a dish (\&quot;steak\&quot;), an ingredient (\&quot;salmon\&quot;), or a cuisine (\&quot;italian\&quot;). | defaults to undefined
 **maxPrice** | [**number**] | The maximum price for the specific wine recommendation in USD. | (optional) defaults to undefined


### Return type

**GetWinePairing200Response**

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

# **getWineRecommendation**
> GetWineRecommendation200Response getWineRecommendation()

Get a specific wine recommendation (concrete product) for a given wine type, e.g. \"merlot\".

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .WineApi(configuration);

let body:.WineApiGetWineRecommendationRequest = {
  // string | The type of wine to get a specific product recommendation for.
  wine: "merlot",
  // number | The maximum price for the specific wine recommendation in USD. (optional)
  maxPrice: 50,
  // number | The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars. (optional)
  minRating: 0.7,
  // number | The number of wine recommendations expected (between 1 and 100). (optional)
  number: 3,
};

apiInstance.getWineRecommendation(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wine** | [**string**] | The type of wine to get a specific product recommendation for. | defaults to undefined
 **maxPrice** | [**number**] | The maximum price for the specific wine recommendation in USD. | (optional) defaults to undefined
 **minRating** | [**number**] | The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars. | (optional) defaults to undefined
 **number** | [**number**] | The number of wine recommendations expected (between 1 and 100). | (optional) defaults to 10


### Return type

**GetWineRecommendation200Response**

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


