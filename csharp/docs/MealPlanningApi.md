# com.spoonacular.MealPlanningApi

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AddMealPlanTemplate**](MealPlanningApi.md#addmealplantemplate) | **POST** /mealplanner/{username}/templates | Add Meal Plan Template
[**AddToMealPlan**](MealPlanningApi.md#addtomealplan) | **POST** /mealplanner/{username}/items | Add to Meal Plan
[**AddToShoppingList**](MealPlanningApi.md#addtoshoppinglist) | **POST** /mealplanner/{username}/shopping-list/items | Add to Shopping List
[**ClearMealPlanDay**](MealPlanningApi.md#clearmealplanday) | **DELETE** /mealplanner/{username}/day/{date} | Clear Meal Plan Day
[**ConnectUser**](MealPlanningApi.md#connectuser) | **POST** /users/connect | Connect User
[**DeleteFromMealPlan**](MealPlanningApi.md#deletefrommealplan) | **DELETE** /mealplanner/{username}/items/{id} | Delete from Meal Plan
[**DeleteFromShoppingList**](MealPlanningApi.md#deletefromshoppinglist) | **DELETE** /mealplanner/{username}/shopping-list/items/{id} | Delete from Shopping List
[**DeleteMealPlanTemplate**](MealPlanningApi.md#deletemealplantemplate) | **DELETE** /mealplanner/{username}/templates/{id} | Delete Meal Plan Template
[**GenerateMealPlan**](MealPlanningApi.md#generatemealplan) | **GET** /mealplanner/generate | Generate Meal Plan
[**GenerateShoppingList**](MealPlanningApi.md#generateshoppinglist) | **POST** /mealplanner/{username}/shopping-list/{start-date}/{end-date} | Generate Shopping List
[**GetMealPlanTemplate**](MealPlanningApi.md#getmealplantemplate) | **GET** /mealplanner/{username}/templates/{id} | Get Meal Plan Template
[**GetMealPlanTemplates**](MealPlanningApi.md#getmealplantemplates) | **GET** /mealplanner/{username}/templates | Get Meal Plan Templates
[**GetMealPlanWeek**](MealPlanningApi.md#getmealplanweek) | **GET** /mealplanner/{username}/week/{start-date} | Get Meal Plan Week
[**GetShoppingList**](MealPlanningApi.md#getshoppinglist) | **GET** /mealplanner/{username}/shopping-list | Get Shopping List


<a name="addmealplantemplate"></a>
# **AddMealPlanTemplate**
> AddMealPlanTemplate200Response AddMealPlanTemplate (string username, string hash, AddToMealPlanRequest addToMealPlanRequest)

Add Meal Plan Template

Add a meal plan template for a user.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class AddMealPlanTemplateExample
    {
        public void main()
        {
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("x-api-key", "Bearer");

            var apiInstance = new MealPlanningApi();
            var username = dsky;  // string | The username.
            var hash = 4b5v4398573406;  // string | The private hash for the username.
            var addToMealPlanRequest = new AddToMealPlanRequest(); // AddToMealPlanRequest | 

            try
            {
                // Add Meal Plan Template
                AddMealPlanTemplate200Response result = apiInstance.AddMealPlanTemplate(username, hash, addToMealPlanRequest);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling MealPlanningApi.AddMealPlanTemplate: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username. | 
 **hash** | **string**| The private hash for the username. | 
 **addToMealPlanRequest** | [**AddToMealPlanRequest**](AddToMealPlanRequest.md)|  | 

### Return type

[**AddMealPlanTemplate200Response**](AddMealPlanTemplate200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="addtomealplan"></a>
# **AddToMealPlan**
> Object AddToMealPlan (string username, string hash, AddToMealPlanRequest addToMealPlanRequest)

Add to Meal Plan

Add an item to the user's meal plan.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class AddToMealPlanExample
    {
        public void main()
        {
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("x-api-key", "Bearer");

            var apiInstance = new MealPlanningApi();
            var username = dsky;  // string | The username.
            var hash = "hash_example";  // string | The private hash for the username.
            var addToMealPlanRequest = new AddToMealPlanRequest(); // AddToMealPlanRequest | 

            try
            {
                // Add to Meal Plan
                Object result = apiInstance.AddToMealPlan(username, hash, addToMealPlanRequest);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling MealPlanningApi.AddToMealPlan: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username. | 
 **hash** | **string**| The private hash for the username. | 
 **addToMealPlanRequest** | [**AddToMealPlanRequest**](AddToMealPlanRequest.md)|  | 

### Return type

**Object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: , application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="addtoshoppinglist"></a>
# **AddToShoppingList**
> GenerateShoppingList200Response AddToShoppingList (string username, string hash, AddToMealPlanRequest addToMealPlanRequest)

Add to Shopping List

Add an item to the current shopping list of a user.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class AddToShoppingListExample
    {
        public void main()
        {
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("x-api-key", "Bearer");

            var apiInstance = new MealPlanningApi();
            var username = dsky;  // string | The username.
            var hash = "hash_example";  // string | The private hash for the username.
            var addToMealPlanRequest = new AddToMealPlanRequest(); // AddToMealPlanRequest | 

            try
            {
                // Add to Shopping List
                GenerateShoppingList200Response result = apiInstance.AddToShoppingList(username, hash, addToMealPlanRequest);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling MealPlanningApi.AddToShoppingList: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username. | 
 **hash** | **string**| The private hash for the username. | 
 **addToMealPlanRequest** | [**AddToMealPlanRequest**](AddToMealPlanRequest.md)|  | 

### Return type

[**GenerateShoppingList200Response**](GenerateShoppingList200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: , application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="clearmealplanday"></a>
# **ClearMealPlanDay**
> Object ClearMealPlanDay (string username, string date, string hash, ClearMealPlanDayRequest clearMealPlanDayRequest)

Clear Meal Plan Day

Delete all planned items from the user's meal plan for a specific day.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class ClearMealPlanDayExample
    {
        public void main()
        {
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("x-api-key", "Bearer");

            var apiInstance = new MealPlanningApi();
            var username = dsky;  // string | The username.
            var date = 2020-06-01;  // string | The date in the format yyyy-mm-dd.
            var hash = "hash_example";  // string | The private hash for the username.
            var clearMealPlanDayRequest = new ClearMealPlanDayRequest(); // ClearMealPlanDayRequest | 

            try
            {
                // Clear Meal Plan Day
                Object result = apiInstance.ClearMealPlanDay(username, date, hash, clearMealPlanDayRequest);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling MealPlanningApi.ClearMealPlanDay: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username. | 
 **date** | **string**| The date in the format yyyy-mm-dd. | 
 **hash** | **string**| The private hash for the username. | 
 **clearMealPlanDayRequest** | [**ClearMealPlanDayRequest**](ClearMealPlanDayRequest.md)|  | 

### Return type

**Object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="connectuser"></a>
# **ConnectUser**
> ConnectUser200Response ConnectUser (Object body)

Connect User

In order to call user-specific endpoints, you need to connect your app's users to spoonacular users.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class ConnectUserExample
    {
        public void main()
        {
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("x-api-key", "Bearer");

            var apiInstance = new MealPlanningApi();
            var body = null;  // Object | 

            try
            {
                // Connect User
                ConnectUser200Response result = apiInstance.ConnectUser(body);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling MealPlanningApi.ConnectUser: " + e.Message );
            }
        }
    }
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="deletefrommealplan"></a>
# **DeleteFromMealPlan**
> Object DeleteFromMealPlan (string username, decimal? id, string hash, DeleteFromMealPlanRequest deleteFromMealPlanRequest)

Delete from Meal Plan

Delete an item from the user's meal plan.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class DeleteFromMealPlanExample
    {
        public void main()
        {
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("x-api-key", "Bearer");

            var apiInstance = new MealPlanningApi();
            var username = dsky;  // string | The username.
            var id = 15678;  // decimal? | The shopping list item id.
            var hash = "hash_example";  // string | The private hash for the username.
            var deleteFromMealPlanRequest = new DeleteFromMealPlanRequest(); // DeleteFromMealPlanRequest | 

            try
            {
                // Delete from Meal Plan
                Object result = apiInstance.DeleteFromMealPlan(username, id, hash, deleteFromMealPlanRequest);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling MealPlanningApi.DeleteFromMealPlan: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username. | 
 **id** | **decimal?**| The shopping list item id. | 
 **hash** | **string**| The private hash for the username. | 
 **deleteFromMealPlanRequest** | [**DeleteFromMealPlanRequest**](DeleteFromMealPlanRequest.md)|  | 

### Return type

**Object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="deletefromshoppinglist"></a>
# **DeleteFromShoppingList**
> Object DeleteFromShoppingList (string username, int? id, string hash, DeleteFromMealPlanRequest deleteFromMealPlanRequest)

Delete from Shopping List

Delete an item from the current shopping list of the user.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class DeleteFromShoppingListExample
    {
        public void main()
        {
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("x-api-key", "Bearer");

            var apiInstance = new MealPlanningApi();
            var username = dsky;  // string | The username.
            var id = 1;  // int? | The item's id.
            var hash = "hash_example";  // string | The private hash for the username.
            var deleteFromMealPlanRequest = new DeleteFromMealPlanRequest(); // DeleteFromMealPlanRequest | 

            try
            {
                // Delete from Shopping List
                Object result = apiInstance.DeleteFromShoppingList(username, id, hash, deleteFromMealPlanRequest);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling MealPlanningApi.DeleteFromShoppingList: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username. | 
 **id** | **int?**| The item&#39;s id. | 
 **hash** | **string**| The private hash for the username. | 
 **deleteFromMealPlanRequest** | [**DeleteFromMealPlanRequest**](DeleteFromMealPlanRequest.md)|  | 

### Return type

**Object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="deletemealplantemplate"></a>
# **DeleteMealPlanTemplate**
> Object DeleteMealPlanTemplate (string username, int? id, string hash, DeleteFromMealPlanRequest deleteFromMealPlanRequest)

Delete Meal Plan Template

Delete a meal plan template for a user.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class DeleteMealPlanTemplateExample
    {
        public void main()
        {
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("x-api-key", "Bearer");

            var apiInstance = new MealPlanningApi();
            var username = dsky;  // string | The username.
            var id = 1;  // int? | The item's id.
            var hash = 4b5v4398573406;  // string | The private hash for the username.
            var deleteFromMealPlanRequest = new DeleteFromMealPlanRequest(); // DeleteFromMealPlanRequest | 

            try
            {
                // Delete Meal Plan Template
                Object result = apiInstance.DeleteMealPlanTemplate(username, id, hash, deleteFromMealPlanRequest);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling MealPlanningApi.DeleteMealPlanTemplate: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username. | 
 **id** | **int?**| The item&#39;s id. | 
 **hash** | **string**| The private hash for the username. | 
 **deleteFromMealPlanRequest** | [**DeleteFromMealPlanRequest**](DeleteFromMealPlanRequest.md)|  | 

### Return type

**Object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="generatemealplan"></a>
# **GenerateMealPlan**
> GenerateMealPlan200Response GenerateMealPlan (string timeFrame, decimal? targetCalories, string diet, string exclude)

Generate Meal Plan

Generate a meal plan with three meals per day (breakfast, lunch, and dinner).

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class GenerateMealPlanExample
    {
        public void main()
        {
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("x-api-key", "Bearer");

            var apiInstance = new MealPlanningApi();
            var timeFrame = day;  // string | Either for one \"day\" or an entire \"week\". (optional) 
            var targetCalories = 2000;  // decimal? | What is the caloric target for one day? The meal plan generator will try to get as close as possible to that goal. (optional) 
            var diet = vegetarian;  // string | Enter a diet that the meal plan has to adhere to. See a full list of supported diets. (optional) 
            var exclude = shellfish, olives;  // string | A comma-separated list of allergens or ingredients that must be excluded. (optional) 

            try
            {
                // Generate Meal Plan
                GenerateMealPlan200Response result = apiInstance.GenerateMealPlan(timeFrame, targetCalories, diet, exclude);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling MealPlanningApi.GenerateMealPlan: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timeFrame** | **string**| Either for one \&quot;day\&quot; or an entire \&quot;week\&quot;. | [optional] 
 **targetCalories** | **decimal?**| What is the caloric target for one day? The meal plan generator will try to get as close as possible to that goal. | [optional] 
 **diet** | **string**| Enter a diet that the meal plan has to adhere to. See a full list of supported diets. | [optional] 
 **exclude** | **string**| A comma-separated list of allergens or ingredients that must be excluded. | [optional] 

### Return type

[**GenerateMealPlan200Response**](GenerateMealPlan200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="generateshoppinglist"></a>
# **GenerateShoppingList**
> GenerateShoppingList200Response GenerateShoppingList (string username, string startDate, string endDate, string hash, GenerateShoppingListRequest generateShoppingListRequest)

Generate Shopping List

Generate the shopping list for a user from the meal planner in a given time frame.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class GenerateShoppingListExample
    {
        public void main()
        {
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("x-api-key", "Bearer");

            var apiInstance = new MealPlanningApi();
            var username = dsky;  // string | The username.
            var startDate = 2020-06-01;  // string | The start date in the format yyyy-mm-dd.
            var endDate = 2020-06-07;  // string | The end date in the format yyyy-mm-dd.
            var hash = "hash_example";  // string | The private hash for the username.
            var generateShoppingListRequest = new GenerateShoppingListRequest(); // GenerateShoppingListRequest | 

            try
            {
                // Generate Shopping List
                GenerateShoppingList200Response result = apiInstance.GenerateShoppingList(username, startDate, endDate, hash, generateShoppingListRequest);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling MealPlanningApi.GenerateShoppingList: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username. | 
 **startDate** | **string**| The start date in the format yyyy-mm-dd. | 
 **endDate** | **string**| The end date in the format yyyy-mm-dd. | 
 **hash** | **string**| The private hash for the username. | 
 **generateShoppingListRequest** | [**GenerateShoppingListRequest**](GenerateShoppingListRequest.md)|  | 

### Return type

[**GenerateShoppingList200Response**](GenerateShoppingList200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getmealplantemplate"></a>
# **GetMealPlanTemplate**
> GetMealPlanTemplate200Response GetMealPlanTemplate (string username, int? id, string hash)

Get Meal Plan Template

Get information about a meal plan template.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class GetMealPlanTemplateExample
    {
        public void main()
        {
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("x-api-key", "Bearer");

            var apiInstance = new MealPlanningApi();
            var username = dsky;  // string | The username.
            var id = 1;  // int? | The item's id.
            var hash = "hash_example";  // string | The private hash for the username.

            try
            {
                // Get Meal Plan Template
                GetMealPlanTemplate200Response result = apiInstance.GetMealPlanTemplate(username, id, hash);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling MealPlanningApi.GetMealPlanTemplate: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username. | 
 **id** | **int?**| The item&#39;s id. | 
 **hash** | **string**| The private hash for the username. | 

### Return type

[**GetMealPlanTemplate200Response**](GetMealPlanTemplate200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getmealplantemplates"></a>
# **GetMealPlanTemplates**
> GetMealPlanTemplates200Response GetMealPlanTemplates (string username, string hash)

Get Meal Plan Templates

Get meal plan templates from user or public ones.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class GetMealPlanTemplatesExample
    {
        public void main()
        {
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("x-api-key", "Bearer");

            var apiInstance = new MealPlanningApi();
            var username = dsky;  // string | The username.
            var hash = "hash_example";  // string | The private hash for the username.

            try
            {
                // Get Meal Plan Templates
                GetMealPlanTemplates200Response result = apiInstance.GetMealPlanTemplates(username, hash);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling MealPlanningApi.GetMealPlanTemplates: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username. | 
 **hash** | **string**| The private hash for the username. | 

### Return type

[**GetMealPlanTemplates200Response**](GetMealPlanTemplates200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getmealplanweek"></a>
# **GetMealPlanWeek**
> GetMealPlanWeek200Response GetMealPlanWeek (string username, string startDate, string hash)

Get Meal Plan Week

Retrieve a meal planned week for the given user. The username must be a spoonacular user and the hash must the the user's hash that can be found in his/her account.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class GetMealPlanWeekExample
    {
        public void main()
        {
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("x-api-key", "Bearer");

            var apiInstance = new MealPlanningApi();
            var username = dsky;  // string | The username.
            var startDate = 2020-06-01;  // string | The start date of the meal planned week in the format yyyy-mm-dd.
            var hash = "hash_example";  // string | The private hash for the username.

            try
            {
                // Get Meal Plan Week
                GetMealPlanWeek200Response result = apiInstance.GetMealPlanWeek(username, startDate, hash);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling MealPlanningApi.GetMealPlanWeek: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username. | 
 **startDate** | **string**| The start date of the meal planned week in the format yyyy-mm-dd. | 
 **hash** | **string**| The private hash for the username. | 

### Return type

[**GetMealPlanWeek200Response**](GetMealPlanWeek200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getshoppinglist"></a>
# **GetShoppingList**
> GetShoppingList200Response GetShoppingList (string username, string hash)

Get Shopping List

Get the current shopping list for the given user.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class GetShoppingListExample
    {
        public void main()
        {
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("x-api-key", "Bearer");

            var apiInstance = new MealPlanningApi();
            var username = dsky;  // string | The username.
            var hash = "hash_example";  // string | The private hash for the username.

            try
            {
                // Get Shopping List
                GetShoppingList200Response result = apiInstance.GetShoppingList(username, hash);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling MealPlanningApi.GetShoppingList: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username. | 
 **hash** | **string**| The private hash for the username. | 

### Return type

[**GetShoppingList200Response**](GetShoppingList200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

