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

> InlineResponse20040 addMealPlanTemplate(username, hash, inlineObject6)

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
let inlineObject6 = new SpoonacularApi.InlineObject6(); // InlineObject6 | 
apiInstance.addMealPlanTemplate(username, hash, inlineObject6, (error, data, response) => {
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
 **inlineObject6** | [**InlineObject6**](InlineObject6.md)|  | 

### Return type

[**InlineResponse20040**](InlineResponse20040.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: 
- **Accept**: application/json


## addToMealPlan

> Object addToMealPlan(username, hash, inlineObject4)

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
let inlineObject4 = new SpoonacularApi.InlineObject4(); // InlineObject4 | 
apiInstance.addToMealPlan(username, hash, inlineObject4, (error, data, response) => {
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
 **inlineObject4** | [**InlineObject4**](InlineObject4.md)|  | 

### Return type

**Object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: , application/json
- **Accept**: application/json


## addToShoppingList

> InlineResponse20042 addToShoppingList(username, hash, inlineObject9)

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
let inlineObject9 = new SpoonacularApi.InlineObject9(); // InlineObject9 | 
apiInstance.addToShoppingList(username, hash, inlineObject9, (error, data, response) => {
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
 **inlineObject9** | [**InlineObject9**](InlineObject9.md)|  | 

### Return type

[**InlineResponse20042**](InlineResponse20042.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: , application/json
- **Accept**: application/json


## clearMealPlanDay

> Object clearMealPlanDay(username, _date, hash, inlineObject3)

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
let _date = 2020-06-01; // String | The date in the format yyyy-mm-dd.
let hash = "hash_example"; // String | The private hash for the username.
let inlineObject3 = new SpoonacularApi.InlineObject3(); // InlineObject3 | 
apiInstance.clearMealPlanDay(username, _date, hash, inlineObject3, (error, data, response) => {
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
 **_date** | **String**| The date in the format yyyy-mm-dd. | 
 **hash** | **String**| The private hash for the username. | 
 **inlineObject3** | [**InlineObject3**](InlineObject3.md)|  | 

### Return type

**Object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: 
- **Accept**: application/json


## connectUser

> InlineResponse20043 connectUser(body)

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
let body = null; // Object | 
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

[**InlineResponse20043**](InlineResponse20043.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: , application/json
- **Accept**: application/json


## deleteFromMealPlan

> Object deleteFromMealPlan(username, id, hash, inlineObject5)

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
let inlineObject5 = new SpoonacularApi.InlineObject5(); // InlineObject5 | 
apiInstance.deleteFromMealPlan(username, id, hash, inlineObject5, (error, data, response) => {
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
 **inlineObject5** | [**InlineObject5**](InlineObject5.md)|  | 

### Return type

**Object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: 
- **Accept**: application/json


## deleteFromShoppingList

> Object deleteFromShoppingList(username, id, hash, inlineObject10)

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
let inlineObject10 = new SpoonacularApi.InlineObject10(); // InlineObject10 | 
apiInstance.deleteFromShoppingList(username, id, hash, inlineObject10, (error, data, response) => {
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
 **inlineObject10** | [**InlineObject10**](InlineObject10.md)|  | 

### Return type

**Object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: 
- **Accept**: application/json


## deleteMealPlanTemplate

> Object deleteMealPlanTemplate(username, id, hash, inlineObject7)

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
let inlineObject7 = new SpoonacularApi.InlineObject7(); // InlineObject7 | 
apiInstance.deleteMealPlanTemplate(username, id, hash, inlineObject7, (error, data, response) => {
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
 **inlineObject7** | [**InlineObject7**](InlineObject7.md)|  | 

### Return type

**Object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: 
- **Accept**: application/json


## generateMealPlan

> InlineResponse20037 generateMealPlan(opts)

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

[**InlineResponse20037**](InlineResponse20037.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## generateShoppingList

> InlineResponse20042 generateShoppingList(username, startDate, endDate, hash, inlineObject8)

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
let inlineObject8 = new SpoonacularApi.InlineObject8(); // InlineObject8 | 
apiInstance.generateShoppingList(username, startDate, endDate, hash, inlineObject8, (error, data, response) => {
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
 **inlineObject8** | [**InlineObject8**](InlineObject8.md)|  | 

### Return type

[**InlineResponse20042**](InlineResponse20042.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: 
- **Accept**: application/json


## getMealPlanTemplate

> InlineResponse20041 getMealPlanTemplate(username, id, hash)

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

[**InlineResponse20041**](InlineResponse20041.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getMealPlanTemplates

> InlineResponse20039 getMealPlanTemplates(username, hash)

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

[**InlineResponse20039**](InlineResponse20039.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getMealPlanWeek

> InlineResponse20038 getMealPlanWeek(username, startDate, hash)

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

[**InlineResponse20038**](InlineResponse20038.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getShoppingList

> InlineResponse20042 getShoppingList(username, hash)

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

[**InlineResponse20042**](InlineResponse20042.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

