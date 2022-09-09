# com.spoonacular.client\MealPlanningApi

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_meal_plan_template**](MealPlanningApi.md#add_meal_plan_template) | **POST** /mealplanner/{username}/templates | Add Meal Plan Template
[**add_to_meal_plan**](MealPlanningApi.md#add_to_meal_plan) | **POST** /mealplanner/{username}/items | Add to Meal Plan
[**add_to_shopping_list**](MealPlanningApi.md#add_to_shopping_list) | **POST** /mealplanner/{username}/shopping-list/items | Add to Shopping List
[**clear_meal_plan_day**](MealPlanningApi.md#clear_meal_plan_day) | **DELETE** /mealplanner/{username}/day/{date} | Clear Meal Plan Day
[**connect_user**](MealPlanningApi.md#connect_user) | **POST** /users/connect | Connect User
[**delete_from_meal_plan**](MealPlanningApi.md#delete_from_meal_plan) | **DELETE** /mealplanner/{username}/items/{id} | Delete from Meal Plan
[**delete_from_shopping_list**](MealPlanningApi.md#delete_from_shopping_list) | **DELETE** /mealplanner/{username}/shopping-list/items/{id} | Delete from Shopping List
[**delete_meal_plan_template**](MealPlanningApi.md#delete_meal_plan_template) | **DELETE** /mealplanner/{username}/templates/{id} | Delete Meal Plan Template
[**generate_meal_plan**](MealPlanningApi.md#generate_meal_plan) | **GET** /mealplanner/generate | Generate Meal Plan
[**generate_shopping_list**](MealPlanningApi.md#generate_shopping_list) | **POST** /mealplanner/{username}/shopping-list/{start-date}/{end-date} | Generate Shopping List
[**get_meal_plan_template**](MealPlanningApi.md#get_meal_plan_template) | **GET** /mealplanner/{username}/templates/{id} | Get Meal Plan Template
[**get_meal_plan_templates**](MealPlanningApi.md#get_meal_plan_templates) | **GET** /mealplanner/{username}/templates | Get Meal Plan Templates
[**get_meal_plan_week**](MealPlanningApi.md#get_meal_plan_week) | **GET** /mealplanner/{username}/week/{start-date} | Get Meal Plan Week
[**get_shopping_list**](MealPlanningApi.md#get_shopping_list) | **GET** /mealplanner/{username}/shopping-list | Get Shopping List



## add_meal_plan_template

> crate::models::AddMealPlanTemplate200Response add_meal_plan_template(username, hash, add_to_meal_plan_request)
Add Meal Plan Template

Add a meal plan template for a user.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**username** | **String** | The username. | [required] |
**hash** | **String** | The private hash for the username. | [required] |
**add_to_meal_plan_request** | [**AddToMealPlanRequest**](AddToMealPlanRequest.md) |  | [required] |

### Return type

[**crate::models::AddMealPlanTemplate200Response**](addMealPlanTemplate_200_response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: 
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## add_to_meal_plan

> serde_json::Value add_to_meal_plan(username, hash, add_to_meal_plan_request)
Add to Meal Plan

Add an item to the user's meal plan.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**username** | **String** | The username. | [required] |
**hash** | **String** | The private hash for the username. | [required] |
**add_to_meal_plan_request** | [**AddToMealPlanRequest**](AddToMealPlanRequest.md) |  | [required] |

### Return type

[**serde_json::Value**](serde_json::Value.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: , application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## add_to_shopping_list

> crate::models::GenerateShoppingList200Response add_to_shopping_list(username, hash, add_to_meal_plan_request)
Add to Shopping List

Add an item to the current shopping list of a user.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**username** | **String** | The username. | [required] |
**hash** | **String** | The private hash for the username. | [required] |
**add_to_meal_plan_request** | [**AddToMealPlanRequest**](AddToMealPlanRequest.md) |  | [required] |

### Return type

[**crate::models::GenerateShoppingList200Response**](generateShoppingList_200_response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: , application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## clear_meal_plan_day

> serde_json::Value clear_meal_plan_day(username, date, hash, clear_meal_plan_day_request)
Clear Meal Plan Day

Delete all planned items from the user's meal plan for a specific day.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**username** | **String** | The username. | [required] |
**date** | **String** | The date in the format yyyy-mm-dd. | [required] |
**hash** | **String** | The private hash for the username. | [required] |
**clear_meal_plan_day_request** | [**ClearMealPlanDayRequest**](ClearMealPlanDayRequest.md) |  | [required] |

### Return type

[**serde_json::Value**](serde_json::Value.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: 
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## connect_user

> crate::models::ConnectUser200Response connect_user(body)
Connect User

In order to call user-specific endpoints, you need to connect your app's users to spoonacular users.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**body** | **serde_json::Value** |  | [required] |

### Return type

[**crate::models::ConnectUser200Response**](connectUser_200_response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: , application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## delete_from_meal_plan

> serde_json::Value delete_from_meal_plan(username, id, hash, delete_from_meal_plan_request)
Delete from Meal Plan

Delete an item from the user's meal plan.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**username** | **String** | The username. | [required] |
**id** | **f32** | The shopping list item id. | [required] |
**hash** | **String** | The private hash for the username. | [required] |
**delete_from_meal_plan_request** | [**DeleteFromMealPlanRequest**](DeleteFromMealPlanRequest.md) |  | [required] |

### Return type

[**serde_json::Value**](serde_json::Value.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: 
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## delete_from_shopping_list

> serde_json::Value delete_from_shopping_list(username, id, hash, delete_from_meal_plan_request)
Delete from Shopping List

Delete an item from the current shopping list of the user.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**username** | **String** | The username. | [required] |
**id** | **i32** | The item's id. | [required] |
**hash** | **String** | The private hash for the username. | [required] |
**delete_from_meal_plan_request** | [**DeleteFromMealPlanRequest**](DeleteFromMealPlanRequest.md) |  | [required] |

### Return type

[**serde_json::Value**](serde_json::Value.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: 
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## delete_meal_plan_template

> serde_json::Value delete_meal_plan_template(username, id, hash, delete_from_meal_plan_request)
Delete Meal Plan Template

Delete a meal plan template for a user.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**username** | **String** | The username. | [required] |
**id** | **i32** | The item's id. | [required] |
**hash** | **String** | The private hash for the username. | [required] |
**delete_from_meal_plan_request** | [**DeleteFromMealPlanRequest**](DeleteFromMealPlanRequest.md) |  | [required] |

### Return type

[**serde_json::Value**](serde_json::Value.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: 
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## generate_meal_plan

> crate::models::GenerateMealPlan200Response generate_meal_plan(time_frame, target_calories, diet, exclude)
Generate Meal Plan

Generate a meal plan with three meals per day (breakfast, lunch, and dinner).

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**time_frame** | Option<**String**> | Either for one \"day\" or an entire \"week\". |  |
**target_calories** | Option<**f32**> | What is the caloric target for one day? The meal plan generator will try to get as close as possible to that goal. |  |
**diet** | Option<**String**> | Enter a diet that the meal plan has to adhere to. See a full list of supported diets. |  |
**exclude** | Option<**String**> | A comma-separated list of allergens or ingredients that must be excluded. |  |

### Return type

[**crate::models::GenerateMealPlan200Response**](generateMealPlan_200_response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## generate_shopping_list

> crate::models::GenerateShoppingList200Response generate_shopping_list(username, start_date, end_date, hash, generate_shopping_list_request)
Generate Shopping List

Generate the shopping list for a user from the meal planner in a given time frame.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**username** | **String** | The username. | [required] |
**start_date** | **String** | The start date in the format yyyy-mm-dd. | [required] |
**end_date** | **String** | The end date in the format yyyy-mm-dd. | [required] |
**hash** | **String** | The private hash for the username. | [required] |
**generate_shopping_list_request** | [**GenerateShoppingListRequest**](GenerateShoppingListRequest.md) |  | [required] |

### Return type

[**crate::models::GenerateShoppingList200Response**](generateShoppingList_200_response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: 
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_meal_plan_template

> crate::models::GetMealPlanTemplate200Response get_meal_plan_template(username, id, hash)
Get Meal Plan Template

Get information about a meal plan template.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**username** | **String** | The username. | [required] |
**id** | **i32** | The item's id. | [required] |
**hash** | **String** | The private hash for the username. | [required] |

### Return type

[**crate::models::GetMealPlanTemplate200Response**](getMealPlanTemplate_200_response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_meal_plan_templates

> crate::models::GetMealPlanTemplates200Response get_meal_plan_templates(username, hash)
Get Meal Plan Templates

Get meal plan templates from user or public ones.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**username** | **String** | The username. | [required] |
**hash** | **String** | The private hash for the username. | [required] |

### Return type

[**crate::models::GetMealPlanTemplates200Response**](getMealPlanTemplates_200_response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_meal_plan_week

> crate::models::GetMealPlanWeek200Response get_meal_plan_week(username, start_date, hash)
Get Meal Plan Week

Retrieve a meal planned week for the given user. The username must be a spoonacular user and the hash must the the user's hash that can be found in his/her account.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**username** | **String** | The username. | [required] |
**start_date** | **String** | The start date of the meal planned week in the format yyyy-mm-dd. | [required] |
**hash** | **String** | The private hash for the username. | [required] |

### Return type

[**crate::models::GetMealPlanWeek200Response**](getMealPlanWeek_200_response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_shopping_list

> crate::models::GetShoppingList200Response get_shopping_list(username, hash)
Get Shopping List

Get the current shopping list for the given user.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**username** | **String** | The username. | [required] |
**hash** | **String** | The private hash for the username. | [required] |

### Return type

[**crate::models::GetShoppingList200Response**](getShoppingList_200_response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

