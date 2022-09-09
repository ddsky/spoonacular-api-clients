# SpoonacularApi.MenuItemsApi

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



## autocompleteMenuItemSearch

> AutocompleteMenuItemSearch200Response autocompleteMenuItemSearch(query, opts)

Autocomplete Menu Item Search

Generate suggestions for menu items based on a (partial) query. The matches will be found by looking in the title only.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.MenuItemsApi();
let query = chicke; // String | The (partial) search query.
let opts = {
  'number': 10 // Number | The number of results to return (between 1 and 25).
};
apiInstance.autocompleteMenuItemSearch(query, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The (partial) search query. | 
 **number** | **Number**| The number of results to return (between 1 and 25). | [optional] 

### Return type

[**AutocompleteMenuItemSearch200Response**](AutocompleteMenuItemSearch200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getMenuItemInformation

> GetMenuItemInformation200Response getMenuItemInformation(id)

Get Menu Item Information

Use a menu item id to get all available information about a menu item, such as nutrition.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.MenuItemsApi();
let id = 1; // Number | The item's id.
apiInstance.getMenuItemInformation(id, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Number**| The item&#39;s id. | 

### Return type

[**GetMenuItemInformation200Response**](GetMenuItemInformation200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## menuItemNutritionByIDImage

> Object menuItemNutritionByIDImage(id)

Menu Item Nutrition by ID Image

Visualize a menu item&#39;s nutritional information as HTML including CSS.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.MenuItemsApi();
let id = 424571; // Number | The menu item id.
apiInstance.menuItemNutritionByIDImage(id, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Number**| The menu item id. | 

### Return type

**Object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/png


## menuItemNutritionLabelImage

> Object menuItemNutritionLabelImage(id, opts)

Menu Item Nutrition Label Image

Visualize a menu item&#39;s nutritional label information as an image.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.MenuItemsApi();
let id = 342313; // Number | The menu item id.
let opts = {
  'showOptionalNutrients': false, // Boolean | Whether to show optional nutrients.
  'showZeroValues': false, // Boolean | Whether to show zero values.
  'showIngredients': false // Boolean | Whether to show a list of ingredients.
};
apiInstance.menuItemNutritionLabelImage(id, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Number**| The menu item id. | 
 **showOptionalNutrients** | **Boolean**| Whether to show optional nutrients. | [optional] 
 **showZeroValues** | **Boolean**| Whether to show zero values. | [optional] 
 **showIngredients** | **Boolean**| Whether to show a list of ingredients. | [optional] 

### Return type

**Object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/png


## menuItemNutritionLabelWidget

> String menuItemNutritionLabelWidget(id, opts)

Menu Item Nutrition Label Widget

Visualize a menu item&#39;s nutritional label information as HTML including CSS.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.MenuItemsApi();
let id = 342313; // Number | The menu item id.
let opts = {
  'defaultCss': false, // Boolean | Whether the default CSS should be added to the response.
  'showOptionalNutrients': false, // Boolean | Whether to show optional nutrients.
  'showZeroValues': false, // Boolean | Whether to show zero values.
  'showIngredients': false // Boolean | Whether to show a list of ingredients.
};
apiInstance.menuItemNutritionLabelWidget(id, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Number**| The menu item id. | 
 **defaultCss** | **Boolean**| Whether the default CSS should be added to the response. | [optional] [default to true]
 **showOptionalNutrients** | **Boolean**| Whether to show optional nutrients. | [optional] 
 **showZeroValues** | **Boolean**| Whether to show zero values. | [optional] 
 **showIngredients** | **Boolean**| Whether to show a list of ingredients. | [optional] 

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html


## searchMenuItems

> SearchMenuItems200Response searchMenuItems(opts)

Search Menu Items

Search over 115,000 menu items from over 800 fast food and chain restaurants. For example, McDonald&#39;s Big Mac or Starbucks Mocha.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.MenuItemsApi();
let opts = {
  'query': burger, // String | The (natural language) search query.
  'minCalories': 50, // Number | The minimum amount of calories the menu item must have.
  'maxCalories': 800, // Number | The maximum amount of calories the menu item can have.
  'minCarbs': 10, // Number | The minimum amount of carbohydrates in grams the menu item must have.
  'maxCarbs': 100, // Number | The maximum amount of carbohydrates in grams the menu item can have.
  'minProtein': 10, // Number | The minimum amount of protein in grams the menu item must have.
  'maxProtein': 100, // Number | The maximum amount of protein in grams the menu item can have.
  'minFat': 1, // Number | The minimum amount of fat in grams the menu item must have.
  'maxFat': 100, // Number | The maximum amount of fat in grams the menu item can have.
  'addMenuItemInformation': true, // Boolean | If set to true, you get more information about the menu items returned.
  'offset': 56, // Number | The number of results to skip (between 0 and 900).
  'number': 10 // Number | The maximum number of items to return (between 1 and 100). Defaults to 10.
};
apiInstance.searchMenuItems(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The (natural language) search query. | [optional] 
 **minCalories** | **Number**| The minimum amount of calories the menu item must have. | [optional] 
 **maxCalories** | **Number**| The maximum amount of calories the menu item can have. | [optional] 
 **minCarbs** | **Number**| The minimum amount of carbohydrates in grams the menu item must have. | [optional] 
 **maxCarbs** | **Number**| The maximum amount of carbohydrates in grams the menu item can have. | [optional] 
 **minProtein** | **Number**| The minimum amount of protein in grams the menu item must have. | [optional] 
 **maxProtein** | **Number**| The maximum amount of protein in grams the menu item can have. | [optional] 
 **minFat** | **Number**| The minimum amount of fat in grams the menu item must have. | [optional] 
 **maxFat** | **Number**| The maximum amount of fat in grams the menu item can have. | [optional] 
 **addMenuItemInformation** | **Boolean**| If set to true, you get more information about the menu items returned. | [optional] 
 **offset** | **Number**| The number of results to skip (between 0 and 900). | [optional] 
 **number** | **Number**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]

### Return type

[**SearchMenuItems200Response**](SearchMenuItems200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## visualizeMenuItemNutritionByID

> String visualizeMenuItemNutritionByID(id, opts)

Menu Item Nutrition by ID Widget

Visualize a menu item&#39;s nutritional information as HTML including CSS.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.MenuItemsApi();
let id = 1; // Number | The item's id.
let opts = {
  'defaultCss': false, // Boolean | Whether the default CSS should be added to the response.
  'accept': application/json // String | Accept header.
};
apiInstance.visualizeMenuItemNutritionByID(id, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Number**| The item&#39;s id. | 
 **defaultCss** | **Boolean**| Whether the default CSS should be added to the response. | [optional] [default to true]
 **accept** | **String**| Accept header. | [optional] 

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

