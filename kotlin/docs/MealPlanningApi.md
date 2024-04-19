# MealPlanningApi

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addMealPlanTemplate**](MealPlanningApi.md#addMealPlanTemplate) | **POST** /mealplanner/{username}/templates | Add Meal Plan Template
[**addToMealPlan**](MealPlanningApi.md#addToMealPlan) | **POST** /mealplanner/{username}/items | Add to Meal Plan
[**addToShoppingList**](MealPlanningApi.md#addToShoppingList) | **POST** /mealplanner/{username}/shopping-list/items | Add to Shopping List
[**clearMealPlanDay**](MealPlanningApi.md#clearMealPlanDay) | **DELETE** /mealplanner/{username}/day/{date} | Clear Meal Plan Day
[**connectUser**](MealPlanningApi.md#connectUser) | **POST** /users/connect | Connect User
[**deleteFromMealPlan**](MealPlanningApi.md#deleteFromMealPlan) | **DELETE** /mealplanner/{username}/items/{id} | Delete from Meal Plan
[**deleteFromShoppingList**](MealPlanningApi.md#deleteFromShoppingList) | **DELETE** /mealplanner/{username}/shopping-list/items/{id} | Delete from Shopping List
[**deleteMealPlanTemplate**](MealPlanningApi.md#deleteMealPlanTemplate) | **DELETE** /mealplanner/{username}/templates/{id} | Delete Meal Plan Template
[**generateMealPlan**](MealPlanningApi.md#generateMealPlan) | **GET** /mealplanner/generate | Generate Meal Plan
[**generateShoppingList**](MealPlanningApi.md#generateShoppingList) | **POST** /mealplanner/{username}/shopping-list/{start-date}/{end-date} | Generate Shopping List
[**getMealPlanTemplate**](MealPlanningApi.md#getMealPlanTemplate) | **GET** /mealplanner/{username}/templates/{id} | Get Meal Plan Template
[**getMealPlanTemplates**](MealPlanningApi.md#getMealPlanTemplates) | **GET** /mealplanner/{username}/templates | Get Meal Plan Templates
[**getMealPlanWeek**](MealPlanningApi.md#getMealPlanWeek) | **GET** /mealplanner/{username}/week/{start-date} | Get Meal Plan Week
[**getShoppingList**](MealPlanningApi.md#getShoppingList) | **GET** /mealplanner/{username}/shopping-list | Get Shopping List


<a id="addMealPlanTemplate"></a>
# **addMealPlanTemplate**
> AddMealPlanTemplate200Response addMealPlanTemplate(username, hash)

Add Meal Plan Template

Add a meal plan template for a user.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = MealPlanningApi()
val username : kotlin.String = dsky // kotlin.String | The username.
val hash : kotlin.String = 4b5v4398573406 // kotlin.String | The private hash for the username.
try {
    val result : AddMealPlanTemplate200Response = apiInstance.addMealPlanTemplate(username, hash)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MealPlanningApi#addMealPlanTemplate")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MealPlanningApi#addMealPlanTemplate")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **kotlin.String**| The username. |
 **hash** | **kotlin.String**| The private hash for the username. |

### Return type

[**AddMealPlanTemplate200Response**](AddMealPlanTemplate200Response.md)

### Authorization


Configure apiKeyScheme:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="addToMealPlan"></a>
# **addToMealPlan**
> kotlin.Any addToMealPlan(username, hash, addToMealPlanRequest)

Add to Meal Plan

Add an item to the user&#39;s meal plan.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = MealPlanningApi()
val username : kotlin.String = dsky // kotlin.String | The username.
val hash : kotlin.String = hash_example // kotlin.String | The private hash for the username.
val addToMealPlanRequest : AddToMealPlanRequest = {"date":1589500800,"slot":1,"position":0,"type":"INGREDIENTS","value":{"ingredients":[{"name":"1 banana"}]}} // AddToMealPlanRequest | 
try {
    val result : kotlin.Any = apiInstance.addToMealPlan(username, hash, addToMealPlanRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MealPlanningApi#addToMealPlan")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MealPlanningApi#addToMealPlan")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **kotlin.String**| The username. |
 **hash** | **kotlin.String**| The private hash for the username. |
 **addToMealPlanRequest** | [**AddToMealPlanRequest**](AddToMealPlanRequest.md)|  |

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization


Configure apiKeyScheme:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a id="addToShoppingList"></a>
# **addToShoppingList**
> GenerateShoppingList200Response addToShoppingList(username, hash, addToShoppingListRequest)

Add to Shopping List

Add an item to the current shopping list of a user.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = MealPlanningApi()
val username : kotlin.String = dsky // kotlin.String | The username.
val hash : kotlin.String = hash_example // kotlin.String | The private hash for the username.
val addToShoppingListRequest : AddToShoppingListRequest = {"item":"1 package baking powder","aisle":"Baking","parse":true} // AddToShoppingListRequest | 
try {
    val result : GenerateShoppingList200Response = apiInstance.addToShoppingList(username, hash, addToShoppingListRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MealPlanningApi#addToShoppingList")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MealPlanningApi#addToShoppingList")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **kotlin.String**| The username. |
 **hash** | **kotlin.String**| The private hash for the username. |
 **addToShoppingListRequest** | [**AddToShoppingListRequest**](AddToShoppingListRequest.md)|  |

### Return type

[**GenerateShoppingList200Response**](GenerateShoppingList200Response.md)

### Authorization


Configure apiKeyScheme:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a id="clearMealPlanDay"></a>
# **clearMealPlanDay**
> kotlin.Any clearMealPlanDay(username, date, hash)

Clear Meal Plan Day

Delete all planned items from the user&#39;s meal plan for a specific day.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = MealPlanningApi()
val username : kotlin.String = dsky // kotlin.String | The username.
val date : kotlin.String = 2020-06-01 // kotlin.String | The date in the format yyyy-mm-dd.
val hash : kotlin.String = hash_example // kotlin.String | The private hash for the username.
try {
    val result : kotlin.Any = apiInstance.clearMealPlanDay(username, date, hash)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MealPlanningApi#clearMealPlanDay")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MealPlanningApi#clearMealPlanDay")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **kotlin.String**| The username. |
 **date** | **kotlin.String**| The date in the format yyyy-mm-dd. |
 **hash** | **kotlin.String**| The private hash for the username. |

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization


Configure apiKeyScheme:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="connectUser"></a>
# **connectUser**
> ConnectUser200Response connectUser(connectUserRequest)

Connect User

In order to call user-specific endpoints, you need to connect your app&#39;s users to spoonacular users.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = MealPlanningApi()
val connectUserRequest : ConnectUserRequest = {"username":"your user's name","firstName":"your user's first name","lastName":"your user's last name","email":"your user's email"} // ConnectUserRequest | 
try {
    val result : ConnectUser200Response = apiInstance.connectUser(connectUserRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MealPlanningApi#connectUser")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MealPlanningApi#connectUser")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connectUserRequest** | [**ConnectUserRequest**](ConnectUserRequest.md)|  |

### Return type

[**ConnectUser200Response**](ConnectUser200Response.md)

### Authorization


Configure apiKeyScheme:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a id="deleteFromMealPlan"></a>
# **deleteFromMealPlan**
> kotlin.Any deleteFromMealPlan(username, id, hash)

Delete from Meal Plan

Delete an item from the user&#39;s meal plan.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = MealPlanningApi()
val username : kotlin.String = dsky // kotlin.String | The username.
val id : java.math.BigDecimal = 15678 // java.math.BigDecimal | The shopping list item id.
val hash : kotlin.String = hash_example // kotlin.String | The private hash for the username.
try {
    val result : kotlin.Any = apiInstance.deleteFromMealPlan(username, id, hash)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MealPlanningApi#deleteFromMealPlan")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MealPlanningApi#deleteFromMealPlan")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **kotlin.String**| The username. |
 **id** | **java.math.BigDecimal**| The shopping list item id. |
 **hash** | **kotlin.String**| The private hash for the username. |

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization


Configure apiKeyScheme:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="deleteFromShoppingList"></a>
# **deleteFromShoppingList**
> kotlin.Any deleteFromShoppingList(username, id, hash)

Delete from Shopping List

Delete an item from the current shopping list of the user.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = MealPlanningApi()
val username : kotlin.String = dsky // kotlin.String | The username.
val id : kotlin.Int = 1 // kotlin.Int | The item's id.
val hash : kotlin.String = hash_example // kotlin.String | The private hash for the username.
try {
    val result : kotlin.Any = apiInstance.deleteFromShoppingList(username, id, hash)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MealPlanningApi#deleteFromShoppingList")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MealPlanningApi#deleteFromShoppingList")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **kotlin.String**| The username. |
 **id** | **kotlin.Int**| The item&#39;s id. |
 **hash** | **kotlin.String**| The private hash for the username. |

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization


Configure apiKeyScheme:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="deleteMealPlanTemplate"></a>
# **deleteMealPlanTemplate**
> kotlin.Any deleteMealPlanTemplate(username, id, hash)

Delete Meal Plan Template

Delete a meal plan template for a user.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = MealPlanningApi()
val username : kotlin.String = dsky // kotlin.String | The username.
val id : kotlin.Int = 1 // kotlin.Int | The item's id.
val hash : kotlin.String = 4b5v4398573406 // kotlin.String | The private hash for the username.
try {
    val result : kotlin.Any = apiInstance.deleteMealPlanTemplate(username, id, hash)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MealPlanningApi#deleteMealPlanTemplate")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MealPlanningApi#deleteMealPlanTemplate")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **kotlin.String**| The username. |
 **id** | **kotlin.Int**| The item&#39;s id. |
 **hash** | **kotlin.String**| The private hash for the username. |

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization


Configure apiKeyScheme:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="generateMealPlan"></a>
# **generateMealPlan**
> GenerateMealPlan200Response generateMealPlan(timeFrame, targetCalories, diet, exclude)

Generate Meal Plan

Generate a meal plan with three meals per day (breakfast, lunch, and dinner).

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = MealPlanningApi()
val timeFrame : kotlin.String = day // kotlin.String | Either for one \"day\" or an entire \"week\".
val targetCalories : java.math.BigDecimal = 2000 // java.math.BigDecimal | What is the caloric target for one day? The meal plan generator will try to get as close as possible to that goal.
val diet : kotlin.String = vegetarian // kotlin.String | Enter a diet that the meal plan has to adhere to. See a full list of supported diets.
val exclude : kotlin.String = shellfish, olives // kotlin.String | A comma-separated list of allergens or ingredients that must be excluded.
try {
    val result : GenerateMealPlan200Response = apiInstance.generateMealPlan(timeFrame, targetCalories, diet, exclude)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MealPlanningApi#generateMealPlan")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MealPlanningApi#generateMealPlan")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timeFrame** | **kotlin.String**| Either for one \&quot;day\&quot; or an entire \&quot;week\&quot;. | [optional]
 **targetCalories** | **java.math.BigDecimal**| What is the caloric target for one day? The meal plan generator will try to get as close as possible to that goal. | [optional]
 **diet** | **kotlin.String**| Enter a diet that the meal plan has to adhere to. See a full list of supported diets. | [optional]
 **exclude** | **kotlin.String**| A comma-separated list of allergens or ingredients that must be excluded. | [optional]

### Return type

[**GenerateMealPlan200Response**](GenerateMealPlan200Response.md)

### Authorization


Configure apiKeyScheme:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="generateShoppingList"></a>
# **generateShoppingList**
> GenerateShoppingList200Response generateShoppingList(username, startDate, endDate, hash)

Generate Shopping List

Generate the shopping list for a user from the meal planner in a given time frame.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = MealPlanningApi()
val username : kotlin.String = dsky // kotlin.String | The username.
val startDate : kotlin.String = 2020-06-01 // kotlin.String | The start date in the format yyyy-mm-dd.
val endDate : kotlin.String = 2020-06-07 // kotlin.String | The end date in the format yyyy-mm-dd.
val hash : kotlin.String = hash_example // kotlin.String | The private hash for the username.
try {
    val result : GenerateShoppingList200Response = apiInstance.generateShoppingList(username, startDate, endDate, hash)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MealPlanningApi#generateShoppingList")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MealPlanningApi#generateShoppingList")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **kotlin.String**| The username. |
 **startDate** | **kotlin.String**| The start date in the format yyyy-mm-dd. |
 **endDate** | **kotlin.String**| The end date in the format yyyy-mm-dd. |
 **hash** | **kotlin.String**| The private hash for the username. |

### Return type

[**GenerateShoppingList200Response**](GenerateShoppingList200Response.md)

### Authorization


Configure apiKeyScheme:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="getMealPlanTemplate"></a>
# **getMealPlanTemplate**
> GetMealPlanTemplate200Response getMealPlanTemplate(username, id, hash)

Get Meal Plan Template

Get information about a meal plan template.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = MealPlanningApi()
val username : kotlin.String = dsky // kotlin.String | The username.
val id : kotlin.Int = 1 // kotlin.Int | The item's id.
val hash : kotlin.String = hash_example // kotlin.String | The private hash for the username.
try {
    val result : GetMealPlanTemplate200Response = apiInstance.getMealPlanTemplate(username, id, hash)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MealPlanningApi#getMealPlanTemplate")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MealPlanningApi#getMealPlanTemplate")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **kotlin.String**| The username. |
 **id** | **kotlin.Int**| The item&#39;s id. |
 **hash** | **kotlin.String**| The private hash for the username. |

### Return type

[**GetMealPlanTemplate200Response**](GetMealPlanTemplate200Response.md)

### Authorization


Configure apiKeyScheme:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="getMealPlanTemplates"></a>
# **getMealPlanTemplates**
> GetMealPlanTemplates200Response getMealPlanTemplates(username, hash)

Get Meal Plan Templates

Get meal plan templates from user or public ones.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = MealPlanningApi()
val username : kotlin.String = dsky // kotlin.String | The username.
val hash : kotlin.String = hash_example // kotlin.String | The private hash for the username.
try {
    val result : GetMealPlanTemplates200Response = apiInstance.getMealPlanTemplates(username, hash)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MealPlanningApi#getMealPlanTemplates")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MealPlanningApi#getMealPlanTemplates")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **kotlin.String**| The username. |
 **hash** | **kotlin.String**| The private hash for the username. |

### Return type

[**GetMealPlanTemplates200Response**](GetMealPlanTemplates200Response.md)

### Authorization


Configure apiKeyScheme:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="getMealPlanWeek"></a>
# **getMealPlanWeek**
> GetMealPlanWeek200Response getMealPlanWeek(username, startDate, hash)

Get Meal Plan Week

Retrieve a meal planned week for the given user. The username must be a spoonacular user and the hash must the the user&#39;s hash that can be found in his/her account.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = MealPlanningApi()
val username : kotlin.String = dsky // kotlin.String | The username.
val startDate : kotlin.String = 2020-06-01 // kotlin.String | The start date of the meal planned week in the format yyyy-mm-dd.
val hash : kotlin.String = hash_example // kotlin.String | The private hash for the username.
try {
    val result : GetMealPlanWeek200Response = apiInstance.getMealPlanWeek(username, startDate, hash)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MealPlanningApi#getMealPlanWeek")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MealPlanningApi#getMealPlanWeek")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **kotlin.String**| The username. |
 **startDate** | **kotlin.String**| The start date of the meal planned week in the format yyyy-mm-dd. |
 **hash** | **kotlin.String**| The private hash for the username. |

### Return type

[**GetMealPlanWeek200Response**](GetMealPlanWeek200Response.md)

### Authorization


Configure apiKeyScheme:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="getShoppingList"></a>
# **getShoppingList**
> GetShoppingList200Response getShoppingList(username, hash)

Get Shopping List

Get the current shopping list for the given user.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = MealPlanningApi()
val username : kotlin.String = dsky // kotlin.String | The username.
val hash : kotlin.String = hash_example // kotlin.String | The private hash for the username.
try {
    val result : GetShoppingList200Response = apiInstance.getShoppingList(username, hash)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MealPlanningApi#getShoppingList")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MealPlanningApi#getShoppingList")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **kotlin.String**| The username. |
 **hash** | **kotlin.String**| The private hash for the username. |

### Return type

[**GetShoppingList200Response**](GetShoppingList200Response.md)

### Authorization


Configure apiKeyScheme:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

