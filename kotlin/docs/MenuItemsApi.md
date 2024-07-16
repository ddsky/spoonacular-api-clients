# MenuItemsApi

All URIs are relative to *https://api.spoonacular.com*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**autocompleteMenuItemSearch**](MenuItemsApi.md#autocompleteMenuItemSearch) | **GET** /food/menuItems/suggest | Autocomplete Menu Item Search |
| [**getMenuItemInformation**](MenuItemsApi.md#getMenuItemInformation) | **GET** /food/menuItems/{id} | Get Menu Item Information |
| [**menuItemNutritionByIDImage**](MenuItemsApi.md#menuItemNutritionByIDImage) | **GET** /food/menuItems/{id}/nutritionWidget.png | Menu Item Nutrition by ID Image |
| [**menuItemNutritionLabelImage**](MenuItemsApi.md#menuItemNutritionLabelImage) | **GET** /food/menuItems/{id}/nutritionLabel.png | Menu Item Nutrition Label Image |
| [**menuItemNutritionLabelWidget**](MenuItemsApi.md#menuItemNutritionLabelWidget) | **GET** /food/menuItems/{id}/nutritionLabel | Menu Item Nutrition Label Widget |
| [**searchMenuItems**](MenuItemsApi.md#searchMenuItems) | **GET** /food/menuItems/search | Search Menu Items |
| [**visualizeMenuItemNutritionByID**](MenuItemsApi.md#visualizeMenuItemNutritionByID) | **GET** /food/menuItems/{id}/nutritionWidget | Menu Item Nutrition by ID Widget |


<a id="autocompleteMenuItemSearch"></a>
# **autocompleteMenuItemSearch**
> AutocompleteProductSearch200Response autocompleteMenuItemSearch(query, number)

Autocomplete Menu Item Search

Generate suggestions for menu items based on a (partial) query. The matches will be found by looking in the title only.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = MenuItemsApi()
val query : kotlin.String = chicke // kotlin.String | The (partial) search query.
val number : kotlin.Int = 10 // kotlin.Int | The number of results to return (between 1 and 25).
try {
    val result : AutocompleteProductSearch200Response = apiInstance.autocompleteMenuItemSearch(query, number)
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
| **query** | **kotlin.String**| The (partial) search query. | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **number** | **kotlin.Int**| The number of results to return (between 1 and 25). | [optional] |

### Return type

[**AutocompleteProductSearch200Response**](AutocompleteProductSearch200Response.md)

### Authorization


Configure apiKeyScheme:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="getMenuItemInformation"></a>
# **getMenuItemInformation**
> MenuItem getMenuItemInformation(id)

Get Menu Item Information

Use a menu item id to get all available information about a menu item, such as nutrition.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = MenuItemsApi()
val id : kotlin.Int = 424571 // kotlin.Int | The menu item id.
try {
    val result : MenuItem = apiInstance.getMenuItemInformation(id)
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
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **kotlin.Int**| The menu item id. | |

### Return type

[**MenuItem**](MenuItem.md)

### Authorization


Configure apiKeyScheme:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="menuItemNutritionByIDImage"></a>
# **menuItemNutritionByIDImage**
> java.io.File menuItemNutritionByIDImage(id)

Menu Item Nutrition by ID Image

Visualize a menu item&#39;s nutritional information as HTML including CSS.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = MenuItemsApi()
val id : kotlin.Int = 424571 // kotlin.Int | The menu item id.
try {
    val result : java.io.File = apiInstance.menuItemNutritionByIDImage(id)
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
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **kotlin.Int**| The menu item id. | |

### Return type

[**java.io.File**](java.io.File.md)

### Authorization


Configure apiKeyScheme:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a id="menuItemNutritionLabelImage"></a>
# **menuItemNutritionLabelImage**
> java.io.File menuItemNutritionLabelImage(id, showOptionalNutrients, showZeroValues, showIngredients)

Menu Item Nutrition Label Image

Visualize a menu item&#39;s nutritional label information as an image.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = MenuItemsApi()
val id : kotlin.Int = 342313 // kotlin.Int | The menu item id.
val showOptionalNutrients : kotlin.Boolean = false // kotlin.Boolean | Whether to show optional nutrients.
val showZeroValues : kotlin.Boolean = false // kotlin.Boolean | Whether to show zero values.
val showIngredients : kotlin.Boolean = false // kotlin.Boolean | Whether to show a list of ingredients.
try {
    val result : java.io.File = apiInstance.menuItemNutritionLabelImage(id, showOptionalNutrients, showZeroValues, showIngredients)
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
| **id** | **kotlin.Int**| The menu item id. | |
| **showOptionalNutrients** | **kotlin.Boolean**| Whether to show optional nutrients. | [optional] |
| **showZeroValues** | **kotlin.Boolean**| Whether to show zero values. | [optional] |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **showIngredients** | **kotlin.Boolean**| Whether to show a list of ingredients. | [optional] |

### Return type

[**java.io.File**](java.io.File.md)

### Authorization


Configure apiKeyScheme:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a id="menuItemNutritionLabelWidget"></a>
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
val id : kotlin.Int = 342313 // kotlin.Int | The menu item id.
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
| **id** | **kotlin.Int**| The menu item id. | |
| **defaultCss** | **kotlin.Boolean**| Whether the default CSS should be added to the response. | [optional] [default to true] |
| **showOptionalNutrients** | **kotlin.Boolean**| Whether to show optional nutrients. | [optional] |
| **showZeroValues** | **kotlin.Boolean**| Whether to show zero values. | [optional] |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **showIngredients** | **kotlin.Boolean**| Whether to show a list of ingredients. | [optional] |

### Return type

**kotlin.String**

### Authorization


Configure apiKeyScheme:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a id="searchMenuItems"></a>
# **searchMenuItems**
> SearchMenuItems200Response searchMenuItems(query, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, addMenuItemInformation, offset, number)

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
    val result : SearchMenuItems200Response = apiInstance.searchMenuItems(query, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, addMenuItemInformation, offset, number)
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
| **query** | **kotlin.String**| The (natural language) search query. | |
| **minCalories** | **java.math.BigDecimal**| The minimum amount of calories the menu item must have. | [optional] |
| **maxCalories** | **java.math.BigDecimal**| The maximum amount of calories the menu item can have. | [optional] |
| **minCarbs** | **java.math.BigDecimal**| The minimum amount of carbohydrates in grams the menu item must have. | [optional] |
| **maxCarbs** | **java.math.BigDecimal**| The maximum amount of carbohydrates in grams the menu item can have. | [optional] |
| **minProtein** | **java.math.BigDecimal**| The minimum amount of protein in grams the menu item must have. | [optional] |
| **maxProtein** | **java.math.BigDecimal**| The maximum amount of protein in grams the menu item can have. | [optional] |
| **minFat** | **java.math.BigDecimal**| The minimum amount of fat in grams the menu item must have. | [optional] |
| **maxFat** | **java.math.BigDecimal**| The maximum amount of fat in grams the menu item can have. | [optional] |
| **addMenuItemInformation** | **kotlin.Boolean**| If set to true, you get more information about the menu items returned. | [optional] |
| **offset** | **kotlin.Int**| The number of results to skip (between 0 and 900). | [optional] |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **number** | **kotlin.Int**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10] |

### Return type

[**SearchMenuItems200Response**](SearchMenuItems200Response.md)

### Authorization


Configure apiKeyScheme:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="visualizeMenuItemNutritionByID"></a>
# **visualizeMenuItemNutritionByID**
> kotlin.String visualizeMenuItemNutritionByID(id, defaultCss)

Menu Item Nutrition by ID Widget

Visualize a menu item&#39;s nutritional information as HTML including CSS.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = MenuItemsApi()
val id : kotlin.Int = 1003464 // kotlin.Int | The menu item id.
val defaultCss : kotlin.Boolean = false // kotlin.Boolean | Whether the default CSS should be added to the response.
try {
    val result : kotlin.String = apiInstance.visualizeMenuItemNutritionByID(id, defaultCss)
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
| **id** | **kotlin.Int**| The menu item id. | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **defaultCss** | **kotlin.Boolean**| Whether the default CSS should be added to the response. | [optional] [default to true] |

### Return type

**kotlin.String**

### Authorization


Configure apiKeyScheme:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

