# com.spoonacular.RecipesApi

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AnalyzeARecipeSearchQuery**](RecipesApi.md#analyzearecipesearchquery) | **GET** /recipes/queries/analyze | Analyze a Recipe Search Query
[**AnalyzeRecipeInstructions**](RecipesApi.md#analyzerecipeinstructions) | **POST** /recipes/analyzeInstructions | Analyze Recipe Instructions
[**AutocompleteRecipeSearch**](RecipesApi.md#autocompleterecipesearch) | **GET** /recipes/autocomplete | Autocomplete Recipe Search
[**ClassifyCuisine**](RecipesApi.md#classifycuisine) | **POST** /recipes/cuisine | Classify Cuisine
[**ComputeGlycemicLoad**](RecipesApi.md#computeglycemicload) | **POST** /food/ingredients/glycemicLoad | Compute Glycemic Load
[**ConvertAmounts**](RecipesApi.md#convertamounts) | **GET** /recipes/convert | Convert Amounts
[**CreateRecipeCard**](RecipesApi.md#createrecipecard) | **POST** /recipes/visualizeRecipe | Create Recipe Card
[**EquipmentByIDImage**](RecipesApi.md#equipmentbyidimage) | **GET** /recipes/{id}/equipmentWidget.png | Equipment by ID Image
[**ExtractRecipeFromWebsite**](RecipesApi.md#extractrecipefromwebsite) | **GET** /recipes/extract | Extract Recipe from Website
[**GetAnalyzedRecipeInstructions**](RecipesApi.md#getanalyzedrecipeinstructions) | **GET** /recipes/{id}/analyzedInstructions | Get Analyzed Recipe Instructions
[**GetRandomRecipes**](RecipesApi.md#getrandomrecipes) | **GET** /recipes/random | Get Random Recipes
[**GetRecipeEquipmentByID**](RecipesApi.md#getrecipeequipmentbyid) | **GET** /recipes/{id}/equipmentWidget.json | Equipment by ID
[**GetRecipeInformation**](RecipesApi.md#getrecipeinformation) | **GET** /recipes/{id}/information | Get Recipe Information
[**GetRecipeInformationBulk**](RecipesApi.md#getrecipeinformationbulk) | **GET** /recipes/informationBulk | Get Recipe Information Bulk
[**GetRecipeIngredientsByID**](RecipesApi.md#getrecipeingredientsbyid) | **GET** /recipes/{id}/ingredientWidget.json | Ingredients by ID
[**GetRecipeNutritionWidgetByID**](RecipesApi.md#getrecipenutritionwidgetbyid) | **GET** /recipes/{id}/nutritionWidget.json | Nutrition by ID
[**GetRecipePriceBreakdownByID**](RecipesApi.md#getrecipepricebreakdownbyid) | **GET** /recipes/{id}/priceBreakdownWidget.json | Price Breakdown by ID
[**GetRecipeTasteByID**](RecipesApi.md#getrecipetastebyid) | **GET** /recipes/{id}/tasteWidget.json | Taste by ID
[**GetSimilarRecipes**](RecipesApi.md#getsimilarrecipes) | **GET** /recipes/{id}/similar | Get Similar Recipes
[**GuessNutritionByDishName**](RecipesApi.md#guessnutritionbydishname) | **GET** /recipes/guessNutrition | Guess Nutrition by Dish Name
[**IngredientsByIDImage**](RecipesApi.md#ingredientsbyidimage) | **GET** /recipes/{id}/ingredientWidget.png | Ingredients by ID Image
[**ParseIngredients**](RecipesApi.md#parseingredients) | **POST** /recipes/parseIngredients | Parse Ingredients
[**PriceBreakdownByIDImage**](RecipesApi.md#pricebreakdownbyidimage) | **GET** /recipes/{id}/priceBreakdownWidget.png | Price Breakdown by ID Image
[**QuickAnswer**](RecipesApi.md#quickanswer) | **GET** /recipes/quickAnswer | Quick Answer
[**RecipeNutritionByIDImage**](RecipesApi.md#recipenutritionbyidimage) | **GET** /recipes/{id}/nutritionWidget.png | Recipe Nutrition by ID Image
[**RecipeNutritionLabelImage**](RecipesApi.md#recipenutritionlabelimage) | **GET** /recipes/{id}/nutritionLabel.png | Recipe Nutrition Label Image
[**RecipeNutritionLabelWidget**](RecipesApi.md#recipenutritionlabelwidget) | **GET** /recipes/{id}/nutritionLabel | Recipe Nutrition Label Widget
[**RecipeTasteByIDImage**](RecipesApi.md#recipetastebyidimage) | **GET** /recipes/{id}/tasteWidget.png | Recipe Taste by ID Image
[**SearchRecipes**](RecipesApi.md#searchrecipes) | **GET** /recipes/complexSearch | Search Recipes
[**SearchRecipesByIngredients**](RecipesApi.md#searchrecipesbyingredients) | **GET** /recipes/findByIngredients | Search Recipes by Ingredients
[**SearchRecipesByNutrients**](RecipesApi.md#searchrecipesbynutrients) | **GET** /recipes/findByNutrients | Search Recipes by Nutrients
[**SummarizeRecipe**](RecipesApi.md#summarizerecipe) | **GET** /recipes/{id}/summary | Summarize Recipe
[**VisualizeEquipment**](RecipesApi.md#visualizeequipment) | **POST** /recipes/visualizeEquipment | Equipment Widget
[**VisualizePriceBreakdown**](RecipesApi.md#visualizepricebreakdown) | **POST** /recipes/visualizePriceEstimator | Price Breakdown Widget
[**VisualizeRecipeEquipmentByID**](RecipesApi.md#visualizerecipeequipmentbyid) | **GET** /recipes/{id}/equipmentWidget | Equipment by ID Widget
[**VisualizeRecipeIngredientsByID**](RecipesApi.md#visualizerecipeingredientsbyid) | **GET** /recipes/{id}/ingredientWidget | Ingredients by ID Widget
[**VisualizeRecipeNutrition**](RecipesApi.md#visualizerecipenutrition) | **POST** /recipes/visualizeNutrition | Recipe Nutrition Widget
[**VisualizeRecipeNutritionByID**](RecipesApi.md#visualizerecipenutritionbyid) | **GET** /recipes/{id}/nutritionWidget | Recipe Nutrition by ID Widget
[**VisualizeRecipePriceBreakdownByID**](RecipesApi.md#visualizerecipepricebreakdownbyid) | **GET** /recipes/{id}/priceBreakdownWidget | Price Breakdown by ID Widget
[**VisualizeRecipeTaste**](RecipesApi.md#visualizerecipetaste) | **POST** /recipes/visualizeTaste | Recipe Taste Widget
[**VisualizeRecipeTasteByID**](RecipesApi.md#visualizerecipetastebyid) | **GET** /recipes/{id}/tasteWidget | Recipe Taste by ID Widget


<a name="analyzearecipesearchquery"></a>
# **AnalyzeARecipeSearchQuery**
> InlineResponse20018 AnalyzeARecipeSearchQuery (string q)

Analyze a Recipe Search Query

Parse a recipe search query to find out its intention.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class AnalyzeARecipeSearchQueryExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new RecipesApi();
            var q = salmon with fusilli and no nuts;  // string | The recipe search query.

            try
            {
                // Analyze a Recipe Search Query
                InlineResponse20018 result = apiInstance.AnalyzeARecipeSearchQuery(q);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling RecipesApi.AnalyzeARecipeSearchQuery: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **string**| The recipe search query. | 

### Return type

[**InlineResponse20018**](InlineResponse20018.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="analyzerecipeinstructions"></a>
# **AnalyzeRecipeInstructions**
> InlineResponse20016 AnalyzeRecipeInstructions (string contentType)

Analyze Recipe Instructions

This endpoint allows you to break down instructions into atomic steps. Furthermore, each step will contain the ingredients and equipment required. Additionally, all ingredients and equipment from the recipe's instructions will be extracted independently of the step they're used in.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class AnalyzeRecipeInstructionsExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new RecipesApi();
            var contentType = application/json;  // string | The content type. (optional) 

            try
            {
                // Analyze Recipe Instructions
                InlineResponse20016 result = apiInstance.AnalyzeRecipeInstructions(contentType);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling RecipesApi.AnalyzeRecipeInstructions: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentType** | **string**| The content type. | [optional] 

### Return type

[**InlineResponse20016**](InlineResponse20016.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="autocompleterecipesearch"></a>
# **AutocompleteRecipeSearch**
> List<InlineResponse2007> AutocompleteRecipeSearch (string query, int? number)

Autocomplete Recipe Search

Autocomplete a partial input to suggest possible recipe names.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class AutocompleteRecipeSearchExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new RecipesApi();
            var query = burger;  // string | The (natural language) search query. (optional) 
            var number = 10;  // int? | The maximum number of items to return (between 1 and 100). Defaults to 10. (optional)  (default to 10)

            try
            {
                // Autocomplete Recipe Search
                List&lt;InlineResponse2007&gt; result = apiInstance.AutocompleteRecipeSearch(query, number);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling RecipesApi.AutocompleteRecipeSearch: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The (natural language) search query. | [optional] 
 **number** | **int?**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]

### Return type

[**List<InlineResponse2007>**](InlineResponse2007.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="classifycuisine"></a>
# **ClassifyCuisine**
> InlineResponse20017 ClassifyCuisine (string contentType)

Classify Cuisine

Classify the recipe's cuisine.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class ClassifyCuisineExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new RecipesApi();
            var contentType = application/json;  // string | The content type. (optional) 

            try
            {
                // Classify Cuisine
                InlineResponse20017 result = apiInstance.ClassifyCuisine(contentType);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling RecipesApi.ClassifyCuisine: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentType** | **string**| The content type. | [optional] 

### Return type

[**InlineResponse20017**](InlineResponse20017.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="computeglycemicload"></a>
# **ComputeGlycemicLoad**
> InlineResponse20023 ComputeGlycemicLoad (InlineObject inlineObject, string language)

Compute Glycemic Load

Retrieve the glycemic index for a list of ingredients and compute the individual and total glycemic load.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class ComputeGlycemicLoadExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new RecipesApi();
            var inlineObject = new InlineObject(); // InlineObject | 
            var language = en;  // string | The language of the input. Either 'en' or 'de'. (optional) 

            try
            {
                // Compute Glycemic Load
                InlineResponse20023 result = apiInstance.ComputeGlycemicLoad(inlineObject, language);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling RecipesApi.ComputeGlycemicLoad: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inlineObject** | [**InlineObject**](InlineObject.md)|  | 
 **language** | **string**| The language of the input. Either &#39;en&#39; or &#39;de&#39;. | [optional] 

### Return type

[**InlineResponse20023**](InlineResponse20023.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="convertamounts"></a>
# **ConvertAmounts**
> InlineResponse20019 ConvertAmounts (string ingredientName, decimal? sourceAmount, string sourceUnit, string targetUnit)

Convert Amounts

Convert amounts like \"2 cups of flour to grams\".

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class ConvertAmountsExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new RecipesApi();
            var ingredientName = flour;  // string | The ingredient which you want to convert.
            var sourceAmount = 2.5;  // decimal? | The amount from which you want to convert, e.g. the 2.5 in \"2.5 cups of flour to grams\".
            var sourceUnit = cups;  // string | The unit from which you want to convert, e.g. the grams in \"2.5 cups of flour to grams\". You can also use \"piece\", e.g. \"3.4 oz tomatoes to piece\"
            var targetUnit = grams;  // string | The unit to which you want to convert, e.g. the grams in \"2.5 cups of flour to grams\". You can also use \"piece\", e.g. \"3.4 oz tomatoes to piece\"

            try
            {
                // Convert Amounts
                InlineResponse20019 result = apiInstance.ConvertAmounts(ingredientName, sourceAmount, sourceUnit, targetUnit);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling RecipesApi.ConvertAmounts: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredientName** | **string**| The ingredient which you want to convert. | 
 **sourceAmount** | **decimal?**| The amount from which you want to convert, e.g. the 2.5 in \&quot;2.5 cups of flour to grams\&quot;. | 
 **sourceUnit** | **string**| The unit from which you want to convert, e.g. the grams in \&quot;2.5 cups of flour to grams\&quot;. You can also use \&quot;piece\&quot;, e.g. \&quot;3.4 oz tomatoes to piece\&quot; | 
 **targetUnit** | **string**| The unit to which you want to convert, e.g. the grams in \&quot;2.5 cups of flour to grams\&quot;. You can also use \&quot;piece\&quot;, e.g. \&quot;3.4 oz tomatoes to piece\&quot; | 

### Return type

[**InlineResponse20019**](InlineResponse20019.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="createrecipecard"></a>
# **CreateRecipeCard**
> InlineResponse20015 CreateRecipeCard (string contentType)

Create Recipe Card

Generate a recipe card for a recipe.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class CreateRecipeCardExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new RecipesApi();
            var contentType = application/json;  // string | The content type. (optional) 

            try
            {
                // Create Recipe Card
                InlineResponse20015 result = apiInstance.CreateRecipeCard(contentType);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling RecipesApi.CreateRecipeCard: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentType** | **string**| The content type. | [optional] 

### Return type

[**InlineResponse20015**](InlineResponse20015.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="equipmentbyidimage"></a>
# **EquipmentByIDImage**
> Object EquipmentByIDImage (decimal? id)

Equipment by ID Image

Visualize a recipe's equipment list as an image.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class EquipmentByIDImageExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new RecipesApi();
            var id = 44860;  // decimal? | The recipe id.

            try
            {
                // Equipment by ID Image
                Object result = apiInstance.EquipmentByIDImage(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling RecipesApi.EquipmentByIDImage: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **decimal?**| The recipe id. | 

### Return type

**Object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="extractrecipefromwebsite"></a>
# **ExtractRecipeFromWebsite**
> InlineResponse2003 ExtractRecipeFromWebsite (string url, bool? forceExtraction, bool? analyze, bool? includeNutrition, bool? includeTaste)

Extract Recipe from Website

This endpoint lets you extract recipe data such as title, ingredients, and instructions from any properly formatted Website.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class ExtractRecipeFromWebsiteExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new RecipesApi();
            var url = https://foodista.com/recipe/ZHK4KPB6/chocolate-crinkle-cookies;  // string | The URL of the recipe page.
            var forceExtraction = true;  // bool? | If true, the extraction will be triggered whether we already know the recipe or not. Use this only if information is missing as this operation is slower. (optional) 
            var analyze = false;  // bool? | If true, the recipe will be analyzed and classified resolving in more data such as cuisines, dish types, and more. (optional) 
            var includeNutrition = true;  // bool? | Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. (optional)  (default to false)
            var includeTaste = false;  // bool? | Whether taste data should be added to correctly parsed ingredients. (optional)  (default to false)

            try
            {
                // Extract Recipe from Website
                InlineResponse2003 result = apiInstance.ExtractRecipeFromWebsite(url, forceExtraction, analyze, includeNutrition, includeTaste);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling RecipesApi.ExtractRecipeFromWebsite: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **string**| The URL of the recipe page. | 
 **forceExtraction** | **bool?**| If true, the extraction will be triggered whether we already know the recipe or not. Use this only if information is missing as this operation is slower. | [optional] 
 **analyze** | **bool?**| If true, the recipe will be analyzed and classified resolving in more data such as cuisines, dish types, and more. | [optional] 
 **includeNutrition** | **bool?**| Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. | [optional] [default to false]
 **includeTaste** | **bool?**| Whether taste data should be added to correctly parsed ingredients. | [optional] [default to false]

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getanalyzedrecipeinstructions"></a>
# **GetAnalyzedRecipeInstructions**
> InlineResponse20013 GetAnalyzedRecipeInstructions (int? id, bool? stepBreakdown)

Get Analyzed Recipe Instructions

Get an analyzed breakdown of a recipe's instructions. Each step is enriched with the ingredients and equipment required.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class GetAnalyzedRecipeInstructionsExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new RecipesApi();
            var id = 1;  // int? | The item's id.
            var stepBreakdown = true;  // bool? | Whether to break down the recipe steps even more. (optional) 

            try
            {
                // Get Analyzed Recipe Instructions
                InlineResponse20013 result = apiInstance.GetAnalyzedRecipeInstructions(id, stepBreakdown);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling RecipesApi.GetAnalyzedRecipeInstructions: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int?**| The item&#39;s id. | 
 **stepBreakdown** | **bool?**| Whether to break down the recipe steps even more. | [optional] 

### Return type

[**InlineResponse20013**](InlineResponse20013.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getrandomrecipes"></a>
# **GetRandomRecipes**
> InlineResponse2006 GetRandomRecipes (bool? limitLicense, string tags, int? number)

Get Random Recipes

Find random (popular) recipes. If you need to filter recipes by diet, nutrition etc. you might want to consider using the complex recipe search endpoint and set the sort request parameter to random.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class GetRandomRecipesExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new RecipesApi();
            var limitLicense = true;  // bool? | Whether the recipes should have an open license that allows display with proper attribution. (optional)  (default to true)
            var tags = tags_example;  // string | The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have. (optional) 
            var number = 10;  // int? | The maximum number of items to return (between 1 and 100). Defaults to 10. (optional)  (default to 10)

            try
            {
                // Get Random Recipes
                InlineResponse2006 result = apiInstance.GetRandomRecipes(limitLicense, tags, number);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling RecipesApi.GetRandomRecipes: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limitLicense** | **bool?**| Whether the recipes should have an open license that allows display with proper attribution. | [optional] [default to true]
 **tags** | **string**| The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have. | [optional] 
 **number** | **int?**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getrecipeequipmentbyid"></a>
# **GetRecipeEquipmentByID**
> InlineResponse2009 GetRecipeEquipmentByID (int? id)

Equipment by ID

Get a recipe's equipment list.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class GetRecipeEquipmentByIDExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new RecipesApi();
            var id = 1;  // int? | The item's id.

            try
            {
                // Equipment by ID
                InlineResponse2009 result = apiInstance.GetRecipeEquipmentByID(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling RecipesApi.GetRecipeEquipmentByID: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int?**| The item&#39;s id. | 

### Return type

[**InlineResponse2009**](InlineResponse2009.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getrecipeinformation"></a>
# **GetRecipeInformation**
> InlineResponse2003 GetRecipeInformation (int? id, bool? includeNutrition)

Get Recipe Information

Use a recipe id to get full information about a recipe, such as ingredients, nutrition, diet and allergen information, etc.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class GetRecipeInformationExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new RecipesApi();
            var id = 1;  // int? | The item's id.
            var includeNutrition = true;  // bool? | Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. (optional)  (default to false)

            try
            {
                // Get Recipe Information
                InlineResponse2003 result = apiInstance.GetRecipeInformation(id, includeNutrition);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling RecipesApi.GetRecipeInformation: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int?**| The item&#39;s id. | 
 **includeNutrition** | **bool?**| Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. | [optional] [default to false]

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getrecipeinformationbulk"></a>
# **GetRecipeInformationBulk**
> List<InlineResponse2004> GetRecipeInformationBulk (string ids, bool? includeNutrition)

Get Recipe Information Bulk

Get information about multiple recipes at once. This is equivalent to calling the Get Recipe Information endpoint multiple times, but faster.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class GetRecipeInformationBulkExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new RecipesApi();
            var ids = 715538,716429;  // string | A comma-separated list of recipe ids.
            var includeNutrition = true;  // bool? | Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. (optional)  (default to false)

            try
            {
                // Get Recipe Information Bulk
                List&lt;InlineResponse2004&gt; result = apiInstance.GetRecipeInformationBulk(ids, includeNutrition);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling RecipesApi.GetRecipeInformationBulk: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | **string**| A comma-separated list of recipe ids. | 
 **includeNutrition** | **bool?**| Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. | [optional] [default to false]

### Return type

[**List<InlineResponse2004>**](InlineResponse2004.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getrecipeingredientsbyid"></a>
# **GetRecipeIngredientsByID**
> InlineResponse20011 GetRecipeIngredientsByID (int? id)

Ingredients by ID

Get a recipe's ingredient list.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class GetRecipeIngredientsByIDExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new RecipesApi();
            var id = 1;  // int? | The item's id.

            try
            {
                // Ingredients by ID
                InlineResponse20011 result = apiInstance.GetRecipeIngredientsByID(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling RecipesApi.GetRecipeIngredientsByID: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int?**| The item&#39;s id. | 

### Return type

[**InlineResponse20011**](InlineResponse20011.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getrecipenutritionwidgetbyid"></a>
# **GetRecipeNutritionWidgetByID**
> InlineResponse20012 GetRecipeNutritionWidgetByID (int? id)

Nutrition by ID

Get a recipe's nutrition data.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class GetRecipeNutritionWidgetByIDExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new RecipesApi();
            var id = 1;  // int? | The item's id.

            try
            {
                // Nutrition by ID
                InlineResponse20012 result = apiInstance.GetRecipeNutritionWidgetByID(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling RecipesApi.GetRecipeNutritionWidgetByID: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int?**| The item&#39;s id. | 

### Return type

[**InlineResponse20012**](InlineResponse20012.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getrecipepricebreakdownbyid"></a>
# **GetRecipePriceBreakdownByID**
> InlineResponse20010 GetRecipePriceBreakdownByID (int? id)

Price Breakdown by ID

Get a recipe's price breakdown data.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class GetRecipePriceBreakdownByIDExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new RecipesApi();
            var id = 1;  // int? | The item's id.

            try
            {
                // Price Breakdown by ID
                InlineResponse20010 result = apiInstance.GetRecipePriceBreakdownByID(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling RecipesApi.GetRecipePriceBreakdownByID: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int?**| The item&#39;s id. | 

### Return type

[**InlineResponse20010**](InlineResponse20010.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getrecipetastebyid"></a>
# **GetRecipeTasteByID**
> InlineResponse2008 GetRecipeTasteByID (int? id, bool? normalize)

Taste by ID

Get a recipe's taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class GetRecipeTasteByIDExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new RecipesApi();
            var id = 1;  // int? | The item's id.
            var normalize = true;  // bool? | Normalize to the strongest taste. (optional)  (default to true)

            try
            {
                // Taste by ID
                InlineResponse2008 result = apiInstance.GetRecipeTasteByID(id, normalize);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling RecipesApi.GetRecipeTasteByID: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int?**| The item&#39;s id. | 
 **normalize** | **bool?**| Normalize to the strongest taste. | [optional] [default to true]

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getsimilarrecipes"></a>
# **GetSimilarRecipes**
> List<InlineResponse2005> GetSimilarRecipes (int? id, int? number, bool? limitLicense)

Get Similar Recipes

Find recipes which are similar to the given one.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class GetSimilarRecipesExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new RecipesApi();
            var id = 1;  // int? | The item's id.
            var number = 10;  // int? | The maximum number of items to return (between 1 and 100). Defaults to 10. (optional)  (default to 10)
            var limitLicense = true;  // bool? | Whether the recipes should have an open license that allows display with proper attribution. (optional)  (default to true)

            try
            {
                // Get Similar Recipes
                List&lt;InlineResponse2005&gt; result = apiInstance.GetSimilarRecipes(id, number, limitLicense);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling RecipesApi.GetSimilarRecipes: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int?**| The item&#39;s id. | 
 **number** | **int?**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]
 **limitLicense** | **bool?**| Whether the recipes should have an open license that allows display with proper attribution. | [optional] [default to true]

### Return type

[**List<InlineResponse2005>**](InlineResponse2005.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="guessnutritionbydishname"></a>
# **GuessNutritionByDishName**
> InlineResponse20021 GuessNutritionByDishName (string title)

Guess Nutrition by Dish Name

Estimate the macronutrients of a dish based on its title.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class GuessNutritionByDishNameExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new RecipesApi();
            var title = Spaghetti Aglio et Olio;  // string | The title of the dish.

            try
            {
                // Guess Nutrition by Dish Name
                InlineResponse20021 result = apiInstance.GuessNutritionByDishName(title);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling RecipesApi.GuessNutritionByDishName: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **string**| The title of the dish. | 

### Return type

[**InlineResponse20021**](InlineResponse20021.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="ingredientsbyidimage"></a>
# **IngredientsByIDImage**
> Object IngredientsByIDImage (decimal? id, string measure)

Ingredients by ID Image

Visualize a recipe's ingredient list.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class IngredientsByIDImageExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new RecipesApi();
            var id = 1082038;  // decimal? | The recipe id.
            var measure = metric;  // string | Whether the the measures should be 'us' or 'metric'. (optional) 

            try
            {
                // Ingredients by ID Image
                Object result = apiInstance.IngredientsByIDImage(id, measure);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling RecipesApi.IngredientsByIDImage: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **decimal?**| The recipe id. | 
 **measure** | **string**| Whether the the measures should be &#39;us&#39; or &#39;metric&#39;. | [optional] 

### Return type

**Object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="parseingredients"></a>
# **ParseIngredients**
> List<InlineResponse20020> ParseIngredients (string contentType, string language)

Parse Ingredients

Extract an ingredient from plain text.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class ParseIngredientsExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new RecipesApi();
            var contentType = application/json;  // string | The content type. (optional) 
            var language = en;  // string | The language of the input. Either 'en' or 'de'. (optional) 

            try
            {
                // Parse Ingredients
                List&lt;InlineResponse20020&gt; result = apiInstance.ParseIngredients(contentType, language);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling RecipesApi.ParseIngredients: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentType** | **string**| The content type. | [optional] 
 **language** | **string**| The language of the input. Either &#39;en&#39; or &#39;de&#39;. | [optional] 

### Return type

[**List<InlineResponse20020>**](InlineResponse20020.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="pricebreakdownbyidimage"></a>
# **PriceBreakdownByIDImage**
> Object PriceBreakdownByIDImage (decimal? id)

Price Breakdown by ID Image

Visualize a recipe's price breakdown.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class PriceBreakdownByIDImageExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new RecipesApi();
            var id = 1082038;  // decimal? | The recipe id.

            try
            {
                // Price Breakdown by ID Image
                Object result = apiInstance.PriceBreakdownByIDImage(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling RecipesApi.PriceBreakdownByIDImage: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **decimal?**| The recipe id. | 

### Return type

**Object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="quickanswer"></a>
# **QuickAnswer**
> InlineResponse20050 QuickAnswer (string q)

Quick Answer

Answer a nutrition related natural language question.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class QuickAnswerExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new RecipesApi();
            var q = How much vitamin c is in 2 apples?;  // string | The nutrition related question.

            try
            {
                // Quick Answer
                InlineResponse20050 result = apiInstance.QuickAnswer(q);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling RecipesApi.QuickAnswer: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **string**| The nutrition related question. | 

### Return type

[**InlineResponse20050**](InlineResponse20050.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="recipenutritionbyidimage"></a>
# **RecipeNutritionByIDImage**
> Object RecipeNutritionByIDImage (decimal? id)

Recipe Nutrition by ID Image

Visualize a recipe's nutritional information as an image.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class RecipeNutritionByIDImageExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new RecipesApi();
            var id = 1082038;  // decimal? | The recipe id.

            try
            {
                // Recipe Nutrition by ID Image
                Object result = apiInstance.RecipeNutritionByIDImage(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling RecipesApi.RecipeNutritionByIDImage: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **decimal?**| The recipe id. | 

### Return type

**Object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="recipenutritionlabelimage"></a>
# **RecipeNutritionLabelImage**
> Object RecipeNutritionLabelImage (decimal? id, bool? showOptionalNutrients, bool? showZeroValues, bool? showIngredients)

Recipe Nutrition Label Image

Get a recipe's nutrition label as an image.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class RecipeNutritionLabelImageExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new RecipesApi();
            var id = 641166;  // decimal? | The recipe id.
            var showOptionalNutrients = false;  // bool? | Whether to show optional nutrients. (optional) 
            var showZeroValues = false;  // bool? | Whether to show zero values. (optional) 
            var showIngredients = false;  // bool? | Whether to show a list of ingredients. (optional) 

            try
            {
                // Recipe Nutrition Label Image
                Object result = apiInstance.RecipeNutritionLabelImage(id, showOptionalNutrients, showZeroValues, showIngredients);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling RecipesApi.RecipeNutritionLabelImage: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **decimal?**| The recipe id. | 
 **showOptionalNutrients** | **bool?**| Whether to show optional nutrients. | [optional] 
 **showZeroValues** | **bool?**| Whether to show zero values. | [optional] 
 **showIngredients** | **bool?**| Whether to show a list of ingredients. | [optional] 

### Return type

**Object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="recipenutritionlabelwidget"></a>
# **RecipeNutritionLabelWidget**
> string RecipeNutritionLabelWidget (decimal? id, bool? defaultCss, bool? showOptionalNutrients, bool? showZeroValues, bool? showIngredients)

Recipe Nutrition Label Widget

Get a recipe's nutrition label as an HTML widget.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class RecipeNutritionLabelWidgetExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new RecipesApi();
            var id = 641166;  // decimal? | The recipe id.
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
            catch (Exception e)
            {
                Debug.Print("Exception when calling RecipesApi.RecipeNutritionLabelWidget: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **decimal?**| The recipe id. | 
 **defaultCss** | **bool?**| Whether the default CSS should be added to the response. | [optional] [default to true]
 **showOptionalNutrients** | **bool?**| Whether to show optional nutrients. | [optional] 
 **showZeroValues** | **bool?**| Whether to show zero values. | [optional] 
 **showIngredients** | **bool?**| Whether to show a list of ingredients. | [optional] 

### Return type

**string**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="recipetastebyidimage"></a>
# **RecipeTasteByIDImage**
> Object RecipeTasteByIDImage (decimal? id, bool? normalize, string rgb)

Recipe Taste by ID Image

Get a recipe's taste as an image. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class RecipeTasteByIDImageExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new RecipesApi();
            var id = 69095;  // decimal? | The recipe id.
            var normalize = false;  // bool? | Normalize to the strongest taste. (optional) 
            var rgb = 75,192,192;  // string | Red, green, blue values for the chart color. (optional) 

            try
            {
                // Recipe Taste by ID Image
                Object result = apiInstance.RecipeTasteByIDImage(id, normalize, rgb);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling RecipesApi.RecipeTasteByIDImage: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **decimal?**| The recipe id. | 
 **normalize** | **bool?**| Normalize to the strongest taste. | [optional] 
 **rgb** | **string**| Red, green, blue values for the chart color. | [optional] 

### Return type

**Object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="searchrecipes"></a>
# **SearchRecipes**
> InlineResponse200 SearchRecipes (string query, string cuisine, string excludeCuisine, string diet, string intolerances, string equipment, string includeIngredients, string excludeIngredients, string type, bool? instructionsRequired, bool? fillIngredients, bool? addRecipeInformation, bool? addRecipeNutrition, string author, string tags, decimal? recipeBoxId, string titleMatch, decimal? maxReadyTime, bool? ignorePantry, string sort, string sortDirection, decimal? minCarbs, decimal? maxCarbs, decimal? minProtein, decimal? maxProtein, decimal? minCalories, decimal? maxCalories, decimal? minFat, decimal? maxFat, decimal? minAlcohol, decimal? maxAlcohol, decimal? minCaffeine, decimal? maxCaffeine, decimal? minCopper, decimal? maxCopper, decimal? minCalcium, decimal? maxCalcium, decimal? minCholine, decimal? maxCholine, decimal? minCholesterol, decimal? maxCholesterol, decimal? minFluoride, decimal? maxFluoride, decimal? minSaturatedFat, decimal? maxSaturatedFat, decimal? minVitaminA, decimal? maxVitaminA, decimal? minVitaminC, decimal? maxVitaminC, decimal? minVitaminD, decimal? maxVitaminD, decimal? minVitaminE, decimal? maxVitaminE, decimal? minVitaminK, decimal? maxVitaminK, decimal? minVitaminB1, decimal? maxVitaminB1, decimal? minVitaminB2, decimal? maxVitaminB2, decimal? minVitaminB5, decimal? maxVitaminB5, decimal? minVitaminB3, decimal? maxVitaminB3, decimal? minVitaminB6, decimal? maxVitaminB6, decimal? minVitaminB12, decimal? maxVitaminB12, decimal? minFiber, decimal? maxFiber, decimal? minFolate, decimal? maxFolate, decimal? minFolicAcid, decimal? maxFolicAcid, decimal? minIodine, decimal? maxIodine, decimal? minIron, decimal? maxIron, decimal? minMagnesium, decimal? maxMagnesium, decimal? minManganese, decimal? maxManganese, decimal? minPhosphorus, decimal? maxPhosphorus, decimal? minPotassium, decimal? maxPotassium, decimal? minSelenium, decimal? maxSelenium, decimal? minSodium, decimal? maxSodium, decimal? minSugar, decimal? maxSugar, decimal? minZinc, decimal? maxZinc, int? offset, int? number, bool? limitLicense)

Search Recipes

Search through hundreds of thousands of recipes using advanced filtering and ranking. NOTE: This method combines searching by query, by ingredients, and by nutrients into one endpoint.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class SearchRecipesExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new RecipesApi();
            var query = burger;  // string | The (natural language) search query. (optional) 
            var cuisine = italian;  // string | The cuisine(s) of the recipes. One or more, comma separated (will be interpreted as 'OR'). See a full list of supported cuisines. (optional) 
            var excludeCuisine = greek;  // string | The cuisine(s) the recipes must not match. One or more, comma separated (will be interpreted as 'AND'). See a full list of supported cuisines. (optional) 
            var diet = vegetarian;  // string | The diet for which the recipes must be suitable. See a full list of supported diets. (optional) 
            var intolerances = gluten;  // string | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. (optional) 
            var equipment = pan;  // string | The equipment required. Multiple values will be interpreted as 'or'. For example, value could be \"blender, frying pan, bowl\". (optional) 
            var includeIngredients = tomato,cheese;  // string | A comma-separated list of ingredients that should/must be used in the recipes. (optional) 
            var excludeIngredients = eggs;  // string | A comma-separated list of ingredients or ingredient types that the recipes must not contain. (optional) 
            var type = main course;  // string | The type of recipe. See a full list of supported meal types. (optional) 
            var instructionsRequired = true;  // bool? | Whether the recipes must have instructions. (optional) 
            var fillIngredients = false;  // bool? | Add information about the ingredients and whether they are used or missing in relation to the query. (optional) 
            var addRecipeInformation = false;  // bool? | If set to true, you get more information about the recipes returned. (optional) 
            var addRecipeNutrition = false;  // bool? | If set to true, you get nutritional information about each recipes returned. (optional) 
            var author = coffeebean;  // string | The username of the recipe author. (optional) 
            var tags = tags_example;  // string | The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have. (optional) 
            var recipeBoxId = 2468;  // decimal? | The id of the recipe box to which the search should be limited to. (optional) 
            var titleMatch = Crock Pot;  // string | Enter text that must be found in the title of the recipes. (optional) 
            var maxReadyTime = 20;  // decimal? | The maximum time in minutes it should take to prepare and cook the recipe. (optional) 
            var ignorePantry = false;  // bool? | Whether to ignore typical pantry items, such as water, salt, flour, etc. (optional)  (default to false)
            var sort = calories;  // string | The strategy to sort recipes by. See a full list of supported sorting options. (optional) 
            var sortDirection = asc;  // string | The direction in which to sort. Must be either 'asc' (ascending) or 'desc' (descending). (optional) 
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
                InlineResponse200 result = apiInstance.SearchRecipes(query, cuisine, excludeCuisine, diet, intolerances, equipment, includeIngredients, excludeIngredients, type, instructionsRequired, fillIngredients, addRecipeInformation, addRecipeNutrition, author, tags, recipeBoxId, titleMatch, maxReadyTime, ignorePantry, sort, sortDirection, minCarbs, maxCarbs, minProtein, maxProtein, minCalories, maxCalories, minFat, maxFat, minAlcohol, maxAlcohol, minCaffeine, maxCaffeine, minCopper, maxCopper, minCalcium, maxCalcium, minCholine, maxCholine, minCholesterol, maxCholesterol, minFluoride, maxFluoride, minSaturatedFat, maxSaturatedFat, minVitaminA, maxVitaminA, minVitaminC, maxVitaminC, minVitaminD, maxVitaminD, minVitaminE, maxVitaminE, minVitaminK, maxVitaminK, minVitaminB1, maxVitaminB1, minVitaminB2, maxVitaminB2, minVitaminB5, maxVitaminB5, minVitaminB3, maxVitaminB3, minVitaminB6, maxVitaminB6, minVitaminB12, maxVitaminB12, minFiber, maxFiber, minFolate, maxFolate, minFolicAcid, maxFolicAcid, minIodine, maxIodine, minIron, maxIron, minMagnesium, maxMagnesium, minManganese, maxManganese, minPhosphorus, maxPhosphorus, minPotassium, maxPotassium, minSelenium, maxSelenium, minSodium, maxSodium, minSugar, maxSugar, minZinc, maxZinc, offset, number, limitLicense);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling RecipesApi.SearchRecipes: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The (natural language) search query. | [optional] 
 **cuisine** | **string**| The cuisine(s) of the recipes. One or more, comma separated (will be interpreted as &#39;OR&#39;). See a full list of supported cuisines. | [optional] 
 **excludeCuisine** | **string**| The cuisine(s) the recipes must not match. One or more, comma separated (will be interpreted as &#39;AND&#39;). See a full list of supported cuisines. | [optional] 
 **diet** | **string**| The diet for which the recipes must be suitable. See a full list of supported diets. | [optional] 
 **intolerances** | **string**| A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. | [optional] 
 **equipment** | **string**| The equipment required. Multiple values will be interpreted as &#39;or&#39;. For example, value could be \&quot;blender, frying pan, bowl\&quot;. | [optional] 
 **includeIngredients** | **string**| A comma-separated list of ingredients that should/must be used in the recipes. | [optional] 
 **excludeIngredients** | **string**| A comma-separated list of ingredients or ingredient types that the recipes must not contain. | [optional] 
 **type** | **string**| The type of recipe. See a full list of supported meal types. | [optional] 
 **instructionsRequired** | **bool?**| Whether the recipes must have instructions. | [optional] 
 **fillIngredients** | **bool?**| Add information about the ingredients and whether they are used or missing in relation to the query. | [optional] 
 **addRecipeInformation** | **bool?**| If set to true, you get more information about the recipes returned. | [optional] 
 **addRecipeNutrition** | **bool?**| If set to true, you get nutritional information about each recipes returned. | [optional] 
 **author** | **string**| The username of the recipe author. | [optional] 
 **tags** | **string**| The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have. | [optional] 
 **recipeBoxId** | **decimal?**| The id of the recipe box to which the search should be limited to. | [optional] 
 **titleMatch** | **string**| Enter text that must be found in the title of the recipes. | [optional] 
 **maxReadyTime** | **decimal?**| The maximum time in minutes it should take to prepare and cook the recipe. | [optional] 
 **ignorePantry** | **bool?**| Whether to ignore typical pantry items, such as water, salt, flour, etc. | [optional] [default to false]
 **sort** | **string**| The strategy to sort recipes by. See a full list of supported sorting options. | [optional] 
 **sortDirection** | **string**| The direction in which to sort. Must be either &#39;asc&#39; (ascending) or &#39;desc&#39; (descending). | [optional] 
 **minCarbs** | **decimal?**| The minimum amount of carbohydrates in grams the recipe must have. | [optional] 
 **maxCarbs** | **decimal?**| The maximum amount of carbohydrates in grams the recipe can have. | [optional] 
 **minProtein** | **decimal?**| The minimum amount of protein in grams the recipe must have. | [optional] 
 **maxProtein** | **decimal?**| The maximum amount of protein in grams the recipe can have. | [optional] 
 **minCalories** | **decimal?**| The minimum amount of calories the recipe must have. | [optional] 
 **maxCalories** | **decimal?**| The maximum amount of calories the recipe can have. | [optional] 
 **minFat** | **decimal?**| The minimum amount of fat in grams the recipe must have. | [optional] 
 **maxFat** | **decimal?**| The maximum amount of fat in grams the recipe can have. | [optional] 
 **minAlcohol** | **decimal?**| The minimum amount of alcohol in grams the recipe must have. | [optional] 
 **maxAlcohol** | **decimal?**| The maximum amount of alcohol in grams the recipe can have. | [optional] 
 **minCaffeine** | **decimal?**| The minimum amount of caffeine in milligrams the recipe must have. | [optional] 
 **maxCaffeine** | **decimal?**| The maximum amount of caffeine in milligrams the recipe can have. | [optional] 
 **minCopper** | **decimal?**| The minimum amount of copper in milligrams the recipe must have. | [optional] 
 **maxCopper** | **decimal?**| The maximum amount of copper in milligrams the recipe can have. | [optional] 
 **minCalcium** | **decimal?**| The minimum amount of calcium in milligrams the recipe must have. | [optional] 
 **maxCalcium** | **decimal?**| The maximum amount of calcium in milligrams the recipe can have. | [optional] 
 **minCholine** | **decimal?**| The minimum amount of choline in milligrams the recipe must have. | [optional] 
 **maxCholine** | **decimal?**| The maximum amount of choline in milligrams the recipe can have. | [optional] 
 **minCholesterol** | **decimal?**| The minimum amount of cholesterol in milligrams the recipe must have. | [optional] 
 **maxCholesterol** | **decimal?**| The maximum amount of cholesterol in milligrams the recipe can have. | [optional] 
 **minFluoride** | **decimal?**| The minimum amount of fluoride in milligrams the recipe must have. | [optional] 
 **maxFluoride** | **decimal?**| The maximum amount of fluoride in milligrams the recipe can have. | [optional] 
 **minSaturatedFat** | **decimal?**| The minimum amount of saturated fat in grams the recipe must have. | [optional] 
 **maxSaturatedFat** | **decimal?**| The maximum amount of saturated fat in grams the recipe can have. | [optional] 
 **minVitaminA** | **decimal?**| The minimum amount of Vitamin A in IU the recipe must have. | [optional] 
 **maxVitaminA** | **decimal?**| The maximum amount of Vitamin A in IU the recipe can have. | [optional] 
 **minVitaminC** | **decimal?**| The minimum amount of Vitamin C milligrams the recipe must have. | [optional] 
 **maxVitaminC** | **decimal?**| The maximum amount of Vitamin C in milligrams the recipe can have. | [optional] 
 **minVitaminD** | **decimal?**| The minimum amount of Vitamin D in micrograms the recipe must have. | [optional] 
 **maxVitaminD** | **decimal?**| The maximum amount of Vitamin D in micrograms the recipe can have. | [optional] 
 **minVitaminE** | **decimal?**| The minimum amount of Vitamin E in milligrams the recipe must have. | [optional] 
 **maxVitaminE** | **decimal?**| The maximum amount of Vitamin E in milligrams the recipe can have. | [optional] 
 **minVitaminK** | **decimal?**| The minimum amount of Vitamin K in micrograms the recipe must have. | [optional] 
 **maxVitaminK** | **decimal?**| The maximum amount of Vitamin K in micrograms the recipe can have. | [optional] 
 **minVitaminB1** | **decimal?**| The minimum amount of Vitamin B1 in milligrams the recipe must have. | [optional] 
 **maxVitaminB1** | **decimal?**| The maximum amount of Vitamin B1 in milligrams the recipe can have. | [optional] 
 **minVitaminB2** | **decimal?**| The minimum amount of Vitamin B2 in milligrams the recipe must have. | [optional] 
 **maxVitaminB2** | **decimal?**| The maximum amount of Vitamin B2 in milligrams the recipe can have. | [optional] 
 **minVitaminB5** | **decimal?**| The minimum amount of Vitamin B5 in milligrams the recipe must have. | [optional] 
 **maxVitaminB5** | **decimal?**| The maximum amount of Vitamin B5 in milligrams the recipe can have. | [optional] 
 **minVitaminB3** | **decimal?**| The minimum amount of Vitamin B3 in milligrams the recipe must have. | [optional] 
 **maxVitaminB3** | **decimal?**| The maximum amount of Vitamin B3 in milligrams the recipe can have. | [optional] 
 **minVitaminB6** | **decimal?**| The minimum amount of Vitamin B6 in milligrams the recipe must have. | [optional] 
 **maxVitaminB6** | **decimal?**| The maximum amount of Vitamin B6 in milligrams the recipe can have. | [optional] 
 **minVitaminB12** | **decimal?**| The minimum amount of Vitamin B12 in micrograms the recipe must have. | [optional] 
 **maxVitaminB12** | **decimal?**| The maximum amount of Vitamin B12 in micrograms the recipe can have. | [optional] 
 **minFiber** | **decimal?**| The minimum amount of fiber in grams the recipe must have. | [optional] 
 **maxFiber** | **decimal?**| The maximum amount of fiber in grams the recipe can have. | [optional] 
 **minFolate** | **decimal?**| The minimum amount of folate in micrograms the recipe must have. | [optional] 
 **maxFolate** | **decimal?**| The maximum amount of folate in micrograms the recipe can have. | [optional] 
 **minFolicAcid** | **decimal?**| The minimum amount of folic acid in micrograms the recipe must have. | [optional] 
 **maxFolicAcid** | **decimal?**| The maximum amount of folic acid in micrograms the recipe can have. | [optional] 
 **minIodine** | **decimal?**| The minimum amount of iodine in micrograms the recipe must have. | [optional] 
 **maxIodine** | **decimal?**| The maximum amount of iodine in micrograms the recipe can have. | [optional] 
 **minIron** | **decimal?**| The minimum amount of iron in milligrams the recipe must have. | [optional] 
 **maxIron** | **decimal?**| The maximum amount of iron in milligrams the recipe can have. | [optional] 
 **minMagnesium** | **decimal?**| The minimum amount of magnesium in milligrams the recipe must have. | [optional] 
 **maxMagnesium** | **decimal?**| The maximum amount of magnesium in milligrams the recipe can have. | [optional] 
 **minManganese** | **decimal?**| The minimum amount of manganese in milligrams the recipe must have. | [optional] 
 **maxManganese** | **decimal?**| The maximum amount of manganese in milligrams the recipe can have. | [optional] 
 **minPhosphorus** | **decimal?**| The minimum amount of phosphorus in milligrams the recipe must have. | [optional] 
 **maxPhosphorus** | **decimal?**| The maximum amount of phosphorus in milligrams the recipe can have. | [optional] 
 **minPotassium** | **decimal?**| The minimum amount of potassium in milligrams the recipe must have. | [optional] 
 **maxPotassium** | **decimal?**| The maximum amount of potassium in milligrams the recipe can have. | [optional] 
 **minSelenium** | **decimal?**| The minimum amount of selenium in micrograms the recipe must have. | [optional] 
 **maxSelenium** | **decimal?**| The maximum amount of selenium in micrograms the recipe can have. | [optional] 
 **minSodium** | **decimal?**| The minimum amount of sodium in milligrams the recipe must have. | [optional] 
 **maxSodium** | **decimal?**| The maximum amount of sodium in milligrams the recipe can have. | [optional] 
 **minSugar** | **decimal?**| The minimum amount of sugar in grams the recipe must have. | [optional] 
 **maxSugar** | **decimal?**| The maximum amount of sugar in grams the recipe can have. | [optional] 
 **minZinc** | **decimal?**| The minimum amount of zinc in milligrams the recipe must have. | [optional] 
 **maxZinc** | **decimal?**| The maximum amount of zinc in milligrams the recipe can have. | [optional] 
 **offset** | **int?**| The number of results to skip (between 0 and 900). | [optional] 
 **number** | **int?**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]
 **limitLicense** | **bool?**| Whether the recipes should have an open license that allows display with proper attribution. | [optional] [default to true]

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="searchrecipesbyingredients"></a>
# **SearchRecipesByIngredients**
> List<InlineResponse2001> SearchRecipesByIngredients (string ingredients, int? number, bool? limitLicense, decimal? ranking, bool? ignorePantry)

Search Recipes by Ingredients

 Ever wondered what recipes you can cook with the ingredients you have in your fridge or pantry? This endpoint lets you find recipes that either maximize the usage of ingredients you have at hand (pre shopping) or minimize the ingredients that you don't currently have (post shopping).         

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class SearchRecipesByIngredientsExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new RecipesApi();
            var ingredients = carrots,tomatoes;  // string | A comma-separated list of ingredients that the recipes should contain. (optional) 
            var number = 10;  // int? | The maximum number of items to return (between 1 and 100). Defaults to 10. (optional)  (default to 10)
            var limitLicense = true;  // bool? | Whether the recipes should have an open license that allows display with proper attribution. (optional)  (default to true)
            var ranking = 1;  // decimal? | Whether to maximize used ingredients (1) or minimize missing ingredients (2) first. (optional) 
            var ignorePantry = false;  // bool? | Whether to ignore typical pantry items, such as water, salt, flour, etc. (optional)  (default to false)

            try
            {
                // Search Recipes by Ingredients
                List&lt;InlineResponse2001&gt; result = apiInstance.SearchRecipesByIngredients(ingredients, number, limitLicense, ranking, ignorePantry);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling RecipesApi.SearchRecipesByIngredients: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredients** | **string**| A comma-separated list of ingredients that the recipes should contain. | [optional] 
 **number** | **int?**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]
 **limitLicense** | **bool?**| Whether the recipes should have an open license that allows display with proper attribution. | [optional] [default to true]
 **ranking** | **decimal?**| Whether to maximize used ingredients (1) or minimize missing ingredients (2) first. | [optional] 
 **ignorePantry** | **bool?**| Whether to ignore typical pantry items, such as water, salt, flour, etc. | [optional] [default to false]

### Return type

[**List<InlineResponse2001>**](InlineResponse2001.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="searchrecipesbynutrients"></a>
# **SearchRecipesByNutrients**
> List<InlineResponse2002> SearchRecipesByNutrients (decimal? minCarbs, decimal? maxCarbs, decimal? minProtein, decimal? maxProtein, decimal? minCalories, decimal? maxCalories, decimal? minFat, decimal? maxFat, decimal? minAlcohol, decimal? maxAlcohol, decimal? minCaffeine, decimal? maxCaffeine, decimal? minCopper, decimal? maxCopper, decimal? minCalcium, decimal? maxCalcium, decimal? minCholine, decimal? maxCholine, decimal? minCholesterol, decimal? maxCholesterol, decimal? minFluoride, decimal? maxFluoride, decimal? minSaturatedFat, decimal? maxSaturatedFat, decimal? minVitaminA, decimal? maxVitaminA, decimal? minVitaminC, decimal? maxVitaminC, decimal? minVitaminD, decimal? maxVitaminD, decimal? minVitaminE, decimal? maxVitaminE, decimal? minVitaminK, decimal? maxVitaminK, decimal? minVitaminB1, decimal? maxVitaminB1, decimal? minVitaminB2, decimal? maxVitaminB2, decimal? minVitaminB5, decimal? maxVitaminB5, decimal? minVitaminB3, decimal? maxVitaminB3, decimal? minVitaminB6, decimal? maxVitaminB6, decimal? minVitaminB12, decimal? maxVitaminB12, decimal? minFiber, decimal? maxFiber, decimal? minFolate, decimal? maxFolate, decimal? minFolicAcid, decimal? maxFolicAcid, decimal? minIodine, decimal? maxIodine, decimal? minIron, decimal? maxIron, decimal? minMagnesium, decimal? maxMagnesium, decimal? minManganese, decimal? maxManganese, decimal? minPhosphorus, decimal? maxPhosphorus, decimal? minPotassium, decimal? maxPotassium, decimal? minSelenium, decimal? maxSelenium, decimal? minSodium, decimal? maxSodium, decimal? minSugar, decimal? maxSugar, decimal? minZinc, decimal? maxZinc, int? offset, int? number, bool? random, bool? limitLicense)

Search Recipes by Nutrients

Find a set of recipes that adhere to the given nutritional limits. You may set limits for macronutrients (calories, protein, fat, and carbohydrate) and/or many micronutrients.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class SearchRecipesByNutrientsExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new RecipesApi();
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
                List&lt;InlineResponse2002&gt; result = apiInstance.SearchRecipesByNutrients(minCarbs, maxCarbs, minProtein, maxProtein, minCalories, maxCalories, minFat, maxFat, minAlcohol, maxAlcohol, minCaffeine, maxCaffeine, minCopper, maxCopper, minCalcium, maxCalcium, minCholine, maxCholine, minCholesterol, maxCholesterol, minFluoride, maxFluoride, minSaturatedFat, maxSaturatedFat, minVitaminA, maxVitaminA, minVitaminC, maxVitaminC, minVitaminD, maxVitaminD, minVitaminE, maxVitaminE, minVitaminK, maxVitaminK, minVitaminB1, maxVitaminB1, minVitaminB2, maxVitaminB2, minVitaminB5, maxVitaminB5, minVitaminB3, maxVitaminB3, minVitaminB6, maxVitaminB6, minVitaminB12, maxVitaminB12, minFiber, maxFiber, minFolate, maxFolate, minFolicAcid, maxFolicAcid, minIodine, maxIodine, minIron, maxIron, minMagnesium, maxMagnesium, minManganese, maxManganese, minPhosphorus, maxPhosphorus, minPotassium, maxPotassium, minSelenium, maxSelenium, minSodium, maxSodium, minSugar, maxSugar, minZinc, maxZinc, offset, number, random, limitLicense);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling RecipesApi.SearchRecipesByNutrients: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **minCarbs** | **decimal?**| The minimum amount of carbohydrates in grams the recipe must have. | [optional] 
 **maxCarbs** | **decimal?**| The maximum amount of carbohydrates in grams the recipe can have. | [optional] 
 **minProtein** | **decimal?**| The minimum amount of protein in grams the recipe must have. | [optional] 
 **maxProtein** | **decimal?**| The maximum amount of protein in grams the recipe can have. | [optional] 
 **minCalories** | **decimal?**| The minimum amount of calories the recipe must have. | [optional] 
 **maxCalories** | **decimal?**| The maximum amount of calories the recipe can have. | [optional] 
 **minFat** | **decimal?**| The minimum amount of fat in grams the recipe must have. | [optional] 
 **maxFat** | **decimal?**| The maximum amount of fat in grams the recipe can have. | [optional] 
 **minAlcohol** | **decimal?**| The minimum amount of alcohol in grams the recipe must have. | [optional] 
 **maxAlcohol** | **decimal?**| The maximum amount of alcohol in grams the recipe can have. | [optional] 
 **minCaffeine** | **decimal?**| The minimum amount of caffeine in milligrams the recipe must have. | [optional] 
 **maxCaffeine** | **decimal?**| The maximum amount of caffeine in milligrams the recipe can have. | [optional] 
 **minCopper** | **decimal?**| The minimum amount of copper in milligrams the recipe must have. | [optional] 
 **maxCopper** | **decimal?**| The maximum amount of copper in milligrams the recipe can have. | [optional] 
 **minCalcium** | **decimal?**| The minimum amount of calcium in milligrams the recipe must have. | [optional] 
 **maxCalcium** | **decimal?**| The maximum amount of calcium in milligrams the recipe can have. | [optional] 
 **minCholine** | **decimal?**| The minimum amount of choline in milligrams the recipe must have. | [optional] 
 **maxCholine** | **decimal?**| The maximum amount of choline in milligrams the recipe can have. | [optional] 
 **minCholesterol** | **decimal?**| The minimum amount of cholesterol in milligrams the recipe must have. | [optional] 
 **maxCholesterol** | **decimal?**| The maximum amount of cholesterol in milligrams the recipe can have. | [optional] 
 **minFluoride** | **decimal?**| The minimum amount of fluoride in milligrams the recipe must have. | [optional] 
 **maxFluoride** | **decimal?**| The maximum amount of fluoride in milligrams the recipe can have. | [optional] 
 **minSaturatedFat** | **decimal?**| The minimum amount of saturated fat in grams the recipe must have. | [optional] 
 **maxSaturatedFat** | **decimal?**| The maximum amount of saturated fat in grams the recipe can have. | [optional] 
 **minVitaminA** | **decimal?**| The minimum amount of Vitamin A in IU the recipe must have. | [optional] 
 **maxVitaminA** | **decimal?**| The maximum amount of Vitamin A in IU the recipe can have. | [optional] 
 **minVitaminC** | **decimal?**| The minimum amount of Vitamin C in milligrams the recipe must have. | [optional] 
 **maxVitaminC** | **decimal?**| The maximum amount of Vitamin C in milligrams the recipe can have. | [optional] 
 **minVitaminD** | **decimal?**| The minimum amount of Vitamin D in micrograms the recipe must have. | [optional] 
 **maxVitaminD** | **decimal?**| The maximum amount of Vitamin D in micrograms the recipe can have. | [optional] 
 **minVitaminE** | **decimal?**| The minimum amount of Vitamin E in milligrams the recipe must have. | [optional] 
 **maxVitaminE** | **decimal?**| The maximum amount of Vitamin E in milligrams the recipe can have. | [optional] 
 **minVitaminK** | **decimal?**| The minimum amount of Vitamin K in micrograms the recipe must have. | [optional] 
 **maxVitaminK** | **decimal?**| The maximum amount of Vitamin K in micrograms the recipe can have. | [optional] 
 **minVitaminB1** | **decimal?**| The minimum amount of Vitamin B1 in milligrams the recipe must have. | [optional] 
 **maxVitaminB1** | **decimal?**| The maximum amount of Vitamin B1 in milligrams the recipe can have. | [optional] 
 **minVitaminB2** | **decimal?**| The minimum amount of Vitamin B2 in milligrams the recipe must have. | [optional] 
 **maxVitaminB2** | **decimal?**| The maximum amount of Vitamin B2 in milligrams the recipe can have. | [optional] 
 **minVitaminB5** | **decimal?**| The minimum amount of Vitamin B5 in milligrams the recipe must have. | [optional] 
 **maxVitaminB5** | **decimal?**| The maximum amount of Vitamin B5 in milligrams the recipe can have. | [optional] 
 **minVitaminB3** | **decimal?**| The minimum amount of Vitamin B3 in milligrams the recipe must have. | [optional] 
 **maxVitaminB3** | **decimal?**| The maximum amount of Vitamin B3 in milligrams the recipe can have. | [optional] 
 **minVitaminB6** | **decimal?**| The minimum amount of Vitamin B6 in milligrams the recipe must have. | [optional] 
 **maxVitaminB6** | **decimal?**| The maximum amount of Vitamin B6 in milligrams the recipe can have. | [optional] 
 **minVitaminB12** | **decimal?**| The minimum amount of Vitamin B12 in micrograms the recipe must have. | [optional] 
 **maxVitaminB12** | **decimal?**| The maximum amount of Vitamin B12 in micrograms the recipe can have. | [optional] 
 **minFiber** | **decimal?**| The minimum amount of fiber in grams the recipe must have. | [optional] 
 **maxFiber** | **decimal?**| The maximum amount of fiber in grams the recipe can have. | [optional] 
 **minFolate** | **decimal?**| The minimum amount of folate in micrograms the recipe must have. | [optional] 
 **maxFolate** | **decimal?**| The maximum amount of folate in micrograms the recipe can have. | [optional] 
 **minFolicAcid** | **decimal?**| The minimum amount of folic acid in micrograms the recipe must have. | [optional] 
 **maxFolicAcid** | **decimal?**| The maximum amount of folic acid in micrograms the recipe can have. | [optional] 
 **minIodine** | **decimal?**| The minimum amount of iodine in micrograms the recipe must have. | [optional] 
 **maxIodine** | **decimal?**| The maximum amount of iodine in micrograms the recipe can have. | [optional] 
 **minIron** | **decimal?**| The minimum amount of iron in milligrams the recipe must have. | [optional] 
 **maxIron** | **decimal?**| The maximum amount of iron in milligrams the recipe can have. | [optional] 
 **minMagnesium** | **decimal?**| The minimum amount of magnesium in milligrams the recipe must have. | [optional] 
 **maxMagnesium** | **decimal?**| The maximum amount of magnesium in milligrams the recipe can have. | [optional] 
 **minManganese** | **decimal?**| The minimum amount of manganese in milligrams the recipe must have. | [optional] 
 **maxManganese** | **decimal?**| The maximum amount of manganese in milligrams the recipe can have. | [optional] 
 **minPhosphorus** | **decimal?**| The minimum amount of phosphorus in milligrams the recipe must have. | [optional] 
 **maxPhosphorus** | **decimal?**| The maximum amount of phosphorus in milligrams the recipe can have. | [optional] 
 **minPotassium** | **decimal?**| The minimum amount of potassium in milligrams the recipe must have. | [optional] 
 **maxPotassium** | **decimal?**| The maximum amount of potassium in milligrams the recipe can have. | [optional] 
 **minSelenium** | **decimal?**| The minimum amount of selenium in micrograms the recipe must have. | [optional] 
 **maxSelenium** | **decimal?**| The maximum amount of selenium in micrograms the recipe can have. | [optional] 
 **minSodium** | **decimal?**| The minimum amount of sodium in milligrams the recipe must have. | [optional] 
 **maxSodium** | **decimal?**| The maximum amount of sodium in milligrams the recipe can have. | [optional] 
 **minSugar** | **decimal?**| The minimum amount of sugar in grams the recipe must have. | [optional] 
 **maxSugar** | **decimal?**| The maximum amount of sugar in grams the recipe can have. | [optional] 
 **minZinc** | **decimal?**| The minimum amount of zinc in milligrams the recipe must have. | [optional] 
 **maxZinc** | **decimal?**| The maximum amount of zinc in milligrams the recipe can have. | [optional] 
 **offset** | **int?**| The number of results to skip (between 0 and 900). | [optional] 
 **number** | **int?**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]
 **random** | **bool?**| If true, every request will give you a random set of recipes within the requested limits. | [optional] 
 **limitLicense** | **bool?**| Whether the recipes should have an open license that allows display with proper attribution. | [optional] [default to true]

### Return type

[**List<InlineResponse2002>**](InlineResponse2002.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="summarizerecipe"></a>
# **SummarizeRecipe**
> InlineResponse20014 SummarizeRecipe (int? id)

Summarize Recipe

Automatically generate a short description that summarizes key information about the recipe.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class SummarizeRecipeExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new RecipesApi();
            var id = 1;  // int? | The item's id.

            try
            {
                // Summarize Recipe
                InlineResponse20014 result = apiInstance.SummarizeRecipe(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling RecipesApi.SummarizeRecipe: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int?**| The item&#39;s id. | 

### Return type

[**InlineResponse20014**](InlineResponse20014.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="visualizeequipment"></a>
# **VisualizeEquipment**
> string VisualizeEquipment (string contentType, string accept)

Equipment Widget

Visualize the equipment used to make a recipe.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class VisualizeEquipmentExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new RecipesApi();
            var contentType = application/json;  // string | The content type. (optional) 
            var accept = application/json;  // string | Accept header. (optional) 

            try
            {
                // Equipment Widget
                string result = apiInstance.VisualizeEquipment(contentType, accept);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling RecipesApi.VisualizeEquipment: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentType** | **string**| The content type. | [optional] 
 **accept** | **string**| Accept header. | [optional] 

### Return type

**string**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="visualizepricebreakdown"></a>
# **VisualizePriceBreakdown**
> string VisualizePriceBreakdown (string contentType, string accept, string language)

Price Breakdown Widget

Visualize the price breakdown of a recipe.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class VisualizePriceBreakdownExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new RecipesApi();
            var contentType = application/json;  // string | The content type. (optional) 
            var accept = application/json;  // string | Accept header. (optional) 
            var language = en;  // string | The language of the input. Either 'en' or 'de'. (optional) 

            try
            {
                // Price Breakdown Widget
                string result = apiInstance.VisualizePriceBreakdown(contentType, accept, language);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling RecipesApi.VisualizePriceBreakdown: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentType** | **string**| The content type. | [optional] 
 **accept** | **string**| Accept header. | [optional] 
 **language** | **string**| The language of the input. Either &#39;en&#39; or &#39;de&#39;. | [optional] 

### Return type

**string**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="visualizerecipeequipmentbyid"></a>
# **VisualizeRecipeEquipmentByID**
> string VisualizeRecipeEquipmentByID (int? id, bool? defaultCss)

Equipment by ID Widget

Visualize a recipe's equipment list.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class VisualizeRecipeEquipmentByIDExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new RecipesApi();
            var id = 1;  // int? | The item's id.
            var defaultCss = false;  // bool? | Whether the default CSS should be added to the response. (optional)  (default to true)

            try
            {
                // Equipment by ID Widget
                string result = apiInstance.VisualizeRecipeEquipmentByID(id, defaultCss);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling RecipesApi.VisualizeRecipeEquipmentByID: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int?**| The item&#39;s id. | 
 **defaultCss** | **bool?**| Whether the default CSS should be added to the response. | [optional] [default to true]

### Return type

**string**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="visualizerecipeingredientsbyid"></a>
# **VisualizeRecipeIngredientsByID**
> string VisualizeRecipeIngredientsByID (int? id, bool? defaultCss, string measure)

Ingredients by ID Widget

Visualize a recipe's ingredient list.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class VisualizeRecipeIngredientsByIDExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new RecipesApi();
            var id = 1;  // int? | The item's id.
            var defaultCss = false;  // bool? | Whether the default CSS should be added to the response. (optional)  (default to true)
            var measure = metric;  // string | Whether the the measures should be 'us' or 'metric'. (optional) 

            try
            {
                // Ingredients by ID Widget
                string result = apiInstance.VisualizeRecipeIngredientsByID(id, defaultCss, measure);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling RecipesApi.VisualizeRecipeIngredientsByID: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int?**| The item&#39;s id. | 
 **defaultCss** | **bool?**| Whether the default CSS should be added to the response. | [optional] [default to true]
 **measure** | **string**| Whether the the measures should be &#39;us&#39; or &#39;metric&#39;. | [optional] 

### Return type

**string**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="visualizerecipenutrition"></a>
# **VisualizeRecipeNutrition**
> string VisualizeRecipeNutrition (string contentType, string accept, string language)

Recipe Nutrition Widget

Visualize a recipe's nutritional information as HTML including CSS.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class VisualizeRecipeNutritionExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new RecipesApi();
            var contentType = application/json;  // string | The content type. (optional) 
            var accept = application/json;  // string | Accept header. (optional) 
            var language = en;  // string | The language of the input. Either 'en' or 'de'. (optional) 

            try
            {
                // Recipe Nutrition Widget
                string result = apiInstance.VisualizeRecipeNutrition(contentType, accept, language);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling RecipesApi.VisualizeRecipeNutrition: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentType** | **string**| The content type. | [optional] 
 **accept** | **string**| Accept header. | [optional] 
 **language** | **string**| The language of the input. Either &#39;en&#39; or &#39;de&#39;. | [optional] 

### Return type

**string**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="visualizerecipenutritionbyid"></a>
# **VisualizeRecipeNutritionByID**
> string VisualizeRecipeNutritionByID (int? id, bool? defaultCss, string accept)

Recipe Nutrition by ID Widget

Visualize a recipe's nutritional information as HTML including CSS.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class VisualizeRecipeNutritionByIDExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new RecipesApi();
            var id = 1;  // int? | The item's id.
            var defaultCss = false;  // bool? | Whether the default CSS should be added to the response. (optional)  (default to true)
            var accept = application/json;  // string | Accept header. (optional) 

            try
            {
                // Recipe Nutrition by ID Widget
                string result = apiInstance.VisualizeRecipeNutritionByID(id, defaultCss, accept);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling RecipesApi.VisualizeRecipeNutritionByID: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int?**| The item&#39;s id. | 
 **defaultCss** | **bool?**| Whether the default CSS should be added to the response. | [optional] [default to true]
 **accept** | **string**| Accept header. | [optional] 

### Return type

**string**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="visualizerecipepricebreakdownbyid"></a>
# **VisualizeRecipePriceBreakdownByID**
> string VisualizeRecipePriceBreakdownByID (int? id, bool? defaultCss)

Price Breakdown by ID Widget

Visualize a recipe's price breakdown.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class VisualizeRecipePriceBreakdownByIDExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new RecipesApi();
            var id = 1;  // int? | The item's id.
            var defaultCss = false;  // bool? | Whether the default CSS should be added to the response. (optional)  (default to true)

            try
            {
                // Price Breakdown by ID Widget
                string result = apiInstance.VisualizeRecipePriceBreakdownByID(id, defaultCss);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling RecipesApi.VisualizeRecipePriceBreakdownByID: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int?**| The item&#39;s id. | 
 **defaultCss** | **bool?**| Whether the default CSS should be added to the response. | [optional] [default to true]

### Return type

**string**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="visualizerecipetaste"></a>
# **VisualizeRecipeTaste**
> string VisualizeRecipeTaste (string language, string contentType, string accept, bool? normalize, string rgb)

Recipe Taste Widget

Visualize a recipe's taste information as HTML including CSS. You can play around with that endpoint!

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class VisualizeRecipeTasteExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new RecipesApi();
            var language = en;  // string | The language of the input. Either 'en' or 'de'. (optional) 
            var contentType = application/json;  // string | The content type. (optional) 
            var accept = application/json;  // string | Accept header. (optional) 
            var normalize = true;  // bool? | Whether to normalize to the strongest taste. (optional) 
            var rgb = 75,192,192;  // string | Red, green, blue values for the chart color. (optional) 

            try
            {
                // Recipe Taste Widget
                string result = apiInstance.VisualizeRecipeTaste(language, contentType, accept, normalize, rgb);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling RecipesApi.VisualizeRecipeTaste: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **language** | **string**| The language of the input. Either &#39;en&#39; or &#39;de&#39;. | [optional] 
 **contentType** | **string**| The content type. | [optional] 
 **accept** | **string**| Accept header. | [optional] 
 **normalize** | **bool?**| Whether to normalize to the strongest taste. | [optional] 
 **rgb** | **string**| Red, green, blue values for the chart color. | [optional] 

### Return type

**string**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="visualizerecipetastebyid"></a>
# **VisualizeRecipeTasteByID**
> string VisualizeRecipeTasteByID (int? id, bool? normalize, string rgb)

Recipe Taste by ID Widget

Get a recipe's taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class VisualizeRecipeTasteByIDExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new RecipesApi();
            var id = 1;  // int? | The item's id.
            var normalize = true;  // bool? | Whether to normalize to the strongest taste. (optional)  (default to true)
            var rgb = 75,192,192;  // string | Red, green, blue values for the chart color. (optional) 

            try
            {
                // Recipe Taste by ID Widget
                string result = apiInstance.VisualizeRecipeTasteByID(id, normalize, rgb);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling RecipesApi.VisualizeRecipeTasteByID: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int?**| The item&#39;s id. | 
 **normalize** | **bool?**| Whether to normalize to the strongest taste. | [optional] [default to true]
 **rgb** | **string**| Red, green, blue values for the chart color. | [optional] 

### Return type

**string**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

