# com.spoonacular.IngredientsApi

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AutocompleteIngredientSearch**](IngredientsApi.md#autocompleteingredientsearch) | **GET** /food/ingredients/autocomplete | Autocomplete Ingredient Search
[**ComputeIngredientAmount**](IngredientsApi.md#computeingredientamount) | **GET** /food/ingredients/{id}/amount | Compute Ingredient Amount
[**GetIngredientInformation**](IngredientsApi.md#getingredientinformation) | **GET** /food/ingredients/{id}/information | Get Ingredient Information
[**GetIngredientSubstitutes**](IngredientsApi.md#getingredientsubstitutes) | **GET** /food/ingredients/substitutes | Get Ingredient Substitutes
[**GetIngredientSubstitutesByID**](IngredientsApi.md#getingredientsubstitutesbyid) | **GET** /food/ingredients/{id}/substitutes | Get Ingredient Substitutes by ID
[**IngredientSearch**](IngredientsApi.md#ingredientsearch) | **GET** /food/ingredients/search | Ingredient Search
[**IngredientsByIDImage**](IngredientsApi.md#ingredientsbyidimage) | **GET** /recipes/{id}/ingredientWidget.png | Ingredients by ID Image
[**MapIngredientsToGroceryProducts**](IngredientsApi.md#mapingredientstogroceryproducts) | **POST** /food/ingredients/map | Map Ingredients to Grocery Products
[**VisualizeIngredients**](IngredientsApi.md#visualizeingredients) | **POST** /recipes/visualizeIngredients | Ingredients Widget


<a name="autocompleteingredientsearch"></a>
# **AutocompleteIngredientSearch**
> List<InlineResponse20024> AutocompleteIngredientSearch (string query, int? number, bool? metaInformation, string intolerances)

Autocomplete Ingredient Search

Autocomplete the entry of an ingredient.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class AutocompleteIngredientSearchExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new IngredientsApi();
            var query = burger;  // string | The (natural language) search query. (optional) 
            var number = 10;  // int? | The maximum number of items to return (between 1 and 100). Defaults to 10. (optional)  (default to 10)
            var metaInformation = false;  // bool? | Whether to return more meta information about the ingredients. (optional) 
            var intolerances = egg;  // string | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. (optional) 

            try
            {
                // Autocomplete Ingredient Search
                List&lt;InlineResponse20024&gt; result = apiInstance.AutocompleteIngredientSearch(query, number, metaInformation, intolerances);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling IngredientsApi.AutocompleteIngredientSearch: " + e.Message );
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
 **metaInformation** | **bool?**| Whether to return more meta information about the ingredients. | [optional] 
 **intolerances** | **string**| A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. | [optional] 

### Return type

[**List<InlineResponse20024>**](InlineResponse20024.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="computeingredientamount"></a>
# **ComputeIngredientAmount**
> RecipesParseIngredientsNutritionWeightPerServing ComputeIngredientAmount (decimal? id, string nutrient, decimal? target, string unit)

Compute Ingredient Amount

Compute the amount you need of a certain ingredient for a certain nutritional goal. For example, how much pineapple do you have to eat to get 10 grams of protein?

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class ComputeIngredientAmountExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new IngredientsApi();
            var id = 9266;  // decimal? | The id of the ingredient you want the amount for.
            var nutrient = protein;  // string | The target nutrient. See a list of supported nutrients.
            var target = 2;  // decimal? | The target number of the given nutrient.
            var unit = oz;  // string | The target unit. (optional) 

            try
            {
                // Compute Ingredient Amount
                RecipesParseIngredientsNutritionWeightPerServing result = apiInstance.ComputeIngredientAmount(id, nutrient, target, unit);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling IngredientsApi.ComputeIngredientAmount: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **decimal?**| The id of the ingredient you want the amount for. | 
 **nutrient** | **string**| The target nutrient. See a list of supported nutrients. | 
 **target** | **decimal?**| The target number of the given nutrient. | 
 **unit** | **string**| The target unit. | [optional] 

### Return type

[**RecipesParseIngredientsNutritionWeightPerServing**](RecipesParseIngredientsNutritionWeightPerServing.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getingredientinformation"></a>
# **GetIngredientInformation**
> InlineResponse20022 GetIngredientInformation (int? id, decimal? amount, string unit)

Get Ingredient Information

Use an ingredient id to get all available information about an ingredient, such as its image and supermarket aisle.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class GetIngredientInformationExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new IngredientsApi();
            var id = 1;  // int? | The item's id.
            var amount = 150;  // decimal? | The amount of this ingredient. (optional) 
            var unit = grams;  // string | The unit for the given amount. (optional) 

            try
            {
                // Get Ingredient Information
                InlineResponse20022 result = apiInstance.GetIngredientInformation(id, amount, unit);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling IngredientsApi.GetIngredientInformation: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int?**| The item&#39;s id. | 
 **amount** | **decimal?**| The amount of this ingredient. | [optional] 
 **unit** | **string**| The unit for the given amount. | [optional] 

### Return type

[**InlineResponse20022**](InlineResponse20022.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getingredientsubstitutes"></a>
# **GetIngredientSubstitutes**
> InlineResponse20026 GetIngredientSubstitutes (string ingredientName)

Get Ingredient Substitutes

Search for substitutes for a given ingredient.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class GetIngredientSubstitutesExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new IngredientsApi();
            var ingredientName = butter;  // string | The name of the ingredient you want to replace.

            try
            {
                // Get Ingredient Substitutes
                InlineResponse20026 result = apiInstance.GetIngredientSubstitutes(ingredientName);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling IngredientsApi.GetIngredientSubstitutes: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredientName** | **string**| The name of the ingredient you want to replace. | 

### Return type

[**InlineResponse20026**](InlineResponse20026.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getingredientsubstitutesbyid"></a>
# **GetIngredientSubstitutesByID**
> InlineResponse20026 GetIngredientSubstitutesByID (int? id)

Get Ingredient Substitutes by ID

Search for substitutes for a given ingredient.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class GetIngredientSubstitutesByIDExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new IngredientsApi();
            var id = 1;  // int? | The item's id.

            try
            {
                // Get Ingredient Substitutes by ID
                InlineResponse20026 result = apiInstance.GetIngredientSubstitutesByID(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling IngredientsApi.GetIngredientSubstitutesByID: " + e.Message );
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

[**InlineResponse20026**](InlineResponse20026.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="ingredientsearch"></a>
# **IngredientSearch**
> InlineResponse20025 IngredientSearch (string query, bool? addChildren, decimal? minProteinPercent, decimal? maxProteinPercent, decimal? minFatPercent, decimal? maxFatPercent, decimal? minCarbsPercent, decimal? maxCarbsPercent, bool? metaInformation, string intolerances, string sort, string sortDirection, int? offset, int? number)

Ingredient Search

Search for simple whole foods (e.g. fruits, vegetables, nuts, grains, meat, fish, dairy etc.).

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class IngredientSearchExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new IngredientsApi();
            var query = burger;  // string | The (natural language) search query. (optional) 
            var addChildren = true;  // bool? | Whether to add children of found foods. (optional) 
            var minProteinPercent = 10;  // decimal? | The minimum percentage of protein the food must have (between 0 and 100). (optional) 
            var maxProteinPercent = 90;  // decimal? | The maximum percentage of protein the food can have (between 0 and 100). (optional) 
            var minFatPercent = 10;  // decimal? | The minimum percentage of fat the food must have (between 0 and 100). (optional) 
            var maxFatPercent = 90;  // decimal? | The maximum percentage of fat the food can have (between 0 and 100). (optional) 
            var minCarbsPercent = 10;  // decimal? | The minimum percentage of carbs the food must have (between 0 and 100). (optional) 
            var maxCarbsPercent = 90;  // decimal? | The maximum percentage of carbs the food can have (between 0 and 100). (optional) 
            var metaInformation = false;  // bool? | Whether to return more meta information about the ingredients. (optional) 
            var intolerances = egg;  // string | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. (optional) 
            var sort = calories;  // string | The strategy to sort recipes by. See a full list of supported sorting options. (optional) 
            var sortDirection = asc;  // string | The direction in which to sort. Must be either 'asc' (ascending) or 'desc' (descending). (optional) 
            var offset = 56;  // int? | The number of results to skip (between 0 and 900). (optional) 
            var number = 10;  // int? | The maximum number of items to return (between 1 and 100). Defaults to 10. (optional)  (default to 10)

            try
            {
                // Ingredient Search
                InlineResponse20025 result = apiInstance.IngredientSearch(query, addChildren, minProteinPercent, maxProteinPercent, minFatPercent, maxFatPercent, minCarbsPercent, maxCarbsPercent, metaInformation, intolerances, sort, sortDirection, offset, number);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling IngredientsApi.IngredientSearch: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The (natural language) search query. | [optional] 
 **addChildren** | **bool?**| Whether to add children of found foods. | [optional] 
 **minProteinPercent** | **decimal?**| The minimum percentage of protein the food must have (between 0 and 100). | [optional] 
 **maxProteinPercent** | **decimal?**| The maximum percentage of protein the food can have (between 0 and 100). | [optional] 
 **minFatPercent** | **decimal?**| The minimum percentage of fat the food must have (between 0 and 100). | [optional] 
 **maxFatPercent** | **decimal?**| The maximum percentage of fat the food can have (between 0 and 100). | [optional] 
 **minCarbsPercent** | **decimal?**| The minimum percentage of carbs the food must have (between 0 and 100). | [optional] 
 **maxCarbsPercent** | **decimal?**| The maximum percentage of carbs the food can have (between 0 and 100). | [optional] 
 **metaInformation** | **bool?**| Whether to return more meta information about the ingredients. | [optional] 
 **intolerances** | **string**| A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. | [optional] 
 **sort** | **string**| The strategy to sort recipes by. See a full list of supported sorting options. | [optional] 
 **sortDirection** | **string**| The direction in which to sort. Must be either &#39;asc&#39; (ascending) or &#39;desc&#39; (descending). | [optional] 
 **offset** | **int?**| The number of results to skip (between 0 and 900). | [optional] 
 **number** | **int?**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]

### Return type

[**InlineResponse20025**](InlineResponse20025.md)

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

            var apiInstance = new IngredientsApi();
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
                Debug.Print("Exception when calling IngredientsApi.IngredientsByIDImage: " + e.Message );
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

<a name="mapingredientstogroceryproducts"></a>
# **MapIngredientsToGroceryProducts**
> List<InlineResponse20034> MapIngredientsToGroceryProducts (InlineObject2 inlineObject2)

Map Ingredients to Grocery Products

Map a set of ingredients to products you can buy in the grocery store.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class MapIngredientsToGroceryProductsExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new IngredientsApi();
            var inlineObject2 = new InlineObject2(); // InlineObject2 | 

            try
            {
                // Map Ingredients to Grocery Products
                List&lt;InlineResponse20034&gt; result = apiInstance.MapIngredientsToGroceryProducts(inlineObject2);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling IngredientsApi.MapIngredientsToGroceryProducts: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inlineObject2** | [**InlineObject2**](InlineObject2.md)|  | 

### Return type

[**List<InlineResponse20034>**](InlineResponse20034.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="visualizeingredients"></a>
# **VisualizeIngredients**
> string VisualizeIngredients (string contentType, string language, string accept)

Ingredients Widget

Visualize ingredients of a recipe. You can play around with that endpoint!

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class VisualizeIngredientsExample
    {
        public void main()
        {
            
            // Configure API key authorization: apiKeyScheme
            Configuration.Default.ApiKey.Add("apiKey", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("apiKey", "Bearer");

            var apiInstance = new IngredientsApi();
            var contentType = application/json;  // string | The content type. (optional) 
            var language = en;  // string | The language of the input. Either 'en' or 'de'. (optional) 
            var accept = application/json;  // string | Accept header. (optional) 

            try
            {
                // Ingredients Widget
                string result = apiInstance.VisualizeIngredients(contentType, language, accept);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling IngredientsApi.VisualizeIngredients: " + e.Message );
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
 **accept** | **string**| Accept header. | [optional] 

### Return type

**string**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

