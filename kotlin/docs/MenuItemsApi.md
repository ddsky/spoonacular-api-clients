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


<a name="autocompleteMenuItemSearch"></a>
# **autocompleteMenuItemSearch**
> InlineResponse20032 autocompleteMenuItemSearch(query, number)

Autocomplete Menu Item Search

Generate suggestions for menu items based on a (partial) query. The matches will be found by looking in the title only.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = MenuItemsApi()
val query : kotlin.String = chicke // kotlin.String | The (partial) search query.
val number : java.math.BigDecimal = 10 // java.math.BigDecimal | The number of results to return (between 1 and 25).
try {
    val result : InlineResponse20032 = apiInstance.autocompleteMenuItemSearch(query, number)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MenuItemsApi#autocompleteMenuItemSearch")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MenuItemsApi#autocompleteMenuItemSearch")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **kotlin.String**| The (partial) search query. |
 **number** | **java.math.BigDecimal**| The number of results to return (between 1 and 25). | [optional]

### Return type

[**InlineResponse20032**](InlineResponse20032.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getMenuItemInformation"></a>
# **getMenuItemInformation**
> InlineResponse20036 getMenuItemInformation(id)

Get Menu Item Information

Use a menu item id to get all available information about a menu item, such as nutrition.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = MenuItemsApi()
val id : kotlin.Int = 1 // kotlin.Int | The item's id.
try {
    val result : InlineResponse20036 = apiInstance.getMenuItemInformation(id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MenuItemsApi#getMenuItemInformation")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MenuItemsApi#getMenuItemInformation")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **kotlin.Int**| The item&#39;s id. |

### Return type

[**InlineResponse20036**](InlineResponse20036.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="menuItemNutritionByIDImage"></a>
# **menuItemNutritionByIDImage**
> kotlin.Any menuItemNutritionByIDImage(id)

Menu Item Nutrition by ID Image

Visualize a menu item&#39;s nutritional information as HTML including CSS.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = MenuItemsApi()
val id : java.math.BigDecimal = 424571 // java.math.BigDecimal | The menu item id.
try {
    val result : kotlin.Any = apiInstance.menuItemNutritionByIDImage(id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MenuItemsApi#menuItemNutritionByIDImage")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MenuItemsApi#menuItemNutritionByIDImage")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **java.math.BigDecimal**| The menu item id. |

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png

<a name="menuItemNutritionLabelImage"></a>
# **menuItemNutritionLabelImage**
> kotlin.Any menuItemNutritionLabelImage(id, showOptionalNutrients, showZeroValues, showIngredients)

Menu Item Nutrition Label Image

Visualize a menu item&#39;s nutritional label information as an image.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = MenuItemsApi()
val id : java.math.BigDecimal = 342313 // java.math.BigDecimal | The menu item id.
val showOptionalNutrients : kotlin.Boolean = false // kotlin.Boolean | Whether to show optional nutrients.
val showZeroValues : kotlin.Boolean = false // kotlin.Boolean | Whether to show zero values.
val showIngredients : kotlin.Boolean = false // kotlin.Boolean | Whether to show a list of ingredients.
try {
    val result : kotlin.Any = apiInstance.menuItemNutritionLabelImage(id, showOptionalNutrients, showZeroValues, showIngredients)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MenuItemsApi#menuItemNutritionLabelImage")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MenuItemsApi#menuItemNutritionLabelImage")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **java.math.BigDecimal**| The menu item id. |
 **showOptionalNutrients** | **kotlin.Boolean**| Whether to show optional nutrients. | [optional]
 **showZeroValues** | **kotlin.Boolean**| Whether to show zero values. | [optional]
 **showIngredients** | **kotlin.Boolean**| Whether to show a list of ingredients. | [optional]

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png

<a name="menuItemNutritionLabelWidget"></a>
# **menuItemNutritionLabelWidget**
> kotlin.String menuItemNutritionLabelWidget(id, defaultCss, showOptionalNutrients, showZeroValues, showIngredients)

Menu Item Nutrition Label Widget

Visualize a menu item&#39;s nutritional label information as HTML including CSS.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = MenuItemsApi()
val id : java.math.BigDecimal = 342313 // java.math.BigDecimal | The menu item id.
val defaultCss : kotlin.Boolean = false // kotlin.Boolean | Whether the default CSS should be added to the response.
val showOptionalNutrients : kotlin.Boolean = false // kotlin.Boolean | Whether to show optional nutrients.
val showZeroValues : kotlin.Boolean = false // kotlin.Boolean | Whether to show zero values.
val showIngredients : kotlin.Boolean = false // kotlin.Boolean | Whether to show a list of ingredients.
try {
    val result : kotlin.String = apiInstance.menuItemNutritionLabelWidget(id, defaultCss, showOptionalNutrients, showZeroValues, showIngredients)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MenuItemsApi#menuItemNutritionLabelWidget")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MenuItemsApi#menuItemNutritionLabelWidget")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **java.math.BigDecimal**| The menu item id. |
 **defaultCss** | **kotlin.Boolean**| Whether the default CSS should be added to the response. | [optional] [default to true]
 **showOptionalNutrients** | **kotlin.Boolean**| Whether to show optional nutrients. | [optional]
 **showZeroValues** | **kotlin.Boolean**| Whether to show zero values. | [optional]
 **showIngredients** | **kotlin.Boolean**| Whether to show a list of ingredients. | [optional]

### Return type

**kotlin.String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

<a name="searchMenuItems"></a>
# **searchMenuItems**
> InlineResponse20035 searchMenuItems(query, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, addMenuItemInformation, offset, number)

Search Menu Items

Search over 115,000 menu items from over 800 fast food and chain restaurants. For example, McDonald&#39;s Big Mac or Starbucks Mocha.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = MenuItemsApi()
val query : kotlin.String = burger // kotlin.String | The (natural language) search query.
val minCalories : java.math.BigDecimal = 50 // java.math.BigDecimal | The minimum amount of calories the menu item must have.
val maxCalories : java.math.BigDecimal = 800 // java.math.BigDecimal | The maximum amount of calories the menu item can have.
val minCarbs : java.math.BigDecimal = 10 // java.math.BigDecimal | The minimum amount of carbohydrates in grams the menu item must have.
val maxCarbs : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of carbohydrates in grams the menu item can have.
val minProtein : java.math.BigDecimal = 10 // java.math.BigDecimal | The minimum amount of protein in grams the menu item must have.
val maxProtein : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of protein in grams the menu item can have.
val minFat : java.math.BigDecimal = 1 // java.math.BigDecimal | The minimum amount of fat in grams the menu item must have.
val maxFat : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of fat in grams the menu item can have.
val addMenuItemInformation : kotlin.Boolean = true // kotlin.Boolean | If set to true, you get more information about the menu items returned.
val offset : kotlin.Int = 56 // kotlin.Int | The number of results to skip (between 0 and 900).
val number : kotlin.Int = 10 // kotlin.Int | The maximum number of items to return (between 1 and 100). Defaults to 10.
try {
    val result : InlineResponse20035 = apiInstance.searchMenuItems(query, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, addMenuItemInformation, offset, number)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MenuItemsApi#searchMenuItems")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MenuItemsApi#searchMenuItems")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **kotlin.String**| The (natural language) search query. | [optional]
 **minCalories** | **java.math.BigDecimal**| The minimum amount of calories the menu item must have. | [optional]
 **maxCalories** | **java.math.BigDecimal**| The maximum amount of calories the menu item can have. | [optional]
 **minCarbs** | **java.math.BigDecimal**| The minimum amount of carbohydrates in grams the menu item must have. | [optional]
 **maxCarbs** | **java.math.BigDecimal**| The maximum amount of carbohydrates in grams the menu item can have. | [optional]
 **minProtein** | **java.math.BigDecimal**| The minimum amount of protein in grams the menu item must have. | [optional]
 **maxProtein** | **java.math.BigDecimal**| The maximum amount of protein in grams the menu item can have. | [optional]
 **minFat** | **java.math.BigDecimal**| The minimum amount of fat in grams the menu item must have. | [optional]
 **maxFat** | **java.math.BigDecimal**| The maximum amount of fat in grams the menu item can have. | [optional]
 **addMenuItemInformation** | **kotlin.Boolean**| If set to true, you get more information about the menu items returned. | [optional] [enum: false, true]
 **offset** | **kotlin.Int**| The number of results to skip (between 0 and 900). | [optional]
 **number** | **kotlin.Int**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]

### Return type

[**InlineResponse20035**](InlineResponse20035.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="visualizeMenuItemNutritionByID"></a>
# **visualizeMenuItemNutritionByID**
> kotlin.String visualizeMenuItemNutritionByID(id, defaultCss, accept)

Menu Item Nutrition by ID Widget

Visualize a menu item&#39;s nutritional information as HTML including CSS.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = MenuItemsApi()
val id : kotlin.Int = 1 // kotlin.Int | The item's id.
val defaultCss : kotlin.Boolean = false // kotlin.Boolean | Whether the default CSS should be added to the response.
val accept : kotlin.String = application/json // kotlin.String | Accept header.
try {
    val result : kotlin.String = apiInstance.visualizeMenuItemNutritionByID(id, defaultCss, accept)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MenuItemsApi#visualizeMenuItemNutritionByID")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MenuItemsApi#visualizeMenuItemNutritionByID")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **kotlin.Int**| The item&#39;s id. |
 **defaultCss** | **kotlin.Boolean**| Whether the default CSS should be added to the response. | [optional] [default to true]
 **accept** | **kotlin.String**| Accept header. | [optional] [enum: application/json, text/html, media/*]

### Return type

**kotlin.String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

