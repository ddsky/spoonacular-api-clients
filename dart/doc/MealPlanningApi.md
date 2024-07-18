# openapi.api.MealPlanningApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addMealPlanTemplate**](MealPlanningApi.md#addmealplantemplate) | **POST** /mealplanner/{username}/templates | Add Meal Plan Template
[**addToMealPlan**](MealPlanningApi.md#addtomealplan) | **POST** /mealplanner/{username}/items | Add to Meal Plan
[**addToShoppingList**](MealPlanningApi.md#addtoshoppinglist) | **POST** /mealplanner/{username}/shopping-list/items | Add to Shopping List
[**clearMealPlanDay**](MealPlanningApi.md#clearmealplanday) | **DELETE** /mealplanner/{username}/day/{date} | Clear Meal Plan Day
[**connectUser**](MealPlanningApi.md#connectuser) | **POST** /users/connect | Connect User
[**deleteFromMealPlan**](MealPlanningApi.md#deletefrommealplan) | **DELETE** /mealplanner/{username}/items/{id} | Delete from Meal Plan
[**deleteFromShoppingList**](MealPlanningApi.md#deletefromshoppinglist) | **DELETE** /mealplanner/{username}/shopping-list/items/{id} | Delete from Shopping List
[**deleteMealPlanTemplate**](MealPlanningApi.md#deletemealplantemplate) | **DELETE** /mealplanner/{username}/templates/{id} | Delete Meal Plan Template
[**generateMealPlan**](MealPlanningApi.md#generatemealplan) | **GET** /mealplanner/generate | Generate Meal Plan
[**generateShoppingList**](MealPlanningApi.md#generateshoppinglist) | **POST** /mealplanner/{username}/shopping-list/{start_date}/{end_date} | Generate Shopping List
[**getMealPlanTemplate**](MealPlanningApi.md#getmealplantemplate) | **GET** /mealplanner/{username}/templates/{id} | Get Meal Plan Template
[**getMealPlanTemplates**](MealPlanningApi.md#getmealplantemplates) | **GET** /mealplanner/{username}/templates | Get Meal Plan Templates
[**getMealPlanWeek**](MealPlanningApi.md#getmealplanweek) | **GET** /mealplanner/{username}/week/{start_date} | Get Meal Plan Week
[**getShoppingList**](MealPlanningApi.md#getshoppinglist) | **GET** /mealplanner/{username}/shopping-list | Get Shopping List


# **addMealPlanTemplate**
> AddMealPlanTemplate200Response addMealPlanTemplate(username, hash)

Add Meal Plan Template

Add a meal plan template for a user.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = MealPlanningApi();
final username = dsky; // String | The username.
final hash = 4b5v4398573406; // String | The private hash for the username.

try {
    final result = api_instance.addMealPlanTemplate(username, hash);
    print(result);
} catch (e) {
    print('Exception when calling MealPlanningApi->addMealPlanTemplate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | 
 **hash** | **String**| The private hash for the username. | 

### Return type

[**AddMealPlanTemplate200Response**](AddMealPlanTemplate200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addToMealPlan**
> Object addToMealPlan(username, hash, addToMealPlanRequest)

Add to Meal Plan

Add an item to the user's meal plan.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = MealPlanningApi();
final username = dsky; // String | The username.
final hash = hash_example; // String | The private hash for the username.
final addToMealPlanRequest = AddToMealPlanRequest(); // AddToMealPlanRequest | 

try {
    final result = api_instance.addToMealPlan(username, hash, addToMealPlanRequest);
    print(result);
} catch (e) {
    print('Exception when calling MealPlanningApi->addToMealPlan: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | 
 **hash** | **String**| The private hash for the username. | 
 **addToMealPlanRequest** | [**AddToMealPlanRequest**](AddToMealPlanRequest.md)|  | 

### Return type

[**Object**](Object.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addToShoppingList**
> GetShoppingList200Response addToShoppingList(username, hash, addToShoppingListRequest)

Add to Shopping List

Add an item to the current shopping list of a user.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = MealPlanningApi();
final username = dsky; // String | The username.
final hash = hash_example; // String | The private hash for the username.
final addToShoppingListRequest = AddToShoppingListRequest(); // AddToShoppingListRequest | 

try {
    final result = api_instance.addToShoppingList(username, hash, addToShoppingListRequest);
    print(result);
} catch (e) {
    print('Exception when calling MealPlanningApi->addToShoppingList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | 
 **hash** | **String**| The private hash for the username. | 
 **addToShoppingListRequest** | [**AddToShoppingListRequest**](AddToShoppingListRequest.md)|  | 

### Return type

[**GetShoppingList200Response**](GetShoppingList200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **clearMealPlanDay**
> Object clearMealPlanDay(username, date, hash)

Clear Meal Plan Day

Delete all planned items from the user's meal plan for a specific day.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = MealPlanningApi();
final username = dsky; // String | The username.
final date = 2020-06-01; // String | The date in the format yyyy-mm-dd.
final hash = hash_example; // String | The private hash for the username.

try {
    final result = api_instance.clearMealPlanDay(username, date, hash);
    print(result);
} catch (e) {
    print('Exception when calling MealPlanningApi->clearMealPlanDay: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | 
 **date** | **String**| The date in the format yyyy-mm-dd. | 
 **hash** | **String**| The private hash for the username. | 

### Return type

[**Object**](Object.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **connectUser**
> ConnectUser200Response connectUser(connectUserRequest)

Connect User

In order to call user-specific endpoints, you need to connect your app's users to spoonacular users.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = MealPlanningApi();
final connectUserRequest = ConnectUserRequest(); // ConnectUserRequest | 

try {
    final result = api_instance.connectUser(connectUserRequest);
    print(result);
} catch (e) {
    print('Exception when calling MealPlanningApi->connectUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connectUserRequest** | [**ConnectUserRequest**](ConnectUserRequest.md)|  | 

### Return type

[**ConnectUser200Response**](ConnectUser200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteFromMealPlan**
> Object deleteFromMealPlan(username, id, hash)

Delete from Meal Plan

Delete an item from the user's meal plan.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = MealPlanningApi();
final username = dsky; // String | The username.
final id = 15678; // int | The shopping list item id.
final hash = hash_example; // String | The private hash for the username.

try {
    final result = api_instance.deleteFromMealPlan(username, id, hash);
    print(result);
} catch (e) {
    print('Exception when calling MealPlanningApi->deleteFromMealPlan: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | 
 **id** | **int**| The shopping list item id. | 
 **hash** | **String**| The private hash for the username. | 

### Return type

[**Object**](Object.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteFromShoppingList**
> Object deleteFromShoppingList(username, id, hash)

Delete from Shopping List

Delete an item from the current shopping list of the user.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = MealPlanningApi();
final username = dsky; // String | The username.
final id = 15678; // int | The shopping list item id.
final hash = hash_example; // String | The private hash for the username.

try {
    final result = api_instance.deleteFromShoppingList(username, id, hash);
    print(result);
} catch (e) {
    print('Exception when calling MealPlanningApi->deleteFromShoppingList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | 
 **id** | **int**| The shopping list item id. | 
 **hash** | **String**| The private hash for the username. | 

### Return type

[**Object**](Object.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteMealPlanTemplate**
> Object deleteMealPlanTemplate(username, id, hash)

Delete Meal Plan Template

Delete a meal plan template for a user.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = MealPlanningApi();
final username = dsky; // String | The username.
final id = 15678; // int | The shopping list item id.
final hash = 4b5v4398573406; // String | The private hash for the username.

try {
    final result = api_instance.deleteMealPlanTemplate(username, id, hash);
    print(result);
} catch (e) {
    print('Exception when calling MealPlanningApi->deleteMealPlanTemplate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | 
 **id** | **int**| The shopping list item id. | 
 **hash** | **String**| The private hash for the username. | 

### Return type

[**Object**](Object.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generateMealPlan**
> GenerateMealPlan200Response generateMealPlan(timeFrame, targetCalories, diet, exclude)

Generate Meal Plan

Generate a meal plan with three meals per day (breakfast, lunch, and dinner).

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = MealPlanningApi();
final timeFrame = day; // String | Either for one \"day\" or an entire \"week\".
final targetCalories = 2000; // num | What is the caloric target for one day? The meal plan generator will try to get as close as possible to that goal.
final diet = vegetarian; // String | Enter a diet that the meal plan has to adhere to. See a full list of supported diets.
final exclude = shellfish, olives; // String | A comma-separated list of allergens or ingredients that must be excluded.

try {
    final result = api_instance.generateMealPlan(timeFrame, targetCalories, diet, exclude);
    print(result);
} catch (e) {
    print('Exception when calling MealPlanningApi->generateMealPlan: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timeFrame** | **String**| Either for one \"day\" or an entire \"week\". | [optional] 
 **targetCalories** | **num**| What is the caloric target for one day? The meal plan generator will try to get as close as possible to that goal. | [optional] 
 **diet** | **String**| Enter a diet that the meal plan has to adhere to. See a full list of supported diets. | [optional] 
 **exclude** | **String**| A comma-separated list of allergens or ingredients that must be excluded. | [optional] 

### Return type

[**GenerateMealPlan200Response**](GenerateMealPlan200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generateShoppingList**
> GetShoppingList200Response generateShoppingList(username, startDate, endDate, hash)

Generate Shopping List

Generate the shopping list for a user from the meal planner in a given time frame.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = MealPlanningApi();
final username = dsky; // String | The username.
final startDate = 2020-06-01; // String | The start date in the format yyyy-mm-dd.
final endDate = 2020-06-07; // String | The end date in the format yyyy-mm-dd.
final hash = hash_example; // String | The private hash for the username.

try {
    final result = api_instance.generateShoppingList(username, startDate, endDate, hash);
    print(result);
} catch (e) {
    print('Exception when calling MealPlanningApi->generateShoppingList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | 
 **startDate** | **String**| The start date in the format yyyy-mm-dd. | 
 **endDate** | **String**| The end date in the format yyyy-mm-dd. | 
 **hash** | **String**| The private hash for the username. | 

### Return type

[**GetShoppingList200Response**](GetShoppingList200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMealPlanTemplate**
> GetMealPlanTemplate200Response getMealPlanTemplate(username, id, hash)

Get Meal Plan Template

Get information about a meal plan template.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = MealPlanningApi();
final username = dsky; // String | The username.
final id = 15678; // int | The shopping list item id.
final hash = hash_example; // String | The private hash for the username.

try {
    final result = api_instance.getMealPlanTemplate(username, id, hash);
    print(result);
} catch (e) {
    print('Exception when calling MealPlanningApi->getMealPlanTemplate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | 
 **id** | **int**| The shopping list item id. | 
 **hash** | **String**| The private hash for the username. | 

### Return type

[**GetMealPlanTemplate200Response**](GetMealPlanTemplate200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMealPlanTemplates**
> GetMealPlanTemplates200Response getMealPlanTemplates(username, hash)

Get Meal Plan Templates

Get meal plan templates from user or public ones.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = MealPlanningApi();
final username = dsky; // String | The username.
final hash = hash_example; // String | The private hash for the username.

try {
    final result = api_instance.getMealPlanTemplates(username, hash);
    print(result);
} catch (e) {
    print('Exception when calling MealPlanningApi->getMealPlanTemplates: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | 
 **hash** | **String**| The private hash for the username. | 

### Return type

[**GetMealPlanTemplates200Response**](GetMealPlanTemplates200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMealPlanWeek**
> GetMealPlanWeek200Response getMealPlanWeek(username, startDate, hash)

Get Meal Plan Week

Retrieve a meal planned week for the given user. The username must be a spoonacular user and the hash must the the user's hash that can be found in his/her account.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = MealPlanningApi();
final username = dsky; // String | The username.
final startDate = 2020-06-01; // String | The start date of the meal planned week in the format yyyy-mm-dd.
final hash = hash_example; // String | The private hash for the username.

try {
    final result = api_instance.getMealPlanWeek(username, startDate, hash);
    print(result);
} catch (e) {
    print('Exception when calling MealPlanningApi->getMealPlanWeek: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | 
 **startDate** | **String**| The start date of the meal planned week in the format yyyy-mm-dd. | 
 **hash** | **String**| The private hash for the username. | 

### Return type

[**GetMealPlanWeek200Response**](GetMealPlanWeek200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getShoppingList**
> GetShoppingList200Response getShoppingList(username, hash)

Get Shopping List

Get the current shopping list for the given user.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = MealPlanningApi();
final username = dsky; // String | The username.
final hash = hash_example; // String | The private hash for the username.

try {
    final result = api_instance.getShoppingList(username, hash);
    print(result);
} catch (e) {
    print('Exception when calling MealPlanningApi->getShoppingList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | 
 **hash** | **String**| The private hash for the username. | 

### Return type

[**GetShoppingList200Response**](GetShoppingList200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

