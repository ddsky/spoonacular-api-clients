# spoonacular.Api.RecipesApi

All URIs are relative to *https://api.spoonacular.com*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**AnalyzeARecipeSearchQuery**](RecipesApi.md#analyzearecipesearchquery) | **GET** /recipes/queries/analyze | Analyze a Recipe Search Query |
| [**AnalyzeRecipeInstructions**](RecipesApi.md#analyzerecipeinstructions) | **POST** /recipes/analyzeInstructions | Analyze Recipe Instructions |
| [**AutocompleteRecipeSearch**](RecipesApi.md#autocompleterecipesearch) | **GET** /recipes/autocomplete | Autocomplete Recipe Search |
| [**ClassifyCuisine**](RecipesApi.md#classifycuisine) | **POST** /recipes/cuisine | Classify Cuisine |
| [**ComputeGlycemicLoad**](RecipesApi.md#computeglycemicload) | **POST** /food/ingredients/glycemicLoad | Compute Glycemic Load |
| [**ConvertAmounts**](RecipesApi.md#convertamounts) | **GET** /recipes/convert | Convert Amounts |
| [**CreateRecipeCard**](RecipesApi.md#createrecipecard) | **POST** /recipes/visualizeRecipe | Create Recipe Card |
| [**EquipmentByIDImage**](RecipesApi.md#equipmentbyidimage) | **GET** /recipes/{id}/equipmentWidget.png | Equipment by ID Image |
| [**ExtractRecipeFromWebsite**](RecipesApi.md#extractrecipefromwebsite) | **GET** /recipes/extract | Extract Recipe from Website |
| [**GetAnalyzedRecipeInstructions**](RecipesApi.md#getanalyzedrecipeinstructions) | **GET** /recipes/{id}/analyzedInstructions | Get Analyzed Recipe Instructions |
| [**GetRandomRecipes**](RecipesApi.md#getrandomrecipes) | **GET** /recipes/random | Get Random Recipes |
| [**GetRecipeEquipmentByID**](RecipesApi.md#getrecipeequipmentbyid) | **GET** /recipes/{id}/equipmentWidget.json | Equipment by ID |
| [**GetRecipeInformation**](RecipesApi.md#getrecipeinformation) | **GET** /recipes/{id}/information | Get Recipe Information |
| [**GetRecipeInformationBulk**](RecipesApi.md#getrecipeinformationbulk) | **GET** /recipes/informationBulk | Get Recipe Information Bulk |
| [**GetRecipeIngredientsByID**](RecipesApi.md#getrecipeingredientsbyid) | **GET** /recipes/{id}/ingredientWidget.json | Ingredients by ID |
| [**GetRecipeNutritionWidgetByID**](RecipesApi.md#getrecipenutritionwidgetbyid) | **GET** /recipes/{id}/nutritionWidget.json | Nutrition by ID |
| [**GetRecipePriceBreakdownByID**](RecipesApi.md#getrecipepricebreakdownbyid) | **GET** /recipes/{id}/priceBreakdownWidget.json | Price Breakdown by ID |
| [**GetRecipeTasteByID**](RecipesApi.md#getrecipetastebyid) | **GET** /recipes/{id}/tasteWidget.json | Taste by ID |
| [**GetSimilarRecipes**](RecipesApi.md#getsimilarrecipes) | **GET** /recipes/{id}/similar | Get Similar Recipes |
| [**GuessNutritionByDishName**](RecipesApi.md#guessnutritionbydishname) | **GET** /recipes/guessNutrition | Guess Nutrition by Dish Name |
| [**ParseIngredients**](RecipesApi.md#parseingredients) | **POST** /recipes/parseIngredients | Parse Ingredients |
| [**PriceBreakdownByIDImage**](RecipesApi.md#pricebreakdownbyidimage) | **GET** /recipes/{id}/priceBreakdownWidget.png | Price Breakdown by ID Image |
| [**QuickAnswer**](RecipesApi.md#quickanswer) | **GET** /recipes/quickAnswer | Quick Answer |
| [**RecipeNutritionByIDImage**](RecipesApi.md#recipenutritionbyidimage) | **GET** /recipes/{id}/nutritionWidget.png | Recipe Nutrition by ID Image |
| [**RecipeNutritionLabelImage**](RecipesApi.md#recipenutritionlabelimage) | **GET** /recipes/{id}/nutritionLabel.png | Recipe Nutrition Label Image |
| [**RecipeNutritionLabelWidget**](RecipesApi.md#recipenutritionlabelwidget) | **GET** /recipes/{id}/nutritionLabel | Recipe Nutrition Label Widget |
| [**RecipeTasteByIDImage**](RecipesApi.md#recipetastebyidimage) | **GET** /recipes/{id}/tasteWidget.png | Recipe Taste by ID Image |
| [**SearchRecipes**](RecipesApi.md#searchrecipes) | **GET** /recipes/complexSearch | Search Recipes |
| [**SearchRecipesByIngredients**](RecipesApi.md#searchrecipesbyingredients) | **GET** /recipes/findByIngredients | Search Recipes by Ingredients |
| [**SearchRecipesByNutrients**](RecipesApi.md#searchrecipesbynutrients) | **GET** /recipes/findByNutrients | Search Recipes by Nutrients |
| [**SummarizeRecipe**](RecipesApi.md#summarizerecipe) | **GET** /recipes/{id}/summary | Summarize Recipe |
| [**VisualizeEquipment**](RecipesApi.md#visualizeequipment) | **POST** /recipes/visualizeEquipment | Equipment Widget |
| [**VisualizePriceBreakdown**](RecipesApi.md#visualizepricebreakdown) | **POST** /recipes/visualizePriceEstimator | Price Breakdown Widget |
| [**VisualizeRecipeEquipmentByID**](RecipesApi.md#visualizerecipeequipmentbyid) | **GET** /recipes/{id}/equipmentWidget | Equipment by ID Widget |
| [**VisualizeRecipeIngredientsByID**](RecipesApi.md#visualizerecipeingredientsbyid) | **GET** /recipes/{id}/ingredientWidget | Ingredients by ID Widget |
| [**VisualizeRecipeNutrition**](RecipesApi.md#visualizerecipenutrition) | **POST** /recipes/visualizeNutrition | Recipe Nutrition Widget |
| [**VisualizeRecipeNutritionByID**](RecipesApi.md#visualizerecipenutritionbyid) | **GET** /recipes/{id}/nutritionWidget | Recipe Nutrition by ID Widget |
| [**VisualizeRecipePriceBreakdownByID**](RecipesApi.md#visualizerecipepricebreakdownbyid) | **GET** /recipes/{id}/priceBreakdownWidget | Price Breakdown by ID Widget |
| [**VisualizeRecipeTaste**](RecipesApi.md#visualizerecipetaste) | **POST** /recipes/visualizeTaste | Recipe Taste Widget |
| [**VisualizeRecipeTasteByID**](RecipesApi.md#visualizerecipetastebyid) | **GET** /recipes/{id}/tasteWidget | Recipe Taste by ID Widget |

<a id="analyzearecipesearchquery"></a>
# **AnalyzeARecipeSearchQuery**
> AnalyzeARecipeSearchQuery200Response AnalyzeARecipeSearchQuery (string q)

Analyze a Recipe Search Query

Parse a recipe search query to find out its intention.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using spoonacular.Api;
using spoonacular.Client;
using spoonacular.Model;

namespace Example
{
    public class AnalyzeARecipeSearchQueryExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.spoonacular.com";
            // Configure API key authorization: apiKeyScheme
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new RecipesApi(config);
            var q = salmon with fusilli and no nuts;  // string | The recipe search query.

            try
            {
                // Analyze a Recipe Search Query
                AnalyzeARecipeSearchQuery200Response result = apiInstance.AnalyzeARecipeSearchQuery(q);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RecipesApi.AnalyzeARecipeSearchQuery: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the AnalyzeARecipeSearchQueryWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Analyze a Recipe Search Query
    ApiResponse<AnalyzeARecipeSearchQuery200Response> response = apiInstance.AnalyzeARecipeSearchQueryWithHttpInfo(q);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling RecipesApi.AnalyzeARecipeSearchQueryWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **q** | **string** | The recipe search query. |  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="analyzerecipeinstructions"></a>
# **AnalyzeRecipeInstructions**
> AnalyzeRecipeInstructions200Response AnalyzeRecipeInstructions (string? contentType = null)

Analyze Recipe Instructions

This endpoint allows you to break down instructions into atomic steps. Furthermore, each step will contain the ingredients and equipment required. Additionally, all ingredients and equipment from the recipe's instructions will be extracted independently of the step they're used in.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using spoonacular.Api;
using spoonacular.Client;
using spoonacular.Model;

namespace Example
{
    public class AnalyzeRecipeInstructionsExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.spoonacular.com";
            // Configure API key authorization: apiKeyScheme
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new RecipesApi(config);
            var contentType = application/json;  // string? | The content type. (optional) 

            try
            {
                // Analyze Recipe Instructions
                AnalyzeRecipeInstructions200Response result = apiInstance.AnalyzeRecipeInstructions(contentType);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RecipesApi.AnalyzeRecipeInstructions: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the AnalyzeRecipeInstructionsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Analyze Recipe Instructions
    ApiResponse<AnalyzeRecipeInstructions200Response> response = apiInstance.AnalyzeRecipeInstructionsWithHttpInfo(contentType);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling RecipesApi.AnalyzeRecipeInstructionsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **contentType** | **string?** | The content type. | [optional]  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="autocompleterecipesearch"></a>
# **AutocompleteRecipeSearch**
> List&lt;AutocompleteRecipeSearch200ResponseInner&gt; AutocompleteRecipeSearch (string? query = null, int? number = null)

Autocomplete Recipe Search

Autocomplete a partial input to suggest possible recipe names.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using spoonacular.Api;
using spoonacular.Client;
using spoonacular.Model;

namespace Example
{
    public class AutocompleteRecipeSearchExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.spoonacular.com";
            // Configure API key authorization: apiKeyScheme
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new RecipesApi(config);
            var query = burger;  // string? | The (natural language) search query. (optional) 
            var number = 10;  // int? | The maximum number of items to return (between 1 and 100). Defaults to 10. (optional)  (default to 10)

            try
            {
                // Autocomplete Recipe Search
                List<AutocompleteRecipeSearch200ResponseInner> result = apiInstance.AutocompleteRecipeSearch(query, number);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RecipesApi.AutocompleteRecipeSearch: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the AutocompleteRecipeSearchWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Autocomplete Recipe Search
    ApiResponse<List<AutocompleteRecipeSearch200ResponseInner>> response = apiInstance.AutocompleteRecipeSearchWithHttpInfo(query, number);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling RecipesApi.AutocompleteRecipeSearchWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **query** | **string?** | The (natural language) search query. | [optional]  |
| **number** | **int?** | The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10] |

### Return type

[**List&lt;AutocompleteRecipeSearch200ResponseInner&gt;**](AutocompleteRecipeSearch200ResponseInner.md)

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="classifycuisine"></a>
# **ClassifyCuisine**
> ClassifyCuisine200Response ClassifyCuisine (string? contentType = null)

Classify Cuisine

Classify the recipe's cuisine.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using spoonacular.Api;
using spoonacular.Client;
using spoonacular.Model;

namespace Example
{
    public class ClassifyCuisineExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.spoonacular.com";
            // Configure API key authorization: apiKeyScheme
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new RecipesApi(config);
            var contentType = application/json;  // string? | The content type. (optional) 

            try
            {
                // Classify Cuisine
                ClassifyCuisine200Response result = apiInstance.ClassifyCuisine(contentType);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RecipesApi.ClassifyCuisine: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ClassifyCuisineWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Classify Cuisine
    ApiResponse<ClassifyCuisine200Response> response = apiInstance.ClassifyCuisineWithHttpInfo(contentType);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling RecipesApi.ClassifyCuisineWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **contentType** | **string?** | The content type. | [optional]  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="computeglycemicload"></a>
# **ComputeGlycemicLoad**
> ComputeGlycemicLoad200Response ComputeGlycemicLoad (ComputeGlycemicLoadRequest computeGlycemicLoadRequest, string? language = null)

Compute Glycemic Load

Retrieve the glycemic index for a list of ingredients and compute the individual and total glycemic load.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using spoonacular.Api;
using spoonacular.Client;
using spoonacular.Model;

namespace Example
{
    public class ComputeGlycemicLoadExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.spoonacular.com";
            // Configure API key authorization: apiKeyScheme
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new RecipesApi(config);
            var computeGlycemicLoadRequest = new ComputeGlycemicLoadRequest(); // ComputeGlycemicLoadRequest | 
            var language = en;  // string? | The language of the input. Either 'en' or 'de'. (optional) 

            try
            {
                // Compute Glycemic Load
                ComputeGlycemicLoad200Response result = apiInstance.ComputeGlycemicLoad(computeGlycemicLoadRequest, language);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RecipesApi.ComputeGlycemicLoad: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ComputeGlycemicLoadWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Compute Glycemic Load
    ApiResponse<ComputeGlycemicLoad200Response> response = apiInstance.ComputeGlycemicLoadWithHttpInfo(computeGlycemicLoadRequest, language);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling RecipesApi.ComputeGlycemicLoadWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **computeGlycemicLoadRequest** | [**ComputeGlycemicLoadRequest**](ComputeGlycemicLoadRequest.md) |  |  |
| **language** | **string?** | The language of the input. Either &#39;en&#39; or &#39;de&#39;. | [optional]  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="convertamounts"></a>
# **ConvertAmounts**
> ConvertAmounts200Response ConvertAmounts (string ingredientName, decimal sourceAmount, string sourceUnit, string targetUnit)

Convert Amounts

Convert amounts like \"2 cups of flour to grams\".

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using spoonacular.Api;
using spoonacular.Client;
using spoonacular.Model;

namespace Example
{
    public class ConvertAmountsExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.spoonacular.com";
            // Configure API key authorization: apiKeyScheme
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new RecipesApi(config);
            var ingredientName = flour;  // string | The ingredient which you want to convert.
            var sourceAmount = 2.5;  // decimal | The amount from which you want to convert, e.g. the 2.5 in \"2.5 cups of flour to grams\".
            var sourceUnit = cups;  // string | The unit from which you want to convert, e.g. the grams in \"2.5 cups of flour to grams\". You can also use \"piece\", e.g. \"3.4 oz tomatoes to piece\"
            var targetUnit = grams;  // string | The unit to which you want to convert, e.g. the grams in \"2.5 cups of flour to grams\". You can also use \"piece\", e.g. \"3.4 oz tomatoes to piece\"

            try
            {
                // Convert Amounts
                ConvertAmounts200Response result = apiInstance.ConvertAmounts(ingredientName, sourceAmount, sourceUnit, targetUnit);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RecipesApi.ConvertAmounts: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ConvertAmountsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Convert Amounts
    ApiResponse<ConvertAmounts200Response> response = apiInstance.ConvertAmountsWithHttpInfo(ingredientName, sourceAmount, sourceUnit, targetUnit);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling RecipesApi.ConvertAmountsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **ingredientName** | **string** | The ingredient which you want to convert. |  |
| **sourceAmount** | **decimal** | The amount from which you want to convert, e.g. the 2.5 in \&quot;2.5 cups of flour to grams\&quot;. |  |
| **sourceUnit** | **string** | The unit from which you want to convert, e.g. the grams in \&quot;2.5 cups of flour to grams\&quot;. You can also use \&quot;piece\&quot;, e.g. \&quot;3.4 oz tomatoes to piece\&quot; |  |
| **targetUnit** | **string** | The unit to which you want to convert, e.g. the grams in \&quot;2.5 cups of flour to grams\&quot;. You can also use \&quot;piece\&quot;, e.g. \&quot;3.4 oz tomatoes to piece\&quot; |  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="createrecipecard"></a>
# **CreateRecipeCard**
> CreateRecipeCard200Response CreateRecipeCard (string? contentType = null)

Create Recipe Card

Generate a recipe card for a recipe.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using spoonacular.Api;
using spoonacular.Client;
using spoonacular.Model;

namespace Example
{
    public class CreateRecipeCardExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.spoonacular.com";
            // Configure API key authorization: apiKeyScheme
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new RecipesApi(config);
            var contentType = application/json;  // string? | The content type. (optional) 

            try
            {
                // Create Recipe Card
                CreateRecipeCard200Response result = apiInstance.CreateRecipeCard(contentType);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RecipesApi.CreateRecipeCard: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CreateRecipeCardWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Create Recipe Card
    ApiResponse<CreateRecipeCard200Response> response = apiInstance.CreateRecipeCardWithHttpInfo(contentType);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling RecipesApi.CreateRecipeCardWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **contentType** | **string?** | The content type. | [optional]  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="equipmentbyidimage"></a>
# **EquipmentByIDImage**
> Object EquipmentByIDImage (decimal id)

Equipment by ID Image

Visualize a recipe's equipment list as an image.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using spoonacular.Api;
using spoonacular.Client;
using spoonacular.Model;

namespace Example
{
    public class EquipmentByIDImageExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.spoonacular.com";
            // Configure API key authorization: apiKeyScheme
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new RecipesApi(config);
            var id = 44860;  // decimal | The recipe id.

            try
            {
                // Equipment by ID Image
                Object result = apiInstance.EquipmentByIDImage(id);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RecipesApi.EquipmentByIDImage: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the EquipmentByIDImageWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Equipment by ID Image
    ApiResponse<Object> response = apiInstance.EquipmentByIDImageWithHttpInfo(id);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling RecipesApi.EquipmentByIDImageWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **decimal** | The recipe id. |  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="extractrecipefromwebsite"></a>
# **ExtractRecipeFromWebsite**
> GetRecipeInformation200Response ExtractRecipeFromWebsite (string url, bool? forceExtraction = null, bool? analyze = null, bool? includeNutrition = null, bool? includeTaste = null)

Extract Recipe from Website

This endpoint lets you extract recipe data such as title, ingredients, and instructions from any properly formatted Website.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using spoonacular.Api;
using spoonacular.Client;
using spoonacular.Model;

namespace Example
{
    public class ExtractRecipeFromWebsiteExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.spoonacular.com";
            // Configure API key authorization: apiKeyScheme
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new RecipesApi(config);
            var url = https://foodista.com/recipe/ZHK4KPB6/chocolate-crinkle-cookies;  // string | The URL of the recipe page.
            var forceExtraction = true;  // bool? | If true, the extraction will be triggered whether we already know the recipe or not. Use this only if information is missing as this operation is slower. (optional) 
            var analyze = false;  // bool? | If true, the recipe will be analyzed and classified resolving in more data such as cuisines, dish types, and more. (optional) 
            var includeNutrition = false;  // bool? | Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. (optional)  (default to false)
            var includeTaste = false;  // bool? | Whether taste data should be added to correctly parsed ingredients. (optional)  (default to false)

            try
            {
                // Extract Recipe from Website
                GetRecipeInformation200Response result = apiInstance.ExtractRecipeFromWebsite(url, forceExtraction, analyze, includeNutrition, includeTaste);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RecipesApi.ExtractRecipeFromWebsite: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ExtractRecipeFromWebsiteWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Extract Recipe from Website
    ApiResponse<GetRecipeInformation200Response> response = apiInstance.ExtractRecipeFromWebsiteWithHttpInfo(url, forceExtraction, analyze, includeNutrition, includeTaste);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling RecipesApi.ExtractRecipeFromWebsiteWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **url** | **string** | The URL of the recipe page. |  |
| **forceExtraction** | **bool?** | If true, the extraction will be triggered whether we already know the recipe or not. Use this only if information is missing as this operation is slower. | [optional]  |
| **analyze** | **bool?** | If true, the recipe will be analyzed and classified resolving in more data such as cuisines, dish types, and more. | [optional]  |
| **includeNutrition** | **bool?** | Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. | [optional] [default to false] |
| **includeTaste** | **bool?** | Whether taste data should be added to correctly parsed ingredients. | [optional] [default to false] |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="getanalyzedrecipeinstructions"></a>
# **GetAnalyzedRecipeInstructions**
> GetAnalyzedRecipeInstructions200Response GetAnalyzedRecipeInstructions (int id, bool? stepBreakdown = null)

Get Analyzed Recipe Instructions

Get an analyzed breakdown of a recipe's instructions. Each step is enriched with the ingredients and equipment required.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using spoonacular.Api;
using spoonacular.Client;
using spoonacular.Model;

namespace Example
{
    public class GetAnalyzedRecipeInstructionsExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.spoonacular.com";
            // Configure API key authorization: apiKeyScheme
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new RecipesApi(config);
            var id = 1;  // int | The item's id.
            var stepBreakdown = true;  // bool? | Whether to break down the recipe steps even more. (optional) 

            try
            {
                // Get Analyzed Recipe Instructions
                GetAnalyzedRecipeInstructions200Response result = apiInstance.GetAnalyzedRecipeInstructions(id, stepBreakdown);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RecipesApi.GetAnalyzedRecipeInstructions: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetAnalyzedRecipeInstructionsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Get Analyzed Recipe Instructions
    ApiResponse<GetAnalyzedRecipeInstructions200Response> response = apiInstance.GetAnalyzedRecipeInstructionsWithHttpInfo(id, stepBreakdown);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling RecipesApi.GetAnalyzedRecipeInstructionsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **int** | The item&#39;s id. |  |
| **stepBreakdown** | **bool?** | Whether to break down the recipe steps even more. | [optional]  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="getrandomrecipes"></a>
# **GetRandomRecipes**
> GetRandomRecipes200Response GetRandomRecipes (bool? limitLicense = null, bool? includeNutrition = null, string? includeTags = null, string? excludeTags = null, int? number = null)

Get Random Recipes

Find random (popular) recipes. If you need to filter recipes by diet, nutrition etc. you might want to consider using the complex recipe search endpoint and set the sort request parameter to random.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using spoonacular.Api;
using spoonacular.Client;
using spoonacular.Model;

namespace Example
{
    public class GetRandomRecipesExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.spoonacular.com";
            // Configure API key authorization: apiKeyScheme
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new RecipesApi(config);
            var limitLicense = true;  // bool? | Whether the recipes should have an open license that allows display with proper attribution. (optional)  (default to true)
            var includeNutrition = false;  // bool? | Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. (optional)  (default to false)
            var includeTags = vegetarian,gluten;  // string? | A comma-separated list of tags that the random recipe(s) must adhere to. (optional) 
            var excludeTags = meat,dairy;  // string? | A comma-separated list of tags that the random recipe(s) must not adhere to. (optional) 
            var number = 10;  // int? | The maximum number of items to return (between 1 and 100). Defaults to 10. (optional)  (default to 10)

            try
            {
                // Get Random Recipes
                GetRandomRecipes200Response result = apiInstance.GetRandomRecipes(limitLicense, includeNutrition, includeTags, excludeTags, number);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RecipesApi.GetRandomRecipes: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetRandomRecipesWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Get Random Recipes
    ApiResponse<GetRandomRecipes200Response> response = apiInstance.GetRandomRecipesWithHttpInfo(limitLicense, includeNutrition, includeTags, excludeTags, number);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling RecipesApi.GetRandomRecipesWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **limitLicense** | **bool?** | Whether the recipes should have an open license that allows display with proper attribution. | [optional] [default to true] |
| **includeNutrition** | **bool?** | Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. | [optional] [default to false] |
| **includeTags** | **string?** | A comma-separated list of tags that the random recipe(s) must adhere to. | [optional]  |
| **excludeTags** | **string?** | A comma-separated list of tags that the random recipe(s) must not adhere to. | [optional]  |
| **number** | **int?** | The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10] |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="getrecipeequipmentbyid"></a>
# **GetRecipeEquipmentByID**
> GetRecipeEquipmentByID200Response GetRecipeEquipmentByID (int id)

Equipment by ID

Get a recipe's equipment list.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using spoonacular.Api;
using spoonacular.Client;
using spoonacular.Model;

namespace Example
{
    public class GetRecipeEquipmentByIDExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.spoonacular.com";
            // Configure API key authorization: apiKeyScheme
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new RecipesApi(config);
            var id = 1;  // int | The item's id.

            try
            {
                // Equipment by ID
                GetRecipeEquipmentByID200Response result = apiInstance.GetRecipeEquipmentByID(id);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RecipesApi.GetRecipeEquipmentByID: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetRecipeEquipmentByIDWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Equipment by ID
    ApiResponse<GetRecipeEquipmentByID200Response> response = apiInstance.GetRecipeEquipmentByIDWithHttpInfo(id);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling RecipesApi.GetRecipeEquipmentByIDWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **int** | The item&#39;s id. |  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="getrecipeinformation"></a>
# **GetRecipeInformation**
> GetRecipeInformation200Response GetRecipeInformation (int id, bool? includeNutrition = null)

Get Recipe Information

Use a recipe id to get full information about a recipe, such as ingredients, nutrition, diet and allergen information, etc.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using spoonacular.Api;
using spoonacular.Client;
using spoonacular.Model;

namespace Example
{
    public class GetRecipeInformationExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.spoonacular.com";
            // Configure API key authorization: apiKeyScheme
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new RecipesApi(config);
            var id = 1;  // int | The item's id.
            var includeNutrition = false;  // bool? | Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. (optional)  (default to false)

            try
            {
                // Get Recipe Information
                GetRecipeInformation200Response result = apiInstance.GetRecipeInformation(id, includeNutrition);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RecipesApi.GetRecipeInformation: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetRecipeInformationWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Get Recipe Information
    ApiResponse<GetRecipeInformation200Response> response = apiInstance.GetRecipeInformationWithHttpInfo(id, includeNutrition);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling RecipesApi.GetRecipeInformationWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **int** | The item&#39;s id. |  |
| **includeNutrition** | **bool?** | Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. | [optional] [default to false] |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="getrecipeinformationbulk"></a>
# **GetRecipeInformationBulk**
> List&lt;GetRecipeInformationBulk200ResponseInner&gt; GetRecipeInformationBulk (string ids, bool? includeNutrition = null)

Get Recipe Information Bulk

Get information about multiple recipes at once. This is equivalent to calling the Get Recipe Information endpoint multiple times, but faster.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using spoonacular.Api;
using spoonacular.Client;
using spoonacular.Model;

namespace Example
{
    public class GetRecipeInformationBulkExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.spoonacular.com";
            // Configure API key authorization: apiKeyScheme
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new RecipesApi(config);
            var ids = 715538,716429;  // string | A comma-separated list of recipe ids.
            var includeNutrition = false;  // bool? | Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. (optional)  (default to false)

            try
            {
                // Get Recipe Information Bulk
                List<GetRecipeInformationBulk200ResponseInner> result = apiInstance.GetRecipeInformationBulk(ids, includeNutrition);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RecipesApi.GetRecipeInformationBulk: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetRecipeInformationBulkWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Get Recipe Information Bulk
    ApiResponse<List<GetRecipeInformationBulk200ResponseInner>> response = apiInstance.GetRecipeInformationBulkWithHttpInfo(ids, includeNutrition);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling RecipesApi.GetRecipeInformationBulkWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **ids** | **string** | A comma-separated list of recipe ids. |  |
| **includeNutrition** | **bool?** | Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. | [optional] [default to false] |

### Return type

[**List&lt;GetRecipeInformationBulk200ResponseInner&gt;**](GetRecipeInformationBulk200ResponseInner.md)

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="getrecipeingredientsbyid"></a>
# **GetRecipeIngredientsByID**
> GetRecipeIngredientsByID200Response GetRecipeIngredientsByID (int id)

Ingredients by ID

Get a recipe's ingredient list.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using spoonacular.Api;
using spoonacular.Client;
using spoonacular.Model;

namespace Example
{
    public class GetRecipeIngredientsByIDExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.spoonacular.com";
            // Configure API key authorization: apiKeyScheme
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new RecipesApi(config);
            var id = 1;  // int | The item's id.

            try
            {
                // Ingredients by ID
                GetRecipeIngredientsByID200Response result = apiInstance.GetRecipeIngredientsByID(id);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RecipesApi.GetRecipeIngredientsByID: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetRecipeIngredientsByIDWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Ingredients by ID
    ApiResponse<GetRecipeIngredientsByID200Response> response = apiInstance.GetRecipeIngredientsByIDWithHttpInfo(id);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling RecipesApi.GetRecipeIngredientsByIDWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **int** | The item&#39;s id. |  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="getrecipenutritionwidgetbyid"></a>
# **GetRecipeNutritionWidgetByID**
> GetRecipeNutritionWidgetByID200Response GetRecipeNutritionWidgetByID (int id)

Nutrition by ID

Get a recipe's nutrition data.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using spoonacular.Api;
using spoonacular.Client;
using spoonacular.Model;

namespace Example
{
    public class GetRecipeNutritionWidgetByIDExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.spoonacular.com";
            // Configure API key authorization: apiKeyScheme
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new RecipesApi(config);
            var id = 1;  // int | The item's id.

            try
            {
                // Nutrition by ID
                GetRecipeNutritionWidgetByID200Response result = apiInstance.GetRecipeNutritionWidgetByID(id);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RecipesApi.GetRecipeNutritionWidgetByID: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetRecipeNutritionWidgetByIDWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Nutrition by ID
    ApiResponse<GetRecipeNutritionWidgetByID200Response> response = apiInstance.GetRecipeNutritionWidgetByIDWithHttpInfo(id);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling RecipesApi.GetRecipeNutritionWidgetByIDWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **int** | The item&#39;s id. |  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="getrecipepricebreakdownbyid"></a>
# **GetRecipePriceBreakdownByID**
> GetRecipePriceBreakdownByID200Response GetRecipePriceBreakdownByID (int id)

Price Breakdown by ID

Get a recipe's price breakdown data.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using spoonacular.Api;
using spoonacular.Client;
using spoonacular.Model;

namespace Example
{
    public class GetRecipePriceBreakdownByIDExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.spoonacular.com";
            // Configure API key authorization: apiKeyScheme
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new RecipesApi(config);
            var id = 1;  // int | The item's id.

            try
            {
                // Price Breakdown by ID
                GetRecipePriceBreakdownByID200Response result = apiInstance.GetRecipePriceBreakdownByID(id);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RecipesApi.GetRecipePriceBreakdownByID: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetRecipePriceBreakdownByIDWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Price Breakdown by ID
    ApiResponse<GetRecipePriceBreakdownByID200Response> response = apiInstance.GetRecipePriceBreakdownByIDWithHttpInfo(id);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling RecipesApi.GetRecipePriceBreakdownByIDWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **int** | The item&#39;s id. |  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="getrecipetastebyid"></a>
# **GetRecipeTasteByID**
> GetRecipeTasteByID200Response GetRecipeTasteByID (int id, bool? normalize = null)

Taste by ID

Get a recipe's taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using spoonacular.Api;
using spoonacular.Client;
using spoonacular.Model;

namespace Example
{
    public class GetRecipeTasteByIDExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.spoonacular.com";
            // Configure API key authorization: apiKeyScheme
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new RecipesApi(config);
            var id = 1;  // int | The item's id.
            var normalize = true;  // bool? | Normalize to the strongest taste. (optional)  (default to true)

            try
            {
                // Taste by ID
                GetRecipeTasteByID200Response result = apiInstance.GetRecipeTasteByID(id, normalize);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RecipesApi.GetRecipeTasteByID: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetRecipeTasteByIDWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Taste by ID
    ApiResponse<GetRecipeTasteByID200Response> response = apiInstance.GetRecipeTasteByIDWithHttpInfo(id, normalize);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling RecipesApi.GetRecipeTasteByIDWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **int** | The item&#39;s id. |  |
| **normalize** | **bool?** | Normalize to the strongest taste. | [optional] [default to true] |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="getsimilarrecipes"></a>
# **GetSimilarRecipes**
> List&lt;GetSimilarRecipes200ResponseInner&gt; GetSimilarRecipes (int id, int? number = null, bool? limitLicense = null)

Get Similar Recipes

Find recipes which are similar to the given one.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using spoonacular.Api;
using spoonacular.Client;
using spoonacular.Model;

namespace Example
{
    public class GetSimilarRecipesExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.spoonacular.com";
            // Configure API key authorization: apiKeyScheme
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new RecipesApi(config);
            var id = 1;  // int | The item's id.
            var number = 10;  // int? | The maximum number of items to return (between 1 and 100). Defaults to 10. (optional)  (default to 10)
            var limitLicense = true;  // bool? | Whether the recipes should have an open license that allows display with proper attribution. (optional)  (default to true)

            try
            {
                // Get Similar Recipes
                List<GetSimilarRecipes200ResponseInner> result = apiInstance.GetSimilarRecipes(id, number, limitLicense);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RecipesApi.GetSimilarRecipes: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetSimilarRecipesWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Get Similar Recipes
    ApiResponse<List<GetSimilarRecipes200ResponseInner>> response = apiInstance.GetSimilarRecipesWithHttpInfo(id, number, limitLicense);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling RecipesApi.GetSimilarRecipesWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **int** | The item&#39;s id. |  |
| **number** | **int?** | The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10] |
| **limitLicense** | **bool?** | Whether the recipes should have an open license that allows display with proper attribution. | [optional] [default to true] |

### Return type

[**List&lt;GetSimilarRecipes200ResponseInner&gt;**](GetSimilarRecipes200ResponseInner.md)

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="guessnutritionbydishname"></a>
# **GuessNutritionByDishName**
> GuessNutritionByDishName200Response GuessNutritionByDishName (string title)

Guess Nutrition by Dish Name

Estimate the macronutrients of a dish based on its title.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using spoonacular.Api;
using spoonacular.Client;
using spoonacular.Model;

namespace Example
{
    public class GuessNutritionByDishNameExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.spoonacular.com";
            // Configure API key authorization: apiKeyScheme
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new RecipesApi(config);
            var title = Spaghetti Aglio et Olio;  // string | The title of the dish.

            try
            {
                // Guess Nutrition by Dish Name
                GuessNutritionByDishName200Response result = apiInstance.GuessNutritionByDishName(title);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RecipesApi.GuessNutritionByDishName: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GuessNutritionByDishNameWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Guess Nutrition by Dish Name
    ApiResponse<GuessNutritionByDishName200Response> response = apiInstance.GuessNutritionByDishNameWithHttpInfo(title);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling RecipesApi.GuessNutritionByDishNameWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **title** | **string** | The title of the dish. |  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="parseingredients"></a>
# **ParseIngredients**
> List&lt;ParseIngredients200ResponseInner&gt; ParseIngredients (string? contentType = null, string? language = null)

Parse Ingredients

Extract an ingredient from plain text.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using spoonacular.Api;
using spoonacular.Client;
using spoonacular.Model;

namespace Example
{
    public class ParseIngredientsExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.spoonacular.com";
            // Configure API key authorization: apiKeyScheme
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new RecipesApi(config);
            var contentType = application/json;  // string? | The content type. (optional) 
            var language = en;  // string? | The language of the input. Either 'en' or 'de'. (optional) 

            try
            {
                // Parse Ingredients
                List<ParseIngredients200ResponseInner> result = apiInstance.ParseIngredients(contentType, language);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RecipesApi.ParseIngredients: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ParseIngredientsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Parse Ingredients
    ApiResponse<List<ParseIngredients200ResponseInner>> response = apiInstance.ParseIngredientsWithHttpInfo(contentType, language);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling RecipesApi.ParseIngredientsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **contentType** | **string?** | The content type. | [optional]  |
| **language** | **string?** | The language of the input. Either &#39;en&#39; or &#39;de&#39;. | [optional]  |

### Return type

[**List&lt;ParseIngredients200ResponseInner&gt;**](ParseIngredients200ResponseInner.md)

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="pricebreakdownbyidimage"></a>
# **PriceBreakdownByIDImage**
> Object PriceBreakdownByIDImage (decimal id)

Price Breakdown by ID Image

Visualize a recipe's price breakdown.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using spoonacular.Api;
using spoonacular.Client;
using spoonacular.Model;

namespace Example
{
    public class PriceBreakdownByIDImageExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.spoonacular.com";
            // Configure API key authorization: apiKeyScheme
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new RecipesApi(config);
            var id = 1082038;  // decimal | The recipe id.

            try
            {
                // Price Breakdown by ID Image
                Object result = apiInstance.PriceBreakdownByIDImage(id);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RecipesApi.PriceBreakdownByIDImage: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the PriceBreakdownByIDImageWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Price Breakdown by ID Image
    ApiResponse<Object> response = apiInstance.PriceBreakdownByIDImageWithHttpInfo(id);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling RecipesApi.PriceBreakdownByIDImageWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **decimal** | The recipe id. |  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="quickanswer"></a>
# **QuickAnswer**
> QuickAnswer200Response QuickAnswer (string q)

Quick Answer

Answer a nutrition related natural language question.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using spoonacular.Api;
using spoonacular.Client;
using spoonacular.Model;

namespace Example
{
    public class QuickAnswerExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.spoonacular.com";
            // Configure API key authorization: apiKeyScheme
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new RecipesApi(config);
            var q = How much vitamin c is in 2 apples?;  // string | The nutrition related question.

            try
            {
                // Quick Answer
                QuickAnswer200Response result = apiInstance.QuickAnswer(q);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RecipesApi.QuickAnswer: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the QuickAnswerWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Quick Answer
    ApiResponse<QuickAnswer200Response> response = apiInstance.QuickAnswerWithHttpInfo(q);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling RecipesApi.QuickAnswerWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **q** | **string** | The nutrition related question. |  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="recipenutritionbyidimage"></a>
# **RecipeNutritionByIDImage**
> Object RecipeNutritionByIDImage (decimal id)

Recipe Nutrition by ID Image

Visualize a recipe's nutritional information as an image.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using spoonacular.Api;
using spoonacular.Client;
using spoonacular.Model;

namespace Example
{
    public class RecipeNutritionByIDImageExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.spoonacular.com";
            // Configure API key authorization: apiKeyScheme
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new RecipesApi(config);
            var id = 1082038;  // decimal | The recipe id.

            try
            {
                // Recipe Nutrition by ID Image
                Object result = apiInstance.RecipeNutritionByIDImage(id);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RecipesApi.RecipeNutritionByIDImage: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the RecipeNutritionByIDImageWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Recipe Nutrition by ID Image
    ApiResponse<Object> response = apiInstance.RecipeNutritionByIDImageWithHttpInfo(id);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling RecipesApi.RecipeNutritionByIDImageWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **decimal** | The recipe id. |  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="recipenutritionlabelimage"></a>
# **RecipeNutritionLabelImage**
> Object RecipeNutritionLabelImage (decimal id, bool? showOptionalNutrients = null, bool? showZeroValues = null, bool? showIngredients = null)

Recipe Nutrition Label Image

Get a recipe's nutrition label as an image.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using spoonacular.Api;
using spoonacular.Client;
using spoonacular.Model;

namespace Example
{
    public class RecipeNutritionLabelImageExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.spoonacular.com";
            // Configure API key authorization: apiKeyScheme
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new RecipesApi(config);
            var id = 641166;  // decimal | The recipe id.
            var showOptionalNutrients = false;  // bool? | Whether to show optional nutrients. (optional) 
            var showZeroValues = false;  // bool? | Whether to show zero values. (optional) 
            var showIngredients = false;  // bool? | Whether to show a list of ingredients. (optional) 

            try
            {
                // Recipe Nutrition Label Image
                Object result = apiInstance.RecipeNutritionLabelImage(id, showOptionalNutrients, showZeroValues, showIngredients);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RecipesApi.RecipeNutritionLabelImage: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the RecipeNutritionLabelImageWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Recipe Nutrition Label Image
    ApiResponse<Object> response = apiInstance.RecipeNutritionLabelImageWithHttpInfo(id, showOptionalNutrients, showZeroValues, showIngredients);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling RecipesApi.RecipeNutritionLabelImageWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **decimal** | The recipe id. |  |
| **showOptionalNutrients** | **bool?** | Whether to show optional nutrients. | [optional]  |
| **showZeroValues** | **bool?** | Whether to show zero values. | [optional]  |
| **showIngredients** | **bool?** | Whether to show a list of ingredients. | [optional]  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="recipenutritionlabelwidget"></a>
# **RecipeNutritionLabelWidget**
> string RecipeNutritionLabelWidget (decimal id, bool? defaultCss = null, bool? showOptionalNutrients = null, bool? showZeroValues = null, bool? showIngredients = null)

Recipe Nutrition Label Widget

Get a recipe's nutrition label as an HTML widget.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using spoonacular.Api;
using spoonacular.Client;
using spoonacular.Model;

namespace Example
{
    public class RecipeNutritionLabelWidgetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.spoonacular.com";
            // Configure API key authorization: apiKeyScheme
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new RecipesApi(config);
            var id = 641166;  // decimal | The recipe id.
            var defaultCss = false;  // bool? | Whether the default CSS should be added to the response. (optional)  (default to true)
            var showOptionalNutrients = false;  // bool? | Whether to show optional nutrients. (optional) 
            var showZeroValues = false;  // bool? | Whether to show zero values. (optional) 
            var showIngredients = false;  // bool? | Whether to show a list of ingredients. (optional) 

            try
            {
                // Recipe Nutrition Label Widget
                string result = apiInstance.RecipeNutritionLabelWidget(id, defaultCss, showOptionalNutrients, showZeroValues, showIngredients);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RecipesApi.RecipeNutritionLabelWidget: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the RecipeNutritionLabelWidgetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Recipe Nutrition Label Widget
    ApiResponse<string> response = apiInstance.RecipeNutritionLabelWidgetWithHttpInfo(id, defaultCss, showOptionalNutrients, showZeroValues, showIngredients);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling RecipesApi.RecipeNutritionLabelWidgetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **decimal** | The recipe id. |  |
| **defaultCss** | **bool?** | Whether the default CSS should be added to the response. | [optional] [default to true] |
| **showOptionalNutrients** | **bool?** | Whether to show optional nutrients. | [optional]  |
| **showZeroValues** | **bool?** | Whether to show zero values. | [optional]  |
| **showIngredients** | **bool?** | Whether to show a list of ingredients. | [optional]  |

### Return type

**string**

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="recipetastebyidimage"></a>
# **RecipeTasteByIDImage**
> Object RecipeTasteByIDImage (decimal id, bool? normalize = null, string? rgb = null)

Recipe Taste by ID Image

Get a recipe's taste as an image. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using spoonacular.Api;
using spoonacular.Client;
using spoonacular.Model;

namespace Example
{
    public class RecipeTasteByIDImageExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.spoonacular.com";
            // Configure API key authorization: apiKeyScheme
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new RecipesApi(config);
            var id = 69095;  // decimal | The recipe id.
            var normalize = false;  // bool? | Normalize to the strongest taste. (optional) 
            var rgb = 75,192,192;  // string? | Red, green, blue values for the chart color. (optional) 

            try
            {
                // Recipe Taste by ID Image
                Object result = apiInstance.RecipeTasteByIDImage(id, normalize, rgb);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RecipesApi.RecipeTasteByIDImage: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the RecipeTasteByIDImageWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Recipe Taste by ID Image
    ApiResponse<Object> response = apiInstance.RecipeTasteByIDImageWithHttpInfo(id, normalize, rgb);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling RecipesApi.RecipeTasteByIDImageWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **decimal** | The recipe id. |  |
| **normalize** | **bool?** | Normalize to the strongest taste. | [optional]  |
| **rgb** | **string?** | Red, green, blue values for the chart color. | [optional]  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="searchrecipes"></a>
# **SearchRecipes**
> SearchRecipes200Response SearchRecipes (string? query = null, string? cuisine = null, string? excludeCuisine = null, string? diet = null, string? intolerances = null, string? equipment = null, string? includeIngredients = null, string? excludeIngredients = null, string? type = null, bool? instructionsRequired = null, bool? fillIngredients = null, bool? addRecipeInformation = null, bool? addRecipeNutrition = null, string? author = null, string? tags = null, decimal? recipeBoxId = null, string? titleMatch = null, decimal? maxReadyTime = null, decimal? minServings = null, decimal? maxServings = null, bool? ignorePantry = null, string? sort = null, string? sortDirection = null, decimal? minCarbs = null, decimal? maxCarbs = null, decimal? minProtein = null, decimal? maxProtein = null, decimal? minCalories = null, decimal? maxCalories = null, decimal? minFat = null, decimal? maxFat = null, decimal? minAlcohol = null, decimal? maxAlcohol = null, decimal? minCaffeine = null, decimal? maxCaffeine = null, decimal? minCopper = null, decimal? maxCopper = null, decimal? minCalcium = null, decimal? maxCalcium = null, decimal? minCholine = null, decimal? maxCholine = null, decimal? minCholesterol = null, decimal? maxCholesterol = null, decimal? minFluoride = null, decimal? maxFluoride = null, decimal? minSaturatedFat = null, decimal? maxSaturatedFat = null, decimal? minVitaminA = null, decimal? maxVitaminA = null, decimal? minVitaminC = null, decimal? maxVitaminC = null, decimal? minVitaminD = null, decimal? maxVitaminD = null, decimal? minVitaminE = null, decimal? maxVitaminE = null, decimal? minVitaminK = null, decimal? maxVitaminK = null, decimal? minVitaminB1 = null, decimal? maxVitaminB1 = null, decimal? minVitaminB2 = null, decimal? maxVitaminB2 = null, decimal? minVitaminB5 = null, decimal? maxVitaminB5 = null, decimal? minVitaminB3 = null, decimal? maxVitaminB3 = null, decimal? minVitaminB6 = null, decimal? maxVitaminB6 = null, decimal? minVitaminB12 = null, decimal? maxVitaminB12 = null, decimal? minFiber = null, decimal? maxFiber = null, decimal? minFolate = null, decimal? maxFolate = null, decimal? minFolicAcid = null, decimal? maxFolicAcid = null, decimal? minIodine = null, decimal? maxIodine = null, decimal? minIron = null, decimal? maxIron = null, decimal? minMagnesium = null, decimal? maxMagnesium = null, decimal? minManganese = null, decimal? maxManganese = null, decimal? minPhosphorus = null, decimal? maxPhosphorus = null, decimal? minPotassium = null, decimal? maxPotassium = null, decimal? minSelenium = null, decimal? maxSelenium = null, decimal? minSodium = null, decimal? maxSodium = null, decimal? minSugar = null, decimal? maxSugar = null, decimal? minZinc = null, decimal? maxZinc = null, int? offset = null, int? number = null, bool? limitLicense = null)

Search Recipes

Search through hundreds of thousands of recipes using advanced filtering and ranking. NOTE: This method combines searching by query, by ingredients, and by nutrients into one endpoint.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using spoonacular.Api;
using spoonacular.Client;
using spoonacular.Model;

namespace Example
{
    public class SearchRecipesExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.spoonacular.com";
            // Configure API key authorization: apiKeyScheme
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new RecipesApi(config);
            var query = burger;  // string? | The (natural language) search query. (optional) 
            var cuisine = italian;  // string? | The cuisine(s) of the recipes. One or more, comma separated (will be interpreted as 'OR'). See a full list of supported cuisines. (optional) 
            var excludeCuisine = greek;  // string? | The cuisine(s) the recipes must not match. One or more, comma separated (will be interpreted as 'AND'). See a full list of supported cuisines. (optional) 
            var diet = vegetarian;  // string? | The diet for which the recipes must be suitable. See a full list of supported diets. (optional) 
            var intolerances = gluten;  // string? | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. (optional) 
            var equipment = pan;  // string? | The equipment required. Multiple values will be interpreted as 'or'. For example, value could be \"blender, frying pan, bowl\". (optional) 
            var includeIngredients = tomato,cheese;  // string? | A comma-separated list of ingredients that should/must be used in the recipes. (optional) 
            var excludeIngredients = eggs;  // string? | A comma-separated list of ingredients or ingredient types that the recipes must not contain. (optional) 
            var type = main course;  // string? | The type of recipe. See a full list of supported meal types. (optional) 
            var instructionsRequired = true;  // bool? | Whether the recipes must have instructions. (optional) 
            var fillIngredients = false;  // bool? | Add information about the ingredients and whether they are used or missing in relation to the query. (optional) 
            var addRecipeInformation = false;  // bool? | If set to true, you get more information about the recipes returned. (optional) 
            var addRecipeNutrition = false;  // bool? | If set to true, you get nutritional information about each recipes returned. (optional) 
            var author = coffeebean;  // string? | The username of the recipe author. (optional) 
            var tags = "tags_example";  // string? | The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have. (optional) 
            var recipeBoxId = 2468;  // decimal? | The id of the recipe box to which the search should be limited to. (optional) 
            var titleMatch = Crock Pot;  // string? | Enter text that must be found in the title of the recipes. (optional) 
            var maxReadyTime = 20;  // decimal? | The maximum time in minutes it should take to prepare and cook the recipe. (optional) 
            var minServings = 1;  // decimal? | The minimum amount of servings the recipe is for. (optional) 
            var maxServings = 8;  // decimal? | The maximum amount of servings the recipe is for. (optional) 
            var ignorePantry = false;  // bool? | Whether to ignore typical pantry items, such as water, salt, flour, etc. (optional)  (default to false)
            var sort = calories;  // string? | The strategy to sort recipes by. See a full list of supported sorting options. (optional) 
            var sortDirection = asc;  // string? | The direction in which to sort. Must be either 'asc' (ascending) or 'desc' (descending). (optional) 
            var minCarbs = 10;  // decimal? | The minimum amount of carbohydrates in grams the recipe must have. (optional) 
            var maxCarbs = 100;  // decimal? | The maximum amount of carbohydrates in grams the recipe can have. (optional) 
            var minProtein = 10;  // decimal? | The minimum amount of protein in grams the recipe must have. (optional) 
            var maxProtein = 100;  // decimal? | The maximum amount of protein in grams the recipe can have. (optional) 
            var minCalories = 50;  // decimal? | The minimum amount of calories the recipe must have. (optional) 
            var maxCalories = 800;  // decimal? | The maximum amount of calories the recipe can have. (optional) 
            var minFat = 1;  // decimal? | The minimum amount of fat in grams the recipe must have. (optional) 
            var maxFat = 100;  // decimal? | The maximum amount of fat in grams the recipe can have. (optional) 
            var minAlcohol = 0;  // decimal? | The minimum amount of alcohol in grams the recipe must have. (optional) 
            var maxAlcohol = 100;  // decimal? | The maximum amount of alcohol in grams the recipe can have. (optional) 
            var minCaffeine = 0;  // decimal? | The minimum amount of caffeine in milligrams the recipe must have. (optional) 
            var maxCaffeine = 100;  // decimal? | The maximum amount of caffeine in milligrams the recipe can have. (optional) 
            var minCopper = 0;  // decimal? | The minimum amount of copper in milligrams the recipe must have. (optional) 
            var maxCopper = 100;  // decimal? | The maximum amount of copper in milligrams the recipe can have. (optional) 
            var minCalcium = 0;  // decimal? | The minimum amount of calcium in milligrams the recipe must have. (optional) 
            var maxCalcium = 100;  // decimal? | The maximum amount of calcium in milligrams the recipe can have. (optional) 
            var minCholine = 0;  // decimal? | The minimum amount of choline in milligrams the recipe must have. (optional) 
            var maxCholine = 100;  // decimal? | The maximum amount of choline in milligrams the recipe can have. (optional) 
            var minCholesterol = 0;  // decimal? | The minimum amount of cholesterol in milligrams the recipe must have. (optional) 
            var maxCholesterol = 100;  // decimal? | The maximum amount of cholesterol in milligrams the recipe can have. (optional) 
            var minFluoride = 0;  // decimal? | The minimum amount of fluoride in milligrams the recipe must have. (optional) 
            var maxFluoride = 100;  // decimal? | The maximum amount of fluoride in milligrams the recipe can have. (optional) 
            var minSaturatedFat = 0;  // decimal? | The minimum amount of saturated fat in grams the recipe must have. (optional) 
            var maxSaturatedFat = 100;  // decimal? | The maximum amount of saturated fat in grams the recipe can have. (optional) 
            var minVitaminA = 0;  // decimal? | The minimum amount of Vitamin A in IU the recipe must have. (optional) 
            var maxVitaminA = 100;  // decimal? | The maximum amount of Vitamin A in IU the recipe can have. (optional) 
            var minVitaminC = 0;  // decimal? | The minimum amount of Vitamin C milligrams the recipe must have. (optional) 
            var maxVitaminC = 100;  // decimal? | The maximum amount of Vitamin C in milligrams the recipe can have. (optional) 
            var minVitaminD = 0;  // decimal? | The minimum amount of Vitamin D in micrograms the recipe must have. (optional) 
            var maxVitaminD = 100;  // decimal? | The maximum amount of Vitamin D in micrograms the recipe can have. (optional) 
            var minVitaminE = 0;  // decimal? | The minimum amount of Vitamin E in milligrams the recipe must have. (optional) 
            var maxVitaminE = 100;  // decimal? | The maximum amount of Vitamin E in milligrams the recipe can have. (optional) 
            var minVitaminK = 0;  // decimal? | The minimum amount of Vitamin K in micrograms the recipe must have. (optional) 
            var maxVitaminK = 100;  // decimal? | The maximum amount of Vitamin K in micrograms the recipe can have. (optional) 
            var minVitaminB1 = 0;  // decimal? | The minimum amount of Vitamin B1 in milligrams the recipe must have. (optional) 
            var maxVitaminB1 = 100;  // decimal? | The maximum amount of Vitamin B1 in milligrams the recipe can have. (optional) 
            var minVitaminB2 = 0;  // decimal? | The minimum amount of Vitamin B2 in milligrams the recipe must have. (optional) 
            var maxVitaminB2 = 100;  // decimal? | The maximum amount of Vitamin B2 in milligrams the recipe can have. (optional) 
            var minVitaminB5 = 0;  // decimal? | The minimum amount of Vitamin B5 in milligrams the recipe must have. (optional) 
            var maxVitaminB5 = 100;  // decimal? | The maximum amount of Vitamin B5 in milligrams the recipe can have. (optional) 
            var minVitaminB3 = 0;  // decimal? | The minimum amount of Vitamin B3 in milligrams the recipe must have. (optional) 
            var maxVitaminB3 = 100;  // decimal? | The maximum amount of Vitamin B3 in milligrams the recipe can have. (optional) 
            var minVitaminB6 = 0;  // decimal? | The minimum amount of Vitamin B6 in milligrams the recipe must have. (optional) 
            var maxVitaminB6 = 100;  // decimal? | The maximum amount of Vitamin B6 in milligrams the recipe can have. (optional) 
            var minVitaminB12 = 0;  // decimal? | The minimum amount of Vitamin B12 in micrograms the recipe must have. (optional) 
            var maxVitaminB12 = 100;  // decimal? | The maximum amount of Vitamin B12 in micrograms the recipe can have. (optional) 
            var minFiber = 0;  // decimal? | The minimum amount of fiber in grams the recipe must have. (optional) 
            var maxFiber = 100;  // decimal? | The maximum amount of fiber in grams the recipe can have. (optional) 
            var minFolate = 0;  // decimal? | The minimum amount of folate in micrograms the recipe must have. (optional) 
            var maxFolate = 100;  // decimal? | The maximum amount of folate in micrograms the recipe can have. (optional) 
            var minFolicAcid = 0;  // decimal? | The minimum amount of folic acid in micrograms the recipe must have. (optional) 
            var maxFolicAcid = 100;  // decimal? | The maximum amount of folic acid in micrograms the recipe can have. (optional) 
            var minIodine = 0;  // decimal? | The minimum amount of iodine in micrograms the recipe must have. (optional) 
            var maxIodine = 100;  // decimal? | The maximum amount of iodine in micrograms the recipe can have. (optional) 
            var minIron = 0;  // decimal? | The minimum amount of iron in milligrams the recipe must have. (optional) 
            var maxIron = 100;  // decimal? | The maximum amount of iron in milligrams the recipe can have. (optional) 
            var minMagnesium = 0;  // decimal? | The minimum amount of magnesium in milligrams the recipe must have. (optional) 
            var maxMagnesium = 100;  // decimal? | The maximum amount of magnesium in milligrams the recipe can have. (optional) 
            var minManganese = 0;  // decimal? | The minimum amount of manganese in milligrams the recipe must have. (optional) 
            var maxManganese = 100;  // decimal? | The maximum amount of manganese in milligrams the recipe can have. (optional) 
            var minPhosphorus = 0;  // decimal? | The minimum amount of phosphorus in milligrams the recipe must have. (optional) 
            var maxPhosphorus = 100;  // decimal? | The maximum amount of phosphorus in milligrams the recipe can have. (optional) 
            var minPotassium = 0;  // decimal? | The minimum amount of potassium in milligrams the recipe must have. (optional) 
            var maxPotassium = 100;  // decimal? | The maximum amount of potassium in milligrams the recipe can have. (optional) 
            var minSelenium = 0;  // decimal? | The minimum amount of selenium in micrograms the recipe must have. (optional) 
            var maxSelenium = 100;  // decimal? | The maximum amount of selenium in micrograms the recipe can have. (optional) 
            var minSodium = 0;  // decimal? | The minimum amount of sodium in milligrams the recipe must have. (optional) 
            var maxSodium = 100;  // decimal? | The maximum amount of sodium in milligrams the recipe can have. (optional) 
            var minSugar = 0;  // decimal? | The minimum amount of sugar in grams the recipe must have. (optional) 
            var maxSugar = 100;  // decimal? | The maximum amount of sugar in grams the recipe can have. (optional) 
            var minZinc = 0;  // decimal? | The minimum amount of zinc in milligrams the recipe must have. (optional) 
            var maxZinc = 100;  // decimal? | The maximum amount of zinc in milligrams the recipe can have. (optional) 
            var offset = 56;  // int? | The number of results to skip (between 0 and 900). (optional) 
            var number = 10;  // int? | The maximum number of items to return (between 1 and 100). Defaults to 10. (optional)  (default to 10)
            var limitLicense = true;  // bool? | Whether the recipes should have an open license that allows display with proper attribution. (optional)  (default to true)

            try
            {
                // Search Recipes
                SearchRecipes200Response result = apiInstance.SearchRecipes(query, cuisine, excludeCuisine, diet, intolerances, equipment, includeIngredients, excludeIngredients, type, instructionsRequired, fillIngredients, addRecipeInformation, addRecipeNutrition, author, tags, recipeBoxId, titleMatch, maxReadyTime, minServings, maxServings, ignorePantry, sort, sortDirection, minCarbs, maxCarbs, minProtein, maxProtein, minCalories, maxCalories, minFat, maxFat, minAlcohol, maxAlcohol, minCaffeine, maxCaffeine, minCopper, maxCopper, minCalcium, maxCalcium, minCholine, maxCholine, minCholesterol, maxCholesterol, minFluoride, maxFluoride, minSaturatedFat, maxSaturatedFat, minVitaminA, maxVitaminA, minVitaminC, maxVitaminC, minVitaminD, maxVitaminD, minVitaminE, maxVitaminE, minVitaminK, maxVitaminK, minVitaminB1, maxVitaminB1, minVitaminB2, maxVitaminB2, minVitaminB5, maxVitaminB5, minVitaminB3, maxVitaminB3, minVitaminB6, maxVitaminB6, minVitaminB12, maxVitaminB12, minFiber, maxFiber, minFolate, maxFolate, minFolicAcid, maxFolicAcid, minIodine, maxIodine, minIron, maxIron, minMagnesium, maxMagnesium, minManganese, maxManganese, minPhosphorus, maxPhosphorus, minPotassium, maxPotassium, minSelenium, maxSelenium, minSodium, maxSodium, minSugar, maxSugar, minZinc, maxZinc, offset, number, limitLicense);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RecipesApi.SearchRecipes: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SearchRecipesWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Search Recipes
    ApiResponse<SearchRecipes200Response> response = apiInstance.SearchRecipesWithHttpInfo(query, cuisine, excludeCuisine, diet, intolerances, equipment, includeIngredients, excludeIngredients, type, instructionsRequired, fillIngredients, addRecipeInformation, addRecipeNutrition, author, tags, recipeBoxId, titleMatch, maxReadyTime, minServings, maxServings, ignorePantry, sort, sortDirection, minCarbs, maxCarbs, minProtein, maxProtein, minCalories, maxCalories, minFat, maxFat, minAlcohol, maxAlcohol, minCaffeine, maxCaffeine, minCopper, maxCopper, minCalcium, maxCalcium, minCholine, maxCholine, minCholesterol, maxCholesterol, minFluoride, maxFluoride, minSaturatedFat, maxSaturatedFat, minVitaminA, maxVitaminA, minVitaminC, maxVitaminC, minVitaminD, maxVitaminD, minVitaminE, maxVitaminE, minVitaminK, maxVitaminK, minVitaminB1, maxVitaminB1, minVitaminB2, maxVitaminB2, minVitaminB5, maxVitaminB5, minVitaminB3, maxVitaminB3, minVitaminB6, maxVitaminB6, minVitaminB12, maxVitaminB12, minFiber, maxFiber, minFolate, maxFolate, minFolicAcid, maxFolicAcid, minIodine, maxIodine, minIron, maxIron, minMagnesium, maxMagnesium, minManganese, maxManganese, minPhosphorus, maxPhosphorus, minPotassium, maxPotassium, minSelenium, maxSelenium, minSodium, maxSodium, minSugar, maxSugar, minZinc, maxZinc, offset, number, limitLicense);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling RecipesApi.SearchRecipesWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **query** | **string?** | The (natural language) search query. | [optional]  |
| **cuisine** | **string?** | The cuisine(s) of the recipes. One or more, comma separated (will be interpreted as &#39;OR&#39;). See a full list of supported cuisines. | [optional]  |
| **excludeCuisine** | **string?** | The cuisine(s) the recipes must not match. One or more, comma separated (will be interpreted as &#39;AND&#39;). See a full list of supported cuisines. | [optional]  |
| **diet** | **string?** | The diet for which the recipes must be suitable. See a full list of supported diets. | [optional]  |
| **intolerances** | **string?** | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. | [optional]  |
| **equipment** | **string?** | The equipment required. Multiple values will be interpreted as &#39;or&#39;. For example, value could be \&quot;blender, frying pan, bowl\&quot;. | [optional]  |
| **includeIngredients** | **string?** | A comma-separated list of ingredients that should/must be used in the recipes. | [optional]  |
| **excludeIngredients** | **string?** | A comma-separated list of ingredients or ingredient types that the recipes must not contain. | [optional]  |
| **type** | **string?** | The type of recipe. See a full list of supported meal types. | [optional]  |
| **instructionsRequired** | **bool?** | Whether the recipes must have instructions. | [optional]  |
| **fillIngredients** | **bool?** | Add information about the ingredients and whether they are used or missing in relation to the query. | [optional]  |
| **addRecipeInformation** | **bool?** | If set to true, you get more information about the recipes returned. | [optional]  |
| **addRecipeNutrition** | **bool?** | If set to true, you get nutritional information about each recipes returned. | [optional]  |
| **author** | **string?** | The username of the recipe author. | [optional]  |
| **tags** | **string?** | The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have. | [optional]  |
| **recipeBoxId** | **decimal?** | The id of the recipe box to which the search should be limited to. | [optional]  |
| **titleMatch** | **string?** | Enter text that must be found in the title of the recipes. | [optional]  |
| **maxReadyTime** | **decimal?** | The maximum time in minutes it should take to prepare and cook the recipe. | [optional]  |
| **minServings** | **decimal?** | The minimum amount of servings the recipe is for. | [optional]  |
| **maxServings** | **decimal?** | The maximum amount of servings the recipe is for. | [optional]  |
| **ignorePantry** | **bool?** | Whether to ignore typical pantry items, such as water, salt, flour, etc. | [optional] [default to false] |
| **sort** | **string?** | The strategy to sort recipes by. See a full list of supported sorting options. | [optional]  |
| **sortDirection** | **string?** | The direction in which to sort. Must be either &#39;asc&#39; (ascending) or &#39;desc&#39; (descending). | [optional]  |
| **minCarbs** | **decimal?** | The minimum amount of carbohydrates in grams the recipe must have. | [optional]  |
| **maxCarbs** | **decimal?** | The maximum amount of carbohydrates in grams the recipe can have. | [optional]  |
| **minProtein** | **decimal?** | The minimum amount of protein in grams the recipe must have. | [optional]  |
| **maxProtein** | **decimal?** | The maximum amount of protein in grams the recipe can have. | [optional]  |
| **minCalories** | **decimal?** | The minimum amount of calories the recipe must have. | [optional]  |
| **maxCalories** | **decimal?** | The maximum amount of calories the recipe can have. | [optional]  |
| **minFat** | **decimal?** | The minimum amount of fat in grams the recipe must have. | [optional]  |
| **maxFat** | **decimal?** | The maximum amount of fat in grams the recipe can have. | [optional]  |
| **minAlcohol** | **decimal?** | The minimum amount of alcohol in grams the recipe must have. | [optional]  |
| **maxAlcohol** | **decimal?** | The maximum amount of alcohol in grams the recipe can have. | [optional]  |
| **minCaffeine** | **decimal?** | The minimum amount of caffeine in milligrams the recipe must have. | [optional]  |
| **maxCaffeine** | **decimal?** | The maximum amount of caffeine in milligrams the recipe can have. | [optional]  |
| **minCopper** | **decimal?** | The minimum amount of copper in milligrams the recipe must have. | [optional]  |
| **maxCopper** | **decimal?** | The maximum amount of copper in milligrams the recipe can have. | [optional]  |
| **minCalcium** | **decimal?** | The minimum amount of calcium in milligrams the recipe must have. | [optional]  |
| **maxCalcium** | **decimal?** | The maximum amount of calcium in milligrams the recipe can have. | [optional]  |
| **minCholine** | **decimal?** | The minimum amount of choline in milligrams the recipe must have. | [optional]  |
| **maxCholine** | **decimal?** | The maximum amount of choline in milligrams the recipe can have. | [optional]  |
| **minCholesterol** | **decimal?** | The minimum amount of cholesterol in milligrams the recipe must have. | [optional]  |
| **maxCholesterol** | **decimal?** | The maximum amount of cholesterol in milligrams the recipe can have. | [optional]  |
| **minFluoride** | **decimal?** | The minimum amount of fluoride in milligrams the recipe must have. | [optional]  |
| **maxFluoride** | **decimal?** | The maximum amount of fluoride in milligrams the recipe can have. | [optional]  |
| **minSaturatedFat** | **decimal?** | The minimum amount of saturated fat in grams the recipe must have. | [optional]  |
| **maxSaturatedFat** | **decimal?** | The maximum amount of saturated fat in grams the recipe can have. | [optional]  |
| **minVitaminA** | **decimal?** | The minimum amount of Vitamin A in IU the recipe must have. | [optional]  |
| **maxVitaminA** | **decimal?** | The maximum amount of Vitamin A in IU the recipe can have. | [optional]  |
| **minVitaminC** | **decimal?** | The minimum amount of Vitamin C milligrams the recipe must have. | [optional]  |
| **maxVitaminC** | **decimal?** | The maximum amount of Vitamin C in milligrams the recipe can have. | [optional]  |
| **minVitaminD** | **decimal?** | The minimum amount of Vitamin D in micrograms the recipe must have. | [optional]  |
| **maxVitaminD** | **decimal?** | The maximum amount of Vitamin D in micrograms the recipe can have. | [optional]  |
| **minVitaminE** | **decimal?** | The minimum amount of Vitamin E in milligrams the recipe must have. | [optional]  |
| **maxVitaminE** | **decimal?** | The maximum amount of Vitamin E in milligrams the recipe can have. | [optional]  |
| **minVitaminK** | **decimal?** | The minimum amount of Vitamin K in micrograms the recipe must have. | [optional]  |
| **maxVitaminK** | **decimal?** | The maximum amount of Vitamin K in micrograms the recipe can have. | [optional]  |
| **minVitaminB1** | **decimal?** | The minimum amount of Vitamin B1 in milligrams the recipe must have. | [optional]  |
| **maxVitaminB1** | **decimal?** | The maximum amount of Vitamin B1 in milligrams the recipe can have. | [optional]  |
| **minVitaminB2** | **decimal?** | The minimum amount of Vitamin B2 in milligrams the recipe must have. | [optional]  |
| **maxVitaminB2** | **decimal?** | The maximum amount of Vitamin B2 in milligrams the recipe can have. | [optional]  |
| **minVitaminB5** | **decimal?** | The minimum amount of Vitamin B5 in milligrams the recipe must have. | [optional]  |
| **maxVitaminB5** | **decimal?** | The maximum amount of Vitamin B5 in milligrams the recipe can have. | [optional]  |
| **minVitaminB3** | **decimal?** | The minimum amount of Vitamin B3 in milligrams the recipe must have. | [optional]  |
| **maxVitaminB3** | **decimal?** | The maximum amount of Vitamin B3 in milligrams the recipe can have. | [optional]  |
| **minVitaminB6** | **decimal?** | The minimum amount of Vitamin B6 in milligrams the recipe must have. | [optional]  |
| **maxVitaminB6** | **decimal?** | The maximum amount of Vitamin B6 in milligrams the recipe can have. | [optional]  |
| **minVitaminB12** | **decimal?** | The minimum amount of Vitamin B12 in micrograms the recipe must have. | [optional]  |
| **maxVitaminB12** | **decimal?** | The maximum amount of Vitamin B12 in micrograms the recipe can have. | [optional]  |
| **minFiber** | **decimal?** | The minimum amount of fiber in grams the recipe must have. | [optional]  |
| **maxFiber** | **decimal?** | The maximum amount of fiber in grams the recipe can have. | [optional]  |
| **minFolate** | **decimal?** | The minimum amount of folate in micrograms the recipe must have. | [optional]  |
| **maxFolate** | **decimal?** | The maximum amount of folate in micrograms the recipe can have. | [optional]  |
| **minFolicAcid** | **decimal?** | The minimum amount of folic acid in micrograms the recipe must have. | [optional]  |
| **maxFolicAcid** | **decimal?** | The maximum amount of folic acid in micrograms the recipe can have. | [optional]  |
| **minIodine** | **decimal?** | The minimum amount of iodine in micrograms the recipe must have. | [optional]  |
| **maxIodine** | **decimal?** | The maximum amount of iodine in micrograms the recipe can have. | [optional]  |
| **minIron** | **decimal?** | The minimum amount of iron in milligrams the recipe must have. | [optional]  |
| **maxIron** | **decimal?** | The maximum amount of iron in milligrams the recipe can have. | [optional]  |
| **minMagnesium** | **decimal?** | The minimum amount of magnesium in milligrams the recipe must have. | [optional]  |
| **maxMagnesium** | **decimal?** | The maximum amount of magnesium in milligrams the recipe can have. | [optional]  |
| **minManganese** | **decimal?** | The minimum amount of manganese in milligrams the recipe must have. | [optional]  |
| **maxManganese** | **decimal?** | The maximum amount of manganese in milligrams the recipe can have. | [optional]  |
| **minPhosphorus** | **decimal?** | The minimum amount of phosphorus in milligrams the recipe must have. | [optional]  |
| **maxPhosphorus** | **decimal?** | The maximum amount of phosphorus in milligrams the recipe can have. | [optional]  |
| **minPotassium** | **decimal?** | The minimum amount of potassium in milligrams the recipe must have. | [optional]  |
| **maxPotassium** | **decimal?** | The maximum amount of potassium in milligrams the recipe can have. | [optional]  |
| **minSelenium** | **decimal?** | The minimum amount of selenium in micrograms the recipe must have. | [optional]  |
| **maxSelenium** | **decimal?** | The maximum amount of selenium in micrograms the recipe can have. | [optional]  |
| **minSodium** | **decimal?** | The minimum amount of sodium in milligrams the recipe must have. | [optional]  |
| **maxSodium** | **decimal?** | The maximum amount of sodium in milligrams the recipe can have. | [optional]  |
| **minSugar** | **decimal?** | The minimum amount of sugar in grams the recipe must have. | [optional]  |
| **maxSugar** | **decimal?** | The maximum amount of sugar in grams the recipe can have. | [optional]  |
| **minZinc** | **decimal?** | The minimum amount of zinc in milligrams the recipe must have. | [optional]  |
| **maxZinc** | **decimal?** | The maximum amount of zinc in milligrams the recipe can have. | [optional]  |
| **offset** | **int?** | The number of results to skip (between 0 and 900). | [optional]  |
| **number** | **int?** | The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10] |
| **limitLicense** | **bool?** | Whether the recipes should have an open license that allows display with proper attribution. | [optional] [default to true] |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="searchrecipesbyingredients"></a>
# **SearchRecipesByIngredients**
> List&lt;SearchRecipesByIngredients200ResponseInner&gt; SearchRecipesByIngredients (string? ingredients = null, int? number = null, bool? limitLicense = null, decimal? ranking = null, bool? ignorePantry = null)

Search Recipes by Ingredients

 Ever wondered what recipes you can cook with the ingredients you have in your fridge or pantry? This endpoint lets you find recipes that either maximize the usage of ingredients you have at hand (pre shopping) or minimize the ingredients that you don't currently have (post shopping).         

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using spoonacular.Api;
using spoonacular.Client;
using spoonacular.Model;

namespace Example
{
    public class SearchRecipesByIngredientsExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.spoonacular.com";
            // Configure API key authorization: apiKeyScheme
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new RecipesApi(config);
            var ingredients = carrots,tomatoes;  // string? | A comma-separated list of ingredients that the recipes should contain. (optional) 
            var number = 10;  // int? | The maximum number of items to return (between 1 and 100). Defaults to 10. (optional)  (default to 10)
            var limitLicense = true;  // bool? | Whether the recipes should have an open license that allows display with proper attribution. (optional)  (default to true)
            var ranking = 1;  // decimal? | Whether to maximize used ingredients (1) or minimize missing ingredients (2) first. (optional) 
            var ignorePantry = false;  // bool? | Whether to ignore typical pantry items, such as water, salt, flour, etc. (optional)  (default to false)

            try
            {
                // Search Recipes by Ingredients
                List<SearchRecipesByIngredients200ResponseInner> result = apiInstance.SearchRecipesByIngredients(ingredients, number, limitLicense, ranking, ignorePantry);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RecipesApi.SearchRecipesByIngredients: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SearchRecipesByIngredientsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Search Recipes by Ingredients
    ApiResponse<List<SearchRecipesByIngredients200ResponseInner>> response = apiInstance.SearchRecipesByIngredientsWithHttpInfo(ingredients, number, limitLicense, ranking, ignorePantry);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling RecipesApi.SearchRecipesByIngredientsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **ingredients** | **string?** | A comma-separated list of ingredients that the recipes should contain. | [optional]  |
| **number** | **int?** | The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10] |
| **limitLicense** | **bool?** | Whether the recipes should have an open license that allows display with proper attribution. | [optional] [default to true] |
| **ranking** | **decimal?** | Whether to maximize used ingredients (1) or minimize missing ingredients (2) first. | [optional]  |
| **ignorePantry** | **bool?** | Whether to ignore typical pantry items, such as water, salt, flour, etc. | [optional] [default to false] |

### Return type

[**List&lt;SearchRecipesByIngredients200ResponseInner&gt;**](SearchRecipesByIngredients200ResponseInner.md)

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="searchrecipesbynutrients"></a>
# **SearchRecipesByNutrients**
> List&lt;SearchRecipesByNutrients200ResponseInner&gt; SearchRecipesByNutrients (decimal? minCarbs = null, decimal? maxCarbs = null, decimal? minProtein = null, decimal? maxProtein = null, decimal? minCalories = null, decimal? maxCalories = null, decimal? minFat = null, decimal? maxFat = null, decimal? minAlcohol = null, decimal? maxAlcohol = null, decimal? minCaffeine = null, decimal? maxCaffeine = null, decimal? minCopper = null, decimal? maxCopper = null, decimal? minCalcium = null, decimal? maxCalcium = null, decimal? minCholine = null, decimal? maxCholine = null, decimal? minCholesterol = null, decimal? maxCholesterol = null, decimal? minFluoride = null, decimal? maxFluoride = null, decimal? minSaturatedFat = null, decimal? maxSaturatedFat = null, decimal? minVitaminA = null, decimal? maxVitaminA = null, decimal? minVitaminC = null, decimal? maxVitaminC = null, decimal? minVitaminD = null, decimal? maxVitaminD = null, decimal? minVitaminE = null, decimal? maxVitaminE = null, decimal? minVitaminK = null, decimal? maxVitaminK = null, decimal? minVitaminB1 = null, decimal? maxVitaminB1 = null, decimal? minVitaminB2 = null, decimal? maxVitaminB2 = null, decimal? minVitaminB5 = null, decimal? maxVitaminB5 = null, decimal? minVitaminB3 = null, decimal? maxVitaminB3 = null, decimal? minVitaminB6 = null, decimal? maxVitaminB6 = null, decimal? minVitaminB12 = null, decimal? maxVitaminB12 = null, decimal? minFiber = null, decimal? maxFiber = null, decimal? minFolate = null, decimal? maxFolate = null, decimal? minFolicAcid = null, decimal? maxFolicAcid = null, decimal? minIodine = null, decimal? maxIodine = null, decimal? minIron = null, decimal? maxIron = null, decimal? minMagnesium = null, decimal? maxMagnesium = null, decimal? minManganese = null, decimal? maxManganese = null, decimal? minPhosphorus = null, decimal? maxPhosphorus = null, decimal? minPotassium = null, decimal? maxPotassium = null, decimal? minSelenium = null, decimal? maxSelenium = null, decimal? minSodium = null, decimal? maxSodium = null, decimal? minSugar = null, decimal? maxSugar = null, decimal? minZinc = null, decimal? maxZinc = null, int? offset = null, int? number = null, bool? random = null, bool? limitLicense = null)

Search Recipes by Nutrients

Find a set of recipes that adhere to the given nutritional limits. You may set limits for macronutrients (calories, protein, fat, and carbohydrate) and/or many micronutrients.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using spoonacular.Api;
using spoonacular.Client;
using spoonacular.Model;

namespace Example
{
    public class SearchRecipesByNutrientsExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.spoonacular.com";
            // Configure API key authorization: apiKeyScheme
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new RecipesApi(config);
            var minCarbs = 10;  // decimal? | The minimum amount of carbohydrates in grams the recipe must have. (optional) 
            var maxCarbs = 100;  // decimal? | The maximum amount of carbohydrates in grams the recipe can have. (optional) 
            var minProtein = 10;  // decimal? | The minimum amount of protein in grams the recipe must have. (optional) 
            var maxProtein = 100;  // decimal? | The maximum amount of protein in grams the recipe can have. (optional) 
            var minCalories = 50;  // decimal? | The minimum amount of calories the recipe must have. (optional) 
            var maxCalories = 800;  // decimal? | The maximum amount of calories the recipe can have. (optional) 
            var minFat = 1;  // decimal? | The minimum amount of fat in grams the recipe must have. (optional) 
            var maxFat = 100;  // decimal? | The maximum amount of fat in grams the recipe can have. (optional) 
            var minAlcohol = 0;  // decimal? | The minimum amount of alcohol in grams the recipe must have. (optional) 
            var maxAlcohol = 100;  // decimal? | The maximum amount of alcohol in grams the recipe can have. (optional) 
            var minCaffeine = 0;  // decimal? | The minimum amount of caffeine in milligrams the recipe must have. (optional) 
            var maxCaffeine = 100;  // decimal? | The maximum amount of caffeine in milligrams the recipe can have. (optional) 
            var minCopper = 0;  // decimal? | The minimum amount of copper in milligrams the recipe must have. (optional) 
            var maxCopper = 100;  // decimal? | The maximum amount of copper in milligrams the recipe can have. (optional) 
            var minCalcium = 0;  // decimal? | The minimum amount of calcium in milligrams the recipe must have. (optional) 
            var maxCalcium = 100;  // decimal? | The maximum amount of calcium in milligrams the recipe can have. (optional) 
            var minCholine = 0;  // decimal? | The minimum amount of choline in milligrams the recipe must have. (optional) 
            var maxCholine = 100;  // decimal? | The maximum amount of choline in milligrams the recipe can have. (optional) 
            var minCholesterol = 0;  // decimal? | The minimum amount of cholesterol in milligrams the recipe must have. (optional) 
            var maxCholesterol = 100;  // decimal? | The maximum amount of cholesterol in milligrams the recipe can have. (optional) 
            var minFluoride = 0;  // decimal? | The minimum amount of fluoride in milligrams the recipe must have. (optional) 
            var maxFluoride = 100;  // decimal? | The maximum amount of fluoride in milligrams the recipe can have. (optional) 
            var minSaturatedFat = 0;  // decimal? | The minimum amount of saturated fat in grams the recipe must have. (optional) 
            var maxSaturatedFat = 100;  // decimal? | The maximum amount of saturated fat in grams the recipe can have. (optional) 
            var minVitaminA = 0;  // decimal? | The minimum amount of Vitamin A in IU the recipe must have. (optional) 
            var maxVitaminA = 100;  // decimal? | The maximum amount of Vitamin A in IU the recipe can have. (optional) 
            var minVitaminC = 0;  // decimal? | The minimum amount of Vitamin C in milligrams the recipe must have. (optional) 
            var maxVitaminC = 100;  // decimal? | The maximum amount of Vitamin C in milligrams the recipe can have. (optional) 
            var minVitaminD = 0;  // decimal? | The minimum amount of Vitamin D in micrograms the recipe must have. (optional) 
            var maxVitaminD = 100;  // decimal? | The maximum amount of Vitamin D in micrograms the recipe can have. (optional) 
            var minVitaminE = 0;  // decimal? | The minimum amount of Vitamin E in milligrams the recipe must have. (optional) 
            var maxVitaminE = 100;  // decimal? | The maximum amount of Vitamin E in milligrams the recipe can have. (optional) 
            var minVitaminK = 0;  // decimal? | The minimum amount of Vitamin K in micrograms the recipe must have. (optional) 
            var maxVitaminK = 100;  // decimal? | The maximum amount of Vitamin K in micrograms the recipe can have. (optional) 
            var minVitaminB1 = 0;  // decimal? | The minimum amount of Vitamin B1 in milligrams the recipe must have. (optional) 
            var maxVitaminB1 = 100;  // decimal? | The maximum amount of Vitamin B1 in milligrams the recipe can have. (optional) 
            var minVitaminB2 = 0;  // decimal? | The minimum amount of Vitamin B2 in milligrams the recipe must have. (optional) 
            var maxVitaminB2 = 100;  // decimal? | The maximum amount of Vitamin B2 in milligrams the recipe can have. (optional) 
            var minVitaminB5 = 0;  // decimal? | The minimum amount of Vitamin B5 in milligrams the recipe must have. (optional) 
            var maxVitaminB5 = 100;  // decimal? | The maximum amount of Vitamin B5 in milligrams the recipe can have. (optional) 
            var minVitaminB3 = 0;  // decimal? | The minimum amount of Vitamin B3 in milligrams the recipe must have. (optional) 
            var maxVitaminB3 = 100;  // decimal? | The maximum amount of Vitamin B3 in milligrams the recipe can have. (optional) 
            var minVitaminB6 = 0;  // decimal? | The minimum amount of Vitamin B6 in milligrams the recipe must have. (optional) 
            var maxVitaminB6 = 100;  // decimal? | The maximum amount of Vitamin B6 in milligrams the recipe can have. (optional) 
            var minVitaminB12 = 0;  // decimal? | The minimum amount of Vitamin B12 in micrograms the recipe must have. (optional) 
            var maxVitaminB12 = 100;  // decimal? | The maximum amount of Vitamin B12 in micrograms the recipe can have. (optional) 
            var minFiber = 0;  // decimal? | The minimum amount of fiber in grams the recipe must have. (optional) 
            var maxFiber = 100;  // decimal? | The maximum amount of fiber in grams the recipe can have. (optional) 
            var minFolate = 0;  // decimal? | The minimum amount of folate in micrograms the recipe must have. (optional) 
            var maxFolate = 100;  // decimal? | The maximum amount of folate in micrograms the recipe can have. (optional) 
            var minFolicAcid = 0;  // decimal? | The minimum amount of folic acid in micrograms the recipe must have. (optional) 
            var maxFolicAcid = 100;  // decimal? | The maximum amount of folic acid in micrograms the recipe can have. (optional) 
            var minIodine = 0;  // decimal? | The minimum amount of iodine in micrograms the recipe must have. (optional) 
            var maxIodine = 100;  // decimal? | The maximum amount of iodine in micrograms the recipe can have. (optional) 
            var minIron = 0;  // decimal? | The minimum amount of iron in milligrams the recipe must have. (optional) 
            var maxIron = 100;  // decimal? | The maximum amount of iron in milligrams the recipe can have. (optional) 
            var minMagnesium = 0;  // decimal? | The minimum amount of magnesium in milligrams the recipe must have. (optional) 
            var maxMagnesium = 100;  // decimal? | The maximum amount of magnesium in milligrams the recipe can have. (optional) 
            var minManganese = 0;  // decimal? | The minimum amount of manganese in milligrams the recipe must have. (optional) 
            var maxManganese = 100;  // decimal? | The maximum amount of manganese in milligrams the recipe can have. (optional) 
            var minPhosphorus = 0;  // decimal? | The minimum amount of phosphorus in milligrams the recipe must have. (optional) 
            var maxPhosphorus = 100;  // decimal? | The maximum amount of phosphorus in milligrams the recipe can have. (optional) 
            var minPotassium = 0;  // decimal? | The minimum amount of potassium in milligrams the recipe must have. (optional) 
            var maxPotassium = 100;  // decimal? | The maximum amount of potassium in milligrams the recipe can have. (optional) 
            var minSelenium = 0;  // decimal? | The minimum amount of selenium in micrograms the recipe must have. (optional) 
            var maxSelenium = 100;  // decimal? | The maximum amount of selenium in micrograms the recipe can have. (optional) 
            var minSodium = 0;  // decimal? | The minimum amount of sodium in milligrams the recipe must have. (optional) 
            var maxSodium = 100;  // decimal? | The maximum amount of sodium in milligrams the recipe can have. (optional) 
            var minSugar = 0;  // decimal? | The minimum amount of sugar in grams the recipe must have. (optional) 
            var maxSugar = 100;  // decimal? | The maximum amount of sugar in grams the recipe can have. (optional) 
            var minZinc = 0;  // decimal? | The minimum amount of zinc in milligrams the recipe must have. (optional) 
            var maxZinc = 100;  // decimal? | The maximum amount of zinc in milligrams the recipe can have. (optional) 
            var offset = 56;  // int? | The number of results to skip (between 0 and 900). (optional) 
            var number = 10;  // int? | The maximum number of items to return (between 1 and 100). Defaults to 10. (optional)  (default to 10)
            var random = false;  // bool? | If true, every request will give you a random set of recipes within the requested limits. (optional) 
            var limitLicense = true;  // bool? | Whether the recipes should have an open license that allows display with proper attribution. (optional)  (default to true)

            try
            {
                // Search Recipes by Nutrients
                List<SearchRecipesByNutrients200ResponseInner> result = apiInstance.SearchRecipesByNutrients(minCarbs, maxCarbs, minProtein, maxProtein, minCalories, maxCalories, minFat, maxFat, minAlcohol, maxAlcohol, minCaffeine, maxCaffeine, minCopper, maxCopper, minCalcium, maxCalcium, minCholine, maxCholine, minCholesterol, maxCholesterol, minFluoride, maxFluoride, minSaturatedFat, maxSaturatedFat, minVitaminA, maxVitaminA, minVitaminC, maxVitaminC, minVitaminD, maxVitaminD, minVitaminE, maxVitaminE, minVitaminK, maxVitaminK, minVitaminB1, maxVitaminB1, minVitaminB2, maxVitaminB2, minVitaminB5, maxVitaminB5, minVitaminB3, maxVitaminB3, minVitaminB6, maxVitaminB6, minVitaminB12, maxVitaminB12, minFiber, maxFiber, minFolate, maxFolate, minFolicAcid, maxFolicAcid, minIodine, maxIodine, minIron, maxIron, minMagnesium, maxMagnesium, minManganese, maxManganese, minPhosphorus, maxPhosphorus, minPotassium, maxPotassium, minSelenium, maxSelenium, minSodium, maxSodium, minSugar, maxSugar, minZinc, maxZinc, offset, number, random, limitLicense);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RecipesApi.SearchRecipesByNutrients: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SearchRecipesByNutrientsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Search Recipes by Nutrients
    ApiResponse<List<SearchRecipesByNutrients200ResponseInner>> response = apiInstance.SearchRecipesByNutrientsWithHttpInfo(minCarbs, maxCarbs, minProtein, maxProtein, minCalories, maxCalories, minFat, maxFat, minAlcohol, maxAlcohol, minCaffeine, maxCaffeine, minCopper, maxCopper, minCalcium, maxCalcium, minCholine, maxCholine, minCholesterol, maxCholesterol, minFluoride, maxFluoride, minSaturatedFat, maxSaturatedFat, minVitaminA, maxVitaminA, minVitaminC, maxVitaminC, minVitaminD, maxVitaminD, minVitaminE, maxVitaminE, minVitaminK, maxVitaminK, minVitaminB1, maxVitaminB1, minVitaminB2, maxVitaminB2, minVitaminB5, maxVitaminB5, minVitaminB3, maxVitaminB3, minVitaminB6, maxVitaminB6, minVitaminB12, maxVitaminB12, minFiber, maxFiber, minFolate, maxFolate, minFolicAcid, maxFolicAcid, minIodine, maxIodine, minIron, maxIron, minMagnesium, maxMagnesium, minManganese, maxManganese, minPhosphorus, maxPhosphorus, minPotassium, maxPotassium, minSelenium, maxSelenium, minSodium, maxSodium, minSugar, maxSugar, minZinc, maxZinc, offset, number, random, limitLicense);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling RecipesApi.SearchRecipesByNutrientsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **minCarbs** | **decimal?** | The minimum amount of carbohydrates in grams the recipe must have. | [optional]  |
| **maxCarbs** | **decimal?** | The maximum amount of carbohydrates in grams the recipe can have. | [optional]  |
| **minProtein** | **decimal?** | The minimum amount of protein in grams the recipe must have. | [optional]  |
| **maxProtein** | **decimal?** | The maximum amount of protein in grams the recipe can have. | [optional]  |
| **minCalories** | **decimal?** | The minimum amount of calories the recipe must have. | [optional]  |
| **maxCalories** | **decimal?** | The maximum amount of calories the recipe can have. | [optional]  |
| **minFat** | **decimal?** | The minimum amount of fat in grams the recipe must have. | [optional]  |
| **maxFat** | **decimal?** | The maximum amount of fat in grams the recipe can have. | [optional]  |
| **minAlcohol** | **decimal?** | The minimum amount of alcohol in grams the recipe must have. | [optional]  |
| **maxAlcohol** | **decimal?** | The maximum amount of alcohol in grams the recipe can have. | [optional]  |
| **minCaffeine** | **decimal?** | The minimum amount of caffeine in milligrams the recipe must have. | [optional]  |
| **maxCaffeine** | **decimal?** | The maximum amount of caffeine in milligrams the recipe can have. | [optional]  |
| **minCopper** | **decimal?** | The minimum amount of copper in milligrams the recipe must have. | [optional]  |
| **maxCopper** | **decimal?** | The maximum amount of copper in milligrams the recipe can have. | [optional]  |
| **minCalcium** | **decimal?** | The minimum amount of calcium in milligrams the recipe must have. | [optional]  |
| **maxCalcium** | **decimal?** | The maximum amount of calcium in milligrams the recipe can have. | [optional]  |
| **minCholine** | **decimal?** | The minimum amount of choline in milligrams the recipe must have. | [optional]  |
| **maxCholine** | **decimal?** | The maximum amount of choline in milligrams the recipe can have. | [optional]  |
| **minCholesterol** | **decimal?** | The minimum amount of cholesterol in milligrams the recipe must have. | [optional]  |
| **maxCholesterol** | **decimal?** | The maximum amount of cholesterol in milligrams the recipe can have. | [optional]  |
| **minFluoride** | **decimal?** | The minimum amount of fluoride in milligrams the recipe must have. | [optional]  |
| **maxFluoride** | **decimal?** | The maximum amount of fluoride in milligrams the recipe can have. | [optional]  |
| **minSaturatedFat** | **decimal?** | The minimum amount of saturated fat in grams the recipe must have. | [optional]  |
| **maxSaturatedFat** | **decimal?** | The maximum amount of saturated fat in grams the recipe can have. | [optional]  |
| **minVitaminA** | **decimal?** | The minimum amount of Vitamin A in IU the recipe must have. | [optional]  |
| **maxVitaminA** | **decimal?** | The maximum amount of Vitamin A in IU the recipe can have. | [optional]  |
| **minVitaminC** | **decimal?** | The minimum amount of Vitamin C in milligrams the recipe must have. | [optional]  |
| **maxVitaminC** | **decimal?** | The maximum amount of Vitamin C in milligrams the recipe can have. | [optional]  |
| **minVitaminD** | **decimal?** | The minimum amount of Vitamin D in micrograms the recipe must have. | [optional]  |
| **maxVitaminD** | **decimal?** | The maximum amount of Vitamin D in micrograms the recipe can have. | [optional]  |
| **minVitaminE** | **decimal?** | The minimum amount of Vitamin E in milligrams the recipe must have. | [optional]  |
| **maxVitaminE** | **decimal?** | The maximum amount of Vitamin E in milligrams the recipe can have. | [optional]  |
| **minVitaminK** | **decimal?** | The minimum amount of Vitamin K in micrograms the recipe must have. | [optional]  |
| **maxVitaminK** | **decimal?** | The maximum amount of Vitamin K in micrograms the recipe can have. | [optional]  |
| **minVitaminB1** | **decimal?** | The minimum amount of Vitamin B1 in milligrams the recipe must have. | [optional]  |
| **maxVitaminB1** | **decimal?** | The maximum amount of Vitamin B1 in milligrams the recipe can have. | [optional]  |
| **minVitaminB2** | **decimal?** | The minimum amount of Vitamin B2 in milligrams the recipe must have. | [optional]  |
| **maxVitaminB2** | **decimal?** | The maximum amount of Vitamin B2 in milligrams the recipe can have. | [optional]  |
| **minVitaminB5** | **decimal?** | The minimum amount of Vitamin B5 in milligrams the recipe must have. | [optional]  |
| **maxVitaminB5** | **decimal?** | The maximum amount of Vitamin B5 in milligrams the recipe can have. | [optional]  |
| **minVitaminB3** | **decimal?** | The minimum amount of Vitamin B3 in milligrams the recipe must have. | [optional]  |
| **maxVitaminB3** | **decimal?** | The maximum amount of Vitamin B3 in milligrams the recipe can have. | [optional]  |
| **minVitaminB6** | **decimal?** | The minimum amount of Vitamin B6 in milligrams the recipe must have. | [optional]  |
| **maxVitaminB6** | **decimal?** | The maximum amount of Vitamin B6 in milligrams the recipe can have. | [optional]  |
| **minVitaminB12** | **decimal?** | The minimum amount of Vitamin B12 in micrograms the recipe must have. | [optional]  |
| **maxVitaminB12** | **decimal?** | The maximum amount of Vitamin B12 in micrograms the recipe can have. | [optional]  |
| **minFiber** | **decimal?** | The minimum amount of fiber in grams the recipe must have. | [optional]  |
| **maxFiber** | **decimal?** | The maximum amount of fiber in grams the recipe can have. | [optional]  |
| **minFolate** | **decimal?** | The minimum amount of folate in micrograms the recipe must have. | [optional]  |
| **maxFolate** | **decimal?** | The maximum amount of folate in micrograms the recipe can have. | [optional]  |
| **minFolicAcid** | **decimal?** | The minimum amount of folic acid in micrograms the recipe must have. | [optional]  |
| **maxFolicAcid** | **decimal?** | The maximum amount of folic acid in micrograms the recipe can have. | [optional]  |
| **minIodine** | **decimal?** | The minimum amount of iodine in micrograms the recipe must have. | [optional]  |
| **maxIodine** | **decimal?** | The maximum amount of iodine in micrograms the recipe can have. | [optional]  |
| **minIron** | **decimal?** | The minimum amount of iron in milligrams the recipe must have. | [optional]  |
| **maxIron** | **decimal?** | The maximum amount of iron in milligrams the recipe can have. | [optional]  |
| **minMagnesium** | **decimal?** | The minimum amount of magnesium in milligrams the recipe must have. | [optional]  |
| **maxMagnesium** | **decimal?** | The maximum amount of magnesium in milligrams the recipe can have. | [optional]  |
| **minManganese** | **decimal?** | The minimum amount of manganese in milligrams the recipe must have. | [optional]  |
| **maxManganese** | **decimal?** | The maximum amount of manganese in milligrams the recipe can have. | [optional]  |
| **minPhosphorus** | **decimal?** | The minimum amount of phosphorus in milligrams the recipe must have. | [optional]  |
| **maxPhosphorus** | **decimal?** | The maximum amount of phosphorus in milligrams the recipe can have. | [optional]  |
| **minPotassium** | **decimal?** | The minimum amount of potassium in milligrams the recipe must have. | [optional]  |
| **maxPotassium** | **decimal?** | The maximum amount of potassium in milligrams the recipe can have. | [optional]  |
| **minSelenium** | **decimal?** | The minimum amount of selenium in micrograms the recipe must have. | [optional]  |
| **maxSelenium** | **decimal?** | The maximum amount of selenium in micrograms the recipe can have. | [optional]  |
| **minSodium** | **decimal?** | The minimum amount of sodium in milligrams the recipe must have. | [optional]  |
| **maxSodium** | **decimal?** | The maximum amount of sodium in milligrams the recipe can have. | [optional]  |
| **minSugar** | **decimal?** | The minimum amount of sugar in grams the recipe must have. | [optional]  |
| **maxSugar** | **decimal?** | The maximum amount of sugar in grams the recipe can have. | [optional]  |
| **minZinc** | **decimal?** | The minimum amount of zinc in milligrams the recipe must have. | [optional]  |
| **maxZinc** | **decimal?** | The maximum amount of zinc in milligrams the recipe can have. | [optional]  |
| **offset** | **int?** | The number of results to skip (between 0 and 900). | [optional]  |
| **number** | **int?** | The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10] |
| **random** | **bool?** | If true, every request will give you a random set of recipes within the requested limits. | [optional]  |
| **limitLicense** | **bool?** | Whether the recipes should have an open license that allows display with proper attribution. | [optional] [default to true] |

### Return type

[**List&lt;SearchRecipesByNutrients200ResponseInner&gt;**](SearchRecipesByNutrients200ResponseInner.md)

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="summarizerecipe"></a>
# **SummarizeRecipe**
> SummarizeRecipe200Response SummarizeRecipe (int id)

Summarize Recipe

Automatically generate a short description that summarizes key information about the recipe.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using spoonacular.Api;
using spoonacular.Client;
using spoonacular.Model;

namespace Example
{
    public class SummarizeRecipeExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.spoonacular.com";
            // Configure API key authorization: apiKeyScheme
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new RecipesApi(config);
            var id = 1;  // int | The item's id.

            try
            {
                // Summarize Recipe
                SummarizeRecipe200Response result = apiInstance.SummarizeRecipe(id);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RecipesApi.SummarizeRecipe: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SummarizeRecipeWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Summarize Recipe
    ApiResponse<SummarizeRecipe200Response> response = apiInstance.SummarizeRecipeWithHttpInfo(id);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling RecipesApi.SummarizeRecipeWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **int** | The item&#39;s id. |  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="visualizeequipment"></a>
# **VisualizeEquipment**
> string VisualizeEquipment (string? contentType = null, string? accept = null)

Equipment Widget

Visualize the equipment used to make a recipe.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using spoonacular.Api;
using spoonacular.Client;
using spoonacular.Model;

namespace Example
{
    public class VisualizeEquipmentExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.spoonacular.com";
            // Configure API key authorization: apiKeyScheme
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new RecipesApi(config);
            var contentType = application/json;  // string? | The content type. (optional) 
            var accept = application/json;  // string? | Accept header. (optional) 

            try
            {
                // Equipment Widget
                string result = apiInstance.VisualizeEquipment(contentType, accept);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RecipesApi.VisualizeEquipment: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the VisualizeEquipmentWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Equipment Widget
    ApiResponse<string> response = apiInstance.VisualizeEquipmentWithHttpInfo(contentType, accept);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling RecipesApi.VisualizeEquipmentWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **contentType** | **string?** | The content type. | [optional]  |
| **accept** | **string?** | Accept header. | [optional]  |

### Return type

**string**

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="visualizepricebreakdown"></a>
# **VisualizePriceBreakdown**
> string VisualizePriceBreakdown (string? contentType = null, string? accept = null, string? language = null)

Price Breakdown Widget

Visualize the price breakdown of a recipe.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using spoonacular.Api;
using spoonacular.Client;
using spoonacular.Model;

namespace Example
{
    public class VisualizePriceBreakdownExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.spoonacular.com";
            // Configure API key authorization: apiKeyScheme
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new RecipesApi(config);
            var contentType = application/json;  // string? | The content type. (optional) 
            var accept = application/json;  // string? | Accept header. (optional) 
            var language = en;  // string? | The language of the input. Either 'en' or 'de'. (optional) 

            try
            {
                // Price Breakdown Widget
                string result = apiInstance.VisualizePriceBreakdown(contentType, accept, language);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RecipesApi.VisualizePriceBreakdown: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the VisualizePriceBreakdownWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Price Breakdown Widget
    ApiResponse<string> response = apiInstance.VisualizePriceBreakdownWithHttpInfo(contentType, accept, language);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling RecipesApi.VisualizePriceBreakdownWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **contentType** | **string?** | The content type. | [optional]  |
| **accept** | **string?** | Accept header. | [optional]  |
| **language** | **string?** | The language of the input. Either &#39;en&#39; or &#39;de&#39;. | [optional]  |

### Return type

**string**

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="visualizerecipeequipmentbyid"></a>
# **VisualizeRecipeEquipmentByID**
> string VisualizeRecipeEquipmentByID (int id, bool? defaultCss = null)

Equipment by ID Widget

Visualize a recipe's equipment list.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using spoonacular.Api;
using spoonacular.Client;
using spoonacular.Model;

namespace Example
{
    public class VisualizeRecipeEquipmentByIDExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.spoonacular.com";
            // Configure API key authorization: apiKeyScheme
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new RecipesApi(config);
            var id = 1;  // int | The item's id.
            var defaultCss = false;  // bool? | Whether the default CSS should be added to the response. (optional)  (default to true)

            try
            {
                // Equipment by ID Widget
                string result = apiInstance.VisualizeRecipeEquipmentByID(id, defaultCss);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RecipesApi.VisualizeRecipeEquipmentByID: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the VisualizeRecipeEquipmentByIDWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Equipment by ID Widget
    ApiResponse<string> response = apiInstance.VisualizeRecipeEquipmentByIDWithHttpInfo(id, defaultCss);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling RecipesApi.VisualizeRecipeEquipmentByIDWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **int** | The item&#39;s id. |  |
| **defaultCss** | **bool?** | Whether the default CSS should be added to the response. | [optional] [default to true] |

### Return type

**string**

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="visualizerecipeingredientsbyid"></a>
# **VisualizeRecipeIngredientsByID**
> string VisualizeRecipeIngredientsByID (int id, bool? defaultCss = null, string? measure = null)

Ingredients by ID Widget

Visualize a recipe's ingredient list.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using spoonacular.Api;
using spoonacular.Client;
using spoonacular.Model;

namespace Example
{
    public class VisualizeRecipeIngredientsByIDExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.spoonacular.com";
            // Configure API key authorization: apiKeyScheme
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new RecipesApi(config);
            var id = 1;  // int | The item's id.
            var defaultCss = false;  // bool? | Whether the default CSS should be added to the response. (optional)  (default to true)
            var measure = metric;  // string? | Whether the the measures should be 'us' or 'metric'. (optional) 

            try
            {
                // Ingredients by ID Widget
                string result = apiInstance.VisualizeRecipeIngredientsByID(id, defaultCss, measure);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RecipesApi.VisualizeRecipeIngredientsByID: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the VisualizeRecipeIngredientsByIDWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Ingredients by ID Widget
    ApiResponse<string> response = apiInstance.VisualizeRecipeIngredientsByIDWithHttpInfo(id, defaultCss, measure);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling RecipesApi.VisualizeRecipeIngredientsByIDWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **int** | The item&#39;s id. |  |
| **defaultCss** | **bool?** | Whether the default CSS should be added to the response. | [optional] [default to true] |
| **measure** | **string?** | Whether the the measures should be &#39;us&#39; or &#39;metric&#39;. | [optional]  |

### Return type

**string**

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="visualizerecipenutrition"></a>
# **VisualizeRecipeNutrition**
> string VisualizeRecipeNutrition (string? contentType = null, string? accept = null, string? language = null)

Recipe Nutrition Widget

Visualize a recipe's nutritional information as HTML including CSS.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using spoonacular.Api;
using spoonacular.Client;
using spoonacular.Model;

namespace Example
{
    public class VisualizeRecipeNutritionExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.spoonacular.com";
            // Configure API key authorization: apiKeyScheme
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new RecipesApi(config);
            var contentType = application/json;  // string? | The content type. (optional) 
            var accept = application/json;  // string? | Accept header. (optional) 
            var language = en;  // string? | The language of the input. Either 'en' or 'de'. (optional) 

            try
            {
                // Recipe Nutrition Widget
                string result = apiInstance.VisualizeRecipeNutrition(contentType, accept, language);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RecipesApi.VisualizeRecipeNutrition: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the VisualizeRecipeNutritionWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Recipe Nutrition Widget
    ApiResponse<string> response = apiInstance.VisualizeRecipeNutritionWithHttpInfo(contentType, accept, language);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling RecipesApi.VisualizeRecipeNutritionWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **contentType** | **string?** | The content type. | [optional]  |
| **accept** | **string?** | Accept header. | [optional]  |
| **language** | **string?** | The language of the input. Either &#39;en&#39; or &#39;de&#39;. | [optional]  |

### Return type

**string**

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="visualizerecipenutritionbyid"></a>
# **VisualizeRecipeNutritionByID**
> string VisualizeRecipeNutritionByID (int id, bool? defaultCss = null, string? accept = null)

Recipe Nutrition by ID Widget

Visualize a recipe's nutritional information as HTML including CSS.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using spoonacular.Api;
using spoonacular.Client;
using spoonacular.Model;

namespace Example
{
    public class VisualizeRecipeNutritionByIDExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.spoonacular.com";
            // Configure API key authorization: apiKeyScheme
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new RecipesApi(config);
            var id = 1;  // int | The item's id.
            var defaultCss = false;  // bool? | Whether the default CSS should be added to the response. (optional)  (default to true)
            var accept = application/json;  // string? | Accept header. (optional) 

            try
            {
                // Recipe Nutrition by ID Widget
                string result = apiInstance.VisualizeRecipeNutritionByID(id, defaultCss, accept);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RecipesApi.VisualizeRecipeNutritionByID: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the VisualizeRecipeNutritionByIDWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Recipe Nutrition by ID Widget
    ApiResponse<string> response = apiInstance.VisualizeRecipeNutritionByIDWithHttpInfo(id, defaultCss, accept);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling RecipesApi.VisualizeRecipeNutritionByIDWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **int** | The item&#39;s id. |  |
| **defaultCss** | **bool?** | Whether the default CSS should be added to the response. | [optional] [default to true] |
| **accept** | **string?** | Accept header. | [optional]  |

### Return type

**string**

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="visualizerecipepricebreakdownbyid"></a>
# **VisualizeRecipePriceBreakdownByID**
> string VisualizeRecipePriceBreakdownByID (int id, bool? defaultCss = null)

Price Breakdown by ID Widget

Visualize a recipe's price breakdown.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using spoonacular.Api;
using spoonacular.Client;
using spoonacular.Model;

namespace Example
{
    public class VisualizeRecipePriceBreakdownByIDExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.spoonacular.com";
            // Configure API key authorization: apiKeyScheme
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new RecipesApi(config);
            var id = 1;  // int | The item's id.
            var defaultCss = false;  // bool? | Whether the default CSS should be added to the response. (optional)  (default to true)

            try
            {
                // Price Breakdown by ID Widget
                string result = apiInstance.VisualizeRecipePriceBreakdownByID(id, defaultCss);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RecipesApi.VisualizeRecipePriceBreakdownByID: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the VisualizeRecipePriceBreakdownByIDWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Price Breakdown by ID Widget
    ApiResponse<string> response = apiInstance.VisualizeRecipePriceBreakdownByIDWithHttpInfo(id, defaultCss);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling RecipesApi.VisualizeRecipePriceBreakdownByIDWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **int** | The item&#39;s id. |  |
| **defaultCss** | **bool?** | Whether the default CSS should be added to the response. | [optional] [default to true] |

### Return type

**string**

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="visualizerecipetaste"></a>
# **VisualizeRecipeTaste**
> string VisualizeRecipeTaste (string? language = null, string? contentType = null, string? accept = null, bool? normalize = null, string? rgb = null)

Recipe Taste Widget

Visualize a recipe's taste information as HTML including CSS. You can play around with that endpoint!

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using spoonacular.Api;
using spoonacular.Client;
using spoonacular.Model;

namespace Example
{
    public class VisualizeRecipeTasteExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.spoonacular.com";
            // Configure API key authorization: apiKeyScheme
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new RecipesApi(config);
            var language = en;  // string? | The language of the input. Either 'en' or 'de'. (optional) 
            var contentType = application/json;  // string? | The content type. (optional) 
            var accept = application/json;  // string? | Accept header. (optional) 
            var normalize = true;  // bool? | Whether to normalize to the strongest taste. (optional) 
            var rgb = 75,192,192;  // string? | Red, green, blue values for the chart color. (optional) 

            try
            {
                // Recipe Taste Widget
                string result = apiInstance.VisualizeRecipeTaste(language, contentType, accept, normalize, rgb);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RecipesApi.VisualizeRecipeTaste: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the VisualizeRecipeTasteWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Recipe Taste Widget
    ApiResponse<string> response = apiInstance.VisualizeRecipeTasteWithHttpInfo(language, contentType, accept, normalize, rgb);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling RecipesApi.VisualizeRecipeTasteWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **language** | **string?** | The language of the input. Either &#39;en&#39; or &#39;de&#39;. | [optional]  |
| **contentType** | **string?** | The content type. | [optional]  |
| **accept** | **string?** | Accept header. | [optional]  |
| **normalize** | **bool?** | Whether to normalize to the strongest taste. | [optional]  |
| **rgb** | **string?** | Red, green, blue values for the chart color. | [optional]  |

### Return type

**string**

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="visualizerecipetastebyid"></a>
# **VisualizeRecipeTasteByID**
> string VisualizeRecipeTasteByID (int id, bool? normalize = null, string? rgb = null)

Recipe Taste by ID Widget

Get a recipe's taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using spoonacular.Api;
using spoonacular.Client;
using spoonacular.Model;

namespace Example
{
    public class VisualizeRecipeTasteByIDExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.spoonacular.com";
            // Configure API key authorization: apiKeyScheme
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new RecipesApi(config);
            var id = 1;  // int | The item's id.
            var normalize = true;  // bool? | Whether to normalize to the strongest taste. (optional)  (default to true)
            var rgb = 75,192,192;  // string? | Red, green, blue values for the chart color. (optional) 

            try
            {
                // Recipe Taste by ID Widget
                string result = apiInstance.VisualizeRecipeTasteByID(id, normalize, rgb);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RecipesApi.VisualizeRecipeTasteByID: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the VisualizeRecipeTasteByIDWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Recipe Taste by ID Widget
    ApiResponse<string> response = apiInstance.VisualizeRecipeTasteByIDWithHttpInfo(id, normalize, rgb);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling RecipesApi.VisualizeRecipeTasteByIDWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **int** | The item&#39;s id. |  |
| **normalize** | **bool?** | Whether to normalize to the strongest taste. | [optional] [default to true] |
| **rgb** | **string?** | Red, green, blue values for the chart color. | [optional]  |

### Return type

**string**

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

