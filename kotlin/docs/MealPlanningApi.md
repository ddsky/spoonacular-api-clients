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


<a name="addMealPlanTemplate"></a>
# **addMealPlanTemplate**
> InlineResponse20040 addMealPlanTemplate(username, hash, inlineObject6)

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
val inlineObject6 : InlineObject6 =  // InlineObject6 | 
try {
    val result : InlineResponse20040 = apiInstance.addMealPlanTemplate(username, hash, inlineObject6)
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
 **inlineObject6** | [**InlineObject6**](InlineObject6.md)|  |

### Return type

[**InlineResponse20040**](InlineResponse20040.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

<a name="addToMealPlan"></a>
# **addToMealPlan**
> kotlin.Any addToMealPlan(username, hash, inlineObject4)

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
val inlineObject4 : InlineObject4 =  // InlineObject4 | 
try {
    val result : kotlin.Any = apiInstance.addToMealPlan(username, hash, inlineObject4)
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
 **inlineObject4** | [**InlineObject4**](InlineObject4.md)|  |

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: , application/json
 - **Accept**: application/json

<a name="addToShoppingList"></a>
# **addToShoppingList**
> InlineResponse20042 addToShoppingList(username, hash, inlineObject9)

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
val inlineObject9 : InlineObject9 =  // InlineObject9 | 
try {
    val result : InlineResponse20042 = apiInstance.addToShoppingList(username, hash, inlineObject9)
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
 **inlineObject9** | [**InlineObject9**](InlineObject9.md)|  |

### Return type

[**InlineResponse20042**](InlineResponse20042.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: , application/json
 - **Accept**: application/json

<a name="clearMealPlanDay"></a>
# **clearMealPlanDay**
> kotlin.Any clearMealPlanDay(username, date, hash, inlineObject3)

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
val inlineObject3 : InlineObject3 =  // InlineObject3 | 
try {
    val result : kotlin.Any = apiInstance.clearMealPlanDay(username, date, hash, inlineObject3)
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
 **inlineObject3** | [**InlineObject3**](InlineObject3.md)|  |

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

<a name="connectUser"></a>
# **connectUser**
> InlineResponse20043 connectUser(body)

Connect User

In order to call user-specific endpoints, you need to connect your app&#39;s users to spoonacular users.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = MealPlanningApi()
val body : kotlin.Any = Object // kotlin.Any | 
try {
    val result : InlineResponse20043 = apiInstance.connectUser(body)
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
 **body** | **kotlin.Any**|  |

### Return type

[**InlineResponse20043**](InlineResponse20043.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: , application/json
 - **Accept**: application/json

<a name="deleteFromMealPlan"></a>
# **deleteFromMealPlan**
> kotlin.Any deleteFromMealPlan(username, id, hash, inlineObject5)

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
val inlineObject5 : InlineObject5 =  // InlineObject5 | 
try {
    val result : kotlin.Any = apiInstance.deleteFromMealPlan(username, id, hash, inlineObject5)
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
 **inlineObject5** | [**InlineObject5**](InlineObject5.md)|  |

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

<a name="deleteFromShoppingList"></a>
# **deleteFromShoppingList**
> kotlin.Any deleteFromShoppingList(username, id, hash, inlineObject10)

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
val inlineObject10 : InlineObject10 =  // InlineObject10 | 
try {
    val result : kotlin.Any = apiInstance.deleteFromShoppingList(username, id, hash, inlineObject10)
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
 **inlineObject10** | [**InlineObject10**](InlineObject10.md)|  |

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

<a name="deleteMealPlanTemplate"></a>
# **deleteMealPlanTemplate**
> kotlin.Any deleteMealPlanTemplate(username, id, hash, inlineObject7)

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
val inlineObject7 : InlineObject7 =  // InlineObject7 | 
try {
    val result : kotlin.Any = apiInstance.deleteMealPlanTemplate(username, id, hash, inlineObject7)
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
 **inlineObject7** | [**InlineObject7**](InlineObject7.md)|  |

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

<a name="generateMealPlan"></a>
# **generateMealPlan**
> InlineResponse20037 generateMealPlan(timeFrame, targetCalories, diet, exclude)

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
    val result : InlineResponse20037 = apiInstance.generateMealPlan(timeFrame, targetCalories, diet, exclude)
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

[**InlineResponse20037**](InlineResponse20037.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="generateShoppingList"></a>
# **generateShoppingList**
> InlineResponse20042 generateShoppingList(username, startMinusDate, endMinusDate, hash, inlineObject8)

Generate Shopping List

Generate the shopping list for a user from the meal planner in a given time frame.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = MealPlanningApi()
val username : kotlin.String = dsky // kotlin.String | The username.
val startMinusDate : kotlin.String = 2020-06-01 // kotlin.String | The start date in the format yyyy-mm-dd.
val endMinusDate : kotlin.String = 2020-06-07 // kotlin.String | The end date in the format yyyy-mm-dd.
val hash : kotlin.String = hash_example // kotlin.String | The private hash for the username.
val inlineObject8 : InlineObject8 =  // InlineObject8 | 
try {
    val result : InlineResponse20042 = apiInstance.generateShoppingList(username, startMinusDate, endMinusDate, hash, inlineObject8)
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
 **startMinusDate** | **kotlin.String**| The start date in the format yyyy-mm-dd. |
 **endMinusDate** | **kotlin.String**| The end date in the format yyyy-mm-dd. |
 **hash** | **kotlin.String**| The private hash for the username. |
 **inlineObject8** | [**InlineObject8**](InlineObject8.md)|  |

### Return type

[**InlineResponse20042**](InlineResponse20042.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

<a name="getMealPlanTemplate"></a>
# **getMealPlanTemplate**
> InlineResponse20041 getMealPlanTemplate(username, id, hash)

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
    val result : InlineResponse20041 = apiInstance.getMealPlanTemplate(username, id, hash)
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

[**InlineResponse20041**](InlineResponse20041.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getMealPlanTemplates"></a>
# **getMealPlanTemplates**
> InlineResponse20039 getMealPlanTemplates(username, hash)

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
    val result : InlineResponse20039 = apiInstance.getMealPlanTemplates(username, hash)
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

[**InlineResponse20039**](InlineResponse20039.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getMealPlanWeek"></a>
# **getMealPlanWeek**
> InlineResponse20038 getMealPlanWeek(username, startMinusDate, hash)

Get Meal Plan Week

Retrieve a meal planned week for the given user. The username must be a spoonacular user and the hash must the the user&#39;s hash that can be found in his/her account.

### Example
```kotlin
// Import classes:
//import spoonacular.infrastructure.*
//import com.spoonacular.client.model.*

val apiInstance = MealPlanningApi()
val username : kotlin.String = dsky // kotlin.String | The username.
val startMinusDate : kotlin.String = 2020-06-01 // kotlin.String | The start date of the meal planned week in the format yyyy-mm-dd.
val hash : kotlin.String = hash_example // kotlin.String | The private hash for the username.
try {
    val result : InlineResponse20038 = apiInstance.getMealPlanWeek(username, startMinusDate, hash)
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
 **startMinusDate** | **kotlin.String**| The start date of the meal planned week in the format yyyy-mm-dd. |
 **hash** | **kotlin.String**| The private hash for the username. |

### Return type

[**InlineResponse20038**](InlineResponse20038.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getShoppingList"></a>
# **getShoppingList**
> InlineResponse20042 getShoppingList(username, hash)

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
    val result : InlineResponse20042 = apiInstance.getShoppingList(username, hash)
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

[**InlineResponse20042**](InlineResponse20042.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

