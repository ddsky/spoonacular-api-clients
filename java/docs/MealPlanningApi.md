# MealPlanningApi

All URIs are relative to *https://api.spoonacular.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**addMealPlanTemplate**](MealPlanningApi.md#addMealPlanTemplate) | **POST** /mealplanner/{username}/templates | Add Meal Plan Template |
| [**addToMealPlan**](MealPlanningApi.md#addToMealPlan) | **POST** /mealplanner/{username}/items | Add to Meal Plan |
| [**addToShoppingList**](MealPlanningApi.md#addToShoppingList) | **POST** /mealplanner/{username}/shopping-list/items | Add to Shopping List |
| [**clearMealPlanDay**](MealPlanningApi.md#clearMealPlanDay) | **DELETE** /mealplanner/{username}/day/{date} | Clear Meal Plan Day |
| [**connectUser**](MealPlanningApi.md#connectUser) | **POST** /users/connect | Connect User |
| [**deleteFromMealPlan**](MealPlanningApi.md#deleteFromMealPlan) | **DELETE** /mealplanner/{username}/items/{id} | Delete from Meal Plan |
| [**deleteFromShoppingList**](MealPlanningApi.md#deleteFromShoppingList) | **DELETE** /mealplanner/{username}/shopping-list/items/{id} | Delete from Shopping List |
| [**deleteMealPlanTemplate**](MealPlanningApi.md#deleteMealPlanTemplate) | **DELETE** /mealplanner/{username}/templates/{id} | Delete Meal Plan Template |
| [**generateMealPlan**](MealPlanningApi.md#generateMealPlan) | **GET** /mealplanner/generate | Generate Meal Plan |
| [**generateShoppingList**](MealPlanningApi.md#generateShoppingList) | **POST** /mealplanner/{username}/shopping-list/{start-date}/{end-date} | Generate Shopping List |
| [**getMealPlanTemplate**](MealPlanningApi.md#getMealPlanTemplate) | **GET** /mealplanner/{username}/templates/{id} | Get Meal Plan Template |
| [**getMealPlanTemplates**](MealPlanningApi.md#getMealPlanTemplates) | **GET** /mealplanner/{username}/templates | Get Meal Plan Templates |
| [**getMealPlanWeek**](MealPlanningApi.md#getMealPlanWeek) | **GET** /mealplanner/{username}/week/{start-date} | Get Meal Plan Week |
| [**getShoppingList**](MealPlanningApi.md#getShoppingList) | **GET** /mealplanner/{username}/shopping-list | Get Shopping List |


<a id="addMealPlanTemplate"></a>
# **addMealPlanTemplate**
> AddMealPlanTemplate200Response addMealPlanTemplate(username, hash, addToMealPlanRequest)

Add Meal Plan Template

Add a meal plan template for a user.

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.MealPlanningApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    MealPlanningApi apiInstance = new MealPlanningApi(defaultClient);
    String username = "dsky"; // String | The username.
    String hash = "4b5v4398573406"; // String | The private hash for the username.
    AddToMealPlanRequest addToMealPlanRequest = new AddToMealPlanRequest(); // AddToMealPlanRequest | 
    try {
      AddMealPlanTemplate200Response result = apiInstance.addMealPlanTemplate(username, hash, addToMealPlanRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MealPlanningApi#addMealPlanTemplate");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **username** | **String**| The username. | |
| **hash** | **String**| The private hash for the username. | |
| **addToMealPlanRequest** | [**AddToMealPlanRequest**](AddToMealPlanRequest.md)|  | |

### Return type

[**AddMealPlanTemplate200Response**](AddMealPlanTemplate200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |

<a id="addToMealPlan"></a>
# **addToMealPlan**
> Object addToMealPlan(username, hash, addToMealPlanRequest)

Add to Meal Plan

Add an item to the user&#39;s meal plan.

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.MealPlanningApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    MealPlanningApi apiInstance = new MealPlanningApi(defaultClient);
    String username = "dsky"; // String | The username.
    String hash = "hash_example"; // String | The private hash for the username.
    AddToMealPlanRequest addToMealPlanRequest = new AddToMealPlanRequest(); // AddToMealPlanRequest | 
    try {
      Object result = apiInstance.addToMealPlan(username, hash, addToMealPlanRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MealPlanningApi#addToMealPlan");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **username** | **String**| The username. | |
| **hash** | **String**| The private hash for the username. | |
| **addToMealPlanRequest** | [**AddToMealPlanRequest**](AddToMealPlanRequest.md)|  | |

### Return type

**Object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: , application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |

<a id="addToShoppingList"></a>
# **addToShoppingList**
> GenerateShoppingList200Response addToShoppingList(username, hash, addToMealPlanRequest)

Add to Shopping List

Add an item to the current shopping list of a user.

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.MealPlanningApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    MealPlanningApi apiInstance = new MealPlanningApi(defaultClient);
    String username = "dsky"; // String | The username.
    String hash = "hash_example"; // String | The private hash for the username.
    AddToMealPlanRequest addToMealPlanRequest = new AddToMealPlanRequest(); // AddToMealPlanRequest | 
    try {
      GenerateShoppingList200Response result = apiInstance.addToShoppingList(username, hash, addToMealPlanRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MealPlanningApi#addToShoppingList");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **username** | **String**| The username. | |
| **hash** | **String**| The private hash for the username. | |
| **addToMealPlanRequest** | [**AddToMealPlanRequest**](AddToMealPlanRequest.md)|  | |

### Return type

[**GenerateShoppingList200Response**](GenerateShoppingList200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: , application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |

<a id="clearMealPlanDay"></a>
# **clearMealPlanDay**
> Object clearMealPlanDay(username, date, hash, clearMealPlanDayRequest)

Clear Meal Plan Day

Delete all planned items from the user&#39;s meal plan for a specific day.

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.MealPlanningApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    MealPlanningApi apiInstance = new MealPlanningApi(defaultClient);
    String username = "dsky"; // String | The username.
    String date = "2020-06-01"; // String | The date in the format yyyy-mm-dd.
    String hash = "hash_example"; // String | The private hash for the username.
    ClearMealPlanDayRequest clearMealPlanDayRequest = new ClearMealPlanDayRequest(); // ClearMealPlanDayRequest | 
    try {
      Object result = apiInstance.clearMealPlanDay(username, date, hash, clearMealPlanDayRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MealPlanningApi#clearMealPlanDay");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **username** | **String**| The username. | |
| **date** | **String**| The date in the format yyyy-mm-dd. | |
| **hash** | **String**| The private hash for the username. | |
| **clearMealPlanDayRequest** | [**ClearMealPlanDayRequest**](ClearMealPlanDayRequest.md)|  | |

### Return type

**Object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |

<a id="connectUser"></a>
# **connectUser**
> ConnectUser200Response connectUser(body)

Connect User

In order to call user-specific endpoints, you need to connect your app&#39;s users to spoonacular users.

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.MealPlanningApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    MealPlanningApi apiInstance = new MealPlanningApi(defaultClient);
    Object body = null; // Object | 
    try {
      ConnectUser200Response result = apiInstance.connectUser(body);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MealPlanningApi#connectUser");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **body** | **Object**|  | |

### Return type

[**ConnectUser200Response**](ConnectUser200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: , application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |

<a id="deleteFromMealPlan"></a>
# **deleteFromMealPlan**
> Object deleteFromMealPlan(username, id, hash, deleteFromMealPlanRequest)

Delete from Meal Plan

Delete an item from the user&#39;s meal plan.

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.MealPlanningApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    MealPlanningApi apiInstance = new MealPlanningApi(defaultClient);
    String username = "dsky"; // String | The username.
    BigDecimal id = new BigDecimal("15678"); // BigDecimal | The shopping list item id.
    String hash = "hash_example"; // String | The private hash for the username.
    DeleteFromMealPlanRequest deleteFromMealPlanRequest = new DeleteFromMealPlanRequest(); // DeleteFromMealPlanRequest | 
    try {
      Object result = apiInstance.deleteFromMealPlan(username, id, hash, deleteFromMealPlanRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MealPlanningApi#deleteFromMealPlan");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **username** | **String**| The username. | |
| **id** | **BigDecimal**| The shopping list item id. | |
| **hash** | **String**| The private hash for the username. | |
| **deleteFromMealPlanRequest** | [**DeleteFromMealPlanRequest**](DeleteFromMealPlanRequest.md)|  | |

### Return type

**Object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |

<a id="deleteFromShoppingList"></a>
# **deleteFromShoppingList**
> Object deleteFromShoppingList(username, id, hash, deleteFromMealPlanRequest)

Delete from Shopping List

Delete an item from the current shopping list of the user.

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.MealPlanningApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    MealPlanningApi apiInstance = new MealPlanningApi(defaultClient);
    String username = "dsky"; // String | The username.
    Integer id = 1; // Integer | The item's id.
    String hash = "hash_example"; // String | The private hash for the username.
    DeleteFromMealPlanRequest deleteFromMealPlanRequest = new DeleteFromMealPlanRequest(); // DeleteFromMealPlanRequest | 
    try {
      Object result = apiInstance.deleteFromShoppingList(username, id, hash, deleteFromMealPlanRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MealPlanningApi#deleteFromShoppingList");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **username** | **String**| The username. | |
| **id** | **Integer**| The item&#39;s id. | |
| **hash** | **String**| The private hash for the username. | |
| **deleteFromMealPlanRequest** | [**DeleteFromMealPlanRequest**](DeleteFromMealPlanRequest.md)|  | |

### Return type

**Object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |

<a id="deleteMealPlanTemplate"></a>
# **deleteMealPlanTemplate**
> Object deleteMealPlanTemplate(username, id, hash, deleteFromMealPlanRequest)

Delete Meal Plan Template

Delete a meal plan template for a user.

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.MealPlanningApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    MealPlanningApi apiInstance = new MealPlanningApi(defaultClient);
    String username = "dsky"; // String | The username.
    Integer id = 1; // Integer | The item's id.
    String hash = "4b5v4398573406"; // String | The private hash for the username.
    DeleteFromMealPlanRequest deleteFromMealPlanRequest = new DeleteFromMealPlanRequest(); // DeleteFromMealPlanRequest | 
    try {
      Object result = apiInstance.deleteMealPlanTemplate(username, id, hash, deleteFromMealPlanRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MealPlanningApi#deleteMealPlanTemplate");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **username** | **String**| The username. | |
| **id** | **Integer**| The item&#39;s id. | |
| **hash** | **String**| The private hash for the username. | |
| **deleteFromMealPlanRequest** | [**DeleteFromMealPlanRequest**](DeleteFromMealPlanRequest.md)|  | |

### Return type

**Object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |

<a id="generateMealPlan"></a>
# **generateMealPlan**
> GenerateMealPlan200Response generateMealPlan(timeFrame, targetCalories, diet, exclude)

Generate Meal Plan

Generate a meal plan with three meals per day (breakfast, lunch, and dinner).

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.MealPlanningApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    MealPlanningApi apiInstance = new MealPlanningApi(defaultClient);
    String timeFrame = "day"; // String | Either for one \"day\" or an entire \"week\".
    BigDecimal targetCalories = new BigDecimal("2000"); // BigDecimal | What is the caloric target for one day? The meal plan generator will try to get as close as possible to that goal.
    String diet = "vegetarian"; // String | Enter a diet that the meal plan has to adhere to. See a full list of supported diets.
    String exclude = "shellfish, olives"; // String | A comma-separated list of allergens or ingredients that must be excluded.
    try {
      GenerateMealPlan200Response result = apiInstance.generateMealPlan(timeFrame, targetCalories, diet, exclude);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MealPlanningApi#generateMealPlan");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **timeFrame** | **String**| Either for one \&quot;day\&quot; or an entire \&quot;week\&quot;. | [optional] |
| **targetCalories** | **BigDecimal**| What is the caloric target for one day? The meal plan generator will try to get as close as possible to that goal. | [optional] |
| **diet** | **String**| Enter a diet that the meal plan has to adhere to. See a full list of supported diets. | [optional] |
| **exclude** | **String**| A comma-separated list of allergens or ingredients that must be excluded. | [optional] |

### Return type

[**GenerateMealPlan200Response**](GenerateMealPlan200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |

<a id="generateShoppingList"></a>
# **generateShoppingList**
> GenerateShoppingList200Response generateShoppingList(username, startDate, endDate, hash, generateShoppingListRequest)

Generate Shopping List

Generate the shopping list for a user from the meal planner in a given time frame.

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.MealPlanningApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    MealPlanningApi apiInstance = new MealPlanningApi(defaultClient);
    String username = "dsky"; // String | The username.
    String startDate = "2020-06-01"; // String | The start date in the format yyyy-mm-dd.
    String endDate = "2020-06-07"; // String | The end date in the format yyyy-mm-dd.
    String hash = "hash_example"; // String | The private hash for the username.
    GenerateShoppingListRequest generateShoppingListRequest = new GenerateShoppingListRequest(); // GenerateShoppingListRequest | 
    try {
      GenerateShoppingList200Response result = apiInstance.generateShoppingList(username, startDate, endDate, hash, generateShoppingListRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MealPlanningApi#generateShoppingList");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **username** | **String**| The username. | |
| **startDate** | **String**| The start date in the format yyyy-mm-dd. | |
| **endDate** | **String**| The end date in the format yyyy-mm-dd. | |
| **hash** | **String**| The private hash for the username. | |
| **generateShoppingListRequest** | [**GenerateShoppingListRequest**](GenerateShoppingListRequest.md)|  | |

### Return type

[**GenerateShoppingList200Response**](GenerateShoppingList200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |

<a id="getMealPlanTemplate"></a>
# **getMealPlanTemplate**
> GetMealPlanTemplate200Response getMealPlanTemplate(username, id, hash)

Get Meal Plan Template

Get information about a meal plan template.

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.MealPlanningApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    MealPlanningApi apiInstance = new MealPlanningApi(defaultClient);
    String username = "dsky"; // String | The username.
    Integer id = 1; // Integer | The item's id.
    String hash = "hash_example"; // String | The private hash for the username.
    try {
      GetMealPlanTemplate200Response result = apiInstance.getMealPlanTemplate(username, id, hash);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MealPlanningApi#getMealPlanTemplate");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **username** | **String**| The username. | |
| **id** | **Integer**| The item&#39;s id. | |
| **hash** | **String**| The private hash for the username. | |

### Return type

[**GetMealPlanTemplate200Response**](GetMealPlanTemplate200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |

<a id="getMealPlanTemplates"></a>
# **getMealPlanTemplates**
> GetMealPlanTemplates200Response getMealPlanTemplates(username, hash)

Get Meal Plan Templates

Get meal plan templates from user or public ones.

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.MealPlanningApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    MealPlanningApi apiInstance = new MealPlanningApi(defaultClient);
    String username = "dsky"; // String | The username.
    String hash = "hash_example"; // String | The private hash for the username.
    try {
      GetMealPlanTemplates200Response result = apiInstance.getMealPlanTemplates(username, hash);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MealPlanningApi#getMealPlanTemplates");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **username** | **String**| The username. | |
| **hash** | **String**| The private hash for the username. | |

### Return type

[**GetMealPlanTemplates200Response**](GetMealPlanTemplates200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |

<a id="getMealPlanWeek"></a>
# **getMealPlanWeek**
> GetMealPlanWeek200Response getMealPlanWeek(username, startDate, hash)

Get Meal Plan Week

Retrieve a meal planned week for the given user. The username must be a spoonacular user and the hash must the the user&#39;s hash that can be found in his/her account.

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.MealPlanningApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    MealPlanningApi apiInstance = new MealPlanningApi(defaultClient);
    String username = "dsky"; // String | The username.
    String startDate = "2020-06-01"; // String | The start date of the meal planned week in the format yyyy-mm-dd.
    String hash = "hash_example"; // String | The private hash for the username.
    try {
      GetMealPlanWeek200Response result = apiInstance.getMealPlanWeek(username, startDate, hash);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MealPlanningApi#getMealPlanWeek");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **username** | **String**| The username. | |
| **startDate** | **String**| The start date of the meal planned week in the format yyyy-mm-dd. | |
| **hash** | **String**| The private hash for the username. | |

### Return type

[**GetMealPlanWeek200Response**](GetMealPlanWeek200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |

<a id="getShoppingList"></a>
# **getShoppingList**
> GetShoppingList200Response getShoppingList(username, hash)

Get Shopping List

Get the current shopping list for the given user.

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.MealPlanningApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    MealPlanningApi apiInstance = new MealPlanningApi(defaultClient);
    String username = "dsky"; // String | The username.
    String hash = "hash_example"; // String | The private hash for the username.
    try {
      GetShoppingList200Response result = apiInstance.getShoppingList(username, hash);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MealPlanningApi#getShoppingList");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **username** | **String**| The username. | |
| **hash** | **String**| The private hash for the username. | |

### Return type

[**GetShoppingList200Response**](GetShoppingList200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |

