# com.spoonacular.client\MealPlanningApi

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_to_meal_plan**](MealPlanningApi.md#add_to_meal_plan) | **Post** /mealplanner/{username}/items | Add to Meal Plan
[**add_to_shopping_list**](MealPlanningApi.md#add_to_shopping_list) | **Post** /mealplanner/{username}/shopping-list/items | Add to Shopping List
[**clear_meal_plan_day**](MealPlanningApi.md#clear_meal_plan_day) | **Delete** /mealplanner/{username}/day/{date} | Clear Meal Plan Day
[**connect_user**](MealPlanningApi.md#connect_user) | **Post** /users/connect | Connect User
[**delete_from_meal_plan**](MealPlanningApi.md#delete_from_meal_plan) | **Delete** /mealplanner/{username}/items/{id} | Delete from Meal Plan
[**delete_from_shopping_list**](MealPlanningApi.md#delete_from_shopping_list) | **Delete** /mealplanner/{username}/shopping-list/items/{id} | Delete from Shopping List
[**generate_meal_plan**](MealPlanningApi.md#generate_meal_plan) | **Get** /mealplanner/generate | Generate Meal Plan
[**generate_shopping_list**](MealPlanningApi.md#generate_shopping_list) | **Post** /mealplanner/{username}/shopping-list/{start-date}/{end-date} | Generate Shopping List
[**get_meal_plan_template**](MealPlanningApi.md#get_meal_plan_template) | **Get** /mealplanner/{username}/templates/{id} | Get Meal Plan Template
[**get_meal_plan_templates**](MealPlanningApi.md#get_meal_plan_templates) | **Get** /mealplanner/{username}/templates | Get Meal Plan Templates
[**get_meal_plan_week**](MealPlanningApi.md#get_meal_plan_week) | **Get** /mealplanner/{username}/week/{start-date} | Get Meal Plan Week
[**get_shopping_list**](MealPlanningApi.md#get_shopping_list) | **Get** /mealplanner/{username}/shopping-list | Get Shopping List



## add_to_meal_plan

> Value add_to_meal_plan(ctx, username, hash, inline_object4)
Add to Meal Plan

Add an item to the user's meal plan.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **username** | **String**| The username. | 
  **hash** | **String**| The private hash for the username. | 
  **inline_object4** | [**InlineObject4**](InlineObject4.md)|  | 

### Return type

[**Value**](Value.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: , application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## add_to_shopping_list

> ::models::InlineResponse20041 add_to_shopping_list(ctx, username, hash, inline_object7)
Add to Shopping List

Add an item to the current shopping list of a user.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **username** | **String**| The username. | 
  **hash** | **String**| The private hash for the username. | 
  **inline_object7** | [**InlineObject7**](InlineObject7.md)|  | 

### Return type

[**::models::InlineResponse20041**](inline_response_200_41.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: , application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## clear_meal_plan_day

> Value clear_meal_plan_day(ctx, username, date, hash, inline_object3)
Clear Meal Plan Day

Delete all planned items from the user's meal plan for a specific day.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **username** | **String**| The username. | 
  **date** | **String**| The date in the format yyyy-mm-dd. | 
  **hash** | **String**| The private hash for the username. | 
  **inline_object3** | [**InlineObject3**](InlineObject3.md)|  | 

### Return type

[**Value**](Value.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: 
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## connect_user

> ::models::InlineResponse20042 connect_user(ctx, body)
Connect User

In order to call user-specific endpoints, you need to connect your app's users to spoonacular users.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **body** | **Value**|  | 

### Return type

[**::models::InlineResponse20042**](inline_response_200_42.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: , application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## delete_from_meal_plan

> Value delete_from_meal_plan(ctx, username, id, hash, inline_object5)
Delete from Meal Plan

Delete an item from the user's meal plan.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **username** | **String**| The username. | 
  **id** | **f32**| The shopping list item id. | 
  **hash** | **String**| The private hash for the username. | 
  **inline_object5** | [**InlineObject5**](InlineObject5.md)|  | 

### Return type

[**Value**](Value.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: 
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## delete_from_shopping_list

> Value delete_from_shopping_list(ctx, username, id, hash, inline_object8)
Delete from Shopping List

Delete an item from the current shopping list of the user.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **username** | **String**| The username. | 
  **id** | **i32**| The item's id. | 
  **hash** | **String**| The private hash for the username. | 
  **inline_object8** | [**InlineObject8**](InlineObject8.md)|  | 

### Return type

[**Value**](Value.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: 
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## generate_meal_plan

> ::models::InlineResponse20037 generate_meal_plan(ctx, optional)
Generate Meal Plan

Generate a meal plan with three meals per day (breakfast, lunch, and dinner).

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **time_frame** | **String**| Either for one \"day\" or an entire \"week\". | 
 **target_calories** | **f32**| What is the caloric target for one day? The meal plan generator will try to get as close as possible to that goal. | 
 **diet** | **String**| Enter a diet that the meal plan has to adhere to. See a full list of supported diets. | 
 **exclude** | **String**| A comma-separated list of allergens or ingredients that must be excluded. | 

### Return type

[**::models::InlineResponse20037**](inline_response_200_37.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## generate_shopping_list

> ::models::InlineResponse20041 generate_shopping_list(ctx, username, start_date, end_date, hash, inline_object6)
Generate Shopping List

Generate the shopping list for a user from the meal planner in a given time frame.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **username** | **String**| The username. | 
  **start_date** | **String**| The start date in the format yyyy-mm-dd. | 
  **end_date** | **String**| The end date in the format yyyy-mm-dd. | 
  **hash** | **String**| The private hash for the username. | 
  **inline_object6** | [**InlineObject6**](InlineObject6.md)|  | 

### Return type

[**::models::InlineResponse20041**](inline_response_200_41.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: 
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_meal_plan_template

> ::models::InlineResponse20040 get_meal_plan_template(ctx, username, id, hash)
Get Meal Plan Template

Get information about a meal plan template.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **username** | **String**| The username. | 
  **id** | **i32**| The item's id. | 
  **hash** | **String**| The private hash for the username. | 

### Return type

[**::models::InlineResponse20040**](inline_response_200_40.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_meal_plan_templates

> ::models::InlineResponse20039 get_meal_plan_templates(ctx, username, hash)
Get Meal Plan Templates

Get meal plan templates from user or public ones.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **username** | **String**| The username. | 
  **hash** | **String**| The private hash for the username. | 

### Return type

[**::models::InlineResponse20039**](inline_response_200_39.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_meal_plan_week

> ::models::InlineResponse20038 get_meal_plan_week(ctx, username, start_date, hash)
Get Meal Plan Week

Retrieve a meal planned week for the given user. The username must be a spoonacular user and the hash must the the user's hash that can be found in his/her account.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **username** | **String**| The username. | 
  **start_date** | **String**| The start date of the meal planned week in the format yyyy-mm-dd. | 
  **hash** | **String**| The private hash for the username. | 

### Return type

[**::models::InlineResponse20038**](inline_response_200_38.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_shopping_list

> ::models::InlineResponse20041 get_shopping_list(ctx, username, hash)
Get Shopping List

Get the current shopping list for the given user.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **username** | **String**| The username. | 
  **hash** | **String**| The private hash for the username. | 

### Return type

[**::models::InlineResponse20041**](inline_response_200_41.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

