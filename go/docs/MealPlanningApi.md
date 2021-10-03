# com.spoonacular.client\MealPlanningApi

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AddMealPlanTemplate**](MealPlanningApi.md#AddMealPlanTemplate) | **Post** /mealplanner/{username}/templates | Add Meal Plan Template
[**AddToMealPlan**](MealPlanningApi.md#AddToMealPlan) | **Post** /mealplanner/{username}/items | Add to Meal Plan
[**AddToShoppingList**](MealPlanningApi.md#AddToShoppingList) | **Post** /mealplanner/{username}/shopping-list/items | Add to Shopping List
[**ClearMealPlanDay**](MealPlanningApi.md#ClearMealPlanDay) | **Delete** /mealplanner/{username}/day/{date} | Clear Meal Plan Day
[**ConnectUser**](MealPlanningApi.md#ConnectUser) | **Post** /users/connect | Connect User
[**DeleteFromMealPlan**](MealPlanningApi.md#DeleteFromMealPlan) | **Delete** /mealplanner/{username}/items/{id} | Delete from Meal Plan
[**DeleteFromShoppingList**](MealPlanningApi.md#DeleteFromShoppingList) | **Delete** /mealplanner/{username}/shopping-list/items/{id} | Delete from Shopping List
[**DeleteMealPlanTemplate**](MealPlanningApi.md#DeleteMealPlanTemplate) | **Delete** /mealplanner/{username}/templates/{id} | Delete Meal Plan Template
[**GenerateMealPlan**](MealPlanningApi.md#GenerateMealPlan) | **Get** /mealplanner/generate | Generate Meal Plan
[**GenerateShoppingList**](MealPlanningApi.md#GenerateShoppingList) | **Post** /mealplanner/{username}/shopping-list/{start-date}/{end-date} | Generate Shopping List
[**GetMealPlanTemplate**](MealPlanningApi.md#GetMealPlanTemplate) | **Get** /mealplanner/{username}/templates/{id} | Get Meal Plan Template
[**GetMealPlanTemplates**](MealPlanningApi.md#GetMealPlanTemplates) | **Get** /mealplanner/{username}/templates | Get Meal Plan Templates
[**GetMealPlanWeek**](MealPlanningApi.md#GetMealPlanWeek) | **Get** /mealplanner/{username}/week/{start-date} | Get Meal Plan Week
[**GetShoppingList**](MealPlanningApi.md#GetShoppingList) | **Get** /mealplanner/{username}/shopping-list | Get Shopping List



## AddMealPlanTemplate

> InlineResponse20040 AddMealPlanTemplate(ctx, username, hash, inlineObject6)
Add Meal Plan Template

Add a meal plan template for a user.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**username** | **string**| The username. | 
**hash** | **string**| The private hash for the username. | 
**inlineObject6** | [**InlineObject6**](InlineObject6.md)|  | 

### Return type

[**InlineResponse20040**](inline_response_200_40.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: 
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AddToMealPlan

> map[string]interface{} AddToMealPlan(ctx, username, hash, inlineObject4)
Add to Meal Plan

Add an item to the user's meal plan.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**username** | **string**| The username. | 
**hash** | **string**| The private hash for the username. | 
**inlineObject4** | [**InlineObject4**](InlineObject4.md)|  | 

### Return type

[**map[string]interface{}**](map[string]interface{}.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: , application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AddToShoppingList

> InlineResponse20042 AddToShoppingList(ctx, username, hash, inlineObject9)
Add to Shopping List

Add an item to the current shopping list of a user.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**username** | **string**| The username. | 
**hash** | **string**| The private hash for the username. | 
**inlineObject9** | [**InlineObject9**](InlineObject9.md)|  | 

### Return type

[**InlineResponse20042**](inline_response_200_42.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: , application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ClearMealPlanDay

> map[string]interface{} ClearMealPlanDay(ctx, username, date, hash, inlineObject3)
Clear Meal Plan Day

Delete all planned items from the user's meal plan for a specific day.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**username** | **string**| The username. | 
**date** | **string**| The date in the format yyyy-mm-dd. | 
**hash** | **string**| The private hash for the username. | 
**inlineObject3** | [**InlineObject3**](InlineObject3.md)|  | 

### Return type

[**map[string]interface{}**](map[string]interface{}.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: 
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ConnectUser

> InlineResponse20043 ConnectUser(ctx, body)
Connect User

In order to call user-specific endpoints, you need to connect your app's users to spoonacular users.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**body** | **map[string]interface{}**|  | 

### Return type

[**InlineResponse20043**](inline_response_200_43.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: , application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DeleteFromMealPlan

> map[string]interface{} DeleteFromMealPlan(ctx, username, id, hash, inlineObject5)
Delete from Meal Plan

Delete an item from the user's meal plan.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**username** | **string**| The username. | 
**id** | **float32**| The shopping list item id. | 
**hash** | **string**| The private hash for the username. | 
**inlineObject5** | [**InlineObject5**](InlineObject5.md)|  | 

### Return type

[**map[string]interface{}**](map[string]interface{}.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: 
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DeleteFromShoppingList

> map[string]interface{} DeleteFromShoppingList(ctx, username, id, hash, inlineObject10)
Delete from Shopping List

Delete an item from the current shopping list of the user.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**username** | **string**| The username. | 
**id** | **int32**| The item&#39;s id. | 
**hash** | **string**| The private hash for the username. | 
**inlineObject10** | [**InlineObject10**](InlineObject10.md)|  | 

### Return type

[**map[string]interface{}**](map[string]interface{}.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: 
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DeleteMealPlanTemplate

> map[string]interface{} DeleteMealPlanTemplate(ctx, username, id, hash, inlineObject7)
Delete Meal Plan Template

Delete a meal plan template for a user.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**username** | **string**| The username. | 
**id** | **int32**| The item&#39;s id. | 
**hash** | **string**| The private hash for the username. | 
**inlineObject7** | [**InlineObject7**](InlineObject7.md)|  | 

### Return type

[**map[string]interface{}**](map[string]interface{}.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: 
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GenerateMealPlan

> InlineResponse20037 GenerateMealPlan(ctx, optional)
Generate Meal Plan

Generate a meal plan with three meals per day (breakfast, lunch, and dinner).

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***GenerateMealPlanOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a GenerateMealPlanOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timeFrame** | **optional.String**| Either for one \&quot;day\&quot; or an entire \&quot;week\&quot;. | 
 **targetCalories** | **optional.Float32**| What is the caloric target for one day? The meal plan generator will try to get as close as possible to that goal. | 
 **diet** | **optional.String**| Enter a diet that the meal plan has to adhere to. See a full list of supported diets. | 
 **exclude** | **optional.String**| A comma-separated list of allergens or ingredients that must be excluded. | 

### Return type

[**InlineResponse20037**](inline_response_200_37.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GenerateShoppingList

> InlineResponse20042 GenerateShoppingList(ctx, username, startDate, endDate, hash, inlineObject8)
Generate Shopping List

Generate the shopping list for a user from the meal planner in a given time frame.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**username** | **string**| The username. | 
**startDate** | **string**| The start date in the format yyyy-mm-dd. | 
**endDate** | **string**| The end date in the format yyyy-mm-dd. | 
**hash** | **string**| The private hash for the username. | 
**inlineObject8** | [**InlineObject8**](InlineObject8.md)|  | 

### Return type

[**InlineResponse20042**](inline_response_200_42.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: 
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetMealPlanTemplate

> InlineResponse20041 GetMealPlanTemplate(ctx, username, id, hash)
Get Meal Plan Template

Get information about a meal plan template.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**username** | **string**| The username. | 
**id** | **int32**| The item&#39;s id. | 
**hash** | **string**| The private hash for the username. | 

### Return type

[**InlineResponse20041**](inline_response_200_41.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetMealPlanTemplates

> InlineResponse20039 GetMealPlanTemplates(ctx, username, hash)
Get Meal Plan Templates

Get meal plan templates from user or public ones.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**username** | **string**| The username. | 
**hash** | **string**| The private hash for the username. | 

### Return type

[**InlineResponse20039**](inline_response_200_39.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetMealPlanWeek

> InlineResponse20038 GetMealPlanWeek(ctx, username, startDate, hash)
Get Meal Plan Week

Retrieve a meal planned week for the given user. The username must be a spoonacular user and the hash must the the user's hash that can be found in his/her account.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**username** | **string**| The username. | 
**startDate** | **string**| The start date of the meal planned week in the format yyyy-mm-dd. | 
**hash** | **string**| The private hash for the username. | 

### Return type

[**InlineResponse20038**](inline_response_200_38.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetShoppingList

> InlineResponse20042 GetShoppingList(ctx, username, hash)
Get Shopping List

Get the current shopping list for the given user.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**username** | **string**| The username. | 
**hash** | **string**| The private hash for the username. | 

### Return type

[**InlineResponse20042**](inline_response_200_42.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

