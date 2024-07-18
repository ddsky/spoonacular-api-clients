# openapi.api.MenuItemsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**autocompleteMenuItemSearch**](MenuItemsApi.md#autocompletemenuitemsearch) | **GET** /food/menuItems/suggest | Autocomplete Menu Item Search
[**getMenuItemInformation**](MenuItemsApi.md#getmenuiteminformation) | **GET** /food/menuItems/{id} | Get Menu Item Information
[**menuItemNutritionByIDImage**](MenuItemsApi.md#menuitemnutritionbyidimage) | **GET** /food/menuItems/{id}/nutritionWidget.png | Menu Item Nutrition by ID Image
[**menuItemNutritionLabelImage**](MenuItemsApi.md#menuitemnutritionlabelimage) | **GET** /food/menuItems/{id}/nutritionLabel.png | Menu Item Nutrition Label Image
[**menuItemNutritionLabelWidget**](MenuItemsApi.md#menuitemnutritionlabelwidget) | **GET** /food/menuItems/{id}/nutritionLabel | Menu Item Nutrition Label Widget
[**searchMenuItems**](MenuItemsApi.md#searchmenuitems) | **GET** /food/menuItems/search | Search Menu Items
[**visualizeMenuItemNutritionByID**](MenuItemsApi.md#visualizemenuitemnutritionbyid) | **GET** /food/menuItems/{id}/nutritionWidget | Menu Item Nutrition by ID Widget


# **autocompleteMenuItemSearch**
> AutocompleteProductSearch200Response autocompleteMenuItemSearch(query, number)

Autocomplete Menu Item Search

Generate suggestions for menu items based on a (partial) query. The matches will be found by looking in the title only.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = MenuItemsApi();
final query = chicke; // String | The (partial) search query.
final number = 10; // int | The number of results to return (between 1 and 25).

try {
    final result = api_instance.autocompleteMenuItemSearch(query, number);
    print(result);
} catch (e) {
    print('Exception when calling MenuItemsApi->autocompleteMenuItemSearch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The (partial) search query. | 
 **number** | **int**| The number of results to return (between 1 and 25). | [optional] 

### Return type

[**AutocompleteProductSearch200Response**](AutocompleteProductSearch200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMenuItemInformation**
> MenuItem getMenuItemInformation(id)

Get Menu Item Information

Use a menu item id to get all available information about a menu item, such as nutrition.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = MenuItemsApi();
final id = 424571; // int | The menu item id.

try {
    final result = api_instance.getMenuItemInformation(id);
    print(result);
} catch (e) {
    print('Exception when calling MenuItemsApi->getMenuItemInformation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The menu item id. | 

### Return type

[**MenuItem**](MenuItem.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **menuItemNutritionByIDImage**
> MultipartFile menuItemNutritionByIDImage(id)

Menu Item Nutrition by ID Image

Visualize a menu item's nutritional information as HTML including CSS.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = MenuItemsApi();
final id = 424571; // int | The menu item id.

try {
    final result = api_instance.menuItemNutritionByIDImage(id);
    print(result);
} catch (e) {
    print('Exception when calling MenuItemsApi->menuItemNutritionByIDImage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The menu item id. | 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **menuItemNutritionLabelImage**
> MultipartFile menuItemNutritionLabelImage(id, showOptionalNutrients, showZeroValues, showIngredients)

Menu Item Nutrition Label Image

Visualize a menu item's nutritional label information as an image.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = MenuItemsApi();
final id = 342313; // int | The menu item id.
final showOptionalNutrients = false; // bool | Whether to show optional nutrients.
final showZeroValues = false; // bool | Whether to show zero values.
final showIngredients = false; // bool | Whether to show a list of ingredients.

try {
    final result = api_instance.menuItemNutritionLabelImage(id, showOptionalNutrients, showZeroValues, showIngredients);
    print(result);
} catch (e) {
    print('Exception when calling MenuItemsApi->menuItemNutritionLabelImage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The menu item id. | 
 **showOptionalNutrients** | **bool**| Whether to show optional nutrients. | [optional] 
 **showZeroValues** | **bool**| Whether to show zero values. | [optional] 
 **showIngredients** | **bool**| Whether to show a list of ingredients. | [optional] 

### Return type

[**MultipartFile**](MultipartFile.md)

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

final api_instance = MenuItemsApi();
final id = 342313; // int | The menu item id.
final defaultCss = false; // bool | Whether the default CSS should be added to the response.
final showOptionalNutrients = false; // bool | Whether to show optional nutrients.
final showZeroValues = false; // bool | Whether to show zero values.
final showIngredients = false; // bool | Whether to show a list of ingredients.

try {
    final result = api_instance.menuItemNutritionLabelWidget(id, defaultCss, showOptionalNutrients, showZeroValues, showIngredients);
    print(result);
} catch (e) {
    print('Exception when calling MenuItemsApi->menuItemNutritionLabelWidget: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The menu item id. | 
 **defaultCss** | **bool**| Whether the default CSS should be added to the response. | [optional] [default to true]
 **showOptionalNutrients** | **bool**| Whether to show optional nutrients. | [optional] 
 **showZeroValues** | **bool**| Whether to show zero values. | [optional] 
 **showIngredients** | **bool**| Whether to show a list of ingredients. | [optional] 

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchMenuItems**
> SearchMenuItems200Response searchMenuItems(query, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, addMenuItemInformation, offset, number)

Search Menu Items

Search over 115,000 menu items from over 800 fast food and chain restaurants. For example, McDonald's Big Mac or Starbucks Mocha.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = MenuItemsApi();
final query = burger; // String | The (natural language) search query.
final minCalories = 50; // num | The minimum amount of calories the menu item must have.
final maxCalories = 800; // num | The maximum amount of calories the menu item can have.
final minCarbs = 10; // num | The minimum amount of carbohydrates in grams the menu item must have.
final maxCarbs = 100; // num | The maximum amount of carbohydrates in grams the menu item can have.
final minProtein = 10; // num | The minimum amount of protein in grams the menu item must have.
final maxProtein = 100; // num | The maximum amount of protein in grams the menu item can have.
final minFat = 1; // num | The minimum amount of fat in grams the menu item must have.
final maxFat = 100; // num | The maximum amount of fat in grams the menu item can have.
final addMenuItemInformation = true; // bool | If set to true, you get more information about the menu items returned.
final offset = 56; // int | The number of results to skip (between 0 and 900).
final number = 10; // int | The maximum number of items to return (between 1 and 100). Defaults to 10.

try {
    final result = api_instance.searchMenuItems(query, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, addMenuItemInformation, offset, number);
    print(result);
} catch (e) {
    print('Exception when calling MenuItemsApi->searchMenuItems: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The (natural language) search query. | 
 **minCalories** | **num**| The minimum amount of calories the menu item must have. | [optional] 
 **maxCalories** | **num**| The maximum amount of calories the menu item can have. | [optional] 
 **minCarbs** | **num**| The minimum amount of carbohydrates in grams the menu item must have. | [optional] 
 **maxCarbs** | **num**| The maximum amount of carbohydrates in grams the menu item can have. | [optional] 
 **minProtein** | **num**| The minimum amount of protein in grams the menu item must have. | [optional] 
 **maxProtein** | **num**| The maximum amount of protein in grams the menu item can have. | [optional] 
 **minFat** | **num**| The minimum amount of fat in grams the menu item must have. | [optional] 
 **maxFat** | **num**| The maximum amount of fat in grams the menu item can have. | [optional] 
 **addMenuItemInformation** | **bool**| If set to true, you get more information about the menu items returned. | [optional] 
 **offset** | **int**| The number of results to skip (between 0 and 900). | [optional] 
 **number** | **int**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]

### Return type

[**SearchMenuItems200Response**](SearchMenuItems200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualizeMenuItemNutritionByID**
> String visualizeMenuItemNutritionByID(id, defaultCss)

Menu Item Nutrition by ID Widget

Visualize a menu item's nutritional information as HTML including CSS.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = MenuItemsApi();
final id = 1003464; // int | The menu item id.
final defaultCss = false; // bool | Whether the default CSS should be added to the response.

try {
    final result = api_instance.visualizeMenuItemNutritionByID(id, defaultCss);
    print(result);
} catch (e) {
    print('Exception when calling MenuItemsApi->visualizeMenuItemNutritionByID: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The menu item id. | 
 **defaultCss** | **bool**| Whether the default CSS should be added to the response. | [optional] [default to true]

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

