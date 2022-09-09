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



## addMealPlanTemplate

> AddMealPlanTemplate200Response addMealPlanTemplate(username, hash, addToMealPlanRequest)

Add Meal Plan Template

Add a meal plan template for a user.

### Example

```java
// Import classes:
//import com.spoonacular.MealPlanningApi;

MealPlanningApi apiInstance = new MealPlanningApi();
String username = dsky; // String | The username.
String hash = 4b5v4398573406; // String | The private hash for the username.
AddToMealPlanRequest addToMealPlanRequest = new AddToMealPlanRequest(); // AddToMealPlanRequest | 
try {
    AddMealPlanTemplate200Response result = apiInstance.addMealPlanTemplate(username, hash, addToMealPlanRequest);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MealPlanningApi#addMealPlanTemplate");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | [default to null]
 **hash** | **String**| The private hash for the username. | [default to null]
 **addToMealPlanRequest** | [**AddToMealPlanRequest**](AddToMealPlanRequest.md)|  |

### Return type

[**AddMealPlanTemplate200Response**](AddMealPlanTemplate200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: 
- **Accept**: application/json


## addToMealPlan

> Object addToMealPlan(username, hash, addToMealPlanRequest)

Add to Meal Plan

Add an item to the user&#39;s meal plan.

### Example

```java
// Import classes:
//import com.spoonacular.MealPlanningApi;

MealPlanningApi apiInstance = new MealPlanningApi();
String username = dsky; // String | The username.
String hash = null; // String | The private hash for the username.
AddToMealPlanRequest addToMealPlanRequest = new AddToMealPlanRequest(); // AddToMealPlanRequest | 
try {
    Object result = apiInstance.addToMealPlan(username, hash, addToMealPlanRequest);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MealPlanningApi#addToMealPlan");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | [default to null]
 **hash** | **String**| The private hash for the username. | [default to null]
 **addToMealPlanRequest** | [**AddToMealPlanRequest**](AddToMealPlanRequest.md)|  |

### Return type

**Object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: , application/json
- **Accept**: application/json


## addToShoppingList

> GenerateShoppingList200Response addToShoppingList(username, hash, addToMealPlanRequest)

Add to Shopping List

Add an item to the current shopping list of a user.

### Example

```java
// Import classes:
//import com.spoonacular.MealPlanningApi;

MealPlanningApi apiInstance = new MealPlanningApi();
String username = dsky; // String | The username.
String hash = null; // String | The private hash for the username.
AddToMealPlanRequest addToMealPlanRequest = new AddToMealPlanRequest(); // AddToMealPlanRequest | 
try {
    GenerateShoppingList200Response result = apiInstance.addToShoppingList(username, hash, addToMealPlanRequest);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MealPlanningApi#addToShoppingList");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | [default to null]
 **hash** | **String**| The private hash for the username. | [default to null]
 **addToMealPlanRequest** | [**AddToMealPlanRequest**](AddToMealPlanRequest.md)|  |

### Return type

[**GenerateShoppingList200Response**](GenerateShoppingList200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: , application/json
- **Accept**: application/json


## clearMealPlanDay

> Object clearMealPlanDay(username, date, hash, clearMealPlanDayRequest)

Clear Meal Plan Day

Delete all planned items from the user&#39;s meal plan for a specific day.

### Example

```java
// Import classes:
//import com.spoonacular.MealPlanningApi;

MealPlanningApi apiInstance = new MealPlanningApi();
String username = dsky; // String | The username.
String date = 2020-06-01; // String | The date in the format yyyy-mm-dd.
String hash = null; // String | The private hash for the username.
ClearMealPlanDayRequest clearMealPlanDayRequest = new ClearMealPlanDayRequest(); // ClearMealPlanDayRequest | 
try {
    Object result = apiInstance.clearMealPlanDay(username, date, hash, clearMealPlanDayRequest);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MealPlanningApi#clearMealPlanDay");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | [default to null]
 **date** | **String**| The date in the format yyyy-mm-dd. | [default to null]
 **hash** | **String**| The private hash for the username. | [default to null]
 **clearMealPlanDayRequest** | [**ClearMealPlanDayRequest**](ClearMealPlanDayRequest.md)|  |

### Return type

**Object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: 
- **Accept**: application/json


## connectUser

> ConnectUser200Response connectUser(body)

Connect User

In order to call user-specific endpoints, you need to connect your app&#39;s users to spoonacular users.

### Example

```java
// Import classes:
//import com.spoonacular.MealPlanningApi;

MealPlanningApi apiInstance = new MealPlanningApi();
Object body = null; // Object | 
try {
    ConnectUser200Response result = apiInstance.connectUser(body);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MealPlanningApi#connectUser");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **Object**|  |

### Return type

[**ConnectUser200Response**](ConnectUser200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: , application/json
- **Accept**: application/json


## deleteFromMealPlan

> Object deleteFromMealPlan(username, id, hash, deleteFromMealPlanRequest)

Delete from Meal Plan

Delete an item from the user&#39;s meal plan.

### Example

```java
// Import classes:
//import com.spoonacular.MealPlanningApi;

MealPlanningApi apiInstance = new MealPlanningApi();
String username = dsky; // String | The username.
BigDecimal id = 15678; // BigDecimal | The shopping list item id.
String hash = null; // String | The private hash for the username.
DeleteFromMealPlanRequest deleteFromMealPlanRequest = new DeleteFromMealPlanRequest(); // DeleteFromMealPlanRequest | 
try {
    Object result = apiInstance.deleteFromMealPlan(username, id, hash, deleteFromMealPlanRequest);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MealPlanningApi#deleteFromMealPlan");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | [default to null]
 **id** | **BigDecimal**| The shopping list item id. | [default to null]
 **hash** | **String**| The private hash for the username. | [default to null]
 **deleteFromMealPlanRequest** | [**DeleteFromMealPlanRequest**](DeleteFromMealPlanRequest.md)|  |

### Return type

**Object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: 
- **Accept**: application/json


## deleteFromShoppingList

> Object deleteFromShoppingList(username, id, hash, deleteFromMealPlanRequest)

Delete from Shopping List

Delete an item from the current shopping list of the user.

### Example

```java
// Import classes:
//import com.spoonacular.MealPlanningApi;

MealPlanningApi apiInstance = new MealPlanningApi();
String username = dsky; // String | The username.
Integer id = 1; // Integer | The item's id.
String hash = null; // String | The private hash for the username.
DeleteFromMealPlanRequest deleteFromMealPlanRequest = new DeleteFromMealPlanRequest(); // DeleteFromMealPlanRequest | 
try {
    Object result = apiInstance.deleteFromShoppingList(username, id, hash, deleteFromMealPlanRequest);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MealPlanningApi#deleteFromShoppingList");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | [default to null]
 **id** | **Integer**| The item&#39;s id. | [default to null]
 **hash** | **String**| The private hash for the username. | [default to null]
 **deleteFromMealPlanRequest** | [**DeleteFromMealPlanRequest**](DeleteFromMealPlanRequest.md)|  |

### Return type

**Object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: 
- **Accept**: application/json


## deleteMealPlanTemplate

> Object deleteMealPlanTemplate(username, id, hash, deleteFromMealPlanRequest)

Delete Meal Plan Template

Delete a meal plan template for a user.

### Example

```java
// Import classes:
//import com.spoonacular.MealPlanningApi;

MealPlanningApi apiInstance = new MealPlanningApi();
String username = dsky; // String | The username.
Integer id = 1; // Integer | The item's id.
String hash = 4b5v4398573406; // String | The private hash for the username.
DeleteFromMealPlanRequest deleteFromMealPlanRequest = new DeleteFromMealPlanRequest(); // DeleteFromMealPlanRequest | 
try {
    Object result = apiInstance.deleteMealPlanTemplate(username, id, hash, deleteFromMealPlanRequest);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MealPlanningApi#deleteMealPlanTemplate");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | [default to null]
 **id** | **Integer**| The item&#39;s id. | [default to null]
 **hash** | **String**| The private hash for the username. | [default to null]
 **deleteFromMealPlanRequest** | [**DeleteFromMealPlanRequest**](DeleteFromMealPlanRequest.md)|  |

### Return type

**Object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: 
- **Accept**: application/json


## generateMealPlan

> GenerateMealPlan200Response generateMealPlan(timeFrame, targetCalories, diet, exclude)

Generate Meal Plan

Generate a meal plan with three meals per day (breakfast, lunch, and dinner).

### Example

```java
// Import classes:
//import com.spoonacular.MealPlanningApi;

MealPlanningApi apiInstance = new MealPlanningApi();
String timeFrame = day; // String | Either for one \"day\" or an entire \"week\".
BigDecimal targetCalories = 2000; // BigDecimal | What is the caloric target for one day? The meal plan generator will try to get as close as possible to that goal.
String diet = vegetarian; // String | Enter a diet that the meal plan has to adhere to. See a full list of supported diets.
String exclude = shellfish, olives; // String | A comma-separated list of allergens or ingredients that must be excluded.
try {
    GenerateMealPlan200Response result = apiInstance.generateMealPlan(timeFrame, targetCalories, diet, exclude);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MealPlanningApi#generateMealPlan");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timeFrame** | **String**| Either for one \&quot;day\&quot; or an entire \&quot;week\&quot;. | [optional] [default to null]
 **targetCalories** | **BigDecimal**| What is the caloric target for one day? The meal plan generator will try to get as close as possible to that goal. | [optional] [default to null]
 **diet** | **String**| Enter a diet that the meal plan has to adhere to. See a full list of supported diets. | [optional] [default to null]
 **exclude** | **String**| A comma-separated list of allergens or ingredients that must be excluded. | [optional] [default to null]

### Return type

[**GenerateMealPlan200Response**](GenerateMealPlan200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## generateShoppingList

> GenerateShoppingList200Response generateShoppingList(username, startDate, endDate, hash, generateShoppingListRequest)

Generate Shopping List

Generate the shopping list for a user from the meal planner in a given time frame.

### Example

```java
// Import classes:
//import com.spoonacular.MealPlanningApi;

MealPlanningApi apiInstance = new MealPlanningApi();
String username = dsky; // String | The username.
String startDate = 2020-06-01; // String | The start date in the format yyyy-mm-dd.
String endDate = 2020-06-07; // String | The end date in the format yyyy-mm-dd.
String hash = null; // String | The private hash for the username.
GenerateShoppingListRequest generateShoppingListRequest = new GenerateShoppingListRequest(); // GenerateShoppingListRequest | 
try {
    GenerateShoppingList200Response result = apiInstance.generateShoppingList(username, startDate, endDate, hash, generateShoppingListRequest);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MealPlanningApi#generateShoppingList");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | [default to null]
 **startDate** | **String**| The start date in the format yyyy-mm-dd. | [default to null]
 **endDate** | **String**| The end date in the format yyyy-mm-dd. | [default to null]
 **hash** | **String**| The private hash for the username. | [default to null]
 **generateShoppingListRequest** | [**GenerateShoppingListRequest**](GenerateShoppingListRequest.md)|  |

### Return type

[**GenerateShoppingList200Response**](GenerateShoppingList200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: 
- **Accept**: application/json


## getMealPlanTemplate

> GetMealPlanTemplate200Response getMealPlanTemplate(username, id, hash)

Get Meal Plan Template

Get information about a meal plan template.

### Example

```java
// Import classes:
//import com.spoonacular.MealPlanningApi;

MealPlanningApi apiInstance = new MealPlanningApi();
String username = dsky; // String | The username.
Integer id = 1; // Integer | The item's id.
String hash = null; // String | The private hash for the username.
try {
    GetMealPlanTemplate200Response result = apiInstance.getMealPlanTemplate(username, id, hash);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MealPlanningApi#getMealPlanTemplate");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | [default to null]
 **id** | **Integer**| The item&#39;s id. | [default to null]
 **hash** | **String**| The private hash for the username. | [default to null]

### Return type

[**GetMealPlanTemplate200Response**](GetMealPlanTemplate200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getMealPlanTemplates

> GetMealPlanTemplates200Response getMealPlanTemplates(username, hash)

Get Meal Plan Templates

Get meal plan templates from user or public ones.

### Example

```java
// Import classes:
//import com.spoonacular.MealPlanningApi;

MealPlanningApi apiInstance = new MealPlanningApi();
String username = dsky; // String | The username.
String hash = null; // String | The private hash for the username.
try {
    GetMealPlanTemplates200Response result = apiInstance.getMealPlanTemplates(username, hash);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MealPlanningApi#getMealPlanTemplates");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | [default to null]
 **hash** | **String**| The private hash for the username. | [default to null]

### Return type

[**GetMealPlanTemplates200Response**](GetMealPlanTemplates200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getMealPlanWeek

> GetMealPlanWeek200Response getMealPlanWeek(username, startDate, hash)

Get Meal Plan Week

Retrieve a meal planned week for the given user. The username must be a spoonacular user and the hash must the the user&#39;s hash that can be found in his/her account.

### Example

```java
// Import classes:
//import com.spoonacular.MealPlanningApi;

MealPlanningApi apiInstance = new MealPlanningApi();
String username = dsky; // String | The username.
String startDate = 2020-06-01; // String | The start date of the meal planned week in the format yyyy-mm-dd.
String hash = null; // String | The private hash for the username.
try {
    GetMealPlanWeek200Response result = apiInstance.getMealPlanWeek(username, startDate, hash);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MealPlanningApi#getMealPlanWeek");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | [default to null]
 **startDate** | **String**| The start date of the meal planned week in the format yyyy-mm-dd. | [default to null]
 **hash** | **String**| The private hash for the username. | [default to null]

### Return type

[**GetMealPlanWeek200Response**](GetMealPlanWeek200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getShoppingList

> GetShoppingList200Response getShoppingList(username, hash)

Get Shopping List

Get the current shopping list for the given user.

### Example

```java
// Import classes:
//import com.spoonacular.MealPlanningApi;

MealPlanningApi apiInstance = new MealPlanningApi();
String username = dsky; // String | The username.
String hash = null; // String | The private hash for the username.
try {
    GetShoppingList200Response result = apiInstance.getShoppingList(username, hash);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MealPlanningApi#getShoppingList");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | [default to null]
 **hash** | **String**| The private hash for the username. | [default to null]

### Return type

[**GetShoppingList200Response**](GetShoppingList200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

