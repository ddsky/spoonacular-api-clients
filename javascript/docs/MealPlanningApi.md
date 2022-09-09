# SpoonacularApi.MealPlanningApi

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

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.MealPlanningApi();
let username = dsky; // String | The username.
let hash = 4b5v4398573406; // String | The private hash for the username.
let addToMealPlanRequest = new SpoonacularApi.AddToMealPlanRequest(); // AddToMealPlanRequest | 
apiInstance.addMealPlanTemplate(username, hash, addToMealPlanRequest, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | 
 **hash** | **String**| The private hash for the username. | 
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

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.MealPlanningApi();
let username = dsky; // String | The username.
let hash = "hash_example"; // String | The private hash for the username.
let addToMealPlanRequest = new SpoonacularApi.AddToMealPlanRequest(); // AddToMealPlanRequest | 
apiInstance.addToMealPlan(username, hash, addToMealPlanRequest, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | 
 **hash** | **String**| The private hash for the username. | 
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

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.MealPlanningApi();
let username = dsky; // String | The username.
let hash = "hash_example"; // String | The private hash for the username.
let addToMealPlanRequest = new SpoonacularApi.AddToMealPlanRequest(); // AddToMealPlanRequest | 
apiInstance.addToShoppingList(username, hash, addToMealPlanRequest, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | 
 **hash** | **String**| The private hash for the username. | 
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

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.MealPlanningApi();
let username = dsky; // String | The username.
let date = 2020-06-01; // String | The date in the format yyyy-mm-dd.
let hash = "hash_example"; // String | The private hash for the username.
let clearMealPlanDayRequest = new SpoonacularApi.ClearMealPlanDayRequest(); // ClearMealPlanDayRequest | 
apiInstance.clearMealPlanDay(username, date, hash, clearMealPlanDayRequest, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | 
 **date** | **String**| The date in the format yyyy-mm-dd. | 
 **hash** | **String**| The private hash for the username. | 
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

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.MealPlanningApi();
let body = {key: null}; // Object | 
apiInstance.connectUser(body, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.MealPlanningApi();
let username = dsky; // String | The username.
let id = 15678; // Number | The shopping list item id.
let hash = "hash_example"; // String | The private hash for the username.
let deleteFromMealPlanRequest = new SpoonacularApi.DeleteFromMealPlanRequest(); // DeleteFromMealPlanRequest | 
apiInstance.deleteFromMealPlan(username, id, hash, deleteFromMealPlanRequest, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | 
 **id** | **Number**| The shopping list item id. | 
 **hash** | **String**| The private hash for the username. | 
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

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.MealPlanningApi();
let username = dsky; // String | The username.
let id = 1; // Number | The item's id.
let hash = "hash_example"; // String | The private hash for the username.
let deleteFromMealPlanRequest = new SpoonacularApi.DeleteFromMealPlanRequest(); // DeleteFromMealPlanRequest | 
apiInstance.deleteFromShoppingList(username, id, hash, deleteFromMealPlanRequest, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | 
 **id** | **Number**| The item&#39;s id. | 
 **hash** | **String**| The private hash for the username. | 
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

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.MealPlanningApi();
let username = dsky; // String | The username.
let id = 1; // Number | The item's id.
let hash = 4b5v4398573406; // String | The private hash for the username.
let deleteFromMealPlanRequest = new SpoonacularApi.DeleteFromMealPlanRequest(); // DeleteFromMealPlanRequest | 
apiInstance.deleteMealPlanTemplate(username, id, hash, deleteFromMealPlanRequest, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | 
 **id** | **Number**| The item&#39;s id. | 
 **hash** | **String**| The private hash for the username. | 
 **deleteFromMealPlanRequest** | [**DeleteFromMealPlanRequest**](DeleteFromMealPlanRequest.md)|  | 

### Return type

**Object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: 
- **Accept**: application/json


## generateMealPlan

> GenerateMealPlan200Response generateMealPlan(opts)

Generate Meal Plan

Generate a meal plan with three meals per day (breakfast, lunch, and dinner).

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.MealPlanningApi();
let opts = {
  'timeFrame': day, // String | Either for one \"day\" or an entire \"week\".
  'targetCalories': 2000, // Number | What is the caloric target for one day? The meal plan generator will try to get as close as possible to that goal.
  'diet': vegetarian, // String | Enter a diet that the meal plan has to adhere to. See a full list of supported diets.
  'exclude': shellfish, olives // String | A comma-separated list of allergens or ingredients that must be excluded.
};
apiInstance.generateMealPlan(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timeFrame** | **String**| Either for one \&quot;day\&quot; or an entire \&quot;week\&quot;. | [optional] 
 **targetCalories** | **Number**| What is the caloric target for one day? The meal plan generator will try to get as close as possible to that goal. | [optional] 
 **diet** | **String**| Enter a diet that the meal plan has to adhere to. See a full list of supported diets. | [optional] 
 **exclude** | **String**| A comma-separated list of allergens or ingredients that must be excluded. | [optional] 

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

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.MealPlanningApi();
let username = dsky; // String | The username.
let startDate = 2020-06-01; // String | The start date in the format yyyy-mm-dd.
let endDate = 2020-06-07; // String | The end date in the format yyyy-mm-dd.
let hash = "hash_example"; // String | The private hash for the username.
let generateShoppingListRequest = new SpoonacularApi.GenerateShoppingListRequest(); // GenerateShoppingListRequest | 
apiInstance.generateShoppingList(username, startDate, endDate, hash, generateShoppingListRequest, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | 
 **startDate** | **String**| The start date in the format yyyy-mm-dd. | 
 **endDate** | **String**| The end date in the format yyyy-mm-dd. | 
 **hash** | **String**| The private hash for the username. | 
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

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.MealPlanningApi();
let username = dsky; // String | The username.
let id = 1; // Number | The item's id.
let hash = "hash_example"; // String | The private hash for the username.
apiInstance.getMealPlanTemplate(username, id, hash, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | 
 **id** | **Number**| The item&#39;s id. | 
 **hash** | **String**| The private hash for the username. | 

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

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.MealPlanningApi();
let username = dsky; // String | The username.
let hash = "hash_example"; // String | The private hash for the username.
apiInstance.getMealPlanTemplates(username, hash, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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


## getMealPlanWeek

> GetMealPlanWeek200Response getMealPlanWeek(username, startDate, hash)

Get Meal Plan Week

Retrieve a meal planned week for the given user. The username must be a spoonacular user and the hash must the the user&#39;s hash that can be found in his/her account.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.MealPlanningApi();
let username = dsky; // String | The username.
let startDate = 2020-06-01; // String | The start date of the meal planned week in the format yyyy-mm-dd.
let hash = "hash_example"; // String | The private hash for the username.
apiInstance.getMealPlanWeek(username, startDate, hash, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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


## getShoppingList

> GetShoppingList200Response getShoppingList(username, hash)

Get Shopping List

Get the current shopping list for the given user.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.MealPlanningApi();
let username = dsky; // String | The username.
let hash = "hash_example"; // String | The private hash for the username.
apiInstance.getShoppingList(username, hash, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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

