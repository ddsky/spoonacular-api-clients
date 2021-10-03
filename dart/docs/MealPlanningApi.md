# openapi.api.MealPlanningApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

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


# **addMealPlanTemplate**
> InlineResponse20040 addMealPlanTemplate(username, hash, inlineObject6)

Add Meal Plan Template

Add a meal plan template for a user.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new MealPlanningApi();
var username = dsky; // String | The username.
var hash = 4b5v4398573406; // String | The private hash for the username.
var inlineObject6 = new InlineObject6(); // InlineObject6 | 

try { 
    var result = api_instance.addMealPlanTemplate(username, hash, inlineObject6);
    print(result);
} catch (e) {
    print("Exception when calling MealPlanningApi->addMealPlanTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | [default to null]
 **hash** | **String**| The private hash for the username. | [default to null]
 **inlineObject6** | [**InlineObject6**](InlineObject6.md)|  | 

### Return type

[**InlineResponse20040**](InlineResponse20040.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addToMealPlan**
> Object addToMealPlan(username, hash, inlineObject4)

Add to Meal Plan

Add an item to the user's meal plan.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new MealPlanningApi();
var username = dsky; // String | The username.
var hash = hash_example; // String | The private hash for the username.
var inlineObject4 = new InlineObject4(); // InlineObject4 | 

try { 
    var result = api_instance.addToMealPlan(username, hash, inlineObject4);
    print(result);
} catch (e) {
    print("Exception when calling MealPlanningApi->addToMealPlan: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | [default to null]
 **hash** | **String**| The private hash for the username. | [default to null]
 **inlineObject4** | [**InlineObject4**](InlineObject4.md)|  | 

### Return type

[**Object**](Object.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: , application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addToShoppingList**
> InlineResponse20042 addToShoppingList(username, hash, inlineObject9)

Add to Shopping List

Add an item to the current shopping list of a user.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new MealPlanningApi();
var username = dsky; // String | The username.
var hash = hash_example; // String | The private hash for the username.
var inlineObject9 = new InlineObject9(); // InlineObject9 | 

try { 
    var result = api_instance.addToShoppingList(username, hash, inlineObject9);
    print(result);
} catch (e) {
    print("Exception when calling MealPlanningApi->addToShoppingList: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | [default to null]
 **hash** | **String**| The private hash for the username. | [default to null]
 **inlineObject9** | [**InlineObject9**](InlineObject9.md)|  | 

### Return type

[**InlineResponse20042**](InlineResponse20042.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: , application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **clearMealPlanDay**
> Object clearMealPlanDay(username, date, hash, inlineObject3)

Clear Meal Plan Day

Delete all planned items from the user's meal plan for a specific day.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new MealPlanningApi();
var username = dsky; // String | The username.
var date = 2020-06-01; // String | The date in the format yyyy-mm-dd.
var hash = hash_example; // String | The private hash for the username.
var inlineObject3 = new InlineObject3(); // InlineObject3 | 

try { 
    var result = api_instance.clearMealPlanDay(username, date, hash, inlineObject3);
    print(result);
} catch (e) {
    print("Exception when calling MealPlanningApi->clearMealPlanDay: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | [default to null]
 **date** | **String**| The date in the format yyyy-mm-dd. | [default to null]
 **hash** | **String**| The private hash for the username. | [default to null]
 **inlineObject3** | [**InlineObject3**](InlineObject3.md)|  | 

### Return type

[**Object**](Object.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **connectUser**
> InlineResponse20043 connectUser(body)

Connect User

In order to call user-specific endpoints, you need to connect your app's users to spoonacular users.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new MealPlanningApi();
var body = new Object(); // Object | 

try { 
    var result = api_instance.connectUser(body);
    print(result);
} catch (e) {
    print("Exception when calling MealPlanningApi->connectUser: $e\n");
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteFromMealPlan**
> Object deleteFromMealPlan(username, id, hash, inlineObject5)

Delete from Meal Plan

Delete an item from the user's meal plan.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new MealPlanningApi();
var username = dsky; // String | The username.
var id = 15678; // num | The shopping list item id.
var hash = hash_example; // String | The private hash for the username.
var inlineObject5 = new InlineObject5(); // InlineObject5 | 

try { 
    var result = api_instance.deleteFromMealPlan(username, id, hash, inlineObject5);
    print(result);
} catch (e) {
    print("Exception when calling MealPlanningApi->deleteFromMealPlan: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | [default to null]
 **id** | **num**| The shopping list item id. | [default to null]
 **hash** | **String**| The private hash for the username. | [default to null]
 **inlineObject5** | [**InlineObject5**](InlineObject5.md)|  | 

### Return type

[**Object**](Object.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteFromShoppingList**
> Object deleteFromShoppingList(username, id, hash, inlineObject10)

Delete from Shopping List

Delete an item from the current shopping list of the user.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new MealPlanningApi();
var username = dsky; // String | The username.
var id = 1; // int | The item's id.
var hash = hash_example; // String | The private hash for the username.
var inlineObject10 = new InlineObject10(); // InlineObject10 | 

try { 
    var result = api_instance.deleteFromShoppingList(username, id, hash, inlineObject10);
    print(result);
} catch (e) {
    print("Exception when calling MealPlanningApi->deleteFromShoppingList: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | [default to null]
 **id** | **int**| The item&#39;s id. | [default to null]
 **hash** | **String**| The private hash for the username. | [default to null]
 **inlineObject10** | [**InlineObject10**](InlineObject10.md)|  | 

### Return type

[**Object**](Object.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteMealPlanTemplate**
> Object deleteMealPlanTemplate(username, id, hash, inlineObject7)

Delete Meal Plan Template

Delete a meal plan template for a user.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new MealPlanningApi();
var username = dsky; // String | The username.
var id = 1; // int | The item's id.
var hash = 4b5v4398573406; // String | The private hash for the username.
var inlineObject7 = new InlineObject7(); // InlineObject7 | 

try { 
    var result = api_instance.deleteMealPlanTemplate(username, id, hash, inlineObject7);
    print(result);
} catch (e) {
    print("Exception when calling MealPlanningApi->deleteMealPlanTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | [default to null]
 **id** | **int**| The item&#39;s id. | [default to null]
 **hash** | **String**| The private hash for the username. | [default to null]
 **inlineObject7** | [**InlineObject7**](InlineObject7.md)|  | 

### Return type

[**Object**](Object.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generateMealPlan**
> InlineResponse20037 generateMealPlan(timeFrame, targetCalories, diet, exclude)

Generate Meal Plan

Generate a meal plan with three meals per day (breakfast, lunch, and dinner).

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new MealPlanningApi();
var timeFrame = day; // String | Either for one \"day\" or an entire \"week\".
var targetCalories = 2000; // num | What is the caloric target for one day? The meal plan generator will try to get as close as possible to that goal.
var diet = vegetarian; // String | Enter a diet that the meal plan has to adhere to. See a full list of supported diets.
var exclude = shellfish, olives; // String | A comma-separated list of allergens or ingredients that must be excluded.

try { 
    var result = api_instance.generateMealPlan(timeFrame, targetCalories, diet, exclude);
    print(result);
} catch (e) {
    print("Exception when calling MealPlanningApi->generateMealPlan: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timeFrame** | **String**| Either for one \&quot;day\&quot; or an entire \&quot;week\&quot;. | [optional] [default to null]
 **targetCalories** | **num**| What is the caloric target for one day? The meal plan generator will try to get as close as possible to that goal. | [optional] [default to null]
 **diet** | **String**| Enter a diet that the meal plan has to adhere to. See a full list of supported diets. | [optional] [default to null]
 **exclude** | **String**| A comma-separated list of allergens or ingredients that must be excluded. | [optional] [default to null]

### Return type

[**InlineResponse20037**](InlineResponse20037.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generateShoppingList**
> InlineResponse20042 generateShoppingList(username, startDate, endDate, hash, inlineObject8)

Generate Shopping List

Generate the shopping list for a user from the meal planner in a given time frame.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new MealPlanningApi();
var username = dsky; // String | The username.
var startDate = 2020-06-01; // String | The start date in the format yyyy-mm-dd.
var endDate = 2020-06-07; // String | The end date in the format yyyy-mm-dd.
var hash = hash_example; // String | The private hash for the username.
var inlineObject8 = new InlineObject8(); // InlineObject8 | 

try { 
    var result = api_instance.generateShoppingList(username, startDate, endDate, hash, inlineObject8);
    print(result);
} catch (e) {
    print("Exception when calling MealPlanningApi->generateShoppingList: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | [default to null]
 **startDate** | **String**| The start date in the format yyyy-mm-dd. | [default to null]
 **endDate** | **String**| The end date in the format yyyy-mm-dd. | [default to null]
 **hash** | **String**| The private hash for the username. | [default to null]
 **inlineObject8** | [**InlineObject8**](InlineObject8.md)|  | 

### Return type

[**InlineResponse20042**](InlineResponse20042.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMealPlanTemplate**
> InlineResponse20041 getMealPlanTemplate(username, id, hash)

Get Meal Plan Template

Get information about a meal plan template.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new MealPlanningApi();
var username = dsky; // String | The username.
var id = 1; // int | The item's id.
var hash = hash_example; // String | The private hash for the username.

try { 
    var result = api_instance.getMealPlanTemplate(username, id, hash);
    print(result);
} catch (e) {
    print("Exception when calling MealPlanningApi->getMealPlanTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | [default to null]
 **id** | **int**| The item&#39;s id. | [default to null]
 **hash** | **String**| The private hash for the username. | [default to null]

### Return type

[**InlineResponse20041**](InlineResponse20041.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMealPlanTemplates**
> InlineResponse20039 getMealPlanTemplates(username, hash)

Get Meal Plan Templates

Get meal plan templates from user or public ones.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new MealPlanningApi();
var username = dsky; // String | The username.
var hash = hash_example; // String | The private hash for the username.

try { 
    var result = api_instance.getMealPlanTemplates(username, hash);
    print(result);
} catch (e) {
    print("Exception when calling MealPlanningApi->getMealPlanTemplates: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | [default to null]
 **hash** | **String**| The private hash for the username. | [default to null]

### Return type

[**InlineResponse20039**](InlineResponse20039.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMealPlanWeek**
> InlineResponse20038 getMealPlanWeek(username, startDate, hash)

Get Meal Plan Week

Retrieve a meal planned week for the given user. The username must be a spoonacular user and the hash must the the user's hash that can be found in his/her account.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new MealPlanningApi();
var username = dsky; // String | The username.
var startDate = 2020-06-01; // String | The start date of the meal planned week in the format yyyy-mm-dd.
var hash = hash_example; // String | The private hash for the username.

try { 
    var result = api_instance.getMealPlanWeek(username, startDate, hash);
    print(result);
} catch (e) {
    print("Exception when calling MealPlanningApi->getMealPlanWeek: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | [default to null]
 **startDate** | **String**| The start date of the meal planned week in the format yyyy-mm-dd. | [default to null]
 **hash** | **String**| The private hash for the username. | [default to null]

### Return type

[**InlineResponse20038**](InlineResponse20038.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getShoppingList**
> InlineResponse20042 getShoppingList(username, hash)

Get Shopping List

Get the current shopping list for the given user.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new MealPlanningApi();
var username = dsky; // String | The username.
var hash = hash_example; // String | The private hash for the username.

try { 
    var result = api_instance.getShoppingList(username, hash);
    print(result);
} catch (e) {
    print("Exception when calling MealPlanningApi->getShoppingList: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | [default to null]
 **hash** | **String**| The private hash for the username. | [default to null]

### Return type

[**InlineResponse20042**](InlineResponse20042.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

