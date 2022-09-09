# .MenuItemsApi

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**autocompleteMenuItemSearch**](MenuItemsApi.md#autocompleteMenuItemSearch) | **GET** /food/menuItems/suggest | Autocomplete Menu Item Search
[**getMenuItemInformation**](MenuItemsApi.md#getMenuItemInformation) | **GET** /food/menuItems/{id} | Get Menu Item Information
[**menuItemNutritionByIDImage**](MenuItemsApi.md#menuItemNutritionByIDImage) | **GET** /food/menuItems/{id}/nutritionWidget.png | Menu Item Nutrition by ID Image
[**menuItemNutritionLabelImage**](MenuItemsApi.md#menuItemNutritionLabelImage) | **GET** /food/menuItems/{id}/nutritionLabel.png | Menu Item Nutrition Label Image
[**menuItemNutritionLabelWidget**](MenuItemsApi.md#menuItemNutritionLabelWidget) | **GET** /food/menuItems/{id}/nutritionLabel | Menu Item Nutrition Label Widget
[**searchMenuItems**](MenuItemsApi.md#searchMenuItems) | **GET** /food/menuItems/search | Search Menu Items
[**visualizeMenuItemNutritionByID**](MenuItemsApi.md#visualizeMenuItemNutritionByID) | **GET** /food/menuItems/{id}/nutritionWidget | Menu Item Nutrition by ID Widget


# **autocompleteMenuItemSearch**
> AutocompleteMenuItemSearch200Response autocompleteMenuItemSearch()

Generate suggestions for menu items based on a (partial) query. The matches will be found by looking in the title only.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .MenuItemsApi(configuration);

let body:.MenuItemsApiAutocompleteMenuItemSearchRequest = {
  // string | The (partial) search query.
  query: "chicke",
  // number | The number of results to return (between 1 and 25). (optional)
  number: 10,
};

apiInstance.autocompleteMenuItemSearch(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | [**string**] | The (partial) search query. | defaults to undefined
 **number** | [**number**] | The number of results to return (between 1 and 25). | (optional) defaults to undefined


### Return type

**AutocompleteMenuItemSearch200Response**

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

# **getMenuItemInformation**
> GetMenuItemInformation200Response getMenuItemInformation()

Use a menu item id to get all available information about a menu item, such as nutrition.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .MenuItemsApi(configuration);

let body:.MenuItemsApiGetMenuItemInformationRequest = {
  // number | The item's id.
  id: 1,
};

apiInstance.getMenuItemInformation(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**number**] | The item&#39;s id. | defaults to undefined


### Return type

**GetMenuItemInformation200Response**

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

# **menuItemNutritionByIDImage**
> any menuItemNutritionByIDImage()

Visualize a menu item's nutritional information as HTML including CSS.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .MenuItemsApi(configuration);

let body:.MenuItemsApiMenuItemNutritionByIDImageRequest = {
  // number | The menu item id.
  id: 424571,
};

apiInstance.menuItemNutritionByIDImage(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**number**] | The menu item id. | defaults to undefined


### Return type

**any**

### Authorization

[apiKeyScheme](README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **menuItemNutritionLabelImage**
> any menuItemNutritionLabelImage()

Visualize a menu item's nutritional label information as an image.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .MenuItemsApi(configuration);

let body:.MenuItemsApiMenuItemNutritionLabelImageRequest = {
  // number | The menu item id.
  id: 342313,
  // boolean | Whether to show optional nutrients. (optional)
  showOptionalNutrients: false,
  // boolean | Whether to show zero values. (optional)
  showZeroValues: false,
  // boolean | Whether to show a list of ingredients. (optional)
  showIngredients: false,
};

apiInstance.menuItemNutritionLabelImage(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**number**] | The menu item id. | defaults to undefined
 **showOptionalNutrients** | [**boolean**] | Whether to show optional nutrients. | (optional) defaults to undefined
 **showZeroValues** | [**boolean**] | Whether to show zero values. | (optional) defaults to undefined
 **showIngredients** | [**boolean**] | Whether to show a list of ingredients. | (optional) defaults to undefined


### Return type

**any**

### Authorization

[apiKeyScheme](README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **menuItemNutritionLabelWidget**
> string menuItemNutritionLabelWidget()

Visualize a menu item's nutritional label information as HTML including CSS.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .MenuItemsApi(configuration);

let body:.MenuItemsApiMenuItemNutritionLabelWidgetRequest = {
  // number | The menu item id.
  id: 342313,
  // boolean | Whether the default CSS should be added to the response. (optional)
  defaultCss: false,
  // boolean | Whether to show optional nutrients. (optional)
  showOptionalNutrients: false,
  // boolean | Whether to show zero values. (optional)
  showZeroValues: false,
  // boolean | Whether to show a list of ingredients. (optional)
  showIngredients: false,
};

apiInstance.menuItemNutritionLabelWidget(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**number**] | The menu item id. | defaults to undefined
 **defaultCss** | [**boolean**] | Whether the default CSS should be added to the response. | (optional) defaults to undefined
 **showOptionalNutrients** | [**boolean**] | Whether to show optional nutrients. | (optional) defaults to undefined
 **showZeroValues** | [**boolean**] | Whether to show zero values. | (optional) defaults to undefined
 **showIngredients** | [**boolean**] | Whether to show a list of ingredients. | (optional) defaults to undefined


### Return type

**string**

### Authorization

[apiKeyScheme](README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **searchMenuItems**
> SearchMenuItems200Response searchMenuItems()

Search over 115,000 menu items from over 800 fast food and chain restaurants. For example, McDonald's Big Mac or Starbucks Mocha.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .MenuItemsApi(configuration);

let body:.MenuItemsApiSearchMenuItemsRequest = {
  // string | The (natural language) search query. (optional)
  query: "burger",
  // number | The minimum amount of calories the menu item must have. (optional)
  minCalories: 50,
  // number | The maximum amount of calories the menu item can have. (optional)
  maxCalories: 800,
  // number | The minimum amount of carbohydrates in grams the menu item must have. (optional)
  minCarbs: 10,
  // number | The maximum amount of carbohydrates in grams the menu item can have. (optional)
  maxCarbs: 100,
  // number | The minimum amount of protein in grams the menu item must have. (optional)
  minProtein: 10,
  // number | The maximum amount of protein in grams the menu item can have. (optional)
  maxProtein: 100,
  // number | The minimum amount of fat in grams the menu item must have. (optional)
  minFat: 1,
  // number | The maximum amount of fat in grams the menu item can have. (optional)
  maxFat: 100,
  // boolean | If set to true, you get more information about the menu items returned. (optional)
  addMenuItemInformation: true,
  // number | The number of results to skip (between 0 and 900). (optional)
  offset: 0,
  // number | The maximum number of items to return (between 1 and 100). Defaults to 10. (optional)
  number: 10,
};

apiInstance.searchMenuItems(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | [**string**] | The (natural language) search query. | (optional) defaults to undefined
 **minCalories** | [**number**] | The minimum amount of calories the menu item must have. | (optional) defaults to undefined
 **maxCalories** | [**number**] | The maximum amount of calories the menu item can have. | (optional) defaults to undefined
 **minCarbs** | [**number**] | The minimum amount of carbohydrates in grams the menu item must have. | (optional) defaults to undefined
 **maxCarbs** | [**number**] | The maximum amount of carbohydrates in grams the menu item can have. | (optional) defaults to undefined
 **minProtein** | [**number**] | The minimum amount of protein in grams the menu item must have. | (optional) defaults to undefined
 **maxProtein** | [**number**] | The maximum amount of protein in grams the menu item can have. | (optional) defaults to undefined
 **minFat** | [**number**] | The minimum amount of fat in grams the menu item must have. | (optional) defaults to undefined
 **maxFat** | [**number**] | The maximum amount of fat in grams the menu item can have. | (optional) defaults to undefined
 **addMenuItemInformation** | [**boolean**]**Array<&#39;false&#39; &#124; &#39;true&#39;>** | If set to true, you get more information about the menu items returned. | (optional) defaults to undefined
 **offset** | [**number**] | The number of results to skip (between 0 and 900). | (optional) defaults to undefined
 **number** | [**number**] | The maximum number of items to return (between 1 and 100). Defaults to 10. | (optional) defaults to 10


### Return type

**SearchMenuItems200Response**

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

# **visualizeMenuItemNutritionByID**
> string visualizeMenuItemNutritionByID()

Visualize a menu item's nutritional information as HTML including CSS.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .MenuItemsApi(configuration);

let body:.MenuItemsApiVisualizeMenuItemNutritionByIDRequest = {
  // number | The item's id.
  id: 1,
  // boolean | Whether the default CSS should be added to the response. (optional)
  defaultCss: false,
  // 'application/json' | 'text/html' | 'media/_*' | Accept header. (optional)
  accept: "application/json",
};

apiInstance.visualizeMenuItemNutritionByID(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**number**] | The item&#39;s id. | defaults to undefined
 **defaultCss** | [**boolean**] | Whether the default CSS should be added to the response. | (optional) defaults to undefined
 **accept** | [**&#39;application/json&#39; | &#39;text/html&#39; | &#39;media/_*&#39;**]**Array<&#39;application/json&#39; &#124; &#39;text/html&#39; &#124; &#39;media/_*&#39;>** | Accept header. | (optional) defaults to undefined


### Return type

**string**

### Authorization

[apiKeyScheme](README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)


