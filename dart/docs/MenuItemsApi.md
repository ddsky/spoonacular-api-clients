# openapi.api.MenuItemsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

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
> InlineResponse20032 autocompleteMenuItemSearch(query, number)

Autocomplete Menu Item Search

Generate suggestions for menu items based on a (partial) query. The matches will be found by looking in the title only.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new MenuItemsApi();
var query = chicke; // String | The (partial) search query.
var number = 10; // num | The number of results to return (between 1 and 25).

try { 
    var result = api_instance.autocompleteMenuItemSearch(query, number);
    print(result);
} catch (e) {
    print("Exception when calling MenuItemsApi->autocompleteMenuItemSearch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The (partial) search query. | [default to null]
 **number** | **num**| The number of results to return (between 1 and 25). | [optional] [default to null]

### Return type

[**InlineResponse20032**](InlineResponse20032.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMenuItemInformation**
> InlineResponse20036 getMenuItemInformation(id)

Get Menu Item Information

Use a menu item id to get all available information about a menu item, such as nutrition.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new MenuItemsApi();
var id = 1; // int | The item's id.

try { 
    var result = api_instance.getMenuItemInformation(id);
    print(result);
} catch (e) {
    print("Exception when calling MenuItemsApi->getMenuItemInformation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The item&#39;s id. | [default to null]

### Return type

[**InlineResponse20036**](InlineResponse20036.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **menuItemNutritionByIDImage**
> Object menuItemNutritionByIDImage(id)

Menu Item Nutrition by ID Image

Visualize a menu item's nutritional information as HTML including CSS.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new MenuItemsApi();
var id = 424571; // num | The menu item id.

try { 
    var result = api_instance.menuItemNutritionByIDImage(id);
    print(result);
} catch (e) {
    print("Exception when calling MenuItemsApi->menuItemNutritionByIDImage: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **num**| The menu item id. | [default to null]

### Return type

[**Object**](Object.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **menuItemNutritionLabelImage**
> Object menuItemNutritionLabelImage(id, showOptionalNutrients, showZeroValues, showIngredients)

Menu Item Nutrition Label Image

Visualize a menu item's nutritional label information as an image.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new MenuItemsApi();
var id = 342313; // num | The menu item id.
var showOptionalNutrients = false; // bool | Whether to show optional nutrients.
var showZeroValues = false; // bool | Whether to show zero values.
var showIngredients = false; // bool | Whether to show a list of ingredients.

try { 
    var result = api_instance.menuItemNutritionLabelImage(id, showOptionalNutrients, showZeroValues, showIngredients);
    print(result);
} catch (e) {
    print("Exception when calling MenuItemsApi->menuItemNutritionLabelImage: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **num**| The menu item id. | [default to null]
 **showOptionalNutrients** | **bool**| Whether to show optional nutrients. | [optional] [default to null]
 **showZeroValues** | **bool**| Whether to show zero values. | [optional] [default to null]
 **showIngredients** | **bool**| Whether to show a list of ingredients. | [optional] [default to null]

### Return type

[**Object**](Object.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **menuItemNutritionLabelWidget**
> String menuItemNutritionLabelWidget(id, defaultCss, showOptionalNutrients, showZeroValues, showIngredients)

Menu Item Nutrition Label Widget

Visualize a menu item's nutritional label information as HTML including CSS.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new MenuItemsApi();
var id = 342313; // num | The menu item id.
var defaultCss = false; // bool | Whether the default CSS should be added to the response.
var showOptionalNutrients = false; // bool | Whether to show optional nutrients.
var showZeroValues = false; // bool | Whether to show zero values.
var showIngredients = false; // bool | Whether to show a list of ingredients.

try { 
    var result = api_instance.menuItemNutritionLabelWidget(id, defaultCss, showOptionalNutrients, showZeroValues, showIngredients);
    print(result);
} catch (e) {
    print("Exception when calling MenuItemsApi->menuItemNutritionLabelWidget: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **num**| The menu item id. | [default to null]
 **defaultCss** | **bool**| Whether the default CSS should be added to the response. | [optional] [default to true]
 **showOptionalNutrients** | **bool**| Whether to show optional nutrients. | [optional] [default to null]
 **showZeroValues** | **bool**| Whether to show zero values. | [optional] [default to null]
 **showIngredients** | **bool**| Whether to show a list of ingredients. | [optional] [default to null]

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchMenuItems**
> InlineResponse20035 searchMenuItems(query, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, offset, number)

Search Menu Items

Search over 115,000 menu items from over 800 fast food and chain restaurants. For example, McDonald's Big Mac or Starbucks Mocha.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new MenuItemsApi();
var query = burger; // String | The (natural language) search query.
var minCalories = 50; // num | The minimum amount of calories the menu item must have.
var maxCalories = 800; // num | The maximum amount of calories the menu item can have.
var minCarbs = 10; // num | The minimum amount of carbohydrates in grams the menu item must have.
var maxCarbs = 100; // num | The maximum amount of carbohydrates in grams the menu item can have.
var minProtein = 10; // num | The minimum amount of protein in grams the menu item must have.
var maxProtein = 100; // num | The maximum amount of protein in grams the menu item can have.
var minFat = 1; // num | The minimum amount of fat in grams the menu item must have.
var maxFat = 100; // num | The maximum amount of fat in grams the menu item can have.
var offset = 56; // int | The number of results to skip (between 0 and 900).
var number = 10; // int | The maximum number of items to return (between 1 and 100). Defaults to 10.

try { 
    var result = api_instance.searchMenuItems(query, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, offset, number);
    print(result);
} catch (e) {
    print("Exception when calling MenuItemsApi->searchMenuItems: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The (natural language) search query. | [optional] [default to null]
 **minCalories** | **num**| The minimum amount of calories the menu item must have. | [optional] [default to null]
 **maxCalories** | **num**| The maximum amount of calories the menu item can have. | [optional] [default to null]
 **minCarbs** | **num**| The minimum amount of carbohydrates in grams the menu item must have. | [optional] [default to null]
 **maxCarbs** | **num**| The maximum amount of carbohydrates in grams the menu item can have. | [optional] [default to null]
 **minProtein** | **num**| The minimum amount of protein in grams the menu item must have. | [optional] [default to null]
 **maxProtein** | **num**| The maximum amount of protein in grams the menu item can have. | [optional] [default to null]
 **minFat** | **num**| The minimum amount of fat in grams the menu item must have. | [optional] [default to null]
 **maxFat** | **num**| The maximum amount of fat in grams the menu item can have. | [optional] [default to null]
 **offset** | **int**| The number of results to skip (between 0 and 900). | [optional] [default to null]
 **number** | **int**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]

### Return type

[**InlineResponse20035**](InlineResponse20035.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualizeMenuItemNutritionByID**
> String visualizeMenuItemNutritionByID(id, defaultCss, accept)

Menu Item Nutrition by ID Widget

Visualize a menu item's nutritional information as HTML including CSS.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new MenuItemsApi();
var id = 1; // int | The item's id.
var defaultCss = false; // bool | Whether the default CSS should be added to the response.
var accept = application/json; // String | Accept header.

try { 
    var result = api_instance.visualizeMenuItemNutritionByID(id, defaultCss, accept);
    print(result);
} catch (e) {
    print("Exception when calling MenuItemsApi->visualizeMenuItemNutritionByID: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The item&#39;s id. | [default to null]
 **defaultCss** | **bool**| Whether the default CSS should be added to the response. | [optional] [default to true]
 **accept** | **String**| Accept header. | [optional] [default to null]

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

