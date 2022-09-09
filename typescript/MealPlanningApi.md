# .MealPlanningApi

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
> AddMealPlanTemplate200Response addMealPlanTemplate(addToMealPlanRequest)

Add a meal plan template for a user.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .MealPlanningApi(configuration);

let body:.MealPlanningApiAddMealPlanTemplateRequest = {
  // string | The username.
  username: "dsky",
  // string | The private hash for the username.
  hash: "4b5v4398573406",
  // AddToMealPlanRequest
  addToMealPlanRequest: {
    username: "dsky",
    hash: "4b5v4398573406",
  },
};

apiInstance.addMealPlanTemplate(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **addToMealPlanRequest** | **AddToMealPlanRequest**|  |
 **username** | [**string**] | The username. | defaults to undefined
 **hash** | [**string**] | The private hash for the username. | defaults to undefined


### Return type

**AddMealPlanTemplate200Response**

### Authorization

[apiKeyScheme](README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **addToMealPlan**
> any addToMealPlan(addToMealPlanRequest)

Add an item to the user's meal plan.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .MealPlanningApi(configuration);

let body:.MealPlanningApiAddToMealPlanRequest = {
  // string | The username.
  username: "dsky",
  // string | The private hash for the username.
  hash: "hash_example",
  // AddToMealPlanRequest
  addToMealPlanRequest: {
    username: "dsky",
    hash: "4b5v4398573406",
  },
};

apiInstance.addToMealPlan(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **addToMealPlanRequest** | **AddToMealPlanRequest**|  |
 **username** | [**string**] | The username. | defaults to undefined
 **hash** | [**string**] | The private hash for the username. | defaults to undefined


### Return type

**any**

### Authorization

[apiKeyScheme](README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: , application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **addToShoppingList**
> GenerateShoppingList200Response addToShoppingList(addToMealPlanRequest)

Add an item to the current shopping list of a user.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .MealPlanningApi(configuration);

let body:.MealPlanningApiAddToShoppingListRequest = {
  // string | The username.
  username: "dsky",
  // string | The private hash for the username.
  hash: "hash_example",
  // AddToMealPlanRequest
  addToMealPlanRequest: {
    username: "dsky",
    hash: "4b5v4398573406",
  },
};

apiInstance.addToShoppingList(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **addToMealPlanRequest** | **AddToMealPlanRequest**|  |
 **username** | [**string**] | The username. | defaults to undefined
 **hash** | [**string**] | The private hash for the username. | defaults to undefined


### Return type

**GenerateShoppingList200Response**

### Authorization

[apiKeyScheme](README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: , application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **clearMealPlanDay**
> any clearMealPlanDay(clearMealPlanDayRequest)

Delete all planned items from the user's meal plan for a specific day.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .MealPlanningApi(configuration);

let body:.MealPlanningApiClearMealPlanDayRequest = {
  // string | The username.
  username: "dsky",
  // string | The date in the format yyyy-mm-dd.
  date: "2020-06-01",
  // string | The private hash for the username.
  hash: "hash_example",
  // ClearMealPlanDayRequest
  clearMealPlanDayRequest: {
    username: "dsky",
    date: "2020-06-01",
    hash: "4b5v4398573406",
  },
};

apiInstance.clearMealPlanDay(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clearMealPlanDayRequest** | **ClearMealPlanDayRequest**|  |
 **username** | [**string**] | The username. | defaults to undefined
 **date** | [**string**] | The date in the format yyyy-mm-dd. | defaults to undefined
 **hash** | [**string**] | The private hash for the username. | defaults to undefined


### Return type

**any**

### Authorization

[apiKeyScheme](README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **connectUser**
> ConnectUser200Response connectUser(body)

In order to call user-specific endpoints, you need to connect your app's users to spoonacular users.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .MealPlanningApi(configuration);

let body:.MealPlanningApiConnectUserRequest = {
  // any
  body: {},
};

apiInstance.connectUser(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **any**|  |


### Return type

**ConnectUser200Response**

### Authorization

[apiKeyScheme](README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: , application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **deleteFromMealPlan**
> any deleteFromMealPlan(deleteFromMealPlanRequest)

Delete an item from the user's meal plan.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .MealPlanningApi(configuration);

let body:.MealPlanningApiDeleteFromMealPlanRequest = {
  // string | The username.
  username: "dsky",
  // number | The shopping list item id.
  id: 15678,
  // string | The private hash for the username.
  hash: "hash_example",
  // DeleteFromMealPlanRequest
  deleteFromMealPlanRequest: {
    username: "dsky",
    id: 15678,
    hash: "4b5v4398573406",
  },
};

apiInstance.deleteFromMealPlan(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deleteFromMealPlanRequest** | **DeleteFromMealPlanRequest**|  |
 **username** | [**string**] | The username. | defaults to undefined
 **id** | [**number**] | The shopping list item id. | defaults to undefined
 **hash** | [**string**] | The private hash for the username. | defaults to undefined


### Return type

**any**

### Authorization

[apiKeyScheme](README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **deleteFromShoppingList**
> any deleteFromShoppingList(deleteFromMealPlanRequest)

Delete an item from the current shopping list of the user.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .MealPlanningApi(configuration);

let body:.MealPlanningApiDeleteFromShoppingListRequest = {
  // string | The username.
  username: "dsky",
  // number | The item's id.
  id: 1,
  // string | The private hash for the username.
  hash: "hash_example",
  // DeleteFromMealPlanRequest
  deleteFromMealPlanRequest: {
    username: "dsky",
    id: 15678,
    hash: "4b5v4398573406",
  },
};

apiInstance.deleteFromShoppingList(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deleteFromMealPlanRequest** | **DeleteFromMealPlanRequest**|  |
 **username** | [**string**] | The username. | defaults to undefined
 **id** | [**number**] | The item&#39;s id. | defaults to undefined
 **hash** | [**string**] | The private hash for the username. | defaults to undefined


### Return type

**any**

### Authorization

[apiKeyScheme](README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **deleteMealPlanTemplate**
> any deleteMealPlanTemplate(deleteFromMealPlanRequest)

Delete a meal plan template for a user.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .MealPlanningApi(configuration);

let body:.MealPlanningApiDeleteMealPlanTemplateRequest = {
  // string | The username.
  username: "dsky",
  // number | The item's id.
  id: 1,
  // string | The private hash for the username.
  hash: "4b5v4398573406",
  // DeleteFromMealPlanRequest
  deleteFromMealPlanRequest: {
    username: "dsky",
    id: 15678,
    hash: "4b5v4398573406",
  },
};

apiInstance.deleteMealPlanTemplate(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deleteFromMealPlanRequest** | **DeleteFromMealPlanRequest**|  |
 **username** | [**string**] | The username. | defaults to undefined
 **id** | [**number**] | The item&#39;s id. | defaults to undefined
 **hash** | [**string**] | The private hash for the username. | defaults to undefined


### Return type

**any**

### Authorization

[apiKeyScheme](README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **generateMealPlan**
> GenerateMealPlan200Response generateMealPlan()

Generate a meal plan with three meals per day (breakfast, lunch, and dinner).

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .MealPlanningApi(configuration);

let body:.MealPlanningApiGenerateMealPlanRequest = {
  // string | Either for one \"day\" or an entire \"week\". (optional)
  timeFrame: "day",
  // number | What is the caloric target for one day? The meal plan generator will try to get as close as possible to that goal. (optional)
  targetCalories: 2000,
  // string | Enter a diet that the meal plan has to adhere to. See a full list of supported diets. (optional)
  diet: "vegetarian",
  // string | A comma-separated list of allergens or ingredients that must be excluded. (optional)
  exclude: "shellfish, olives",
};

apiInstance.generateMealPlan(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timeFrame** | [**string**] | Either for one \&quot;day\&quot; or an entire \&quot;week\&quot;. | (optional) defaults to undefined
 **targetCalories** | [**number**] | What is the caloric target for one day? The meal plan generator will try to get as close as possible to that goal. | (optional) defaults to undefined
 **diet** | [**string**] | Enter a diet that the meal plan has to adhere to. See a full list of supported diets. | (optional) defaults to undefined
 **exclude** | [**string**] | A comma-separated list of allergens or ingredients that must be excluded. | (optional) defaults to undefined


### Return type

**GenerateMealPlan200Response**

### Authorization

[apiKeyScheme](README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **generateShoppingList**
> GenerateShoppingList200Response generateShoppingList(generateShoppingListRequest)

Generate the shopping list for a user from the meal planner in a given time frame.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .MealPlanningApi(configuration);

let body:.MealPlanningApiGenerateShoppingListRequest = {
  // string | The username.
  username: "dsky",
  // string | The start date in the format yyyy-mm-dd.
  startDate: "2020-06-01",
  // string | The end date in the format yyyy-mm-dd.
  endDate: "2020-06-07",
  // string | The private hash for the username.
  hash: "hash_example",
  // GenerateShoppingListRequest
  generateShoppingListRequest: {
    username: "dsky",
    startDate: "2020-06-01",
    endDate: "2020-06-07",
    hash: "4b5v4398573406",
  },
};

apiInstance.generateShoppingList(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **generateShoppingListRequest** | **GenerateShoppingListRequest**|  |
 **username** | [**string**] | The username. | defaults to undefined
 **startDate** | [**string**] | The start date in the format yyyy-mm-dd. | defaults to undefined
 **endDate** | [**string**] | The end date in the format yyyy-mm-dd. | defaults to undefined
 **hash** | [**string**] | The private hash for the username. | defaults to undefined


### Return type

**GenerateShoppingList200Response**

### Authorization

[apiKeyScheme](README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **getMealPlanTemplate**
> GetMealPlanTemplate200Response getMealPlanTemplate()

Get information about a meal plan template.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .MealPlanningApi(configuration);

let body:.MealPlanningApiGetMealPlanTemplateRequest = {
  // string | The username.
  username: "dsky",
  // number | The item's id.
  id: 1,
  // string | The private hash for the username.
  hash: "hash_example",
};

apiInstance.getMealPlanTemplate(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | [**string**] | The username. | defaults to undefined
 **id** | [**number**] | The item&#39;s id. | defaults to undefined
 **hash** | [**string**] | The private hash for the username. | defaults to undefined


### Return type

**GetMealPlanTemplate200Response**

### Authorization

[apiKeyScheme](README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **getMealPlanTemplates**
> GetMealPlanTemplates200Response getMealPlanTemplates()

Get meal plan templates from user or public ones.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .MealPlanningApi(configuration);

let body:.MealPlanningApiGetMealPlanTemplatesRequest = {
  // string | The username.
  username: "dsky",
  // string | The private hash for the username.
  hash: "hash_example",
};

apiInstance.getMealPlanTemplates(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | [**string**] | The username. | defaults to undefined
 **hash** | [**string**] | The private hash for the username. | defaults to undefined


### Return type

**GetMealPlanTemplates200Response**

### Authorization

[apiKeyScheme](README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **getMealPlanWeek**
> GetMealPlanWeek200Response getMealPlanWeek()

Retrieve a meal planned week for the given user. The username must be a spoonacular user and the hash must the the user's hash that can be found in his/her account.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .MealPlanningApi(configuration);

let body:.MealPlanningApiGetMealPlanWeekRequest = {
  // string | The username.
  username: "dsky",
  // string | The start date of the meal planned week in the format yyyy-mm-dd.
  startDate: "2020-06-01",
  // string | The private hash for the username.
  hash: "hash_example",
};

apiInstance.getMealPlanWeek(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | [**string**] | The username. | defaults to undefined
 **startDate** | [**string**] | The start date of the meal planned week in the format yyyy-mm-dd. | defaults to undefined
 **hash** | [**string**] | The private hash for the username. | defaults to undefined


### Return type

**GetMealPlanWeek200Response**

### Authorization

[apiKeyScheme](README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **getShoppingList**
> GetShoppingList200Response getShoppingList()

Get the current shopping list for the given user.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .MealPlanningApi(configuration);

let body:.MealPlanningApiGetShoppingListRequest = {
  // string | The username.
  username: "dsky",
  // string | The private hash for the username.
  hash: "hash_example",
};

apiInstance.getShoppingList(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | [**string**] | The username. | defaults to undefined
 **hash** | [**string**] | The private hash for the username. | defaults to undefined


### Return type

**GetShoppingList200Response**

### Authorization

[apiKeyScheme](README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)


