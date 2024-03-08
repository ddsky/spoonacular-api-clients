# MenuItemsApi

All URIs are relative to *https://api.spoonacular.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**autocompleteMenuItemSearch**](MenuItemsApi.md#autocompleteMenuItemSearch) | **GET** /food/menuItems/suggest | Autocomplete Menu Item Search |
| [**getMenuItemInformation**](MenuItemsApi.md#getMenuItemInformation) | **GET** /food/menuItems/{id} | Get Menu Item Information |
| [**menuItemNutritionByIDImage**](MenuItemsApi.md#menuItemNutritionByIDImage) | **GET** /food/menuItems/{id}/nutritionWidget.png | Menu Item Nutrition by ID Image |
| [**menuItemNutritionLabelImage**](MenuItemsApi.md#menuItemNutritionLabelImage) | **GET** /food/menuItems/{id}/nutritionLabel.png | Menu Item Nutrition Label Image |
| [**menuItemNutritionLabelWidget**](MenuItemsApi.md#menuItemNutritionLabelWidget) | **GET** /food/menuItems/{id}/nutritionLabel | Menu Item Nutrition Label Widget |
| [**searchMenuItems**](MenuItemsApi.md#searchMenuItems) | **GET** /food/menuItems/search | Search Menu Items |
| [**visualizeMenuItemNutritionByID**](MenuItemsApi.md#visualizeMenuItemNutritionByID) | **GET** /food/menuItems/{id}/nutritionWidget | Menu Item Nutrition by ID Widget |


<a id="autocompleteMenuItemSearch"></a>
# **autocompleteMenuItemSearch**
> AutocompleteMenuItemSearch200Response autocompleteMenuItemSearch(query, number)

Autocomplete Menu Item Search

Generate suggestions for menu items based on a (partial) query. The matches will be found by looking in the title only.

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.MenuItemsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    MenuItemsApi apiInstance = new MenuItemsApi(defaultClient);
    String query = "chicke"; // String | The (partial) search query.
    BigDecimal number = new BigDecimal("10"); // BigDecimal | The number of results to return (between 1 and 25).
    try {
      AutocompleteMenuItemSearch200Response result = apiInstance.autocompleteMenuItemSearch(query, number);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MenuItemsApi#autocompleteMenuItemSearch");
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
| **query** | **String**| The (partial) search query. | |
| **number** | **BigDecimal**| The number of results to return (between 1 and 25). | [optional] |

### Return type

[**AutocompleteMenuItemSearch200Response**](AutocompleteMenuItemSearch200Response.md)

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

<a id="getMenuItemInformation"></a>
# **getMenuItemInformation**
> GetMenuItemInformation200Response getMenuItemInformation(id)

Get Menu Item Information

Use a menu item id to get all available information about a menu item, such as nutrition.

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.MenuItemsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    MenuItemsApi apiInstance = new MenuItemsApi(defaultClient);
    Integer id = 1; // Integer | The item's id.
    try {
      GetMenuItemInformation200Response result = apiInstance.getMenuItemInformation(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MenuItemsApi#getMenuItemInformation");
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
| **id** | **Integer**| The item&#39;s id. | |

### Return type

[**GetMenuItemInformation200Response**](GetMenuItemInformation200Response.md)

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

<a id="menuItemNutritionByIDImage"></a>
# **menuItemNutritionByIDImage**
> Object menuItemNutritionByIDImage(id)

Menu Item Nutrition by ID Image

Visualize a menu item&#39;s nutritional information as HTML including CSS.

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.MenuItemsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    MenuItemsApi apiInstance = new MenuItemsApi(defaultClient);
    BigDecimal id = new BigDecimal("424571"); // BigDecimal | The menu item id.
    try {
      Object result = apiInstance.menuItemNutritionByIDImage(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MenuItemsApi#menuItemNutritionByIDImage");
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
| **id** | **BigDecimal**| The menu item id. | |

### Return type

**Object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |

<a id="menuItemNutritionLabelImage"></a>
# **menuItemNutritionLabelImage**
> Object menuItemNutritionLabelImage(id, showOptionalNutrients, showZeroValues, showIngredients)

Menu Item Nutrition Label Image

Visualize a menu item&#39;s nutritional label information as an image.

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.MenuItemsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    MenuItemsApi apiInstance = new MenuItemsApi(defaultClient);
    BigDecimal id = new BigDecimal("342313"); // BigDecimal | The menu item id.
    Boolean showOptionalNutrients = false; // Boolean | Whether to show optional nutrients.
    Boolean showZeroValues = false; // Boolean | Whether to show zero values.
    Boolean showIngredients = false; // Boolean | Whether to show a list of ingredients.
    try {
      Object result = apiInstance.menuItemNutritionLabelImage(id, showOptionalNutrients, showZeroValues, showIngredients);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MenuItemsApi#menuItemNutritionLabelImage");
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
| **id** | **BigDecimal**| The menu item id. | |
| **showOptionalNutrients** | **Boolean**| Whether to show optional nutrients. | [optional] |
| **showZeroValues** | **Boolean**| Whether to show zero values. | [optional] |
| **showIngredients** | **Boolean**| Whether to show a list of ingredients. | [optional] |

### Return type

**Object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |

<a id="menuItemNutritionLabelWidget"></a>
# **menuItemNutritionLabelWidget**
> String menuItemNutritionLabelWidget(id, defaultCss, showOptionalNutrients, showZeroValues, showIngredients)

Menu Item Nutrition Label Widget

Visualize a menu item&#39;s nutritional label information as HTML including CSS.

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.MenuItemsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    MenuItemsApi apiInstance = new MenuItemsApi(defaultClient);
    BigDecimal id = new BigDecimal("342313"); // BigDecimal | The menu item id.
    Boolean defaultCss = true; // Boolean | Whether the default CSS should be added to the response.
    Boolean showOptionalNutrients = false; // Boolean | Whether to show optional nutrients.
    Boolean showZeroValues = false; // Boolean | Whether to show zero values.
    Boolean showIngredients = false; // Boolean | Whether to show a list of ingredients.
    try {
      String result = apiInstance.menuItemNutritionLabelWidget(id, defaultCss, showOptionalNutrients, showZeroValues, showIngredients);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MenuItemsApi#menuItemNutritionLabelWidget");
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
| **id** | **BigDecimal**| The menu item id. | |
| **defaultCss** | **Boolean**| Whether the default CSS should be added to the response. | [optional] [default to true] |
| **showOptionalNutrients** | **Boolean**| Whether to show optional nutrients. | [optional] |
| **showZeroValues** | **Boolean**| Whether to show zero values. | [optional] |
| **showIngredients** | **Boolean**| Whether to show a list of ingredients. | [optional] |

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |

<a id="searchMenuItems"></a>
# **searchMenuItems**
> SearchMenuItems200Response searchMenuItems(query, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, addMenuItemInformation, offset, number)

Search Menu Items

Search over 115,000 menu items from over 800 fast food and chain restaurants. For example, McDonald&#39;s Big Mac or Starbucks Mocha.

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.MenuItemsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    MenuItemsApi apiInstance = new MenuItemsApi(defaultClient);
    String query = "burger"; // String | The (natural language) search query.
    BigDecimal minCalories = new BigDecimal("50"); // BigDecimal | The minimum amount of calories the menu item must have.
    BigDecimal maxCalories = new BigDecimal("800"); // BigDecimal | The maximum amount of calories the menu item can have.
    BigDecimal minCarbs = new BigDecimal("10"); // BigDecimal | The minimum amount of carbohydrates in grams the menu item must have.
    BigDecimal maxCarbs = new BigDecimal("100"); // BigDecimal | The maximum amount of carbohydrates in grams the menu item can have.
    BigDecimal minProtein = new BigDecimal("10"); // BigDecimal | The minimum amount of protein in grams the menu item must have.
    BigDecimal maxProtein = new BigDecimal("100"); // BigDecimal | The maximum amount of protein in grams the menu item can have.
    BigDecimal minFat = new BigDecimal("1"); // BigDecimal | The minimum amount of fat in grams the menu item must have.
    BigDecimal maxFat = new BigDecimal("100"); // BigDecimal | The maximum amount of fat in grams the menu item can have.
    Boolean addMenuItemInformation = true; // Boolean | If set to true, you get more information about the menu items returned.
    Integer offset = 56; // Integer | The number of results to skip (between 0 and 900).
    Integer number = 10; // Integer | The maximum number of items to return (between 1 and 100). Defaults to 10.
    try {
      SearchMenuItems200Response result = apiInstance.searchMenuItems(query, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, addMenuItemInformation, offset, number);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MenuItemsApi#searchMenuItems");
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
| **query** | **String**| The (natural language) search query. | [optional] |
| **minCalories** | **BigDecimal**| The minimum amount of calories the menu item must have. | [optional] |
| **maxCalories** | **BigDecimal**| The maximum amount of calories the menu item can have. | [optional] |
| **minCarbs** | **BigDecimal**| The minimum amount of carbohydrates in grams the menu item must have. | [optional] |
| **maxCarbs** | **BigDecimal**| The maximum amount of carbohydrates in grams the menu item can have. | [optional] |
| **minProtein** | **BigDecimal**| The minimum amount of protein in grams the menu item must have. | [optional] |
| **maxProtein** | **BigDecimal**| The maximum amount of protein in grams the menu item can have. | [optional] |
| **minFat** | **BigDecimal**| The minimum amount of fat in grams the menu item must have. | [optional] |
| **maxFat** | **BigDecimal**| The maximum amount of fat in grams the menu item can have. | [optional] |
| **addMenuItemInformation** | **Boolean**| If set to true, you get more information about the menu items returned. | [optional] |
| **offset** | **Integer**| The number of results to skip (between 0 and 900). | [optional] |
| **number** | **Integer**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10] |

### Return type

[**SearchMenuItems200Response**](SearchMenuItems200Response.md)

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

<a id="visualizeMenuItemNutritionByID"></a>
# **visualizeMenuItemNutritionByID**
> String visualizeMenuItemNutritionByID(id, defaultCss, accept)

Menu Item Nutrition by ID Widget

Visualize a menu item&#39;s nutritional information as HTML including CSS.

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.MenuItemsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    MenuItemsApi apiInstance = new MenuItemsApi(defaultClient);
    Integer id = 1; // Integer | The item's id.
    Boolean defaultCss = true; // Boolean | Whether the default CSS should be added to the response.
    String accept = "application/json"; // String | Accept header.
    try {
      String result = apiInstance.visualizeMenuItemNutritionByID(id, defaultCss, accept);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MenuItemsApi#visualizeMenuItemNutritionByID");
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
| **id** | **Integer**| The item&#39;s id. | |
| **defaultCss** | **Boolean**| Whether the default CSS should be added to the response. | [optional] [default to true] |
| **accept** | **String**| Accept header. | [optional] [enum: application/json, text/html, media/*] |

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |

