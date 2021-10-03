# ProductsApi

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**autocompleteProductSearch**](ProductsApi.md#autocompleteProductSearch) | **GET** /food/products/suggest | Autocomplete Product Search
[**classifyGroceryProduct**](ProductsApi.md#classifyGroceryProduct) | **POST** /food/products/classify | Classify Grocery Product
[**classifyGroceryProductBulk**](ProductsApi.md#classifyGroceryProductBulk) | **POST** /food/products/classifyBatch | Classify Grocery Product Bulk
[**getComparableProducts**](ProductsApi.md#getComparableProducts) | **GET** /food/products/upc/{upc}/comparable | Get Comparable Products
[**getProductInformation**](ProductsApi.md#getProductInformation) | **GET** /food/products/{id} | Get Product Information
[**productNutritionByIDImage**](ProductsApi.md#productNutritionByIDImage) | **GET** /food/products/{id}/nutritionWidget.png | Product Nutrition by ID Image
[**productNutritionLabelImage**](ProductsApi.md#productNutritionLabelImage) | **GET** /food/products/{id}/nutritionLabel.png | Product Nutrition Label Image
[**productNutritionLabelWidget**](ProductsApi.md#productNutritionLabelWidget) | **GET** /food/products/{id}/nutritionLabel | Product Nutrition Label Widget
[**searchGroceryProducts**](ProductsApi.md#searchGroceryProducts) | **GET** /food/products/search | Search Grocery Products
[**searchGroceryProductsByUPC**](ProductsApi.md#searchGroceryProductsByUPC) | **GET** /food/products/upc/{upc} | Search Grocery Products by UPC
[**visualizeProductNutritionByID**](ProductsApi.md#visualizeProductNutritionByID) | **GET** /food/products/{id}/nutritionWidget | Product Nutrition by ID Widget


<a name="autocompleteProductSearch"></a>
# **autocompleteProductSearch**
> InlineResponse20032 autocompleteProductSearch(query, number)

Autocomplete Product Search

Generate suggestions for grocery products based on a (partial) query. The matches will be found by looking in the title only.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = ProductsApi()
val query : kotlin.String = chicke // kotlin.String | The (partial) search query.
val number : kotlin.Int = 10 // kotlin.Int | The number of results to return (between 1 and 25).
try {
    val result : InlineResponse20032 = apiInstance.autocompleteProductSearch(query, number)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ProductsApi#autocompleteProductSearch")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ProductsApi#autocompleteProductSearch")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **kotlin.String**| The (partial) search query. |
 **number** | **kotlin.Int**| The number of results to return (between 1 and 25). | [optional]

### Return type

[**InlineResponse20032**](InlineResponse20032.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="classifyGroceryProduct"></a>
# **classifyGroceryProduct**
> InlineResponse20033 classifyGroceryProduct(inlineObject1, locale)

Classify Grocery Product

This endpoint allows you to match a packaged food to a basic category, e.g. a specific brand of milk to the category milk.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = ProductsApi()
val inlineObject1 : InlineObject1 =  // InlineObject1 | 
val locale : kotlin.String = en_US // kotlin.String | The display name of the returned category, supported is en_US (for American English) and en_GB (for British English).
try {
    val result : InlineResponse20033 = apiInstance.classifyGroceryProduct(inlineObject1, locale)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ProductsApi#classifyGroceryProduct")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ProductsApi#classifyGroceryProduct")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inlineObject1** | [**InlineObject1**](InlineObject1.md)|  |
 **locale** | **kotlin.String**| The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). | [optional] [enum: en_US, en_GB]

### Return type

[**InlineResponse20033**](InlineResponse20033.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="classifyGroceryProductBulk"></a>
# **classifyGroceryProductBulk**
> kotlin.Array&lt;InlineResponse20033&gt; classifyGroceryProductBulk(inlineObject, locale)

Classify Grocery Product Bulk

Provide a set of product jsons, get back classified products.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = ProductsApi()
val inlineObject : kotlin.Array<InlineObject> = [{"title":"Kroger Vitamin A & D Reduced Fat 2% Milk","upc":"","plu_code":""}] // kotlin.Array<InlineObject> | 
val locale : kotlin.String = en_US // kotlin.String | The display name of the returned category, supported is en_US (for American English) and en_GB (for British English).
try {
    val result : kotlin.Array<InlineResponse20033> = apiInstance.classifyGroceryProductBulk(inlineObject, locale)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ProductsApi#classifyGroceryProductBulk")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ProductsApi#classifyGroceryProductBulk")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inlineObject** | [**kotlin.Array&lt;InlineObject&gt;**](kotlin.Array.md)|  |
 **locale** | **kotlin.String**| The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). | [optional]

### Return type

[**kotlin.Array&lt;InlineResponse20033&gt;**](InlineResponse20033.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getComparableProducts"></a>
# **getComparableProducts**
> InlineResponse20031 getComparableProducts(upc)

Get Comparable Products

Find comparable products to the given one.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = ProductsApi()
val upc : java.math.BigDecimal = 33698816271 // java.math.BigDecimal | The UPC of the product for which you want to find comparable products.
try {
    val result : InlineResponse20031 = apiInstance.getComparableProducts(upc)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ProductsApi#getComparableProducts")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ProductsApi#getComparableProducts")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **upc** | **java.math.BigDecimal**| The UPC of the product for which you want to find comparable products. |

### Return type

[**InlineResponse20031**](InlineResponse20031.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getProductInformation"></a>
# **getProductInformation**
> InlineResponse20030 getProductInformation(id)

Get Product Information

Use a product id to get full information about a product, such as ingredients, nutrition, etc. The nutritional information is per serving.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = ProductsApi()
val id : kotlin.Int = 1 // kotlin.Int | The item's id.
try {
    val result : InlineResponse20030 = apiInstance.getProductInformation(id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ProductsApi#getProductInformation")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ProductsApi#getProductInformation")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **kotlin.Int**| The item&#39;s id. |

### Return type

[**InlineResponse20030**](InlineResponse20030.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="productNutritionByIDImage"></a>
# **productNutritionByIDImage**
> kotlin.Any productNutritionByIDImage(id)

Product Nutrition by ID Image

Visualize a product&#39;s nutritional information as an image.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = ProductsApi()
val id : java.math.BigDecimal = 7657 // java.math.BigDecimal | The id of the product.
try {
    val result : kotlin.Any = apiInstance.productNutritionByIDImage(id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ProductsApi#productNutritionByIDImage")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ProductsApi#productNutritionByIDImage")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **java.math.BigDecimal**| The id of the product. |

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png

<a name="productNutritionLabelImage"></a>
# **productNutritionLabelImage**
> kotlin.Any productNutritionLabelImage(id, showOptionalNutrients, showZeroValues, showIngredients)

Product Nutrition Label Image

Get a product&#39;s nutrition label as an image.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = ProductsApi()
val id : java.math.BigDecimal = 22347 // java.math.BigDecimal | The product id.
val showOptionalNutrients : kotlin.Boolean = false // kotlin.Boolean | Whether to show optional nutrients.
val showZeroValues : kotlin.Boolean = false // kotlin.Boolean | Whether to show zero values.
val showIngredients : kotlin.Boolean = false // kotlin.Boolean | Whether to show a list of ingredients.
try {
    val result : kotlin.Any = apiInstance.productNutritionLabelImage(id, showOptionalNutrients, showZeroValues, showIngredients)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ProductsApi#productNutritionLabelImage")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ProductsApi#productNutritionLabelImage")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **java.math.BigDecimal**| The product id. |
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

<a name="productNutritionLabelWidget"></a>
# **productNutritionLabelWidget**
> kotlin.String productNutritionLabelWidget(id, defaultCss, showOptionalNutrients, showZeroValues, showIngredients)

Product Nutrition Label Widget

Get a product&#39;s nutrition label as an HTML widget.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = ProductsApi()
val id : java.math.BigDecimal = 22347 // java.math.BigDecimal | The product id.
val defaultCss : kotlin.Boolean = false // kotlin.Boolean | Whether the default CSS should be added to the response.
val showOptionalNutrients : kotlin.Boolean = false // kotlin.Boolean | Whether to show optional nutrients.
val showZeroValues : kotlin.Boolean = false // kotlin.Boolean | Whether to show zero values.
val showIngredients : kotlin.Boolean = false // kotlin.Boolean | Whether to show a list of ingredients.
try {
    val result : kotlin.String = apiInstance.productNutritionLabelWidget(id, defaultCss, showOptionalNutrients, showZeroValues, showIngredients)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ProductsApi#productNutritionLabelWidget")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ProductsApi#productNutritionLabelWidget")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **java.math.BigDecimal**| The product id. |
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

<a name="searchGroceryProducts"></a>
# **searchGroceryProducts**
> InlineResponse20027 searchGroceryProducts(query, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, addProductInformation, offset, number)

Search Grocery Products

Search packaged food products, such as frozen pizza or Greek yogurt.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = ProductsApi()
val query : kotlin.String = burger // kotlin.String | The (natural language) search query.
val minCalories : java.math.BigDecimal = 50 // java.math.BigDecimal | The minimum amount of calories the product must have.
val maxCalories : java.math.BigDecimal = 800 // java.math.BigDecimal | The maximum amount of calories the product can have.
val minCarbs : java.math.BigDecimal = 10 // java.math.BigDecimal | The minimum amount of carbohydrates in grams the product must have.
val maxCarbs : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of carbohydrates in grams the product can have.
val minProtein : java.math.BigDecimal = 10 // java.math.BigDecimal | The minimum amount of protein in grams the product must have.
val maxProtein : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of protein in grams the product can have.
val minFat : java.math.BigDecimal = 1 // java.math.BigDecimal | The minimum amount of fat in grams the product must have.
val maxFat : java.math.BigDecimal = 100 // java.math.BigDecimal | The maximum amount of fat in grams the product can have.
val addProductInformation : kotlin.Boolean = true // kotlin.Boolean | If set to true, you get more information about the products returned.
val offset : kotlin.Int = 56 // kotlin.Int | The number of results to skip (between 0 and 900).
val number : kotlin.Int = 10 // kotlin.Int | The maximum number of items to return (between 1 and 100). Defaults to 10.
try {
    val result : InlineResponse20027 = apiInstance.searchGroceryProducts(query, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, addProductInformation, offset, number)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ProductsApi#searchGroceryProducts")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ProductsApi#searchGroceryProducts")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **kotlin.String**| The (natural language) search query. | [optional]
 **minCalories** | **java.math.BigDecimal**| The minimum amount of calories the product must have. | [optional]
 **maxCalories** | **java.math.BigDecimal**| The maximum amount of calories the product can have. | [optional]
 **minCarbs** | **java.math.BigDecimal**| The minimum amount of carbohydrates in grams the product must have. | [optional]
 **maxCarbs** | **java.math.BigDecimal**| The maximum amount of carbohydrates in grams the product can have. | [optional]
 **minProtein** | **java.math.BigDecimal**| The minimum amount of protein in grams the product must have. | [optional]
 **maxProtein** | **java.math.BigDecimal**| The maximum amount of protein in grams the product can have. | [optional]
 **minFat** | **java.math.BigDecimal**| The minimum amount of fat in grams the product must have. | [optional]
 **maxFat** | **java.math.BigDecimal**| The maximum amount of fat in grams the product can have. | [optional]
 **addProductInformation** | **kotlin.Boolean**| If set to true, you get more information about the products returned. | [optional] [enum: false, true]
 **offset** | **kotlin.Int**| The number of results to skip (between 0 and 900). | [optional]
 **number** | **kotlin.Int**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]

### Return type

[**InlineResponse20027**](InlineResponse20027.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="searchGroceryProductsByUPC"></a>
# **searchGroceryProductsByUPC**
> InlineResponse20028 searchGroceryProductsByUPC(upc)

Search Grocery Products by UPC

Get information about a packaged food using its UPC.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = ProductsApi()
val upc : java.math.BigDecimal = 41631000564 // java.math.BigDecimal | The product's UPC.
try {
    val result : InlineResponse20028 = apiInstance.searchGroceryProductsByUPC(upc)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ProductsApi#searchGroceryProductsByUPC")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ProductsApi#searchGroceryProductsByUPC")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **upc** | **java.math.BigDecimal**| The product&#39;s UPC. |

### Return type

[**InlineResponse20028**](InlineResponse20028.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="visualizeProductNutritionByID"></a>
# **visualizeProductNutritionByID**
> kotlin.String visualizeProductNutritionByID(id, defaultCss, accept)

Product Nutrition by ID Widget

Visualize a product&#39;s nutritional information as HTML including CSS.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = ProductsApi()
val id : kotlin.Int = 1 // kotlin.Int | The item's id.
val defaultCss : kotlin.Boolean = false // kotlin.Boolean | Whether the default CSS should be added to the response.
val accept : kotlin.String = application/json // kotlin.String | Accept header.
try {
    val result : kotlin.String = apiInstance.visualizeProductNutritionByID(id, defaultCss, accept)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ProductsApi#visualizeProductNutritionByID")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ProductsApi#visualizeProductNutritionByID")
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

