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
```java
// Import classes:
//import com.spoonacular.client.ApiClient;
//import com.spoonacular.client.ApiException;
//import com.spoonacular.client.Configuration;
//import com.spoonacular.client.auth.*;
//import com.spoonacular.MealPlanningApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: apiKeyScheme
ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
apiKeyScheme.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.setApiKeyPrefix("Token");

MealPlanningApi apiInstance = new MealPlanningApi();
String username = dsky; // String | The username.
String hash = 4b5v4398573406; // String | The private hash for the username.
InlineObject6 inlineObject6 = new InlineObject6(); // InlineObject6 | 
try {
    InlineResponse20040 result = apiInstance.addMealPlanTemplate(username, hash, inlineObject6);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MealPlanningApi#addMealPlanTemplate");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. |
 **hash** | **String**| The private hash for the username. |
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
> Object addToMealPlan(username, hash, inlineObject4)

Add to Meal Plan

Add an item to the user&#39;s meal plan.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiClient;
//import com.spoonacular.client.ApiException;
//import com.spoonacular.client.Configuration;
//import com.spoonacular.client.auth.*;
//import com.spoonacular.MealPlanningApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: apiKeyScheme
ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
apiKeyScheme.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.setApiKeyPrefix("Token");

MealPlanningApi apiInstance = new MealPlanningApi();
String username = dsky; // String | The username.
String hash = "hash_example"; // String | The private hash for the username.
InlineObject4 inlineObject4 = new InlineObject4(); // InlineObject4 | 
try {
    Object result = apiInstance.addToMealPlan(username, hash, inlineObject4);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MealPlanningApi#addToMealPlan");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. |
 **hash** | **String**| The private hash for the username. |
 **inlineObject4** | [**InlineObject4**](InlineObject4.md)|  |

### Return type

**Object**

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
```java
// Import classes:
//import com.spoonacular.client.ApiClient;
//import com.spoonacular.client.ApiException;
//import com.spoonacular.client.Configuration;
//import com.spoonacular.client.auth.*;
//import com.spoonacular.MealPlanningApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: apiKeyScheme
ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
apiKeyScheme.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.setApiKeyPrefix("Token");

MealPlanningApi apiInstance = new MealPlanningApi();
String username = dsky; // String | The username.
String hash = "hash_example"; // String | The private hash for the username.
InlineObject9 inlineObject9 = new InlineObject9(); // InlineObject9 | 
try {
    InlineResponse20042 result = apiInstance.addToShoppingList(username, hash, inlineObject9);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MealPlanningApi#addToShoppingList");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. |
 **hash** | **String**| The private hash for the username. |
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
> Object clearMealPlanDay(username, date, hash, inlineObject3)

Clear Meal Plan Day

Delete all planned items from the user&#39;s meal plan for a specific day.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiClient;
//import com.spoonacular.client.ApiException;
//import com.spoonacular.client.Configuration;
//import com.spoonacular.client.auth.*;
//import com.spoonacular.MealPlanningApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: apiKeyScheme
ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
apiKeyScheme.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.setApiKeyPrefix("Token");

MealPlanningApi apiInstance = new MealPlanningApi();
String username = dsky; // String | The username.
String date = 2020-06-01; // String | The date in the format yyyy-mm-dd.
String hash = "hash_example"; // String | The private hash for the username.
InlineObject3 inlineObject3 = new InlineObject3(); // InlineObject3 | 
try {
    Object result = apiInstance.clearMealPlanDay(username, date, hash, inlineObject3);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MealPlanningApi#clearMealPlanDay");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. |
 **date** | **String**| The date in the format yyyy-mm-dd. |
 **hash** | **String**| The private hash for the username. |
 **inlineObject3** | [**InlineObject3**](InlineObject3.md)|  |

### Return type

**Object**

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
```java
// Import classes:
//import com.spoonacular.client.ApiClient;
//import com.spoonacular.client.ApiException;
//import com.spoonacular.client.Configuration;
//import com.spoonacular.client.auth.*;
//import com.spoonacular.MealPlanningApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: apiKeyScheme
ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
apiKeyScheme.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.setApiKeyPrefix("Token");

MealPlanningApi apiInstance = new MealPlanningApi();
Object body = null; // Object | 
try {
    InlineResponse20043 result = apiInstance.connectUser(body);
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

[**InlineResponse20043**](InlineResponse20043.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: , application/json
 - **Accept**: application/json

<a name="deleteFromMealPlan"></a>
# **deleteFromMealPlan**
> Object deleteFromMealPlan(username, id, hash, inlineObject5)

Delete from Meal Plan

Delete an item from the user&#39;s meal plan.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiClient;
//import com.spoonacular.client.ApiException;
//import com.spoonacular.client.Configuration;
//import com.spoonacular.client.auth.*;
//import com.spoonacular.MealPlanningApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: apiKeyScheme
ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
apiKeyScheme.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.setApiKeyPrefix("Token");

MealPlanningApi apiInstance = new MealPlanningApi();
String username = dsky; // String | The username.
BigDecimal id = 15678; // BigDecimal | The shopping list item id.
String hash = "hash_example"; // String | The private hash for the username.
InlineObject5 inlineObject5 = new InlineObject5(); // InlineObject5 | 
try {
    Object result = apiInstance.deleteFromMealPlan(username, id, hash, inlineObject5);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MealPlanningApi#deleteFromMealPlan");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. |
 **id** | **BigDecimal**| The shopping list item id. |
 **hash** | **String**| The private hash for the username. |
 **inlineObject5** | [**InlineObject5**](InlineObject5.md)|  |

### Return type

**Object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

<a name="deleteFromShoppingList"></a>
# **deleteFromShoppingList**
> Object deleteFromShoppingList(username, id, hash, inlineObject10)

Delete from Shopping List

Delete an item from the current shopping list of the user.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiClient;
//import com.spoonacular.client.ApiException;
//import com.spoonacular.client.Configuration;
//import com.spoonacular.client.auth.*;
//import com.spoonacular.MealPlanningApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: apiKeyScheme
ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
apiKeyScheme.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.setApiKeyPrefix("Token");

MealPlanningApi apiInstance = new MealPlanningApi();
String username = dsky; // String | The username.
Integer id = 1; // Integer | The item's id.
String hash = "hash_example"; // String | The private hash for the username.
InlineObject10 inlineObject10 = new InlineObject10(); // InlineObject10 | 
try {
    Object result = apiInstance.deleteFromShoppingList(username, id, hash, inlineObject10);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MealPlanningApi#deleteFromShoppingList");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. |
 **id** | **Integer**| The item&#39;s id. |
 **hash** | **String**| The private hash for the username. |
 **inlineObject10** | [**InlineObject10**](InlineObject10.md)|  |

### Return type

**Object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

<a name="deleteMealPlanTemplate"></a>
# **deleteMealPlanTemplate**
> Object deleteMealPlanTemplate(username, id, hash, inlineObject7)

Delete Meal Plan Template

Delete a meal plan template for a user.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiClient;
//import com.spoonacular.client.ApiException;
//import com.spoonacular.client.Configuration;
//import com.spoonacular.client.auth.*;
//import com.spoonacular.MealPlanningApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: apiKeyScheme
ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
apiKeyScheme.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.setApiKeyPrefix("Token");

MealPlanningApi apiInstance = new MealPlanningApi();
String username = dsky; // String | The username.
Integer id = 1; // Integer | The item's id.
String hash = 4b5v4398573406; // String | The private hash for the username.
InlineObject7 inlineObject7 = new InlineObject7(); // InlineObject7 | 
try {
    Object result = apiInstance.deleteMealPlanTemplate(username, id, hash, inlineObject7);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MealPlanningApi#deleteMealPlanTemplate");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. |
 **id** | **Integer**| The item&#39;s id. |
 **hash** | **String**| The private hash for the username. |
 **inlineObject7** | [**InlineObject7**](InlineObject7.md)|  |

### Return type

**Object**

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
```java
// Import classes:
//import com.spoonacular.client.ApiClient;
//import com.spoonacular.client.ApiException;
//import com.spoonacular.client.Configuration;
//import com.spoonacular.client.auth.*;
//import com.spoonacular.MealPlanningApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: apiKeyScheme
ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
apiKeyScheme.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.setApiKeyPrefix("Token");

MealPlanningApi apiInstance = new MealPlanningApi();
String timeFrame = day; // String | Either for one \"day\" or an entire \"week\".
BigDecimal targetCalories = 2000; // BigDecimal | What is the caloric target for one day? The meal plan generator will try to get as close as possible to that goal.
String diet = vegetarian; // String | Enter a diet that the meal plan has to adhere to. See a full list of supported diets.
String exclude = shellfish, olives; // String | A comma-separated list of allergens or ingredients that must be excluded.
try {
    InlineResponse20037 result = apiInstance.generateMealPlan(timeFrame, targetCalories, diet, exclude);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MealPlanningApi#generateMealPlan");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timeFrame** | **String**| Either for one \&quot;day\&quot; or an entire \&quot;week\&quot;. | [optional]
 **targetCalories** | **BigDecimal**| What is the caloric target for one day? The meal plan generator will try to get as close as possible to that goal. | [optional]
 **diet** | **String**| Enter a diet that the meal plan has to adhere to. See a full list of supported diets. | [optional]
 **exclude** | **String**| A comma-separated list of allergens or ingredients that must be excluded. | [optional]

### Return type

[**InlineResponse20037**](InlineResponse20037.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="generateShoppingList"></a>
# **generateShoppingList**
> InlineResponse20042 generateShoppingList(username, startDate, endDate, hash, inlineObject8)

Generate Shopping List

Generate the shopping list for a user from the meal planner in a given time frame.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiClient;
//import com.spoonacular.client.ApiException;
//import com.spoonacular.client.Configuration;
//import com.spoonacular.client.auth.*;
//import com.spoonacular.MealPlanningApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: apiKeyScheme
ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
apiKeyScheme.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.setApiKeyPrefix("Token");

MealPlanningApi apiInstance = new MealPlanningApi();
String username = dsky; // String | The username.
String startDate = 2020-06-01; // String | The start date in the format yyyy-mm-dd.
String endDate = 2020-06-07; // String | The end date in the format yyyy-mm-dd.
String hash = "hash_example"; // String | The private hash for the username.
InlineObject8 inlineObject8 = new InlineObject8(); // InlineObject8 | 
try {
    InlineResponse20042 result = apiInstance.generateShoppingList(username, startDate, endDate, hash, inlineObject8);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MealPlanningApi#generateShoppingList");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. |
 **startDate** | **String**| The start date in the format yyyy-mm-dd. |
 **endDate** | **String**| The end date in the format yyyy-mm-dd. |
 **hash** | **String**| The private hash for the username. |
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
```java
// Import classes:
//import com.spoonacular.client.ApiClient;
//import com.spoonacular.client.ApiException;
//import com.spoonacular.client.Configuration;
//import com.spoonacular.client.auth.*;
//import com.spoonacular.MealPlanningApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: apiKeyScheme
ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
apiKeyScheme.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.setApiKeyPrefix("Token");

MealPlanningApi apiInstance = new MealPlanningApi();
String username = dsky; // String | The username.
Integer id = 1; // Integer | The item's id.
String hash = "hash_example"; // String | The private hash for the username.
try {
    InlineResponse20041 result = apiInstance.getMealPlanTemplate(username, id, hash);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MealPlanningApi#getMealPlanTemplate");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. |
 **id** | **Integer**| The item&#39;s id. |
 **hash** | **String**| The private hash for the username. |

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
```java
// Import classes:
//import com.spoonacular.client.ApiClient;
//import com.spoonacular.client.ApiException;
//import com.spoonacular.client.Configuration;
//import com.spoonacular.client.auth.*;
//import com.spoonacular.MealPlanningApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: apiKeyScheme
ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
apiKeyScheme.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.setApiKeyPrefix("Token");

MealPlanningApi apiInstance = new MealPlanningApi();
String username = dsky; // String | The username.
String hash = "hash_example"; // String | The private hash for the username.
try {
    InlineResponse20039 result = apiInstance.getMealPlanTemplates(username, hash);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MealPlanningApi#getMealPlanTemplates");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. |
 **hash** | **String**| The private hash for the username. |

### Return type

[**InlineResponse20039**](InlineResponse20039.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getMealPlanWeek"></a>
# **getMealPlanWeek**
> InlineResponse20038 getMealPlanWeek(username, startDate, hash)

Get Meal Plan Week

Retrieve a meal planned week for the given user. The username must be a spoonacular user and the hash must the the user&#39;s hash that can be found in his/her account.

### Example
```java
// Import classes:
//import com.spoonacular.client.ApiClient;
//import com.spoonacular.client.ApiException;
//import com.spoonacular.client.Configuration;
//import com.spoonacular.client.auth.*;
//import com.spoonacular.MealPlanningApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: apiKeyScheme
ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
apiKeyScheme.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.setApiKeyPrefix("Token");

MealPlanningApi apiInstance = new MealPlanningApi();
String username = dsky; // String | The username.
String startDate = 2020-06-01; // String | The start date of the meal planned week in the format yyyy-mm-dd.
String hash = "hash_example"; // String | The private hash for the username.
try {
    InlineResponse20038 result = apiInstance.getMealPlanWeek(username, startDate, hash);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MealPlanningApi#getMealPlanWeek");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. |
 **startDate** | **String**| The start date of the meal planned week in the format yyyy-mm-dd. |
 **hash** | **String**| The private hash for the username. |

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
```java
// Import classes:
//import com.spoonacular.client.ApiClient;
//import com.spoonacular.client.ApiException;
//import com.spoonacular.client.Configuration;
//import com.spoonacular.client.auth.*;
//import com.spoonacular.MealPlanningApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: apiKeyScheme
ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
apiKeyScheme.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.setApiKeyPrefix("Token");

MealPlanningApi apiInstance = new MealPlanningApi();
String username = dsky; // String | The username.
String hash = "hash_example"; // String | The private hash for the username.
try {
    InlineResponse20042 result = apiInstance.getShoppingList(username, hash);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MealPlanningApi#getShoppingList");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. |
 **hash** | **String**| The private hash for the username. |

### Return type

[**InlineResponse20042**](InlineResponse20042.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

