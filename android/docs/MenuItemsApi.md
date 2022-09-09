# MenuItemsApi

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

> AutocompleteMenuItemSearch200Response autocompleteMenuItemSearch(query, number)

Autocomplete Menu Item Search

Generate suggestions for menu items based on a (partial) query. The matches will be found by looking in the title only.

### Example

```java
// Import classes:
//import com.spoonacular.MenuItemsApi;

MenuItemsApi apiInstance = new MenuItemsApi();
String query = chicke; // String | The (partial) search query.
BigDecimal number = 10; // BigDecimal | The number of results to return (between 1 and 25).
try {
    AutocompleteMenuItemSearch200Response result = apiInstance.autocompleteMenuItemSearch(query, number);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MenuItemsApi#autocompleteMenuItemSearch");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The (partial) search query. | [default to null]
 **number** | **BigDecimal**| The number of results to return (between 1 and 25). | [optional] [default to null]

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

```java
// Import classes:
//import com.spoonacular.MenuItemsApi;

MenuItemsApi apiInstance = new MenuItemsApi();
Integer id = 1; // Integer | The item's id.
try {
    GetMenuItemInformation200Response result = apiInstance.getMenuItemInformation(id);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MenuItemsApi#getMenuItemInformation");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The item&#39;s id. | [default to null]

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

```java
// Import classes:
//import com.spoonacular.MenuItemsApi;

MenuItemsApi apiInstance = new MenuItemsApi();
BigDecimal id = 424571; // BigDecimal | The menu item id.
try {
    Object result = apiInstance.menuItemNutritionByIDImage(id);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MenuItemsApi#menuItemNutritionByIDImage");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **BigDecimal**| The menu item id. | [default to null]

### Return type

**Object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/png


## menuItemNutritionLabelImage

> Object menuItemNutritionLabelImage(id, showOptionalNutrients, showZeroValues, showIngredients)

Menu Item Nutrition Label Image

Visualize a menu item&#39;s nutritional label information as an image.

### Example

```java
// Import classes:
//import com.spoonacular.MenuItemsApi;

MenuItemsApi apiInstance = new MenuItemsApi();
BigDecimal id = 342313; // BigDecimal | The menu item id.
Boolean showOptionalNutrients = false; // Boolean | Whether to show optional nutrients.
Boolean showZeroValues = false; // Boolean | Whether to show zero values.
Boolean showIngredients = false; // Boolean | Whether to show a list of ingredients.
try {
    Object result = apiInstance.menuItemNutritionLabelImage(id, showOptionalNutrients, showZeroValues, showIngredients);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MenuItemsApi#menuItemNutritionLabelImage");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **BigDecimal**| The menu item id. | [default to null]
 **showOptionalNutrients** | **Boolean**| Whether to show optional nutrients. | [optional] [default to null]
 **showZeroValues** | **Boolean**| Whether to show zero values. | [optional] [default to null]
 **showIngredients** | **Boolean**| Whether to show a list of ingredients. | [optional] [default to null]

### Return type

**Object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/png


## menuItemNutritionLabelWidget

> String menuItemNutritionLabelWidget(id, defaultCss, showOptionalNutrients, showZeroValues, showIngredients)

Menu Item Nutrition Label Widget

Visualize a menu item&#39;s nutritional label information as HTML including CSS.

### Example

```java
// Import classes:
//import com.spoonacular.MenuItemsApi;

MenuItemsApi apiInstance = new MenuItemsApi();
BigDecimal id = 342313; // BigDecimal | The menu item id.
Boolean defaultCss = false; // Boolean | Whether the default CSS should be added to the response.
Boolean showOptionalNutrients = false; // Boolean | Whether to show optional nutrients.
Boolean showZeroValues = false; // Boolean | Whether to show zero values.
Boolean showIngredients = false; // Boolean | Whether to show a list of ingredients.
try {
    String result = apiInstance.menuItemNutritionLabelWidget(id, defaultCss, showOptionalNutrients, showZeroValues, showIngredients);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MenuItemsApi#menuItemNutritionLabelWidget");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **BigDecimal**| The menu item id. | [default to null]
 **defaultCss** | **Boolean**| Whether the default CSS should be added to the response. | [optional] [default to true]
 **showOptionalNutrients** | **Boolean**| Whether to show optional nutrients. | [optional] [default to null]
 **showZeroValues** | **Boolean**| Whether to show zero values. | [optional] [default to null]
 **showIngredients** | **Boolean**| Whether to show a list of ingredients. | [optional] [default to null]

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html


## searchMenuItems

> SearchMenuItems200Response searchMenuItems(query, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, addMenuItemInformation, offset, number)

Search Menu Items

Search over 115,000 menu items from over 800 fast food and chain restaurants. For example, McDonald&#39;s Big Mac or Starbucks Mocha.

### Example

```java
// Import classes:
//import com.spoonacular.MenuItemsApi;

MenuItemsApi apiInstance = new MenuItemsApi();
String query = burger; // String | The (natural language) search query.
BigDecimal minCalories = 50; // BigDecimal | The minimum amount of calories the menu item must have.
BigDecimal maxCalories = 800; // BigDecimal | The maximum amount of calories the menu item can have.
BigDecimal minCarbs = 10; // BigDecimal | The minimum amount of carbohydrates in grams the menu item must have.
BigDecimal maxCarbs = 100; // BigDecimal | The maximum amount of carbohydrates in grams the menu item can have.
BigDecimal minProtein = 10; // BigDecimal | The minimum amount of protein in grams the menu item must have.
BigDecimal maxProtein = 100; // BigDecimal | The maximum amount of protein in grams the menu item can have.
BigDecimal minFat = 1; // BigDecimal | The minimum amount of fat in grams the menu item must have.
BigDecimal maxFat = 100; // BigDecimal | The maximum amount of fat in grams the menu item can have.
Boolean addMenuItemInformation = true; // Boolean | If set to true, you get more information about the menu items returned.
Integer offset = null; // Integer | The number of results to skip (between 0 and 900).
Integer number = 10; // Integer | The maximum number of items to return (between 1 and 100). Defaults to 10.
try {
    SearchMenuItems200Response result = apiInstance.searchMenuItems(query, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, addMenuItemInformation, offset, number);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MenuItemsApi#searchMenuItems");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The (natural language) search query. | [optional] [default to null]
 **minCalories** | **BigDecimal**| The minimum amount of calories the menu item must have. | [optional] [default to null]
 **maxCalories** | **BigDecimal**| The maximum amount of calories the menu item can have. | [optional] [default to null]
 **minCarbs** | **BigDecimal**| The minimum amount of carbohydrates in grams the menu item must have. | [optional] [default to null]
 **maxCarbs** | **BigDecimal**| The maximum amount of carbohydrates in grams the menu item can have. | [optional] [default to null]
 **minProtein** | **BigDecimal**| The minimum amount of protein in grams the menu item must have. | [optional] [default to null]
 **maxProtein** | **BigDecimal**| The maximum amount of protein in grams the menu item can have. | [optional] [default to null]
 **minFat** | **BigDecimal**| The minimum amount of fat in grams the menu item must have. | [optional] [default to null]
 **maxFat** | **BigDecimal**| The maximum amount of fat in grams the menu item can have. | [optional] [default to null]
 **addMenuItemInformation** | **Boolean**| If set to true, you get more information about the menu items returned. | [optional] [default to null] [enum: false, true]
 **offset** | **Integer**| The number of results to skip (between 0 and 900). | [optional] [default to null]
 **number** | **Integer**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]

### Return type

[**SearchMenuItems200Response**](SearchMenuItems200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## visualizeMenuItemNutritionByID

> String visualizeMenuItemNutritionByID(id, defaultCss, accept)

Menu Item Nutrition by ID Widget

Visualize a menu item&#39;s nutritional information as HTML including CSS.

### Example

```java
// Import classes:
//import com.spoonacular.MenuItemsApi;

MenuItemsApi apiInstance = new MenuItemsApi();
Integer id = 1; // Integer | The item's id.
Boolean defaultCss = false; // Boolean | Whether the default CSS should be added to the response.
String accept = application/json; // String | Accept header.
try {
    String result = apiInstance.visualizeMenuItemNutritionByID(id, defaultCss, accept);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MenuItemsApi#visualizeMenuItemNutritionByID");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The item&#39;s id. | [default to null]
 **defaultCss** | **Boolean**| Whether the default CSS should be added to the response. | [optional] [default to true]
 **accept** | **String**| Accept header. | [optional] [default to null] [enum: application/json, text/html, media/*]

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

