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
> InlineResponse20040 AddMealPlanTemplate (string username, string hash, InlineObject6 inlineObject6)

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
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new MealPlanningApi();
            var username = dsky;  // string | The username.
            var hash = 4b5v4398573406;  // string | The private hash for the username.
            var inlineObject6 = new InlineObject6(); // InlineObject6 | 

            try
            {
                // Add Meal Plan Template
                InlineResponse20040 result = apiInstance.AddMealPlanTemplate(username, hash, inlineObject6);
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
 **inlineObject6** | [**InlineObject6**](InlineObject6.md)|  | 

### Return type

[**InlineResponse20040**](InlineResponse20040.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="addtomealplan"></a>
# **AddToMealPlan**
> Object AddToMealPlan (string username, string hash, InlineObject4 inlineObject4)

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
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new MealPlanningApi();
            var username = dsky;  // string | The username.
            var hash = hash_example;  // string | The private hash for the username.
            var inlineObject4 = new InlineObject4(); // InlineObject4 | 

            try
            {
                // Add to Meal Plan
                Object result = apiInstance.AddToMealPlan(username, hash, inlineObject4);
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
 **inlineObject4** | [**InlineObject4**](InlineObject4.md)|  | 

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
> InlineResponse20042 AddToShoppingList (string username, string hash, InlineObject9 inlineObject9)

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
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new MealPlanningApi();
            var username = dsky;  // string | The username.
            var hash = hash_example;  // string | The private hash for the username.
            var inlineObject9 = new InlineObject9(); // InlineObject9 | 

            try
            {
                // Add to Shopping List
                InlineResponse20042 result = apiInstance.AddToShoppingList(username, hash, inlineObject9);
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
 **inlineObject9** | [**InlineObject9**](InlineObject9.md)|  | 

### Return type

[**InlineResponse20042**](InlineResponse20042.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: , application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="clearmealplanday"></a>
# **ClearMealPlanDay**
> Object ClearMealPlanDay (string username, string date, string hash, InlineObject3 inlineObject3)

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
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new MealPlanningApi();
            var username = dsky;  // string | The username.
            var date = 2020-06-01;  // string | The date in the format yyyy-mm-dd.
            var hash = hash_example;  // string | The private hash for the username.
            var inlineObject3 = new InlineObject3(); // InlineObject3 | 

            try
            {
                // Clear Meal Plan Day
                Object result = apiInstance.ClearMealPlanDay(username, date, hash, inlineObject3);
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
 **inlineObject3** | [**InlineObject3**](InlineObject3.md)|  | 

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
> InlineResponse20043 ConnectUser (Object body)

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
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new MealPlanningApi();
            var body = ;  // Object | 

            try
            {
                // Connect User
                InlineResponse20043 result = apiInstance.ConnectUser(body);
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

[**InlineResponse20043**](InlineResponse20043.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: , application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="deletefrommealplan"></a>
# **DeleteFromMealPlan**
> Object DeleteFromMealPlan (string username, decimal? id, string hash, InlineObject5 inlineObject5)

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
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new MealPlanningApi();
            var username = dsky;  // string | The username.
            var id = 15678;  // decimal? | The shopping list item id.
            var hash = hash_example;  // string | The private hash for the username.
            var inlineObject5 = new InlineObject5(); // InlineObject5 | 

            try
            {
                // Delete from Meal Plan
                Object result = apiInstance.DeleteFromMealPlan(username, id, hash, inlineObject5);
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
 **inlineObject5** | [**InlineObject5**](InlineObject5.md)|  | 

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
> Object DeleteFromShoppingList (string username, int? id, string hash, InlineObject10 inlineObject10)

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
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new MealPlanningApi();
            var username = dsky;  // string | The username.
            var id = 1;  // int? | The item's id.
            var hash = hash_example;  // string | The private hash for the username.
            var inlineObject10 = new InlineObject10(); // InlineObject10 | 

            try
            {
                // Delete from Shopping List
                Object result = apiInstance.DeleteFromShoppingList(username, id, hash, inlineObject10);
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
 **inlineObject10** | [**InlineObject10**](InlineObject10.md)|  | 

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
> Object DeleteMealPlanTemplate (string username, int? id, string hash, InlineObject7 inlineObject7)

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
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new MealPlanningApi();
            var username = dsky;  // string | The username.
            var id = 1;  // int? | The item's id.
            var hash = 4b5v4398573406;  // string | The private hash for the username.
            var inlineObject7 = new InlineObject7(); // InlineObject7 | 

            try
            {
                // Delete Meal Plan Template
                Object result = apiInstance.DeleteMealPlanTemplate(username, id, hash, inlineObject7);
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
 **inlineObject7** | [**InlineObject7**](InlineObject7.md)|  | 

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
> InlineResponse20037 GenerateMealPlan (string timeFrame, decimal? targetCalories, string diet, string exclude)

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
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new MealPlanningApi();
            var timeFrame = day;  // string | Either for one \"day\" or an entire \"week\". (optional) 
            var targetCalories = 2000;  // decimal? | What is the caloric target for one day? The meal plan generator will try to get as close as possible to that goal. (optional) 
            var diet = vegetarian;  // string | Enter a diet that the meal plan has to adhere to. See a full list of supported diets. (optional) 
            var exclude = shellfish, olives;  // string | A comma-separated list of allergens or ingredients that must be excluded. (optional) 

            try
            {
                // Generate Meal Plan
                InlineResponse20037 result = apiInstance.GenerateMealPlan(timeFrame, targetCalories, diet, exclude);
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

[**InlineResponse20037**](InlineResponse20037.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="generateshoppinglist"></a>
# **GenerateShoppingList**
> InlineResponse20042 GenerateShoppingList (string username, string startDate, string endDate, string hash, InlineObject8 inlineObject8)

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
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new MealPlanningApi();
            var username = dsky;  // string | The username.
            var startDate = 2020-06-01;  // string | The start date in the format yyyy-mm-dd.
            var endDate = 2020-06-07;  // string | The end date in the format yyyy-mm-dd.
            var hash = hash_example;  // string | The private hash for the username.
            var inlineObject8 = new InlineObject8(); // InlineObject8 | 

            try
            {
                // Generate Shopping List
                InlineResponse20042 result = apiInstance.GenerateShoppingList(username, startDate, endDate, hash, inlineObject8);
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
 **inlineObject8** | [**InlineObject8**](InlineObject8.md)|  | 

### Return type

[**InlineResponse20042**](InlineResponse20042.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getmealplantemplate"></a>
# **GetMealPlanTemplate**
> InlineResponse20041 GetMealPlanTemplate (string username, int? id, string hash)

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
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new MealPlanningApi();
            var username = dsky;  // string | The username.
            var id = 1;  // int? | The item's id.
            var hash = hash_example;  // string | The private hash for the username.

            try
            {
                // Get Meal Plan Template
                InlineResponse20041 result = apiInstance.GetMealPlanTemplate(username, id, hash);
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

[**InlineResponse20041**](InlineResponse20041.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getmealplantemplates"></a>
# **GetMealPlanTemplates**
> InlineResponse20039 GetMealPlanTemplates (string username, string hash)

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
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new MealPlanningApi();
            var username = dsky;  // string | The username.
            var hash = hash_example;  // string | The private hash for the username.

            try
            {
                // Get Meal Plan Templates
                InlineResponse20039 result = apiInstance.GetMealPlanTemplates(username, hash);
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

[**InlineResponse20039**](InlineResponse20039.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getmealplanweek"></a>
# **GetMealPlanWeek**
> InlineResponse20038 GetMealPlanWeek (string username, string startDate, string hash)

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
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new MealPlanningApi();
            var username = dsky;  // string | The username.
            var startDate = 2020-06-01;  // string | The start date of the meal planned week in the format yyyy-mm-dd.
            var hash = hash_example;  // string | The private hash for the username.

            try
            {
                // Get Meal Plan Week
                InlineResponse20038 result = apiInstance.GetMealPlanWeek(username, startDate, hash);
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

[**InlineResponse20038**](InlineResponse20038.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getshoppinglist"></a>
# **GetShoppingList**
> InlineResponse20042 GetShoppingList (string username, string hash)

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
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new MealPlanningApi();
            var username = dsky;  // string | The username.
            var hash = hash_example;  // string | The private hash for the username.

            try
            {
                // Get Shopping List
                InlineResponse20042 result = apiInstance.GetShoppingList(username, hash);
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

[**InlineResponse20042**](InlineResponse20042.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

