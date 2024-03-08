# DefaultApi

All URIs are relative to *https://api.spoonacular.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**analyzeRecipe**](DefaultApi.md#analyzeRecipe) | **POST** /recipes/analyze | Analyze Recipe |
| [**createRecipeCardGet**](DefaultApi.md#createRecipeCardGet) | **GET** /recipes/{id}/card | Create Recipe Card |
| [**searchRestaurants**](DefaultApi.md#searchRestaurants) | **GET** /food/restaurants/search | Search Restaurants |


<a id="analyzeRecipe"></a>
# **analyzeRecipe**
> Object analyzeRecipe(analyzeRecipeRequest, language, includeNutrition, includeTaste)

Analyze Recipe

This endpoint allows you to send raw recipe information, such as title, servings, and ingredients, to then see what we compute (badges, diets, nutrition, and more). This is useful if you have your own recipe data and want to enrich it with our semantic analysis.

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.DefaultApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    DefaultApi apiInstance = new DefaultApi(defaultClient);
    AnalyzeRecipeRequest analyzeRecipeRequest = new AnalyzeRecipeRequest(); // AnalyzeRecipeRequest | Example request body.
    String language = "en"; // String | The input language, either \"en\" or \"de\".
    Boolean includeNutrition = false; // Boolean | Whether nutrition data should be added to correctly parsed ingredients.
    Boolean includeTaste = false; // Boolean | Whether taste data should be added to correctly parsed ingredients.
    try {
      Object result = apiInstance.analyzeRecipe(analyzeRecipeRequest, language, includeNutrition, includeTaste);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling DefaultApi#analyzeRecipe");
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
| **analyzeRecipeRequest** | [**AnalyzeRecipeRequest**](AnalyzeRecipeRequest.md)| Example request body. | |
| **language** | **String**| The input language, either \&quot;en\&quot; or \&quot;de\&quot;. | [optional] |
| **includeNutrition** | **Boolean**| Whether nutrition data should be added to correctly parsed ingredients. | [optional] |
| **includeTaste** | **Boolean**| Whether taste data should be added to correctly parsed ingredients. | [optional] |

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

<a id="createRecipeCardGet"></a>
# **createRecipeCardGet**
> Object createRecipeCardGet(id, mask, backgroundImage, backgroundColor, fontColor)

Create Recipe Card

Generate a recipe card for a recipe.

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.DefaultApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    DefaultApi apiInstance = new DefaultApi(defaultClient);
    BigDecimal id = new BigDecimal("4632"); // BigDecimal | The recipe id.
    String mask = "ellipseMask"; // String | The mask to put over the recipe image (\"ellipseMask\", \"diamondMask\", \"starMask\", \"heartMask\", \"potMask\", \"fishMask\").
    String backgroundImage = "background1"; // String | The background image (\"none\",\"background1\", or \"background2\").
    String backgroundColor = "ffffff"; // String | The background color for the recipe card as a hex-string.
    String fontColor = "333333"; // String | The font color for the recipe card as a hex-string.
    try {
      Object result = apiInstance.createRecipeCardGet(id, mask, backgroundImage, backgroundColor, fontColor);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling DefaultApi#createRecipeCardGet");
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
| **mask** | **String**| The mask to put over the recipe image (\&quot;ellipseMask\&quot;, \&quot;diamondMask\&quot;, \&quot;starMask\&quot;, \&quot;heartMask\&quot;, \&quot;potMask\&quot;, \&quot;fishMask\&quot;). | [optional] |
| **backgroundImage** | **String**| The background image (\&quot;none\&quot;,\&quot;background1\&quot;, or \&quot;background2\&quot;). | [optional] |
| **backgroundColor** | **String**| The background color for the recipe card as a hex-string. | [optional] |
| **fontColor** | **String**| The font color for the recipe card as a hex-string. | [optional] |

### Return type

**Object**

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

<a id="searchRestaurants"></a>
# **searchRestaurants**
> SearchRestaurants200Response searchRestaurants(query, lat, lng, distance, budget, cuisine, minRating, isOpen, sort, page)

Search Restaurants

Search through thousands of restaurants (in North America) by location, cuisine, budget, and more.

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.DefaultApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    DefaultApi apiInstance = new DefaultApi(defaultClient);
    String query = "beach cafe"; // String | The search query.
    BigDecimal lat = new BigDecimal("37.7786357"); // BigDecimal | The latitude of the user's location.
    BigDecimal lng = new BigDecimal("-122.3918135"); // BigDecimal | The longitude of the user's location.\".
    BigDecimal distance = new BigDecimal("2"); // BigDecimal | The distance around the location in miles.
    BigDecimal budget = new BigDecimal("20"); // BigDecimal | The user's budget for a meal in USD.
    String cuisine = "italian"; // String | The cuisine of the restaurant.
    BigDecimal minRating = new BigDecimal("4.4"); // BigDecimal | The minimum rating of the restaurant between 0 and 5.
    Boolean isOpen = true; // Boolean | Whether the restaurant must be open at the time of search.
    String sort = "distance"; // String | How to sort the results, one of the following 'cheapest', 'fastest', 'rating', 'distance' or the default 'relevance'.
    BigDecimal page = new BigDecimal("0"); // BigDecimal | The page number of results.
    try {
      SearchRestaurants200Response result = apiInstance.searchRestaurants(query, lat, lng, distance, budget, cuisine, minRating, isOpen, sort, page);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling DefaultApi#searchRestaurants");
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
| **query** | **String**| The search query. | [optional] |
| **lat** | **BigDecimal**| The latitude of the user&#39;s location. | [optional] |
| **lng** | **BigDecimal**| The longitude of the user&#39;s location.\&quot;. | [optional] |
| **distance** | **BigDecimal**| The distance around the location in miles. | [optional] |
| **budget** | **BigDecimal**| The user&#39;s budget for a meal in USD. | [optional] |
| **cuisine** | **String**| The cuisine of the restaurant. | [optional] |
| **minRating** | **BigDecimal**| The minimum rating of the restaurant between 0 and 5. | [optional] |
| **isOpen** | **Boolean**| Whether the restaurant must be open at the time of search. | [optional] |
| **sort** | **String**| How to sort the results, one of the following &#39;cheapest&#39;, &#39;fastest&#39;, &#39;rating&#39;, &#39;distance&#39; or the default &#39;relevance&#39;. | [optional] |
| **page** | **BigDecimal**| The page number of results. | [optional] |

### Return type

[**SearchRestaurants200Response**](SearchRestaurants200Response.md)

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

