# RecipesApi

All URIs are relative to *https://api.spoonacular.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**analyzeARecipeSearchQuery**](RecipesApi.md#analyzeARecipeSearchQuery) | **GET** /recipes/queries/analyze | Analyze a Recipe Search Query |
| [**analyzeRecipeInstructions**](RecipesApi.md#analyzeRecipeInstructions) | **POST** /recipes/analyzeInstructions | Analyze Recipe Instructions |
| [**autocompleteRecipeSearch**](RecipesApi.md#autocompleteRecipeSearch) | **GET** /recipes/autocomplete | Autocomplete Recipe Search |
| [**classifyCuisine**](RecipesApi.md#classifyCuisine) | **POST** /recipes/cuisine | Classify Cuisine |
| [**computeGlycemicLoad**](RecipesApi.md#computeGlycemicLoad) | **POST** /food/ingredients/glycemicLoad | Compute Glycemic Load |
| [**convertAmounts**](RecipesApi.md#convertAmounts) | **GET** /recipes/convert | Convert Amounts |
| [**createRecipeCard**](RecipesApi.md#createRecipeCard) | **POST** /recipes/visualizeRecipe | Create Recipe Card |
| [**equipmentByIDImage**](RecipesApi.md#equipmentByIDImage) | **GET** /recipes/{id}/equipmentWidget.png | Equipment by ID Image |
| [**extractRecipeFromWebsite**](RecipesApi.md#extractRecipeFromWebsite) | **GET** /recipes/extract | Extract Recipe from Website |
| [**getAnalyzedRecipeInstructions**](RecipesApi.md#getAnalyzedRecipeInstructions) | **GET** /recipes/{id}/analyzedInstructions | Get Analyzed Recipe Instructions |
| [**getRandomRecipes**](RecipesApi.md#getRandomRecipes) | **GET** /recipes/random | Get Random Recipes |
| [**getRecipeEquipmentByID**](RecipesApi.md#getRecipeEquipmentByID) | **GET** /recipes/{id}/equipmentWidget.json | Equipment by ID |
| [**getRecipeInformation**](RecipesApi.md#getRecipeInformation) | **GET** /recipes/{id}/information | Get Recipe Information |
| [**getRecipeInformationBulk**](RecipesApi.md#getRecipeInformationBulk) | **GET** /recipes/informationBulk | Get Recipe Information Bulk |
| [**getRecipeIngredientsByID**](RecipesApi.md#getRecipeIngredientsByID) | **GET** /recipes/{id}/ingredientWidget.json | Ingredients by ID |
| [**getRecipeNutritionWidgetByID**](RecipesApi.md#getRecipeNutritionWidgetByID) | **GET** /recipes/{id}/nutritionWidget.json | Nutrition by ID |
| [**getRecipePriceBreakdownByID**](RecipesApi.md#getRecipePriceBreakdownByID) | **GET** /recipes/{id}/priceBreakdownWidget.json | Price Breakdown by ID |
| [**getRecipeTasteByID**](RecipesApi.md#getRecipeTasteByID) | **GET** /recipes/{id}/tasteWidget.json | Taste by ID |
| [**getSimilarRecipes**](RecipesApi.md#getSimilarRecipes) | **GET** /recipes/{id}/similar | Get Similar Recipes |
| [**guessNutritionByDishName**](RecipesApi.md#guessNutritionByDishName) | **GET** /recipes/guessNutrition | Guess Nutrition by Dish Name |
| [**ingredientsByIDImage**](RecipesApi.md#ingredientsByIDImage) | **GET** /recipes/{id}/ingredientWidget.png | Ingredients by ID Image |
| [**parseIngredients**](RecipesApi.md#parseIngredients) | **POST** /recipes/parseIngredients | Parse Ingredients |
| [**priceBreakdownByIDImage**](RecipesApi.md#priceBreakdownByIDImage) | **GET** /recipes/{id}/priceBreakdownWidget.png | Price Breakdown by ID Image |
| [**quickAnswer**](RecipesApi.md#quickAnswer) | **GET** /recipes/quickAnswer | Quick Answer |
| [**recipeNutritionByIDImage**](RecipesApi.md#recipeNutritionByIDImage) | **GET** /recipes/{id}/nutritionWidget.png | Recipe Nutrition by ID Image |
| [**recipeNutritionLabelImage**](RecipesApi.md#recipeNutritionLabelImage) | **GET** /recipes/{id}/nutritionLabel.png | Recipe Nutrition Label Image |
| [**recipeNutritionLabelWidget**](RecipesApi.md#recipeNutritionLabelWidget) | **GET** /recipes/{id}/nutritionLabel | Recipe Nutrition Label Widget |
| [**recipeTasteByIDImage**](RecipesApi.md#recipeTasteByIDImage) | **GET** /recipes/{id}/tasteWidget.png | Recipe Taste by ID Image |
| [**searchRecipes**](RecipesApi.md#searchRecipes) | **GET** /recipes/complexSearch | Search Recipes |
| [**searchRecipesByIngredients**](RecipesApi.md#searchRecipesByIngredients) | **GET** /recipes/findByIngredients | Search Recipes by Ingredients |
| [**searchRecipesByNutrients**](RecipesApi.md#searchRecipesByNutrients) | **GET** /recipes/findByNutrients | Search Recipes by Nutrients |
| [**summarizeRecipe**](RecipesApi.md#summarizeRecipe) | **GET** /recipes/{id}/summary | Summarize Recipe |
| [**visualizeEquipment**](RecipesApi.md#visualizeEquipment) | **POST** /recipes/visualizeEquipment | Equipment Widget |
| [**visualizePriceBreakdown**](RecipesApi.md#visualizePriceBreakdown) | **POST** /recipes/visualizePriceEstimator | Price Breakdown Widget |
| [**visualizeRecipeEquipmentByID**](RecipesApi.md#visualizeRecipeEquipmentByID) | **GET** /recipes/{id}/equipmentWidget | Equipment by ID Widget |
| [**visualizeRecipeIngredientsByID**](RecipesApi.md#visualizeRecipeIngredientsByID) | **GET** /recipes/{id}/ingredientWidget | Ingredients by ID Widget |
| [**visualizeRecipeNutrition**](RecipesApi.md#visualizeRecipeNutrition) | **POST** /recipes/visualizeNutrition | Recipe Nutrition Widget |
| [**visualizeRecipeNutritionByID**](RecipesApi.md#visualizeRecipeNutritionByID) | **GET** /recipes/{id}/nutritionWidget | Recipe Nutrition by ID Widget |
| [**visualizeRecipePriceBreakdownByID**](RecipesApi.md#visualizeRecipePriceBreakdownByID) | **GET** /recipes/{id}/priceBreakdownWidget | Price Breakdown by ID Widget |
| [**visualizeRecipeTaste**](RecipesApi.md#visualizeRecipeTaste) | **POST** /recipes/visualizeTaste | Recipe Taste Widget |
| [**visualizeRecipeTasteByID**](RecipesApi.md#visualizeRecipeTasteByID) | **GET** /recipes/{id}/tasteWidget | Recipe Taste by ID Widget |


<a id="analyzeARecipeSearchQuery"></a>
# **analyzeARecipeSearchQuery**
> AnalyzeARecipeSearchQuery200Response analyzeARecipeSearchQuery(q)

Analyze a Recipe Search Query

Parse a recipe search query to find out its intention.

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.RecipesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    RecipesApi apiInstance = new RecipesApi(defaultClient);
    String q = "salmon with fusilli and no nuts"; // String | The recipe search query.
    try {
      AnalyzeARecipeSearchQuery200Response result = apiInstance.analyzeARecipeSearchQuery(q);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RecipesApi#analyzeARecipeSearchQuery");
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
| **q** | **String**| The recipe search query. | |

### Return type

[**AnalyzeARecipeSearchQuery200Response**](AnalyzeARecipeSearchQuery200Response.md)

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

<a id="analyzeRecipeInstructions"></a>
# **analyzeRecipeInstructions**
> AnalyzeRecipeInstructions200Response analyzeRecipeInstructions(contentType)

Analyze Recipe Instructions

This endpoint allows you to break down instructions into atomic steps. Furthermore, each step will contain the ingredients and equipment required. Additionally, all ingredients and equipment from the recipe&#39;s instructions will be extracted independently of the step they&#39;re used in.

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.RecipesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    RecipesApi apiInstance = new RecipesApi(defaultClient);
    String contentType = "application/x-www-form-urlencoded"; // String | The content type.
    try {
      AnalyzeRecipeInstructions200Response result = apiInstance.analyzeRecipeInstructions(contentType);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RecipesApi#analyzeRecipeInstructions");
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

### Return type

[**AnalyzeRecipeInstructions200Response**](AnalyzeRecipeInstructions200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |

<a id="autocompleteRecipeSearch"></a>
# **autocompleteRecipeSearch**
> Set&lt;AutocompleteRecipeSearch200ResponseInner&gt; autocompleteRecipeSearch(query, number)

Autocomplete Recipe Search

Autocomplete a partial input to suggest possible recipe names.

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.RecipesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    RecipesApi apiInstance = new RecipesApi(defaultClient);
    String query = "burger"; // String | The (natural language) search query.
    Integer number = 10; // Integer | The maximum number of items to return (between 1 and 100). Defaults to 10.
    try {
      Set<AutocompleteRecipeSearch200ResponseInner> result = apiInstance.autocompleteRecipeSearch(query, number);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RecipesApi#autocompleteRecipeSearch");
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

### Return type

[**Set&lt;AutocompleteRecipeSearch200ResponseInner&gt;**](AutocompleteRecipeSearch200ResponseInner.md)

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

<a id="classifyCuisine"></a>
# **classifyCuisine**
> ClassifyCuisine200Response classifyCuisine(contentType)

Classify Cuisine

Classify the recipe&#39;s cuisine.

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.RecipesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    RecipesApi apiInstance = new RecipesApi(defaultClient);
    String contentType = "application/x-www-form-urlencoded"; // String | The content type.
    try {
      ClassifyCuisine200Response result = apiInstance.classifyCuisine(contentType);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RecipesApi#classifyCuisine");
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

### Return type

[**ClassifyCuisine200Response**](ClassifyCuisine200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |

<a id="computeGlycemicLoad"></a>
# **computeGlycemicLoad**
> ComputeGlycemicLoad200Response computeGlycemicLoad(computeGlycemicLoadRequest, language)

Compute Glycemic Load

Retrieve the glycemic index for a list of ingredients and compute the individual and total glycemic load.

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.RecipesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    RecipesApi apiInstance = new RecipesApi(defaultClient);
    ComputeGlycemicLoadRequest computeGlycemicLoadRequest = new ComputeGlycemicLoadRequest(); // ComputeGlycemicLoadRequest | 
    String language = "en"; // String | The language of the input. Either 'en' or 'de'.
    try {
      ComputeGlycemicLoad200Response result = apiInstance.computeGlycemicLoad(computeGlycemicLoadRequest, language);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RecipesApi#computeGlycemicLoad");
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
| **computeGlycemicLoadRequest** | [**ComputeGlycemicLoadRequest**](ComputeGlycemicLoadRequest.md)|  | |
| **language** | **String**| The language of the input. Either &#39;en&#39; or &#39;de&#39;. | [optional] [enum: en, de] |

### Return type

[**ComputeGlycemicLoad200Response**](ComputeGlycemicLoad200Response.md)

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

<a id="convertAmounts"></a>
# **convertAmounts**
> ConvertAmounts200Response convertAmounts(ingredientName, sourceAmount, sourceUnit, targetUnit)

Convert Amounts

Convert amounts like \&quot;2 cups of flour to grams\&quot;.

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.RecipesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    RecipesApi apiInstance = new RecipesApi(defaultClient);
    String ingredientName = "flour"; // String | The ingredient which you want to convert.
    BigDecimal sourceAmount = new BigDecimal("2.5"); // BigDecimal | The amount from which you want to convert, e.g. the 2.5 in \"2.5 cups of flour to grams\".
    String sourceUnit = "cups"; // String | The unit from which you want to convert, e.g. the grams in \"2.5 cups of flour to grams\". You can also use \"piece\", e.g. \"3.4 oz tomatoes to piece\"
    String targetUnit = "grams"; // String | The unit to which you want to convert, e.g. the grams in \"2.5 cups of flour to grams\". You can also use \"piece\", e.g. \"3.4 oz tomatoes to piece\"
    try {
      ConvertAmounts200Response result = apiInstance.convertAmounts(ingredientName, sourceAmount, sourceUnit, targetUnit);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RecipesApi#convertAmounts");
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
| **ingredientName** | **String**| The ingredient which you want to convert. | |
| **sourceAmount** | **BigDecimal**| The amount from which you want to convert, e.g. the 2.5 in \&quot;2.5 cups of flour to grams\&quot;. | |
| **sourceUnit** | **String**| The unit from which you want to convert, e.g. the grams in \&quot;2.5 cups of flour to grams\&quot;. You can also use \&quot;piece\&quot;, e.g. \&quot;3.4 oz tomatoes to piece\&quot; | |
| **targetUnit** | **String**| The unit to which you want to convert, e.g. the grams in \&quot;2.5 cups of flour to grams\&quot;. You can also use \&quot;piece\&quot;, e.g. \&quot;3.4 oz tomatoes to piece\&quot; | |

### Return type

[**ConvertAmounts200Response**](ConvertAmounts200Response.md)

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

<a id="createRecipeCard"></a>
# **createRecipeCard**
> CreateRecipeCard200Response createRecipeCard(contentType)

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
import com.spoonacular.RecipesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    RecipesApi apiInstance = new RecipesApi(defaultClient);
    String contentType = "application/x-www-form-urlencoded"; // String | The content type.
    try {
      CreateRecipeCard200Response result = apiInstance.createRecipeCard(contentType);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RecipesApi#createRecipeCard");
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

### Return type

[**CreateRecipeCard200Response**](CreateRecipeCard200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |

<a id="equipmentByIDImage"></a>
# **equipmentByIDImage**
> Object equipmentByIDImage(id)

Equipment by ID Image

Visualize a recipe&#39;s equipment list as an image.

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.RecipesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    RecipesApi apiInstance = new RecipesApi(defaultClient);
    BigDecimal id = new BigDecimal("44860"); // BigDecimal | The recipe id.
    try {
      Object result = apiInstance.equipmentByIDImage(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RecipesApi#equipmentByIDImage");
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

<a id="extractRecipeFromWebsite"></a>
# **extractRecipeFromWebsite**
> GetRecipeInformation200Response extractRecipeFromWebsite(url, forceExtraction, analyze, includeNutrition, includeTaste)

Extract Recipe from Website

This endpoint lets you extract recipe data such as title, ingredients, and instructions from any properly formatted Website.

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.RecipesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    RecipesApi apiInstance = new RecipesApi(defaultClient);
    String url = "https://foodista.com/recipe/ZHK4KPB6/chocolate-crinkle-cookies"; // String | The URL of the recipe page.
    Boolean forceExtraction = true; // Boolean | If true, the extraction will be triggered whether we already know the recipe or not. Use this only if information is missing as this operation is slower.
    Boolean analyze = false; // Boolean | If true, the recipe will be analyzed and classified resolving in more data such as cuisines, dish types, and more.
    Boolean includeNutrition = false; // Boolean | Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings.
    Boolean includeTaste = false; // Boolean | Whether taste data should be added to correctly parsed ingredients.
    try {
      GetRecipeInformation200Response result = apiInstance.extractRecipeFromWebsite(url, forceExtraction, analyze, includeNutrition, includeTaste);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RecipesApi#extractRecipeFromWebsite");
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
| **url** | **String**| The URL of the recipe page. | |
| **forceExtraction** | **Boolean**| If true, the extraction will be triggered whether we already know the recipe or not. Use this only if information is missing as this operation is slower. | [optional] |
| **analyze** | **Boolean**| If true, the recipe will be analyzed and classified resolving in more data such as cuisines, dish types, and more. | [optional] |
| **includeNutrition** | **Boolean**| Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. | [optional] [default to false] |
| **includeTaste** | **Boolean**| Whether taste data should be added to correctly parsed ingredients. | [optional] [default to false] |

### Return type

[**GetRecipeInformation200Response**](GetRecipeInformation200Response.md)

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

<a id="getAnalyzedRecipeInstructions"></a>
# **getAnalyzedRecipeInstructions**
> GetAnalyzedRecipeInstructions200Response getAnalyzedRecipeInstructions(id, stepBreakdown)

Get Analyzed Recipe Instructions

Get an analyzed breakdown of a recipe&#39;s instructions. Each step is enriched with the ingredients and equipment required.

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.RecipesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    RecipesApi apiInstance = new RecipesApi(defaultClient);
    Integer id = 1; // Integer | The item's id.
    Boolean stepBreakdown = true; // Boolean | Whether to break down the recipe steps even more.
    try {
      GetAnalyzedRecipeInstructions200Response result = apiInstance.getAnalyzedRecipeInstructions(id, stepBreakdown);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RecipesApi#getAnalyzedRecipeInstructions");
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
| **stepBreakdown** | **Boolean**| Whether to break down the recipe steps even more. | [optional] |

### Return type

[**GetAnalyzedRecipeInstructions200Response**](GetAnalyzedRecipeInstructions200Response.md)

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

<a id="getRandomRecipes"></a>
# **getRandomRecipes**
> GetRandomRecipes200Response getRandomRecipes(limitLicense, tags, number)

Get Random Recipes

Find random (popular) recipes. If you need to filter recipes by diet, nutrition etc. you might want to consider using the complex recipe search endpoint and set the sort request parameter to random.

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.RecipesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    RecipesApi apiInstance = new RecipesApi(defaultClient);
    Boolean limitLicense = true; // Boolean | Whether the recipes should have an open license that allows display with proper attribution.
    String tags = "tags_example"; // String | The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have.
    Integer number = 10; // Integer | The maximum number of items to return (between 1 and 100). Defaults to 10.
    try {
      GetRandomRecipes200Response result = apiInstance.getRandomRecipes(limitLicense, tags, number);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RecipesApi#getRandomRecipes");
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
| **limitLicense** | **Boolean**| Whether the recipes should have an open license that allows display with proper attribution. | [optional] [default to true] |
| **tags** | **String**| The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have. | [optional] |
| **number** | **Integer**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10] |

### Return type

[**GetRandomRecipes200Response**](GetRandomRecipes200Response.md)

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

<a id="getRecipeEquipmentByID"></a>
# **getRecipeEquipmentByID**
> GetRecipeEquipmentByID200Response getRecipeEquipmentByID(id)

Equipment by ID

Get a recipe&#39;s equipment list.

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.RecipesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    RecipesApi apiInstance = new RecipesApi(defaultClient);
    Integer id = 1; // Integer | The item's id.
    try {
      GetRecipeEquipmentByID200Response result = apiInstance.getRecipeEquipmentByID(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RecipesApi#getRecipeEquipmentByID");
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

[**GetRecipeEquipmentByID200Response**](GetRecipeEquipmentByID200Response.md)

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

<a id="getRecipeInformation"></a>
# **getRecipeInformation**
> GetRecipeInformation200Response getRecipeInformation(id, includeNutrition)

Get Recipe Information

Use a recipe id to get full information about a recipe, such as ingredients, nutrition, diet and allergen information, etc.

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.RecipesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    RecipesApi apiInstance = new RecipesApi(defaultClient);
    Integer id = 1; // Integer | The item's id.
    Boolean includeNutrition = false; // Boolean | Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings.
    try {
      GetRecipeInformation200Response result = apiInstance.getRecipeInformation(id, includeNutrition);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RecipesApi#getRecipeInformation");
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
| **includeNutrition** | **Boolean**| Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. | [optional] [default to false] |

### Return type

[**GetRecipeInformation200Response**](GetRecipeInformation200Response.md)

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

<a id="getRecipeInformationBulk"></a>
# **getRecipeInformationBulk**
> Set&lt;GetRecipeInformationBulk200ResponseInner&gt; getRecipeInformationBulk(ids, includeNutrition)

Get Recipe Information Bulk

Get information about multiple recipes at once. This is equivalent to calling the Get Recipe Information endpoint multiple times, but faster.

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.RecipesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    RecipesApi apiInstance = new RecipesApi(defaultClient);
    String ids = "715538,716429"; // String | A comma-separated list of recipe ids.
    Boolean includeNutrition = false; // Boolean | Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings.
    try {
      Set<GetRecipeInformationBulk200ResponseInner> result = apiInstance.getRecipeInformationBulk(ids, includeNutrition);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RecipesApi#getRecipeInformationBulk");
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
| **ids** | **String**| A comma-separated list of recipe ids. | |
| **includeNutrition** | **Boolean**| Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. | [optional] [default to false] |

### Return type

[**Set&lt;GetRecipeInformationBulk200ResponseInner&gt;**](GetRecipeInformationBulk200ResponseInner.md)

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

<a id="getRecipeIngredientsByID"></a>
# **getRecipeIngredientsByID**
> GetRecipeIngredientsByID200Response getRecipeIngredientsByID(id)

Ingredients by ID

Get a recipe&#39;s ingredient list.

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.RecipesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    RecipesApi apiInstance = new RecipesApi(defaultClient);
    Integer id = 1; // Integer | The item's id.
    try {
      GetRecipeIngredientsByID200Response result = apiInstance.getRecipeIngredientsByID(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RecipesApi#getRecipeIngredientsByID");
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

[**GetRecipeIngredientsByID200Response**](GetRecipeIngredientsByID200Response.md)

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

<a id="getRecipeNutritionWidgetByID"></a>
# **getRecipeNutritionWidgetByID**
> GetRecipeNutritionWidgetByID200Response getRecipeNutritionWidgetByID(id)

Nutrition by ID

Get a recipe&#39;s nutrition data.

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.RecipesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    RecipesApi apiInstance = new RecipesApi(defaultClient);
    Integer id = 1; // Integer | The item's id.
    try {
      GetRecipeNutritionWidgetByID200Response result = apiInstance.getRecipeNutritionWidgetByID(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RecipesApi#getRecipeNutritionWidgetByID");
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

[**GetRecipeNutritionWidgetByID200Response**](GetRecipeNutritionWidgetByID200Response.md)

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

<a id="getRecipePriceBreakdownByID"></a>
# **getRecipePriceBreakdownByID**
> GetRecipePriceBreakdownByID200Response getRecipePriceBreakdownByID(id)

Price Breakdown by ID

Get a recipe&#39;s price breakdown data.

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.RecipesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    RecipesApi apiInstance = new RecipesApi(defaultClient);
    Integer id = 1; // Integer | The item's id.
    try {
      GetRecipePriceBreakdownByID200Response result = apiInstance.getRecipePriceBreakdownByID(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RecipesApi#getRecipePriceBreakdownByID");
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

[**GetRecipePriceBreakdownByID200Response**](GetRecipePriceBreakdownByID200Response.md)

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

<a id="getRecipeTasteByID"></a>
# **getRecipeTasteByID**
> GetRecipeTasteByID200Response getRecipeTasteByID(id, normalize)

Taste by ID

Get a recipe&#39;s taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.RecipesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    RecipesApi apiInstance = new RecipesApi(defaultClient);
    Integer id = 1; // Integer | The item's id.
    Boolean normalize = true; // Boolean | Normalize to the strongest taste.
    try {
      GetRecipeTasteByID200Response result = apiInstance.getRecipeTasteByID(id, normalize);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RecipesApi#getRecipeTasteByID");
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
| **normalize** | **Boolean**| Normalize to the strongest taste. | [optional] [default to true] |

### Return type

[**GetRecipeTasteByID200Response**](GetRecipeTasteByID200Response.md)

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

<a id="getSimilarRecipes"></a>
# **getSimilarRecipes**
> Set&lt;GetSimilarRecipes200ResponseInner&gt; getSimilarRecipes(id, number, limitLicense)

Get Similar Recipes

Find recipes which are similar to the given one.

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.RecipesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    RecipesApi apiInstance = new RecipesApi(defaultClient);
    Integer id = 1; // Integer | The item's id.
    Integer number = 10; // Integer | The maximum number of items to return (between 1 and 100). Defaults to 10.
    Boolean limitLicense = true; // Boolean | Whether the recipes should have an open license that allows display with proper attribution.
    try {
      Set<GetSimilarRecipes200ResponseInner> result = apiInstance.getSimilarRecipes(id, number, limitLicense);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RecipesApi#getSimilarRecipes");
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
| **number** | **Integer**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10] |
| **limitLicense** | **Boolean**| Whether the recipes should have an open license that allows display with proper attribution. | [optional] [default to true] |

### Return type

[**Set&lt;GetSimilarRecipes200ResponseInner&gt;**](GetSimilarRecipes200ResponseInner.md)

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

<a id="guessNutritionByDishName"></a>
# **guessNutritionByDishName**
> GuessNutritionByDishName200Response guessNutritionByDishName(title)

Guess Nutrition by Dish Name

Estimate the macronutrients of a dish based on its title.

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.RecipesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    RecipesApi apiInstance = new RecipesApi(defaultClient);
    String title = "Spaghetti Aglio et Olio"; // String | The title of the dish.
    try {
      GuessNutritionByDishName200Response result = apiInstance.guessNutritionByDishName(title);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RecipesApi#guessNutritionByDishName");
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
| **title** | **String**| The title of the dish. | |

### Return type

[**GuessNutritionByDishName200Response**](GuessNutritionByDishName200Response.md)

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
import com.spoonacular.RecipesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    RecipesApi apiInstance = new RecipesApi(defaultClient);
    BigDecimal id = new BigDecimal("1082038"); // BigDecimal | The recipe id.
    String measure = "us"; // String | Whether the the measures should be 'us' or 'metric'.
    try {
      Object result = apiInstance.ingredientsByIDImage(id, measure);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RecipesApi#ingredientsByIDImage");
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

<a id="parseIngredients"></a>
# **parseIngredients**
> Set&lt;ParseIngredients200ResponseInner&gt; parseIngredients(contentType, language)

Parse Ingredients

Extract an ingredient from plain text.

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.RecipesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    RecipesApi apiInstance = new RecipesApi(defaultClient);
    String contentType = "application/x-www-form-urlencoded"; // String | The content type.
    String language = "en"; // String | The language of the input. Either 'en' or 'de'.
    try {
      Set<ParseIngredients200ResponseInner> result = apiInstance.parseIngredients(contentType, language);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RecipesApi#parseIngredients");
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

### Return type

[**Set&lt;ParseIngredients200ResponseInner&gt;**](ParseIngredients200ResponseInner.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |

<a id="priceBreakdownByIDImage"></a>
# **priceBreakdownByIDImage**
> Object priceBreakdownByIDImage(id)

Price Breakdown by ID Image

Visualize a recipe&#39;s price breakdown.

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.RecipesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    RecipesApi apiInstance = new RecipesApi(defaultClient);
    BigDecimal id = new BigDecimal("1082038"); // BigDecimal | The recipe id.
    try {
      Object result = apiInstance.priceBreakdownByIDImage(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RecipesApi#priceBreakdownByIDImage");
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

<a id="quickAnswer"></a>
# **quickAnswer**
> QuickAnswer200Response quickAnswer(q)

Quick Answer

Answer a nutrition related natural language question.

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.RecipesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    RecipesApi apiInstance = new RecipesApi(defaultClient);
    String q = "How much vitamin c is in 2 apples?"; // String | The nutrition related question.
    try {
      QuickAnswer200Response result = apiInstance.quickAnswer(q);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RecipesApi#quickAnswer");
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
| **q** | **String**| The nutrition related question. | |

### Return type

[**QuickAnswer200Response**](QuickAnswer200Response.md)

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

<a id="recipeNutritionByIDImage"></a>
# **recipeNutritionByIDImage**
> Object recipeNutritionByIDImage(id)

Recipe Nutrition by ID Image

Visualize a recipe&#39;s nutritional information as an image.

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.RecipesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    RecipesApi apiInstance = new RecipesApi(defaultClient);
    BigDecimal id = new BigDecimal("1082038"); // BigDecimal | The recipe id.
    try {
      Object result = apiInstance.recipeNutritionByIDImage(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RecipesApi#recipeNutritionByIDImage");
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

<a id="recipeNutritionLabelImage"></a>
# **recipeNutritionLabelImage**
> Object recipeNutritionLabelImage(id, showOptionalNutrients, showZeroValues, showIngredients)

Recipe Nutrition Label Image

Get a recipe&#39;s nutrition label as an image.

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.RecipesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    RecipesApi apiInstance = new RecipesApi(defaultClient);
    BigDecimal id = new BigDecimal("641166"); // BigDecimal | The recipe id.
    Boolean showOptionalNutrients = false; // Boolean | Whether to show optional nutrients.
    Boolean showZeroValues = false; // Boolean | Whether to show zero values.
    Boolean showIngredients = false; // Boolean | Whether to show a list of ingredients.
    try {
      Object result = apiInstance.recipeNutritionLabelImage(id, showOptionalNutrients, showZeroValues, showIngredients);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RecipesApi#recipeNutritionLabelImage");
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

<a id="recipeNutritionLabelWidget"></a>
# **recipeNutritionLabelWidget**
> String recipeNutritionLabelWidget(id, defaultCss, showOptionalNutrients, showZeroValues, showIngredients)

Recipe Nutrition Label Widget

Get a recipe&#39;s nutrition label as an HTML widget.

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.RecipesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    RecipesApi apiInstance = new RecipesApi(defaultClient);
    BigDecimal id = new BigDecimal("641166"); // BigDecimal | The recipe id.
    Boolean defaultCss = true; // Boolean | Whether the default CSS should be added to the response.
    Boolean showOptionalNutrients = false; // Boolean | Whether to show optional nutrients.
    Boolean showZeroValues = false; // Boolean | Whether to show zero values.
    Boolean showIngredients = false; // Boolean | Whether to show a list of ingredients.
    try {
      String result = apiInstance.recipeNutritionLabelWidget(id, defaultCss, showOptionalNutrients, showZeroValues, showIngredients);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RecipesApi#recipeNutritionLabelWidget");
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

<a id="recipeTasteByIDImage"></a>
# **recipeTasteByIDImage**
> Object recipeTasteByIDImage(id, normalize, rgb)

Recipe Taste by ID Image

Get a recipe&#39;s taste as an image. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.RecipesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    RecipesApi apiInstance = new RecipesApi(defaultClient);
    BigDecimal id = new BigDecimal("69095"); // BigDecimal | The recipe id.
    Boolean normalize = false; // Boolean | Normalize to the strongest taste.
    String rgb = "75,192,192"; // String | Red, green, blue values for the chart color.
    try {
      Object result = apiInstance.recipeTasteByIDImage(id, normalize, rgb);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RecipesApi#recipeTasteByIDImage");
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
| **normalize** | **Boolean**| Normalize to the strongest taste. | [optional] |
| **rgb** | **String**| Red, green, blue values for the chart color. | [optional] |

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

<a id="searchRecipes"></a>
# **searchRecipes**
> SearchRecipes200Response searchRecipes(query, cuisine, excludeCuisine, diet, intolerances, equipment, includeIngredients, excludeIngredients, type, instructionsRequired, fillIngredients, addRecipeInformation, addRecipeNutrition, author, tags, recipeBoxId, titleMatch, maxReadyTime, ignorePantry, sort, sortDirection, minCarbs, maxCarbs, minProtein, maxProtein, minCalories, maxCalories, minFat, maxFat, minAlcohol, maxAlcohol, minCaffeine, maxCaffeine, minCopper, maxCopper, minCalcium, maxCalcium, minCholine, maxCholine, minCholesterol, maxCholesterol, minFluoride, maxFluoride, minSaturatedFat, maxSaturatedFat, minVitaminA, maxVitaminA, minVitaminC, maxVitaminC, minVitaminD, maxVitaminD, minVitaminE, maxVitaminE, minVitaminK, maxVitaminK, minVitaminB1, maxVitaminB1, minVitaminB2, maxVitaminB2, minVitaminB5, maxVitaminB5, minVitaminB3, maxVitaminB3, minVitaminB6, maxVitaminB6, minVitaminB12, maxVitaminB12, minFiber, maxFiber, minFolate, maxFolate, minFolicAcid, maxFolicAcid, minIodine, maxIodine, minIron, maxIron, minMagnesium, maxMagnesium, minManganese, maxManganese, minPhosphorus, maxPhosphorus, minPotassium, maxPotassium, minSelenium, maxSelenium, minSodium, maxSodium, minSugar, maxSugar, minZinc, maxZinc, offset, number, limitLicense)

Search Recipes

Search through hundreds of thousands of recipes using advanced filtering and ranking. NOTE: This method combines searching by query, by ingredients, and by nutrients into one endpoint.

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.RecipesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    RecipesApi apiInstance = new RecipesApi(defaultClient);
    String query = "burger"; // String | The (natural language) search query.
    String cuisine = "italian"; // String | The cuisine(s) of the recipes. One or more, comma separated (will be interpreted as 'OR'). See a full list of supported cuisines.
    String excludeCuisine = "greek"; // String | The cuisine(s) the recipes must not match. One or more, comma separated (will be interpreted as 'AND'). See a full list of supported cuisines.
    String diet = "vegetarian"; // String | The diet for which the recipes must be suitable. See a full list of supported diets.
    String intolerances = "gluten"; // String | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.
    String equipment = "pan"; // String | The equipment required. Multiple values will be interpreted as 'or'. For example, value could be \"blender, frying pan, bowl\".
    String includeIngredients = "tomato,cheese"; // String | A comma-separated list of ingredients that should/must be used in the recipes.
    String excludeIngredients = "eggs"; // String | A comma-separated list of ingredients or ingredient types that the recipes must not contain.
    String type = "main course"; // String | The type of recipe. See a full list of supported meal types.
    Boolean instructionsRequired = true; // Boolean | Whether the recipes must have instructions.
    Boolean fillIngredients = false; // Boolean | Add information about the ingredients and whether they are used or missing in relation to the query.
    Boolean addRecipeInformation = false; // Boolean | If set to true, you get more information about the recipes returned.
    Boolean addRecipeNutrition = false; // Boolean | If set to true, you get nutritional information about each recipes returned.
    String author = "coffeebean"; // String | The username of the recipe author.
    String tags = "tags_example"; // String | The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have.
    BigDecimal recipeBoxId = new BigDecimal("2468"); // BigDecimal | The id of the recipe box to which the search should be limited to.
    String titleMatch = "Crock Pot"; // String | Enter text that must be found in the title of the recipes.
    BigDecimal maxReadyTime = new BigDecimal("20"); // BigDecimal | The maximum time in minutes it should take to prepare and cook the recipe.
    Boolean ignorePantry = false; // Boolean | Whether to ignore typical pantry items, such as water, salt, flour, etc.
    String sort = "calories"; // String | The strategy to sort recipes by. See a full list of supported sorting options.
    String sortDirection = "asc"; // String | The direction in which to sort. Must be either 'asc' (ascending) or 'desc' (descending).
    BigDecimal minCarbs = new BigDecimal("10"); // BigDecimal | The minimum amount of carbohydrates in grams the recipe must have.
    BigDecimal maxCarbs = new BigDecimal("100"); // BigDecimal | The maximum amount of carbohydrates in grams the recipe can have.
    BigDecimal minProtein = new BigDecimal("10"); // BigDecimal | The minimum amount of protein in grams the recipe must have.
    BigDecimal maxProtein = new BigDecimal("100"); // BigDecimal | The maximum amount of protein in grams the recipe can have.
    BigDecimal minCalories = new BigDecimal("50"); // BigDecimal | The minimum amount of calories the recipe must have.
    BigDecimal maxCalories = new BigDecimal("800"); // BigDecimal | The maximum amount of calories the recipe can have.
    BigDecimal minFat = new BigDecimal("1"); // BigDecimal | The minimum amount of fat in grams the recipe must have.
    BigDecimal maxFat = new BigDecimal("100"); // BigDecimal | The maximum amount of fat in grams the recipe can have.
    BigDecimal minAlcohol = new BigDecimal("0"); // BigDecimal | The minimum amount of alcohol in grams the recipe must have.
    BigDecimal maxAlcohol = new BigDecimal("100"); // BigDecimal | The maximum amount of alcohol in grams the recipe can have.
    BigDecimal minCaffeine = new BigDecimal("0"); // BigDecimal | The minimum amount of caffeine in milligrams the recipe must have.
    BigDecimal maxCaffeine = new BigDecimal("100"); // BigDecimal | The maximum amount of caffeine in milligrams the recipe can have.
    BigDecimal minCopper = new BigDecimal("0"); // BigDecimal | The minimum amount of copper in milligrams the recipe must have.
    BigDecimal maxCopper = new BigDecimal("100"); // BigDecimal | The maximum amount of copper in milligrams the recipe can have.
    BigDecimal minCalcium = new BigDecimal("0"); // BigDecimal | The minimum amount of calcium in milligrams the recipe must have.
    BigDecimal maxCalcium = new BigDecimal("100"); // BigDecimal | The maximum amount of calcium in milligrams the recipe can have.
    BigDecimal minCholine = new BigDecimal("0"); // BigDecimal | The minimum amount of choline in milligrams the recipe must have.
    BigDecimal maxCholine = new BigDecimal("100"); // BigDecimal | The maximum amount of choline in milligrams the recipe can have.
    BigDecimal minCholesterol = new BigDecimal("0"); // BigDecimal | The minimum amount of cholesterol in milligrams the recipe must have.
    BigDecimal maxCholesterol = new BigDecimal("100"); // BigDecimal | The maximum amount of cholesterol in milligrams the recipe can have.
    BigDecimal minFluoride = new BigDecimal("0"); // BigDecimal | The minimum amount of fluoride in milligrams the recipe must have.
    BigDecimal maxFluoride = new BigDecimal("100"); // BigDecimal | The maximum amount of fluoride in milligrams the recipe can have.
    BigDecimal minSaturatedFat = new BigDecimal("0"); // BigDecimal | The minimum amount of saturated fat in grams the recipe must have.
    BigDecimal maxSaturatedFat = new BigDecimal("100"); // BigDecimal | The maximum amount of saturated fat in grams the recipe can have.
    BigDecimal minVitaminA = new BigDecimal("0"); // BigDecimal | The minimum amount of Vitamin A in IU the recipe must have.
    BigDecimal maxVitaminA = new BigDecimal("100"); // BigDecimal | The maximum amount of Vitamin A in IU the recipe can have.
    BigDecimal minVitaminC = new BigDecimal("0"); // BigDecimal | The minimum amount of Vitamin C milligrams the recipe must have.
    BigDecimal maxVitaminC = new BigDecimal("100"); // BigDecimal | The maximum amount of Vitamin C in milligrams the recipe can have.
    BigDecimal minVitaminD = new BigDecimal("0"); // BigDecimal | The minimum amount of Vitamin D in micrograms the recipe must have.
    BigDecimal maxVitaminD = new BigDecimal("100"); // BigDecimal | The maximum amount of Vitamin D in micrograms the recipe can have.
    BigDecimal minVitaminE = new BigDecimal("0"); // BigDecimal | The minimum amount of Vitamin E in milligrams the recipe must have.
    BigDecimal maxVitaminE = new BigDecimal("100"); // BigDecimal | The maximum amount of Vitamin E in milligrams the recipe can have.
    BigDecimal minVitaminK = new BigDecimal("0"); // BigDecimal | The minimum amount of Vitamin K in micrograms the recipe must have.
    BigDecimal maxVitaminK = new BigDecimal("100"); // BigDecimal | The maximum amount of Vitamin K in micrograms the recipe can have.
    BigDecimal minVitaminB1 = new BigDecimal("0"); // BigDecimal | The minimum amount of Vitamin B1 in milligrams the recipe must have.
    BigDecimal maxVitaminB1 = new BigDecimal("100"); // BigDecimal | The maximum amount of Vitamin B1 in milligrams the recipe can have.
    BigDecimal minVitaminB2 = new BigDecimal("0"); // BigDecimal | The minimum amount of Vitamin B2 in milligrams the recipe must have.
    BigDecimal maxVitaminB2 = new BigDecimal("100"); // BigDecimal | The maximum amount of Vitamin B2 in milligrams the recipe can have.
    BigDecimal minVitaminB5 = new BigDecimal("0"); // BigDecimal | The minimum amount of Vitamin B5 in milligrams the recipe must have.
    BigDecimal maxVitaminB5 = new BigDecimal("100"); // BigDecimal | The maximum amount of Vitamin B5 in milligrams the recipe can have.
    BigDecimal minVitaminB3 = new BigDecimal("0"); // BigDecimal | The minimum amount of Vitamin B3 in milligrams the recipe must have.
    BigDecimal maxVitaminB3 = new BigDecimal("100"); // BigDecimal | The maximum amount of Vitamin B3 in milligrams the recipe can have.
    BigDecimal minVitaminB6 = new BigDecimal("0"); // BigDecimal | The minimum amount of Vitamin B6 in milligrams the recipe must have.
    BigDecimal maxVitaminB6 = new BigDecimal("100"); // BigDecimal | The maximum amount of Vitamin B6 in milligrams the recipe can have.
    BigDecimal minVitaminB12 = new BigDecimal("0"); // BigDecimal | The minimum amount of Vitamin B12 in micrograms the recipe must have.
    BigDecimal maxVitaminB12 = new BigDecimal("100"); // BigDecimal | The maximum amount of Vitamin B12 in micrograms the recipe can have.
    BigDecimal minFiber = new BigDecimal("0"); // BigDecimal | The minimum amount of fiber in grams the recipe must have.
    BigDecimal maxFiber = new BigDecimal("100"); // BigDecimal | The maximum amount of fiber in grams the recipe can have.
    BigDecimal minFolate = new BigDecimal("0"); // BigDecimal | The minimum amount of folate in micrograms the recipe must have.
    BigDecimal maxFolate = new BigDecimal("100"); // BigDecimal | The maximum amount of folate in micrograms the recipe can have.
    BigDecimal minFolicAcid = new BigDecimal("0"); // BigDecimal | The minimum amount of folic acid in micrograms the recipe must have.
    BigDecimal maxFolicAcid = new BigDecimal("100"); // BigDecimal | The maximum amount of folic acid in micrograms the recipe can have.
    BigDecimal minIodine = new BigDecimal("0"); // BigDecimal | The minimum amount of iodine in micrograms the recipe must have.
    BigDecimal maxIodine = new BigDecimal("100"); // BigDecimal | The maximum amount of iodine in micrograms the recipe can have.
    BigDecimal minIron = new BigDecimal("0"); // BigDecimal | The minimum amount of iron in milligrams the recipe must have.
    BigDecimal maxIron = new BigDecimal("100"); // BigDecimal | The maximum amount of iron in milligrams the recipe can have.
    BigDecimal minMagnesium = new BigDecimal("0"); // BigDecimal | The minimum amount of magnesium in milligrams the recipe must have.
    BigDecimal maxMagnesium = new BigDecimal("100"); // BigDecimal | The maximum amount of magnesium in milligrams the recipe can have.
    BigDecimal minManganese = new BigDecimal("0"); // BigDecimal | The minimum amount of manganese in milligrams the recipe must have.
    BigDecimal maxManganese = new BigDecimal("100"); // BigDecimal | The maximum amount of manganese in milligrams the recipe can have.
    BigDecimal minPhosphorus = new BigDecimal("0"); // BigDecimal | The minimum amount of phosphorus in milligrams the recipe must have.
    BigDecimal maxPhosphorus = new BigDecimal("100"); // BigDecimal | The maximum amount of phosphorus in milligrams the recipe can have.
    BigDecimal minPotassium = new BigDecimal("0"); // BigDecimal | The minimum amount of potassium in milligrams the recipe must have.
    BigDecimal maxPotassium = new BigDecimal("100"); // BigDecimal | The maximum amount of potassium in milligrams the recipe can have.
    BigDecimal minSelenium = new BigDecimal("0"); // BigDecimal | The minimum amount of selenium in micrograms the recipe must have.
    BigDecimal maxSelenium = new BigDecimal("100"); // BigDecimal | The maximum amount of selenium in micrograms the recipe can have.
    BigDecimal minSodium = new BigDecimal("0"); // BigDecimal | The minimum amount of sodium in milligrams the recipe must have.
    BigDecimal maxSodium = new BigDecimal("100"); // BigDecimal | The maximum amount of sodium in milligrams the recipe can have.
    BigDecimal minSugar = new BigDecimal("0"); // BigDecimal | The minimum amount of sugar in grams the recipe must have.
    BigDecimal maxSugar = new BigDecimal("100"); // BigDecimal | The maximum amount of sugar in grams the recipe can have.
    BigDecimal minZinc = new BigDecimal("0"); // BigDecimal | The minimum amount of zinc in milligrams the recipe must have.
    BigDecimal maxZinc = new BigDecimal("100"); // BigDecimal | The maximum amount of zinc in milligrams the recipe can have.
    Integer offset = 56; // Integer | The number of results to skip (between 0 and 900).
    Integer number = 10; // Integer | The maximum number of items to return (between 1 and 100). Defaults to 10.
    Boolean limitLicense = true; // Boolean | Whether the recipes should have an open license that allows display with proper attribution.
    try {
      SearchRecipes200Response result = apiInstance.searchRecipes(query, cuisine, excludeCuisine, diet, intolerances, equipment, includeIngredients, excludeIngredients, type, instructionsRequired, fillIngredients, addRecipeInformation, addRecipeNutrition, author, tags, recipeBoxId, titleMatch, maxReadyTime, ignorePantry, sort, sortDirection, minCarbs, maxCarbs, minProtein, maxProtein, minCalories, maxCalories, minFat, maxFat, minAlcohol, maxAlcohol, minCaffeine, maxCaffeine, minCopper, maxCopper, minCalcium, maxCalcium, minCholine, maxCholine, minCholesterol, maxCholesterol, minFluoride, maxFluoride, minSaturatedFat, maxSaturatedFat, minVitaminA, maxVitaminA, minVitaminC, maxVitaminC, minVitaminD, maxVitaminD, minVitaminE, maxVitaminE, minVitaminK, maxVitaminK, minVitaminB1, maxVitaminB1, minVitaminB2, maxVitaminB2, minVitaminB5, maxVitaminB5, minVitaminB3, maxVitaminB3, minVitaminB6, maxVitaminB6, minVitaminB12, maxVitaminB12, minFiber, maxFiber, minFolate, maxFolate, minFolicAcid, maxFolicAcid, minIodine, maxIodine, minIron, maxIron, minMagnesium, maxMagnesium, minManganese, maxManganese, minPhosphorus, maxPhosphorus, minPotassium, maxPotassium, minSelenium, maxSelenium, minSodium, maxSodium, minSugar, maxSugar, minZinc, maxZinc, offset, number, limitLicense);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RecipesApi#searchRecipes");
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
| **cuisine** | **String**| The cuisine(s) of the recipes. One or more, comma separated (will be interpreted as &#39;OR&#39;). See a full list of supported cuisines. | [optional] |
| **excludeCuisine** | **String**| The cuisine(s) the recipes must not match. One or more, comma separated (will be interpreted as &#39;AND&#39;). See a full list of supported cuisines. | [optional] |
| **diet** | **String**| The diet for which the recipes must be suitable. See a full list of supported diets. | [optional] |
| **intolerances** | **String**| A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. | [optional] |
| **equipment** | **String**| The equipment required. Multiple values will be interpreted as &#39;or&#39;. For example, value could be \&quot;blender, frying pan, bowl\&quot;. | [optional] |
| **includeIngredients** | **String**| A comma-separated list of ingredients that should/must be used in the recipes. | [optional] |
| **excludeIngredients** | **String**| A comma-separated list of ingredients or ingredient types that the recipes must not contain. | [optional] |
| **type** | **String**| The type of recipe. See a full list of supported meal types. | [optional] |
| **instructionsRequired** | **Boolean**| Whether the recipes must have instructions. | [optional] |
| **fillIngredients** | **Boolean**| Add information about the ingredients and whether they are used or missing in relation to the query. | [optional] |
| **addRecipeInformation** | **Boolean**| If set to true, you get more information about the recipes returned. | [optional] |
| **addRecipeNutrition** | **Boolean**| If set to true, you get nutritional information about each recipes returned. | [optional] |
| **author** | **String**| The username of the recipe author. | [optional] |
| **tags** | **String**| The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have. | [optional] |
| **recipeBoxId** | **BigDecimal**| The id of the recipe box to which the search should be limited to. | [optional] |
| **titleMatch** | **String**| Enter text that must be found in the title of the recipes. | [optional] |
| **maxReadyTime** | **BigDecimal**| The maximum time in minutes it should take to prepare and cook the recipe. | [optional] |
| **ignorePantry** | **Boolean**| Whether to ignore typical pantry items, such as water, salt, flour, etc. | [optional] [default to false] |
| **sort** | **String**| The strategy to sort recipes by. See a full list of supported sorting options. | [optional] |
| **sortDirection** | **String**| The direction in which to sort. Must be either &#39;asc&#39; (ascending) or &#39;desc&#39; (descending). | [optional] |
| **minCarbs** | **BigDecimal**| The minimum amount of carbohydrates in grams the recipe must have. | [optional] |
| **maxCarbs** | **BigDecimal**| The maximum amount of carbohydrates in grams the recipe can have. | [optional] |
| **minProtein** | **BigDecimal**| The minimum amount of protein in grams the recipe must have. | [optional] |
| **maxProtein** | **BigDecimal**| The maximum amount of protein in grams the recipe can have. | [optional] |
| **minCalories** | **BigDecimal**| The minimum amount of calories the recipe must have. | [optional] |
| **maxCalories** | **BigDecimal**| The maximum amount of calories the recipe can have. | [optional] |
| **minFat** | **BigDecimal**| The minimum amount of fat in grams the recipe must have. | [optional] |
| **maxFat** | **BigDecimal**| The maximum amount of fat in grams the recipe can have. | [optional] |
| **minAlcohol** | **BigDecimal**| The minimum amount of alcohol in grams the recipe must have. | [optional] |
| **maxAlcohol** | **BigDecimal**| The maximum amount of alcohol in grams the recipe can have. | [optional] |
| **minCaffeine** | **BigDecimal**| The minimum amount of caffeine in milligrams the recipe must have. | [optional] |
| **maxCaffeine** | **BigDecimal**| The maximum amount of caffeine in milligrams the recipe can have. | [optional] |
| **minCopper** | **BigDecimal**| The minimum amount of copper in milligrams the recipe must have. | [optional] |
| **maxCopper** | **BigDecimal**| The maximum amount of copper in milligrams the recipe can have. | [optional] |
| **minCalcium** | **BigDecimal**| The minimum amount of calcium in milligrams the recipe must have. | [optional] |
| **maxCalcium** | **BigDecimal**| The maximum amount of calcium in milligrams the recipe can have. | [optional] |
| **minCholine** | **BigDecimal**| The minimum amount of choline in milligrams the recipe must have. | [optional] |
| **maxCholine** | **BigDecimal**| The maximum amount of choline in milligrams the recipe can have. | [optional] |
| **minCholesterol** | **BigDecimal**| The minimum amount of cholesterol in milligrams the recipe must have. | [optional] |
| **maxCholesterol** | **BigDecimal**| The maximum amount of cholesterol in milligrams the recipe can have. | [optional] |
| **minFluoride** | **BigDecimal**| The minimum amount of fluoride in milligrams the recipe must have. | [optional] |
| **maxFluoride** | **BigDecimal**| The maximum amount of fluoride in milligrams the recipe can have. | [optional] |
| **minSaturatedFat** | **BigDecimal**| The minimum amount of saturated fat in grams the recipe must have. | [optional] |
| **maxSaturatedFat** | **BigDecimal**| The maximum amount of saturated fat in grams the recipe can have. | [optional] |
| **minVitaminA** | **BigDecimal**| The minimum amount of Vitamin A in IU the recipe must have. | [optional] |
| **maxVitaminA** | **BigDecimal**| The maximum amount of Vitamin A in IU the recipe can have. | [optional] |
| **minVitaminC** | **BigDecimal**| The minimum amount of Vitamin C milligrams the recipe must have. | [optional] |
| **maxVitaminC** | **BigDecimal**| The maximum amount of Vitamin C in milligrams the recipe can have. | [optional] |
| **minVitaminD** | **BigDecimal**| The minimum amount of Vitamin D in micrograms the recipe must have. | [optional] |
| **maxVitaminD** | **BigDecimal**| The maximum amount of Vitamin D in micrograms the recipe can have. | [optional] |
| **minVitaminE** | **BigDecimal**| The minimum amount of Vitamin E in milligrams the recipe must have. | [optional] |
| **maxVitaminE** | **BigDecimal**| The maximum amount of Vitamin E in milligrams the recipe can have. | [optional] |
| **minVitaminK** | **BigDecimal**| The minimum amount of Vitamin K in micrograms the recipe must have. | [optional] |
| **maxVitaminK** | **BigDecimal**| The maximum amount of Vitamin K in micrograms the recipe can have. | [optional] |
| **minVitaminB1** | **BigDecimal**| The minimum amount of Vitamin B1 in milligrams the recipe must have. | [optional] |
| **maxVitaminB1** | **BigDecimal**| The maximum amount of Vitamin B1 in milligrams the recipe can have. | [optional] |
| **minVitaminB2** | **BigDecimal**| The minimum amount of Vitamin B2 in milligrams the recipe must have. | [optional] |
| **maxVitaminB2** | **BigDecimal**| The maximum amount of Vitamin B2 in milligrams the recipe can have. | [optional] |
| **minVitaminB5** | **BigDecimal**| The minimum amount of Vitamin B5 in milligrams the recipe must have. | [optional] |
| **maxVitaminB5** | **BigDecimal**| The maximum amount of Vitamin B5 in milligrams the recipe can have. | [optional] |
| **minVitaminB3** | **BigDecimal**| The minimum amount of Vitamin B3 in milligrams the recipe must have. | [optional] |
| **maxVitaminB3** | **BigDecimal**| The maximum amount of Vitamin B3 in milligrams the recipe can have. | [optional] |
| **minVitaminB6** | **BigDecimal**| The minimum amount of Vitamin B6 in milligrams the recipe must have. | [optional] |
| **maxVitaminB6** | **BigDecimal**| The maximum amount of Vitamin B6 in milligrams the recipe can have. | [optional] |
| **minVitaminB12** | **BigDecimal**| The minimum amount of Vitamin B12 in micrograms the recipe must have. | [optional] |
| **maxVitaminB12** | **BigDecimal**| The maximum amount of Vitamin B12 in micrograms the recipe can have. | [optional] |
| **minFiber** | **BigDecimal**| The minimum amount of fiber in grams the recipe must have. | [optional] |
| **maxFiber** | **BigDecimal**| The maximum amount of fiber in grams the recipe can have. | [optional] |
| **minFolate** | **BigDecimal**| The minimum amount of folate in micrograms the recipe must have. | [optional] |
| **maxFolate** | **BigDecimal**| The maximum amount of folate in micrograms the recipe can have. | [optional] |
| **minFolicAcid** | **BigDecimal**| The minimum amount of folic acid in micrograms the recipe must have. | [optional] |
| **maxFolicAcid** | **BigDecimal**| The maximum amount of folic acid in micrograms the recipe can have. | [optional] |
| **minIodine** | **BigDecimal**| The minimum amount of iodine in micrograms the recipe must have. | [optional] |
| **maxIodine** | **BigDecimal**| The maximum amount of iodine in micrograms the recipe can have. | [optional] |
| **minIron** | **BigDecimal**| The minimum amount of iron in milligrams the recipe must have. | [optional] |
| **maxIron** | **BigDecimal**| The maximum amount of iron in milligrams the recipe can have. | [optional] |
| **minMagnesium** | **BigDecimal**| The minimum amount of magnesium in milligrams the recipe must have. | [optional] |
| **maxMagnesium** | **BigDecimal**| The maximum amount of magnesium in milligrams the recipe can have. | [optional] |
| **minManganese** | **BigDecimal**| The minimum amount of manganese in milligrams the recipe must have. | [optional] |
| **maxManganese** | **BigDecimal**| The maximum amount of manganese in milligrams the recipe can have. | [optional] |
| **minPhosphorus** | **BigDecimal**| The minimum amount of phosphorus in milligrams the recipe must have. | [optional] |
| **maxPhosphorus** | **BigDecimal**| The maximum amount of phosphorus in milligrams the recipe can have. | [optional] |
| **minPotassium** | **BigDecimal**| The minimum amount of potassium in milligrams the recipe must have. | [optional] |
| **maxPotassium** | **BigDecimal**| The maximum amount of potassium in milligrams the recipe can have. | [optional] |
| **minSelenium** | **BigDecimal**| The minimum amount of selenium in micrograms the recipe must have. | [optional] |
| **maxSelenium** | **BigDecimal**| The maximum amount of selenium in micrograms the recipe can have. | [optional] |
| **minSodium** | **BigDecimal**| The minimum amount of sodium in milligrams the recipe must have. | [optional] |
| **maxSodium** | **BigDecimal**| The maximum amount of sodium in milligrams the recipe can have. | [optional] |
| **minSugar** | **BigDecimal**| The minimum amount of sugar in grams the recipe must have. | [optional] |
| **maxSugar** | **BigDecimal**| The maximum amount of sugar in grams the recipe can have. | [optional] |
| **minZinc** | **BigDecimal**| The minimum amount of zinc in milligrams the recipe must have. | [optional] |
| **maxZinc** | **BigDecimal**| The maximum amount of zinc in milligrams the recipe can have. | [optional] |
| **offset** | **Integer**| The number of results to skip (between 0 and 900). | [optional] |
| **number** | **Integer**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10] |
| **limitLicense** | **Boolean**| Whether the recipes should have an open license that allows display with proper attribution. | [optional] [default to true] |

### Return type

[**SearchRecipes200Response**](SearchRecipes200Response.md)

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

<a id="searchRecipesByIngredients"></a>
# **searchRecipesByIngredients**
> Set&lt;SearchRecipesByIngredients200ResponseInner&gt; searchRecipesByIngredients(ingredients, number, limitLicense, ranking, ignorePantry)

Search Recipes by Ingredients

 Ever wondered what recipes you can cook with the ingredients you have in your fridge or pantry? This endpoint lets you find recipes that either maximize the usage of ingredients you have at hand (pre shopping) or minimize the ingredients that you don&#39;t currently have (post shopping).         

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.RecipesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    RecipesApi apiInstance = new RecipesApi(defaultClient);
    String ingredients = "carrots,tomatoes"; // String | A comma-separated list of ingredients that the recipes should contain.
    Integer number = 10; // Integer | The maximum number of items to return (between 1 and 100). Defaults to 10.
    Boolean limitLicense = true; // Boolean | Whether the recipes should have an open license that allows display with proper attribution.
    BigDecimal ranking = new BigDecimal("1"); // BigDecimal | Whether to maximize used ingredients (1) or minimize missing ingredients (2) first.
    Boolean ignorePantry = false; // Boolean | Whether to ignore typical pantry items, such as water, salt, flour, etc.
    try {
      Set<SearchRecipesByIngredients200ResponseInner> result = apiInstance.searchRecipesByIngredients(ingredients, number, limitLicense, ranking, ignorePantry);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RecipesApi#searchRecipesByIngredients");
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
| **ingredients** | **String**| A comma-separated list of ingredients that the recipes should contain. | [optional] |
| **number** | **Integer**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10] |
| **limitLicense** | **Boolean**| Whether the recipes should have an open license that allows display with proper attribution. | [optional] [default to true] |
| **ranking** | **BigDecimal**| Whether to maximize used ingredients (1) or minimize missing ingredients (2) first. | [optional] |
| **ignorePantry** | **Boolean**| Whether to ignore typical pantry items, such as water, salt, flour, etc. | [optional] [default to false] |

### Return type

[**Set&lt;SearchRecipesByIngredients200ResponseInner&gt;**](SearchRecipesByIngredients200ResponseInner.md)

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

<a id="searchRecipesByNutrients"></a>
# **searchRecipesByNutrients**
> Set&lt;SearchRecipesByNutrients200ResponseInner&gt; searchRecipesByNutrients(minCarbs, maxCarbs, minProtein, maxProtein, minCalories, maxCalories, minFat, maxFat, minAlcohol, maxAlcohol, minCaffeine, maxCaffeine, minCopper, maxCopper, minCalcium, maxCalcium, minCholine, maxCholine, minCholesterol, maxCholesterol, minFluoride, maxFluoride, minSaturatedFat, maxSaturatedFat, minVitaminA, maxVitaminA, minVitaminC, maxVitaminC, minVitaminD, maxVitaminD, minVitaminE, maxVitaminE, minVitaminK, maxVitaminK, minVitaminB1, maxVitaminB1, minVitaminB2, maxVitaminB2, minVitaminB5, maxVitaminB5, minVitaminB3, maxVitaminB3, minVitaminB6, maxVitaminB6, minVitaminB12, maxVitaminB12, minFiber, maxFiber, minFolate, maxFolate, minFolicAcid, maxFolicAcid, minIodine, maxIodine, minIron, maxIron, minMagnesium, maxMagnesium, minManganese, maxManganese, minPhosphorus, maxPhosphorus, minPotassium, maxPotassium, minSelenium, maxSelenium, minSodium, maxSodium, minSugar, maxSugar, minZinc, maxZinc, offset, number, random, limitLicense)

Search Recipes by Nutrients

Find a set of recipes that adhere to the given nutritional limits. You may set limits for macronutrients (calories, protein, fat, and carbohydrate) and/or many micronutrients.

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.RecipesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    RecipesApi apiInstance = new RecipesApi(defaultClient);
    BigDecimal minCarbs = new BigDecimal("10"); // BigDecimal | The minimum amount of carbohydrates in grams the recipe must have.
    BigDecimal maxCarbs = new BigDecimal("100"); // BigDecimal | The maximum amount of carbohydrates in grams the recipe can have.
    BigDecimal minProtein = new BigDecimal("10"); // BigDecimal | The minimum amount of protein in grams the recipe must have.
    BigDecimal maxProtein = new BigDecimal("100"); // BigDecimal | The maximum amount of protein in grams the recipe can have.
    BigDecimal minCalories = new BigDecimal("50"); // BigDecimal | The minimum amount of calories the recipe must have.
    BigDecimal maxCalories = new BigDecimal("800"); // BigDecimal | The maximum amount of calories the recipe can have.
    BigDecimal minFat = new BigDecimal("1"); // BigDecimal | The minimum amount of fat in grams the recipe must have.
    BigDecimal maxFat = new BigDecimal("100"); // BigDecimal | The maximum amount of fat in grams the recipe can have.
    BigDecimal minAlcohol = new BigDecimal("0"); // BigDecimal | The minimum amount of alcohol in grams the recipe must have.
    BigDecimal maxAlcohol = new BigDecimal("100"); // BigDecimal | The maximum amount of alcohol in grams the recipe can have.
    BigDecimal minCaffeine = new BigDecimal("0"); // BigDecimal | The minimum amount of caffeine in milligrams the recipe must have.
    BigDecimal maxCaffeine = new BigDecimal("100"); // BigDecimal | The maximum amount of caffeine in milligrams the recipe can have.
    BigDecimal minCopper = new BigDecimal("0"); // BigDecimal | The minimum amount of copper in milligrams the recipe must have.
    BigDecimal maxCopper = new BigDecimal("100"); // BigDecimal | The maximum amount of copper in milligrams the recipe can have.
    BigDecimal minCalcium = new BigDecimal("0"); // BigDecimal | The minimum amount of calcium in milligrams the recipe must have.
    BigDecimal maxCalcium = new BigDecimal("100"); // BigDecimal | The maximum amount of calcium in milligrams the recipe can have.
    BigDecimal minCholine = new BigDecimal("0"); // BigDecimal | The minimum amount of choline in milligrams the recipe must have.
    BigDecimal maxCholine = new BigDecimal("100"); // BigDecimal | The maximum amount of choline in milligrams the recipe can have.
    BigDecimal minCholesterol = new BigDecimal("0"); // BigDecimal | The minimum amount of cholesterol in milligrams the recipe must have.
    BigDecimal maxCholesterol = new BigDecimal("100"); // BigDecimal | The maximum amount of cholesterol in milligrams the recipe can have.
    BigDecimal minFluoride = new BigDecimal("0"); // BigDecimal | The minimum amount of fluoride in milligrams the recipe must have.
    BigDecimal maxFluoride = new BigDecimal("100"); // BigDecimal | The maximum amount of fluoride in milligrams the recipe can have.
    BigDecimal minSaturatedFat = new BigDecimal("0"); // BigDecimal | The minimum amount of saturated fat in grams the recipe must have.
    BigDecimal maxSaturatedFat = new BigDecimal("100"); // BigDecimal | The maximum amount of saturated fat in grams the recipe can have.
    BigDecimal minVitaminA = new BigDecimal("0"); // BigDecimal | The minimum amount of Vitamin A in IU the recipe must have.
    BigDecimal maxVitaminA = new BigDecimal("100"); // BigDecimal | The maximum amount of Vitamin A in IU the recipe can have.
    BigDecimal minVitaminC = new BigDecimal("0"); // BigDecimal | The minimum amount of Vitamin C in milligrams the recipe must have.
    BigDecimal maxVitaminC = new BigDecimal("100"); // BigDecimal | The maximum amount of Vitamin C in milligrams the recipe can have.
    BigDecimal minVitaminD = new BigDecimal("0"); // BigDecimal | The minimum amount of Vitamin D in micrograms the recipe must have.
    BigDecimal maxVitaminD = new BigDecimal("100"); // BigDecimal | The maximum amount of Vitamin D in micrograms the recipe can have.
    BigDecimal minVitaminE = new BigDecimal("0"); // BigDecimal | The minimum amount of Vitamin E in milligrams the recipe must have.
    BigDecimal maxVitaminE = new BigDecimal("100"); // BigDecimal | The maximum amount of Vitamin E in milligrams the recipe can have.
    BigDecimal minVitaminK = new BigDecimal("0"); // BigDecimal | The minimum amount of Vitamin K in micrograms the recipe must have.
    BigDecimal maxVitaminK = new BigDecimal("100"); // BigDecimal | The maximum amount of Vitamin K in micrograms the recipe can have.
    BigDecimal minVitaminB1 = new BigDecimal("0"); // BigDecimal | The minimum amount of Vitamin B1 in milligrams the recipe must have.
    BigDecimal maxVitaminB1 = new BigDecimal("100"); // BigDecimal | The maximum amount of Vitamin B1 in milligrams the recipe can have.
    BigDecimal minVitaminB2 = new BigDecimal("0"); // BigDecimal | The minimum amount of Vitamin B2 in milligrams the recipe must have.
    BigDecimal maxVitaminB2 = new BigDecimal("100"); // BigDecimal | The maximum amount of Vitamin B2 in milligrams the recipe can have.
    BigDecimal minVitaminB5 = new BigDecimal("0"); // BigDecimal | The minimum amount of Vitamin B5 in milligrams the recipe must have.
    BigDecimal maxVitaminB5 = new BigDecimal("100"); // BigDecimal | The maximum amount of Vitamin B5 in milligrams the recipe can have.
    BigDecimal minVitaminB3 = new BigDecimal("0"); // BigDecimal | The minimum amount of Vitamin B3 in milligrams the recipe must have.
    BigDecimal maxVitaminB3 = new BigDecimal("100"); // BigDecimal | The maximum amount of Vitamin B3 in milligrams the recipe can have.
    BigDecimal minVitaminB6 = new BigDecimal("0"); // BigDecimal | The minimum amount of Vitamin B6 in milligrams the recipe must have.
    BigDecimal maxVitaminB6 = new BigDecimal("100"); // BigDecimal | The maximum amount of Vitamin B6 in milligrams the recipe can have.
    BigDecimal minVitaminB12 = new BigDecimal("0"); // BigDecimal | The minimum amount of Vitamin B12 in micrograms the recipe must have.
    BigDecimal maxVitaminB12 = new BigDecimal("100"); // BigDecimal | The maximum amount of Vitamin B12 in micrograms the recipe can have.
    BigDecimal minFiber = new BigDecimal("0"); // BigDecimal | The minimum amount of fiber in grams the recipe must have.
    BigDecimal maxFiber = new BigDecimal("100"); // BigDecimal | The maximum amount of fiber in grams the recipe can have.
    BigDecimal minFolate = new BigDecimal("0"); // BigDecimal | The minimum amount of folate in micrograms the recipe must have.
    BigDecimal maxFolate = new BigDecimal("100"); // BigDecimal | The maximum amount of folate in micrograms the recipe can have.
    BigDecimal minFolicAcid = new BigDecimal("0"); // BigDecimal | The minimum amount of folic acid in micrograms the recipe must have.
    BigDecimal maxFolicAcid = new BigDecimal("100"); // BigDecimal | The maximum amount of folic acid in micrograms the recipe can have.
    BigDecimal minIodine = new BigDecimal("0"); // BigDecimal | The minimum amount of iodine in micrograms the recipe must have.
    BigDecimal maxIodine = new BigDecimal("100"); // BigDecimal | The maximum amount of iodine in micrograms the recipe can have.
    BigDecimal minIron = new BigDecimal("0"); // BigDecimal | The minimum amount of iron in milligrams the recipe must have.
    BigDecimal maxIron = new BigDecimal("100"); // BigDecimal | The maximum amount of iron in milligrams the recipe can have.
    BigDecimal minMagnesium = new BigDecimal("0"); // BigDecimal | The minimum amount of magnesium in milligrams the recipe must have.
    BigDecimal maxMagnesium = new BigDecimal("100"); // BigDecimal | The maximum amount of magnesium in milligrams the recipe can have.
    BigDecimal minManganese = new BigDecimal("0"); // BigDecimal | The minimum amount of manganese in milligrams the recipe must have.
    BigDecimal maxManganese = new BigDecimal("100"); // BigDecimal | The maximum amount of manganese in milligrams the recipe can have.
    BigDecimal minPhosphorus = new BigDecimal("0"); // BigDecimal | The minimum amount of phosphorus in milligrams the recipe must have.
    BigDecimal maxPhosphorus = new BigDecimal("100"); // BigDecimal | The maximum amount of phosphorus in milligrams the recipe can have.
    BigDecimal minPotassium = new BigDecimal("0"); // BigDecimal | The minimum amount of potassium in milligrams the recipe must have.
    BigDecimal maxPotassium = new BigDecimal("100"); // BigDecimal | The maximum amount of potassium in milligrams the recipe can have.
    BigDecimal minSelenium = new BigDecimal("0"); // BigDecimal | The minimum amount of selenium in micrograms the recipe must have.
    BigDecimal maxSelenium = new BigDecimal("100"); // BigDecimal | The maximum amount of selenium in micrograms the recipe can have.
    BigDecimal minSodium = new BigDecimal("0"); // BigDecimal | The minimum amount of sodium in milligrams the recipe must have.
    BigDecimal maxSodium = new BigDecimal("100"); // BigDecimal | The maximum amount of sodium in milligrams the recipe can have.
    BigDecimal minSugar = new BigDecimal("0"); // BigDecimal | The minimum amount of sugar in grams the recipe must have.
    BigDecimal maxSugar = new BigDecimal("100"); // BigDecimal | The maximum amount of sugar in grams the recipe can have.
    BigDecimal minZinc = new BigDecimal("0"); // BigDecimal | The minimum amount of zinc in milligrams the recipe must have.
    BigDecimal maxZinc = new BigDecimal("100"); // BigDecimal | The maximum amount of zinc in milligrams the recipe can have.
    Integer offset = 56; // Integer | The number of results to skip (between 0 and 900).
    Integer number = 10; // Integer | The maximum number of items to return (between 1 and 100). Defaults to 10.
    Boolean random = false; // Boolean | If true, every request will give you a random set of recipes within the requested limits.
    Boolean limitLicense = true; // Boolean | Whether the recipes should have an open license that allows display with proper attribution.
    try {
      Set<SearchRecipesByNutrients200ResponseInner> result = apiInstance.searchRecipesByNutrients(minCarbs, maxCarbs, minProtein, maxProtein, minCalories, maxCalories, minFat, maxFat, minAlcohol, maxAlcohol, minCaffeine, maxCaffeine, minCopper, maxCopper, minCalcium, maxCalcium, minCholine, maxCholine, minCholesterol, maxCholesterol, minFluoride, maxFluoride, minSaturatedFat, maxSaturatedFat, minVitaminA, maxVitaminA, minVitaminC, maxVitaminC, minVitaminD, maxVitaminD, minVitaminE, maxVitaminE, minVitaminK, maxVitaminK, minVitaminB1, maxVitaminB1, minVitaminB2, maxVitaminB2, minVitaminB5, maxVitaminB5, minVitaminB3, maxVitaminB3, minVitaminB6, maxVitaminB6, minVitaminB12, maxVitaminB12, minFiber, maxFiber, minFolate, maxFolate, minFolicAcid, maxFolicAcid, minIodine, maxIodine, minIron, maxIron, minMagnesium, maxMagnesium, minManganese, maxManganese, minPhosphorus, maxPhosphorus, minPotassium, maxPotassium, minSelenium, maxSelenium, minSodium, maxSodium, minSugar, maxSugar, minZinc, maxZinc, offset, number, random, limitLicense);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RecipesApi#searchRecipesByNutrients");
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
| **minCarbs** | **BigDecimal**| The minimum amount of carbohydrates in grams the recipe must have. | [optional] |
| **maxCarbs** | **BigDecimal**| The maximum amount of carbohydrates in grams the recipe can have. | [optional] |
| **minProtein** | **BigDecimal**| The minimum amount of protein in grams the recipe must have. | [optional] |
| **maxProtein** | **BigDecimal**| The maximum amount of protein in grams the recipe can have. | [optional] |
| **minCalories** | **BigDecimal**| The minimum amount of calories the recipe must have. | [optional] |
| **maxCalories** | **BigDecimal**| The maximum amount of calories the recipe can have. | [optional] |
| **minFat** | **BigDecimal**| The minimum amount of fat in grams the recipe must have. | [optional] |
| **maxFat** | **BigDecimal**| The maximum amount of fat in grams the recipe can have. | [optional] |
| **minAlcohol** | **BigDecimal**| The minimum amount of alcohol in grams the recipe must have. | [optional] |
| **maxAlcohol** | **BigDecimal**| The maximum amount of alcohol in grams the recipe can have. | [optional] |
| **minCaffeine** | **BigDecimal**| The minimum amount of caffeine in milligrams the recipe must have. | [optional] |
| **maxCaffeine** | **BigDecimal**| The maximum amount of caffeine in milligrams the recipe can have. | [optional] |
| **minCopper** | **BigDecimal**| The minimum amount of copper in milligrams the recipe must have. | [optional] |
| **maxCopper** | **BigDecimal**| The maximum amount of copper in milligrams the recipe can have. | [optional] |
| **minCalcium** | **BigDecimal**| The minimum amount of calcium in milligrams the recipe must have. | [optional] |
| **maxCalcium** | **BigDecimal**| The maximum amount of calcium in milligrams the recipe can have. | [optional] |
| **minCholine** | **BigDecimal**| The minimum amount of choline in milligrams the recipe must have. | [optional] |
| **maxCholine** | **BigDecimal**| The maximum amount of choline in milligrams the recipe can have. | [optional] |
| **minCholesterol** | **BigDecimal**| The minimum amount of cholesterol in milligrams the recipe must have. | [optional] |
| **maxCholesterol** | **BigDecimal**| The maximum amount of cholesterol in milligrams the recipe can have. | [optional] |
| **minFluoride** | **BigDecimal**| The minimum amount of fluoride in milligrams the recipe must have. | [optional] |
| **maxFluoride** | **BigDecimal**| The maximum amount of fluoride in milligrams the recipe can have. | [optional] |
| **minSaturatedFat** | **BigDecimal**| The minimum amount of saturated fat in grams the recipe must have. | [optional] |
| **maxSaturatedFat** | **BigDecimal**| The maximum amount of saturated fat in grams the recipe can have. | [optional] |
| **minVitaminA** | **BigDecimal**| The minimum amount of Vitamin A in IU the recipe must have. | [optional] |
| **maxVitaminA** | **BigDecimal**| The maximum amount of Vitamin A in IU the recipe can have. | [optional] |
| **minVitaminC** | **BigDecimal**| The minimum amount of Vitamin C in milligrams the recipe must have. | [optional] |
| **maxVitaminC** | **BigDecimal**| The maximum amount of Vitamin C in milligrams the recipe can have. | [optional] |
| **minVitaminD** | **BigDecimal**| The minimum amount of Vitamin D in micrograms the recipe must have. | [optional] |
| **maxVitaminD** | **BigDecimal**| The maximum amount of Vitamin D in micrograms the recipe can have. | [optional] |
| **minVitaminE** | **BigDecimal**| The minimum amount of Vitamin E in milligrams the recipe must have. | [optional] |
| **maxVitaminE** | **BigDecimal**| The maximum amount of Vitamin E in milligrams the recipe can have. | [optional] |
| **minVitaminK** | **BigDecimal**| The minimum amount of Vitamin K in micrograms the recipe must have. | [optional] |
| **maxVitaminK** | **BigDecimal**| The maximum amount of Vitamin K in micrograms the recipe can have. | [optional] |
| **minVitaminB1** | **BigDecimal**| The minimum amount of Vitamin B1 in milligrams the recipe must have. | [optional] |
| **maxVitaminB1** | **BigDecimal**| The maximum amount of Vitamin B1 in milligrams the recipe can have. | [optional] |
| **minVitaminB2** | **BigDecimal**| The minimum amount of Vitamin B2 in milligrams the recipe must have. | [optional] |
| **maxVitaminB2** | **BigDecimal**| The maximum amount of Vitamin B2 in milligrams the recipe can have. | [optional] |
| **minVitaminB5** | **BigDecimal**| The minimum amount of Vitamin B5 in milligrams the recipe must have. | [optional] |
| **maxVitaminB5** | **BigDecimal**| The maximum amount of Vitamin B5 in milligrams the recipe can have. | [optional] |
| **minVitaminB3** | **BigDecimal**| The minimum amount of Vitamin B3 in milligrams the recipe must have. | [optional] |
| **maxVitaminB3** | **BigDecimal**| The maximum amount of Vitamin B3 in milligrams the recipe can have. | [optional] |
| **minVitaminB6** | **BigDecimal**| The minimum amount of Vitamin B6 in milligrams the recipe must have. | [optional] |
| **maxVitaminB6** | **BigDecimal**| The maximum amount of Vitamin B6 in milligrams the recipe can have. | [optional] |
| **minVitaminB12** | **BigDecimal**| The minimum amount of Vitamin B12 in micrograms the recipe must have. | [optional] |
| **maxVitaminB12** | **BigDecimal**| The maximum amount of Vitamin B12 in micrograms the recipe can have. | [optional] |
| **minFiber** | **BigDecimal**| The minimum amount of fiber in grams the recipe must have. | [optional] |
| **maxFiber** | **BigDecimal**| The maximum amount of fiber in grams the recipe can have. | [optional] |
| **minFolate** | **BigDecimal**| The minimum amount of folate in micrograms the recipe must have. | [optional] |
| **maxFolate** | **BigDecimal**| The maximum amount of folate in micrograms the recipe can have. | [optional] |
| **minFolicAcid** | **BigDecimal**| The minimum amount of folic acid in micrograms the recipe must have. | [optional] |
| **maxFolicAcid** | **BigDecimal**| The maximum amount of folic acid in micrograms the recipe can have. | [optional] |
| **minIodine** | **BigDecimal**| The minimum amount of iodine in micrograms the recipe must have. | [optional] |
| **maxIodine** | **BigDecimal**| The maximum amount of iodine in micrograms the recipe can have. | [optional] |
| **minIron** | **BigDecimal**| The minimum amount of iron in milligrams the recipe must have. | [optional] |
| **maxIron** | **BigDecimal**| The maximum amount of iron in milligrams the recipe can have. | [optional] |
| **minMagnesium** | **BigDecimal**| The minimum amount of magnesium in milligrams the recipe must have. | [optional] |
| **maxMagnesium** | **BigDecimal**| The maximum amount of magnesium in milligrams the recipe can have. | [optional] |
| **minManganese** | **BigDecimal**| The minimum amount of manganese in milligrams the recipe must have. | [optional] |
| **maxManganese** | **BigDecimal**| The maximum amount of manganese in milligrams the recipe can have. | [optional] |
| **minPhosphorus** | **BigDecimal**| The minimum amount of phosphorus in milligrams the recipe must have. | [optional] |
| **maxPhosphorus** | **BigDecimal**| The maximum amount of phosphorus in milligrams the recipe can have. | [optional] |
| **minPotassium** | **BigDecimal**| The minimum amount of potassium in milligrams the recipe must have. | [optional] |
| **maxPotassium** | **BigDecimal**| The maximum amount of potassium in milligrams the recipe can have. | [optional] |
| **minSelenium** | **BigDecimal**| The minimum amount of selenium in micrograms the recipe must have. | [optional] |
| **maxSelenium** | **BigDecimal**| The maximum amount of selenium in micrograms the recipe can have. | [optional] |
| **minSodium** | **BigDecimal**| The minimum amount of sodium in milligrams the recipe must have. | [optional] |
| **maxSodium** | **BigDecimal**| The maximum amount of sodium in milligrams the recipe can have. | [optional] |
| **minSugar** | **BigDecimal**| The minimum amount of sugar in grams the recipe must have. | [optional] |
| **maxSugar** | **BigDecimal**| The maximum amount of sugar in grams the recipe can have. | [optional] |
| **minZinc** | **BigDecimal**| The minimum amount of zinc in milligrams the recipe must have. | [optional] |
| **maxZinc** | **BigDecimal**| The maximum amount of zinc in milligrams the recipe can have. | [optional] |
| **offset** | **Integer**| The number of results to skip (between 0 and 900). | [optional] |
| **number** | **Integer**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10] |
| **random** | **Boolean**| If true, every request will give you a random set of recipes within the requested limits. | [optional] |
| **limitLicense** | **Boolean**| Whether the recipes should have an open license that allows display with proper attribution. | [optional] [default to true] |

### Return type

[**Set&lt;SearchRecipesByNutrients200ResponseInner&gt;**](SearchRecipesByNutrients200ResponseInner.md)

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

<a id="summarizeRecipe"></a>
# **summarizeRecipe**
> SummarizeRecipe200Response summarizeRecipe(id)

Summarize Recipe

Automatically generate a short description that summarizes key information about the recipe.

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.RecipesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    RecipesApi apiInstance = new RecipesApi(defaultClient);
    Integer id = 1; // Integer | The item's id.
    try {
      SummarizeRecipe200Response result = apiInstance.summarizeRecipe(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RecipesApi#summarizeRecipe");
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

[**SummarizeRecipe200Response**](SummarizeRecipe200Response.md)

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

<a id="visualizeEquipment"></a>
# **visualizeEquipment**
> String visualizeEquipment(contentType, accept)

Equipment Widget

Visualize the equipment used to make a recipe.

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.RecipesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    RecipesApi apiInstance = new RecipesApi(defaultClient);
    String contentType = "application/x-www-form-urlencoded"; // String | The content type.
    String accept = "application/json"; // String | Accept header.
    try {
      String result = apiInstance.visualizeEquipment(contentType, accept);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RecipesApi#visualizeEquipment");
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

<a id="visualizePriceBreakdown"></a>
# **visualizePriceBreakdown**
> String visualizePriceBreakdown(contentType, accept, language)

Price Breakdown Widget

Visualize the price breakdown of a recipe.

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.RecipesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    RecipesApi apiInstance = new RecipesApi(defaultClient);
    String contentType = "application/x-www-form-urlencoded"; // String | The content type.
    String accept = "application/json"; // String | Accept header.
    String language = "en"; // String | The language of the input. Either 'en' or 'de'.
    try {
      String result = apiInstance.visualizePriceBreakdown(contentType, accept, language);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RecipesApi#visualizePriceBreakdown");
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
| **accept** | **String**| Accept header. | [optional] [enum: application/json, text/html, media/*] |
| **language** | **String**| The language of the input. Either &#39;en&#39; or &#39;de&#39;. | [optional] [enum: en, de] |

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

<a id="visualizeRecipeEquipmentByID"></a>
# **visualizeRecipeEquipmentByID**
> String visualizeRecipeEquipmentByID(id, defaultCss)

Equipment by ID Widget

Visualize a recipe&#39;s equipment list.

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.RecipesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    RecipesApi apiInstance = new RecipesApi(defaultClient);
    Integer id = 1; // Integer | The item's id.
    Boolean defaultCss = true; // Boolean | Whether the default CSS should be added to the response.
    try {
      String result = apiInstance.visualizeRecipeEquipmentByID(id, defaultCss);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RecipesApi#visualizeRecipeEquipmentByID");
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

<a id="visualizeRecipeIngredientsByID"></a>
# **visualizeRecipeIngredientsByID**
> String visualizeRecipeIngredientsByID(id, defaultCss, measure)

Ingredients by ID Widget

Visualize a recipe&#39;s ingredient list.

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.RecipesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    RecipesApi apiInstance = new RecipesApi(defaultClient);
    Integer id = 1; // Integer | The item's id.
    Boolean defaultCss = true; // Boolean | Whether the default CSS should be added to the response.
    String measure = "us"; // String | Whether the the measures should be 'us' or 'metric'.
    try {
      String result = apiInstance.visualizeRecipeIngredientsByID(id, defaultCss, measure);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RecipesApi#visualizeRecipeIngredientsByID");
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
| **measure** | **String**| Whether the the measures should be &#39;us&#39; or &#39;metric&#39;. | [optional] [enum: us, metric] |

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

<a id="visualizeRecipeNutrition"></a>
# **visualizeRecipeNutrition**
> String visualizeRecipeNutrition(contentType, accept, language)

Recipe Nutrition Widget

Visualize a recipe&#39;s nutritional information as HTML including CSS.

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.RecipesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    RecipesApi apiInstance = new RecipesApi(defaultClient);
    String contentType = "application/x-www-form-urlencoded"; // String | The content type.
    String accept = "application/json"; // String | Accept header.
    String language = "en"; // String | The language of the input. Either 'en' or 'de'.
    try {
      String result = apiInstance.visualizeRecipeNutrition(contentType, accept, language);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RecipesApi#visualizeRecipeNutrition");
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
| **accept** | **String**| Accept header. | [optional] [enum: application/json, text/html, media/*] |
| **language** | **String**| The language of the input. Either &#39;en&#39; or &#39;de&#39;. | [optional] [enum: en, de] |

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

<a id="visualizeRecipeNutritionByID"></a>
# **visualizeRecipeNutritionByID**
> String visualizeRecipeNutritionByID(id, defaultCss, accept)

Recipe Nutrition by ID Widget

Visualize a recipe&#39;s nutritional information as HTML including CSS.

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.RecipesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    RecipesApi apiInstance = new RecipesApi(defaultClient);
    Integer id = 1; // Integer | The item's id.
    Boolean defaultCss = true; // Boolean | Whether the default CSS should be added to the response.
    String accept = "application/json"; // String | Accept header.
    try {
      String result = apiInstance.visualizeRecipeNutritionByID(id, defaultCss, accept);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RecipesApi#visualizeRecipeNutritionByID");
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

<a id="visualizeRecipePriceBreakdownByID"></a>
# **visualizeRecipePriceBreakdownByID**
> String visualizeRecipePriceBreakdownByID(id, defaultCss)

Price Breakdown by ID Widget

Visualize a recipe&#39;s price breakdown.

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.RecipesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    RecipesApi apiInstance = new RecipesApi(defaultClient);
    Integer id = 1; // Integer | The item's id.
    Boolean defaultCss = true; // Boolean | Whether the default CSS should be added to the response.
    try {
      String result = apiInstance.visualizeRecipePriceBreakdownByID(id, defaultCss);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RecipesApi#visualizeRecipePriceBreakdownByID");
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

<a id="visualizeRecipeTaste"></a>
# **visualizeRecipeTaste**
> String visualizeRecipeTaste(language, contentType, accept, normalize, rgb)

Recipe Taste Widget

Visualize a recipe&#39;s taste information as HTML including CSS. You can play around with that endpoint!

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.RecipesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    RecipesApi apiInstance = new RecipesApi(defaultClient);
    String language = "en"; // String | The language of the input. Either 'en' or 'de'.
    String contentType = "application/x-www-form-urlencoded"; // String | The content type.
    String accept = "application/json"; // String | Accept header.
    Boolean normalize = true; // Boolean | Whether to normalize to the strongest taste.
    String rgb = "75,192,192"; // String | Red, green, blue values for the chart color.
    try {
      String result = apiInstance.visualizeRecipeTaste(language, contentType, accept, normalize, rgb);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RecipesApi#visualizeRecipeTaste");
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
| **language** | **String**| The language of the input. Either &#39;en&#39; or &#39;de&#39;. | [optional] [enum: en, de] |
| **contentType** | **String**| The content type. | [optional] [enum: application/x-www-form-urlencoded, application/json, multipart/form-data] |
| **accept** | **String**| Accept header. | [optional] [enum: application/json, text/html, media/*] |
| **normalize** | **Boolean**| Whether to normalize to the strongest taste. | [optional] |
| **rgb** | **String**| Red, green, blue values for the chart color. | [optional] |

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

<a id="visualizeRecipeTasteByID"></a>
# **visualizeRecipeTasteByID**
> String visualizeRecipeTasteByID(id, normalize, rgb)

Recipe Taste by ID Widget

Get a recipe&#39;s taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.

### Example
```java
// Import classes:
import com.spoonacular.client.ApiClient;
import com.spoonacular.client.ApiException;
import com.spoonacular.client.Configuration;
import com.spoonacular.client.auth.*;
import com.spoonacular.client.models.*;
import com.spoonacular.RecipesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.spoonacular.com");
    
    // Configure API key authorization: apiKeyScheme
    ApiKeyAuth apiKeyScheme = (ApiKeyAuth) defaultClient.getAuthentication("apiKeyScheme");
    apiKeyScheme.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKeyScheme.setApiKeyPrefix("Token");

    RecipesApi apiInstance = new RecipesApi(defaultClient);
    Integer id = 1; // Integer | The item's id.
    Boolean normalize = true; // Boolean | Whether to normalize to the strongest taste.
    String rgb = "75,192,192"; // String | Red, green, blue values for the chart color.
    try {
      String result = apiInstance.visualizeRecipeTasteByID(id, normalize, rgb);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RecipesApi#visualizeRecipeTasteByID");
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
| **normalize** | **Boolean**| Whether to normalize to the strongest taste. | [optional] [default to true] |
| **rgb** | **String**| Red, green, blue values for the chart color. | [optional] |

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

