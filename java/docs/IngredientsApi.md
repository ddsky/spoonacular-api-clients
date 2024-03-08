# IngredientsApi

All URIs are relative to *https://api.spoonacular.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**autocompleteIngredientSearch**](IngredientsApi.md#autocompleteIngredientSearch) | **GET** /food/ingredients/autocomplete | Autocomplete Ingredient Search |
| [**computeIngredientAmount**](IngredientsApi.md#computeIngredientAmount) | **GET** /food/ingredients/{id}/amount | Compute Ingredient Amount |
| [**getIngredientInformation**](IngredientsApi.md#getIngredientInformation) | **GET** /food/ingredients/{id}/information | Get Ingredient Information |
| [**getIngredientSubstitutes**](IngredientsApi.md#getIngredientSubstitutes) | **GET** /food/ingredients/substitutes | Get Ingredient Substitutes |
| [**getIngredientSubstitutesByID**](IngredientsApi.md#getIngredientSubstitutesByID) | **GET** /food/ingredients/{id}/substitutes | Get Ingredient Substitutes by ID |
| [**ingredientSearch**](IngredientsApi.md#ingredientSearch) | **GET** /food/ingredients/search | Ingredient Search |
| [**ingredientsByIDImage**](IngredientsApi.md#ingredientsByIDImage) | **GET** /recipes/{id}/ingredientWidget.png | Ingredients by ID Image |
| [**mapIngredientsToGroceryProducts**](IngredientsApi.md#mapIngredientsToGroceryProducts) | **POST** /food/ingredients/map | Map Ingredients to Grocery Products |
| [**visualizeIngredients**](IngredientsApi.md#visualizeIngredients) | **POST** /recipes/visualizeIngredients | Ingredients Widget |


<a id="autocompleteIngredientSearch"></a>
# **autocompleteIngredientSearch**
> Set&lt;AutocompleteIngredientSearch200ResponseInner&gt; autocompleteIngredientSearch(query, number, metaInformation, intolerances, language)

Autocomplete Ingredient Search

Autocomplete the entry of an ingredient.

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.IngredientsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    IngredientsApi apiInstance = new IngredientsApi(defaultClient);
    String query = "burger"; // String | The (natural language) search query.
    Integer number = 10; // Integer | The maximum number of items to return (between 1 and 100). Defaults to 10.
    Boolean metaInformation = false; // Boolean | Whether to return more meta information about the ingredients.
    String intolerances = "egg"; // String | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.
    String language = "en"; // String | The language of the input. Either 'en' or 'de'.
    try {
      Set<AutocompleteIngredientSearch200ResponseInner> result = apiInstance.autocompleteIngredientSearch(query, number, metaInformation, intolerances, language);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IngredientsApi#autocompleteIngredientSearch");
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
| **number** | **Integer**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10] |
| **metaInformation** | **Boolean**| Whether to return more meta information about the ingredients. | [optional] |
| **intolerances** | **String**| A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. | [optional] |
| **language** | **String**| The language of the input. Either &#39;en&#39; or &#39;de&#39;. | [optional] [enum: en, de] |

### Return type

[**Set&lt;AutocompleteIngredientSearch200ResponseInner&gt;**](AutocompleteIngredientSearch200ResponseInner.md)

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

<a id="computeIngredientAmount"></a>
# **computeIngredientAmount**
> ComputeIngredientAmount200Response computeIngredientAmount(id, nutrient, target, unit)

Compute Ingredient Amount

Compute the amount you need of a certain ingredient for a certain nutritional goal. For example, how much pineapple do you have to eat to get 10 grams of protein?

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.IngredientsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    IngredientsApi apiInstance = new IngredientsApi(defaultClient);
    BigDecimal id = new BigDecimal("9266"); // BigDecimal | The id of the ingredient you want the amount for.
    String nutrient = "protein"; // String | The target nutrient. See a list of supported nutrients.
    BigDecimal target = new BigDecimal("2"); // BigDecimal | The target number of the given nutrient.
    String unit = "oz"; // String | The target unit.
    try {
      ComputeIngredientAmount200Response result = apiInstance.computeIngredientAmount(id, nutrient, target, unit);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IngredientsApi#computeIngredientAmount");
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
| **id** | **BigDecimal**| The id of the ingredient you want the amount for. | |
| **nutrient** | **String**| The target nutrient. See a list of supported nutrients. | |
| **target** | **BigDecimal**| The target number of the given nutrient. | |
| **unit** | **String**| The target unit. | [optional] |

### Return type

[**ComputeIngredientAmount200Response**](ComputeIngredientAmount200Response.md)

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

<a id="getIngredientInformation"></a>
# **getIngredientInformation**
> GetIngredientInformation200Response getIngredientInformation(id, amount, unit)

Get Ingredient Information

Use an ingredient id to get all available information about an ingredient, such as its image and supermarket aisle.

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.IngredientsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    IngredientsApi apiInstance = new IngredientsApi(defaultClient);
    Integer id = 1; // Integer | The item's id.
    BigDecimal amount = new BigDecimal("150"); // BigDecimal | The amount of this ingredient.
    String unit = "grams"; // String | The unit for the given amount.
    try {
      GetIngredientInformation200Response result = apiInstance.getIngredientInformation(id, amount, unit);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IngredientsApi#getIngredientInformation");
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
| **amount** | **BigDecimal**| The amount of this ingredient. | [optional] |
| **unit** | **String**| The unit for the given amount. | [optional] |

### Return type

[**GetIngredientInformation200Response**](GetIngredientInformation200Response.md)

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

<a id="getIngredientSubstitutes"></a>
# **getIngredientSubstitutes**
> GetIngredientSubstitutes200Response getIngredientSubstitutes(ingredientName)

Get Ingredient Substitutes

Search for substitutes for a given ingredient.

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.IngredientsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    IngredientsApi apiInstance = new IngredientsApi(defaultClient);
    String ingredientName = "butter"; // String | The name of the ingredient you want to replace.
    try {
      GetIngredientSubstitutes200Response result = apiInstance.getIngredientSubstitutes(ingredientName);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IngredientsApi#getIngredientSubstitutes");
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
| **ingredientName** | **String**| The name of the ingredient you want to replace. | |

### Return type

[**GetIngredientSubstitutes200Response**](GetIngredientSubstitutes200Response.md)

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

<a id="getIngredientSubstitutesByID"></a>
# **getIngredientSubstitutesByID**
> GetIngredientSubstitutes200Response getIngredientSubstitutesByID(id)

Get Ingredient Substitutes by ID

Search for substitutes for a given ingredient.

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.IngredientsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    IngredientsApi apiInstance = new IngredientsApi(defaultClient);
    Integer id = 1; // Integer | The item's id.
    try {
      GetIngredientSubstitutes200Response result = apiInstance.getIngredientSubstitutesByID(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IngredientsApi#getIngredientSubstitutesByID");
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

[**GetIngredientSubstitutes200Response**](GetIngredientSubstitutes200Response.md)

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

<a id="ingredientSearch"></a>
# **ingredientSearch**
> IngredientSearch200Response ingredientSearch(query, addChildren, minProteinPercent, maxProteinPercent, minFatPercent, maxFatPercent, minCarbsPercent, maxCarbsPercent, metaInformation, intolerances, sort, sortDirection, offset, number, language)

Ingredient Search

Search for simple whole foods (e.g. fruits, vegetables, nuts, grains, meat, fish, dairy etc.).

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.IngredientsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    IngredientsApi apiInstance = new IngredientsApi(defaultClient);
    String query = "burger"; // String | The (natural language) search query.
    Boolean addChildren = true; // Boolean | Whether to add children of found foods.
    BigDecimal minProteinPercent = new BigDecimal("10"); // BigDecimal | The minimum percentage of protein the food must have (between 0 and 100).
    BigDecimal maxProteinPercent = new BigDecimal("90"); // BigDecimal | The maximum percentage of protein the food can have (between 0 and 100).
    BigDecimal minFatPercent = new BigDecimal("10"); // BigDecimal | The minimum percentage of fat the food must have (between 0 and 100).
    BigDecimal maxFatPercent = new BigDecimal("90"); // BigDecimal | The maximum percentage of fat the food can have (between 0 and 100).
    BigDecimal minCarbsPercent = new BigDecimal("10"); // BigDecimal | The minimum percentage of carbs the food must have (between 0 and 100).
    BigDecimal maxCarbsPercent = new BigDecimal("90"); // BigDecimal | The maximum percentage of carbs the food can have (between 0 and 100).
    Boolean metaInformation = false; // Boolean | Whether to return more meta information about the ingredients.
    String intolerances = "egg"; // String | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.
    String sort = "calories"; // String | The strategy to sort recipes by. See a full list of supported sorting options.
    String sortDirection = "asc"; // String | The direction in which to sort. Must be either 'asc' (ascending) or 'desc' (descending).
    Integer offset = 56; // Integer | The number of results to skip (between 0 and 900).
    Integer number = 10; // Integer | The maximum number of items to return (between 1 and 100). Defaults to 10.
    String language = "en"; // String | The language of the input. Either 'en' or 'de'.
    try {
      IngredientSearch200Response result = apiInstance.ingredientSearch(query, addChildren, minProteinPercent, maxProteinPercent, minFatPercent, maxFatPercent, minCarbsPercent, maxCarbsPercent, metaInformation, intolerances, sort, sortDirection, offset, number, language);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IngredientsApi#ingredientSearch");
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
| **addChildren** | **Boolean**| Whether to add children of found foods. | [optional] |
| **minProteinPercent** | **BigDecimal**| The minimum percentage of protein the food must have (between 0 and 100). | [optional] |
| **maxProteinPercent** | **BigDecimal**| The maximum percentage of protein the food can have (between 0 and 100). | [optional] |
| **minFatPercent** | **BigDecimal**| The minimum percentage of fat the food must have (between 0 and 100). | [optional] |
| **maxFatPercent** | **BigDecimal**| The maximum percentage of fat the food can have (between 0 and 100). | [optional] |
| **minCarbsPercent** | **BigDecimal**| The minimum percentage of carbs the food must have (between 0 and 100). | [optional] |
| **maxCarbsPercent** | **BigDecimal**| The maximum percentage of carbs the food can have (between 0 and 100). | [optional] |
| **metaInformation** | **Boolean**| Whether to return more meta information about the ingredients. | [optional] |
| **intolerances** | **String**| A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. | [optional] |
| **sort** | **String**| The strategy to sort recipes by. See a full list of supported sorting options. | [optional] |
| **sortDirection** | **String**| The direction in which to sort. Must be either &#39;asc&#39; (ascending) or &#39;desc&#39; (descending). | [optional] |
| **offset** | **Integer**| The number of results to skip (between 0 and 900). | [optional] |
| **number** | **Integer**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10] |
| **language** | **String**| The language of the input. Either &#39;en&#39; or &#39;de&#39;. | [optional] [enum: en, de] |

### Return type

[**IngredientSearch200Response**](IngredientSearch200Response.md)

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

<a id="ingredientsByIDImage"></a>
# **ingredientsByIDImage**
> Object ingredientsByIDImage(id, measure)

Ingredients by ID Image

Visualize a recipe&#39;s ingredient list.

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.IngredientsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    IngredientsApi apiInstance = new IngredientsApi(defaultClient);
    BigDecimal id = new BigDecimal("1082038"); // BigDecimal | The recipe id.
    String measure = "us"; // String | Whether the the measures should be 'us' or 'metric'.
    try {
      Object result = apiInstance.ingredientsByIDImage(id, measure);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IngredientsApi#ingredientsByIDImage");
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
| **id** | **BigDecimal**| The recipe id. | |
| **measure** | **String**| Whether the the measures should be &#39;us&#39; or &#39;metric&#39;. | [optional] [enum: us, metric] |

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

<a id="mapIngredientsToGroceryProducts"></a>
# **mapIngredientsToGroceryProducts**
> Set&lt;MapIngredientsToGroceryProducts200ResponseInner&gt; mapIngredientsToGroceryProducts(mapIngredientsToGroceryProductsRequest)

Map Ingredients to Grocery Products

Map a set of ingredients to products you can buy in the grocery store.

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.IngredientsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    IngredientsApi apiInstance = new IngredientsApi(defaultClient);
    MapIngredientsToGroceryProductsRequest mapIngredientsToGroceryProductsRequest = new MapIngredientsToGroceryProductsRequest(); // MapIngredientsToGroceryProductsRequest | 
    try {
      Set<MapIngredientsToGroceryProducts200ResponseInner> result = apiInstance.mapIngredientsToGroceryProducts(mapIngredientsToGroceryProductsRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IngredientsApi#mapIngredientsToGroceryProducts");
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
| **mapIngredientsToGroceryProductsRequest** | [**MapIngredientsToGroceryProductsRequest**](MapIngredientsToGroceryProductsRequest.md)|  | |

### Return type

[**Set&lt;MapIngredientsToGroceryProducts200ResponseInner&gt;**](MapIngredientsToGroceryProducts200ResponseInner.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |

<a id="visualizeIngredients"></a>
# **visualizeIngredients**
> String visualizeIngredients(contentType, language, accept)

Ingredients Widget

Visualize ingredients of a recipe. You can play around with that endpoint!

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.IngredientsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    IngredientsApi apiInstance = new IngredientsApi(defaultClient);
    String contentType = "application/x-www-form-urlencoded"; // String | The content type.
    String language = "en"; // String | The language of the input. Either 'en' or 'de'.
    String accept = "application/json"; // String | Accept header.
    try {
      String result = apiInstance.visualizeIngredients(contentType, language, accept);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IngredientsApi#visualizeIngredients");
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
| **contentType** | **String**| The content type. | [optional] [enum: application/x-www-form-urlencoded, application/json, multipart/form-data] |
| **language** | **String**| The language of the input. Either &#39;en&#39; or &#39;de&#39;. | [optional] [enum: en, de] |
| **accept** | **String**| Accept header. | [optional] [enum: application/json, text/html, media/*] |

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/html

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |

