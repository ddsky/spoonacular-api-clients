# com.spoonacular.DefaultApi

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AddToMealPlan**](DefaultApi.md#addtomealplan) | **POST** /mealplanner/{username}/items | Add to Meal Plan
[**AddToShoppingList**](DefaultApi.md#addtoshoppinglist) | **POST** /mealplanner/{username}/shopping-list/items | Add to Shopping List
[**AnalyzeARecipeSearchQuery**](DefaultApi.md#analyzearecipesearchquery) | **GET** /recipes/queries/analyze | Analyze a Recipe Search Query
[**AnalyzeRecipeInstructions**](DefaultApi.md#analyzerecipeinstructions) | **POST** /recipes/analyzeInstructions | Analyze Recipe Instructions
[**AutocompleteIngredientSearch**](DefaultApi.md#autocompleteingredientsearch) | **GET** /food/ingredients/autocomplete | Autocomplete Ingredient Search
[**AutocompleteMenuItemSearch**](DefaultApi.md#autocompletemenuitemsearch) | **GET** /food/menuItems/suggest | Autocomplete Menu Item Search
[**AutocompleteProductSearch**](DefaultApi.md#autocompleteproductsearch) | **GET** /food/products/suggest | Autocomplete Product Search
[**AutocompleteRecipeSearch**](DefaultApi.md#autocompleterecipesearch) | **GET** /recipes/autocomplete | Autocomplete Recipe Search
[**ClassifyCuisine**](DefaultApi.md#classifycuisine) | **POST** /recipes/cuisine | Classify Cuisine
[**ClassifyGroceryProduct**](DefaultApi.md#classifygroceryproduct) | **POST** /food/products/classify | Classify Grocery Product
[**ClassifyGroceryProductBulk**](DefaultApi.md#classifygroceryproductbulk) | **POST** /food/products/classifyBatch | Classify Grocery Product Bulk
[**ConvertAmounts**](DefaultApi.md#convertamounts) | **GET** /recipes/convert | Convert Amounts
[**CreateRecipeCard**](DefaultApi.md#createrecipecard) | **POST** /recipes/visualizeRecipe | Create Recipe Card
[**DeleteFromMealPlan**](DefaultApi.md#deletefrommealplan) | **DELETE** /mealplanner/{username}/items/{id} | Delete from Meal Plan
[**DeleteFromShoppingList**](DefaultApi.md#deletefromshoppinglist) | **DELETE** /mealplanner/{username}/shopping-list/items/{id} | Delete from Shopping List
[**DetectFoodInText**](DefaultApi.md#detectfoodintext) | **POST** /food/detect | Detect Food in Text
[**ExtractRecipeFromWebsite**](DefaultApi.md#extractrecipefromwebsite) | **GET** /recipes/extract | Extract Recipe from Website
[**GenerateMealPlan**](DefaultApi.md#generatemealplan) | **GET** /mealplanner/generate | Generate Meal Plan
[**GenerateShoppingList**](DefaultApi.md#generateshoppinglist) | **POST** /mealplanner/{username}/shopping-list/{start-date}/{end-date} | Generate Shopping List
[**GetARandomFoodJoke**](DefaultApi.md#getarandomfoodjoke) | **GET** /food/jokes/random | Get a Random Food Joke
[**GetAnalyzedRecipeInstructions**](DefaultApi.md#getanalyzedrecipeinstructions) | **GET** /recipes/{id}/analyzedInstructions | Get Analyzed Recipe Instructions
[**GetComparableProducts**](DefaultApi.md#getcomparableproducts) | **GET** /food/products/upc/{upc}/comparable | Get Comparable Products
[**GetConversationSuggests**](DefaultApi.md#getconversationsuggests) | **GET** /food/converse/suggest | Get Conversation Suggests
[**GetDishPairingForWine**](DefaultApi.md#getdishpairingforwine) | **GET** /food/wine/dishes | Get Dish Pairing for Wine
[**GetIngredientInformation**](DefaultApi.md#getingredientinformation) | **GET** /food/ingredients/{id}/information | Get Ingredient Information
[**GetIngredientSubstitutes**](DefaultApi.md#getingredientsubstitutes) | **GET** /food/ingredients/substitutes | Get Ingredient Substitutes
[**GetIngredientSubstitutesByID**](DefaultApi.md#getingredientsubstitutesbyid) | **GET** /food/ingredients/{id}/substitutes | Get Ingredient Substitutes by ID
[**GetMealPlanTemplate**](DefaultApi.md#getmealplantemplate) | **GET** /mealplanner/{username}/templates/{id} | Get Meal Plan Template
[**GetMealPlanTemplates**](DefaultApi.md#getmealplantemplates) | **GET** /mealplanner/{username}/templates | Get Meal Plan Templates
[**GetMealPlanWeek**](DefaultApi.md#getmealplanweek) | **GET** /mealplanner/{username}/week/{start-date} | Get Meal Plan Week
[**GetMenuItemInformation**](DefaultApi.md#getmenuiteminformation) | **GET** /food/menuItems/{id} | Get Menu Item Information
[**GetProductInformation**](DefaultApi.md#getproductinformation) | **GET** /food/products/{id} | Get Product Information
[**GetRandomFoodTrivia**](DefaultApi.md#getrandomfoodtrivia) | **GET** /food/trivia/random | Get Random Food Trivia
[**GetRandomRecipes**](DefaultApi.md#getrandomrecipes) | **GET** /recipes/random | Get Random Recipes
[**GetRecipeEquipmentByID**](DefaultApi.md#getrecipeequipmentbyid) | **GET** /recipes/{id}/equipmentWidget.json | Get Recipe Equipment by ID
[**GetRecipeInformation**](DefaultApi.md#getrecipeinformation) | **GET** /recipes/{id}/information | Get Recipe Information
[**GetRecipeInformationBulk**](DefaultApi.md#getrecipeinformationbulk) | **GET** /recipes/informationBulk | Get Recipe Information Bulk
[**GetRecipeIngredientsByID**](DefaultApi.md#getrecipeingredientsbyid) | **GET** /recipes/{id}/ingredientWidget.json | Get Recipe Ingredients by ID
[**GetRecipeNutritionWidgetByID**](DefaultApi.md#getrecipenutritionwidgetbyid) | **GET** /recipes/{id}/nutritionWidget.json | Get Recipe Nutrition Widget by ID
[**GetRecipePriceBreakdownByID**](DefaultApi.md#getrecipepricebreakdownbyid) | **GET** /recipes/{id}/priceBreakdownWidget.json | Get Recipe Price Breakdown by ID
[**GetShoppingList**](DefaultApi.md#getshoppinglist) | **GET** /mealplanner/{username}/shopping-list | Get Shopping List
[**GetSimilarRecipes**](DefaultApi.md#getsimilarrecipes) | **GET** /recipes/{id}/similar | Get Similar Recipes
[**GetWineDescription**](DefaultApi.md#getwinedescription) | **GET** /food/wine/description | Get Wine Description
[**GetWinePairing**](DefaultApi.md#getwinepairing) | **GET** /food/wine/pairing | Get Wine Pairing
[**GetWineRecommendation**](DefaultApi.md#getwinerecommendation) | **GET** /food/wine/recommendation | Get Wine Recommendation
[**GuessNutritionByDishName**](DefaultApi.md#guessnutritionbydishname) | **GET** /recipes/guessNutrition | Guess Nutrition by Dish Name
[**ImageAnalysisByURL**](DefaultApi.md#imageanalysisbyurl) | **GET** /food/images/analyze | Image Analysis by URL
[**ImageClassificationByURL**](DefaultApi.md#imageclassificationbyurl) | **GET** /food/images/classify | Image Classification by URL
[**MapIngredientsToGroceryProducts**](DefaultApi.md#mapingredientstogroceryproducts) | **POST** /food/ingredients/map | Map Ingredients to Grocery Products
[**ParseIngredients**](DefaultApi.md#parseingredients) | **POST** /recipes/parseIngredients | Parse Ingredients
[**QuickAnswer**](DefaultApi.md#quickanswer) | **GET** /recipes/quickAnswer | Quick Answer
[**SearchCustomFoods**](DefaultApi.md#searchcustomfoods) | **GET** /food/customFoods/search | Search Custom Foods
[**SearchFoodVideos**](DefaultApi.md#searchfoodvideos) | **GET** /food/videos/search | Search Food Videos
[**SearchGroceryProducts**](DefaultApi.md#searchgroceryproducts) | **GET** /food/products/search | Search Grocery Products
[**SearchGroceryProductsByUPC**](DefaultApi.md#searchgroceryproductsbyupc) | **GET** /food/products/upc/{upc} | Search Grocery Products by UPC
[**SearchMenuItems**](DefaultApi.md#searchmenuitems) | **GET** /food/menuItems/search | Search Menu Items
[**SearchRecipes**](DefaultApi.md#searchrecipes) | **GET** /recipes/search | Search Recipes
[**SearchRecipesByIngredients**](DefaultApi.md#searchrecipesbyingredients) | **GET** /recipes/findByIngredients | Search Recipes by Ingredients
[**SearchRecipesByNutrients**](DefaultApi.md#searchrecipesbynutrients) | **GET** /recipes/findByNutrients | Search Recipes by Nutrients
[**SearchRecipesComplex**](DefaultApi.md#searchrecipescomplex) | **GET** /recipes/complexSearch | Search Recipes Complex
[**SearchSiteContent**](DefaultApi.md#searchsitecontent) | **GET** /food/site/search | Search Site Content
[**SummarizeRecipe**](DefaultApi.md#summarizerecipe) | **GET** /recipes/{id}/summary | Summarize Recipe
[**TalkToChatbot**](DefaultApi.md#talktochatbot) | **GET** /food/converse | Talk to Chatbot
[**VisualizeEquipment**](DefaultApi.md#visualizeequipment) | **POST** /recipes/visualizeEquipment | Visualize Equipment
[**VisualizeIngredients**](DefaultApi.md#visualizeingredients) | **POST** /recipes/visualizeIngredients | Visualize Ingredients
[**VisualizeMenuItemNutritionByID**](DefaultApi.md#visualizemenuitemnutritionbyid) | **GET** /food/menuItems/{id}/nutritionWidget | Visualize Menu Item Nutrition by ID
[**VisualizePriceBreakdown**](DefaultApi.md#visualizepricebreakdown) | **POST** /recipes/visualizePriceEstimator | Visualize Price Breakdown
[**VisualizeProductNutritionByID**](DefaultApi.md#visualizeproductnutritionbyid) | **GET** /food/products/{id}/nutritionWidget | Visualize Product Nutrition by ID
[**VisualizeRecipeEquipmentByID**](DefaultApi.md#visualizerecipeequipmentbyid) | **GET** /recipes/{id}/equipmentWidget | Visualize Recipe Equipment by ID
[**VisualizeRecipeIngredientsByID**](DefaultApi.md#visualizerecipeingredientsbyid) | **GET** /recipes/{id}/ingredientWidget | Visualize Recipe Ingredients by ID
[**VisualizeRecipeNutrition**](DefaultApi.md#visualizerecipenutrition) | **POST** /recipes/visualizeNutrition | Visualize Recipe Nutrition
[**VisualizeRecipeNutritionByID**](DefaultApi.md#visualizerecipenutritionbyid) | **GET** /recipes/{id}/nutritionWidget | Visualize Recipe Nutrition by ID
[**VisualizeRecipePriceBreakdownByID**](DefaultApi.md#visualizerecipepricebreakdownbyid) | **GET** /recipes/{id}/priceBreakdownWidget | Visualize Recipe Price Breakdown by ID


<a name="addtomealplan"></a>
# **AddToMealPlan**
> Object AddToMealPlan (string username, string hash, InlineObject9 inlineObject9)

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
            
            var apiInstance = new DefaultApi();
            var username = dsky;  // string | The username.
            var hash = 4b5v4398573406;  // string | The private hash for the username.
            var inlineObject9 = new InlineObject9(); // InlineObject9 | 

            try
            {
                // Add to Meal Plan
                Object result = apiInstance.AddToMealPlan(username, hash, inlineObject9);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.AddToMealPlan: " + e.Message );
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

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="addtoshoppinglist"></a>
# **AddToShoppingList**
> Object AddToShoppingList (string username, string hash, InlineObject12 inlineObject12)

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
            
            var apiInstance = new DefaultApi();
            var username = dsky;  // string | The username.
            var hash = 4b5v4398573406;  // string | The private hash for the username.
            var inlineObject12 = new InlineObject12(); // InlineObject12 | 

            try
            {
                // Add to Shopping List
                Object result = apiInstance.AddToShoppingList(username, hash, inlineObject12);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.AddToShoppingList: " + e.Message );
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
 **inlineObject12** | [**InlineObject12**](InlineObject12.md)|  | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="analyzearecipesearchquery"></a>
# **AnalyzeARecipeSearchQuery**
> Object AnalyzeARecipeSearchQuery (string q)

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
            
            var apiInstance = new DefaultApi();
            var q = salmon with fusilli and no nuts;  // string | The recipe search query.

            try
            {
                // Analyze a Recipe Search Query
                Object result = apiInstance.AnalyzeARecipeSearchQuery(q);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.AnalyzeARecipeSearchQuery: " + e.Message );
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

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="analyzerecipeinstructions"></a>
# **AnalyzeRecipeInstructions**
> Object AnalyzeRecipeInstructions (string instructions)

Analyze Recipe Instructions

Extract ingredients and equipment from the recipe's instructions.

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
            
            var apiInstance = new DefaultApi();
            var instructions = instructions_example;  // string | The instructions to be analyzed.

            try
            {
                // Analyze Recipe Instructions
                Object result = apiInstance.AnalyzeRecipeInstructions(instructions);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.AnalyzeRecipeInstructions: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instructions** | **string**| The instructions to be analyzed. | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="autocompleteingredientsearch"></a>
# **AutocompleteIngredientSearch**
> Object AutocompleteIngredientSearch (string query, decimal? number, bool? metaInformation, bool? intolerances)

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
            
            var apiInstance = new DefaultApi();
            var query = appl;  // string | The partial or full ingredient name.
            var number = 10;  // decimal? | The number of results to return (between 1 and 100). (optional) 
            var metaInformation = false;  // bool? | Whether to return more meta information about the ingredients. (optional) 
            var intolerances = false;  // bool? | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. (optional) 

            try
            {
                // Autocomplete Ingredient Search
                Object result = apiInstance.AutocompleteIngredientSearch(query, number, metaInformation, intolerances);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.AutocompleteIngredientSearch: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The partial or full ingredient name. | 
 **number** | **decimal?**| The number of results to return (between 1 and 100). | [optional] 
 **metaInformation** | **bool?**| Whether to return more meta information about the ingredients. | [optional] 
 **intolerances** | **bool?**| A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="autocompletemenuitemsearch"></a>
# **AutocompleteMenuItemSearch**
> Object AutocompleteMenuItemSearch (string query, decimal? number)

Autocomplete Menu Item Search

Generate suggestions for menu items based on a (partial) query. The matches will be found by looking in the title only.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class AutocompleteMenuItemSearchExample
    {
        public void main()
        {
            
            var apiInstance = new DefaultApi();
            var query = chicke;  // string | The (partial) search query.
            var number = 10;  // decimal? | The number of results to return (between 1 and 25). (optional) 

            try
            {
                // Autocomplete Menu Item Search
                Object result = apiInstance.AutocompleteMenuItemSearch(query, number);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.AutocompleteMenuItemSearch: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The (partial) search query. | 
 **number** | **decimal?**| The number of results to return (between 1 and 25). | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="autocompleteproductsearch"></a>
# **AutocompleteProductSearch**
> Object AutocompleteProductSearch (string query, decimal? number)

Autocomplete Product Search

Generate suggestions for grocery products based on a (partial) query. The matches will be found by looking in the title only.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class AutocompleteProductSearchExample
    {
        public void main()
        {
            
            var apiInstance = new DefaultApi();
            var query = chicke;  // string | The (partial) search query.
            var number = 10;  // decimal? | The number of results to return (between 1 and 25). (optional) 

            try
            {
                // Autocomplete Product Search
                Object result = apiInstance.AutocompleteProductSearch(query, number);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.AutocompleteProductSearch: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The (partial) search query. | 
 **number** | **decimal?**| The number of results to return (between 1 and 25). | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="autocompleterecipesearch"></a>
# **AutocompleteRecipeSearch**
> Object AutocompleteRecipeSearch (string query, decimal? number)

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
            
            var apiInstance = new DefaultApi();
            var query = burger;  // string | The query to be autocompleted.
            var number = 10;  // decimal? | The number of results to return (between 1 and 25). (optional) 

            try
            {
                // Autocomplete Recipe Search
                Object result = apiInstance.AutocompleteRecipeSearch(query, number);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.AutocompleteRecipeSearch: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The query to be autocompleted. | 
 **number** | **decimal?**| The number of results to return (between 1 and 25). | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="classifycuisine"></a>
# **ClassifyCuisine**
> Object ClassifyCuisine (string title, string ingredientList)

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
            
            var apiInstance = new DefaultApi();
            var title = title_example;  // string | The title of the recipe.
            var ingredientList = ingredientList_example;  // string | The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n).

            try
            {
                // Classify Cuisine
                Object result = apiInstance.ClassifyCuisine(title, ingredientList);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.ClassifyCuisine: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **string**| The title of the recipe. | 
 **ingredientList** | **string**| The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n). | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="classifygroceryproduct"></a>
# **ClassifyGroceryProduct**
> Object ClassifyGroceryProduct (InlineObject8 inlineObject8, string locale)

Classify Grocery Product

This endpoint allows you to match a packaged food to a basic category, e.g. a specific brand of milk to the category milk.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class ClassifyGroceryProductExample
    {
        public void main()
        {
            
            var apiInstance = new DefaultApi();
            var inlineObject8 = new InlineObject8(); // InlineObject8 | 
            var locale = en_US;  // string | The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). (optional) 

            try
            {
                // Classify Grocery Product
                Object result = apiInstance.ClassifyGroceryProduct(inlineObject8, locale);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.ClassifyGroceryProduct: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inlineObject8** | [**InlineObject8**](InlineObject8.md)|  | 
 **locale** | **string**| The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="classifygroceryproductbulk"></a>
# **ClassifyGroceryProductBulk**
> Object ClassifyGroceryProductBulk (Object body, string locale)

Classify Grocery Product Bulk

Provide a set of product jsons, get back classified products.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class ClassifyGroceryProductBulkExample
    {
        public void main()
        {
            
            var apiInstance = new DefaultApi();
            var body = ;  // Object | 
            var locale = en_US;  // string | The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). (optional) 

            try
            {
                // Classify Grocery Product Bulk
                Object result = apiInstance.ClassifyGroceryProductBulk(body, locale);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.ClassifyGroceryProductBulk: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **Object**|  | 
 **locale** | **string**| The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="convertamounts"></a>
# **ConvertAmounts**
> Object ConvertAmounts (string ingredientName, decimal? sourceAmount, string sourceUnit, string targetUnit)

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
            
            var apiInstance = new DefaultApi();
            var ingredientName = flour;  // string | The ingredient which you want to convert.
            var sourceAmount = 2.5;  // decimal? | The amount from which you want to convert, e.g. the 2.5 in \"2.5 cups of flour to grams\".
            var sourceUnit = cups;  // string | The unit from which you want to convert, e.g. the grams in \"2.5 cups of flour to grams\". You can also use \"piece\", e.g. \"3.4 oz tomatoes to piece\"
            var targetUnit = grams;  // string | The unit to which you want to convert, e.g. the grams in \"2.5 cups of flour to grams\". You can also use \"piece\", e.g. \"3.4 oz tomatoes to piece\"

            try
            {
                // Convert Amounts
                Object result = apiInstance.ConvertAmounts(ingredientName, sourceAmount, sourceUnit, targetUnit);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.ConvertAmounts: " + e.Message );
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

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="createrecipecard"></a>
# **CreateRecipeCard**
> Object CreateRecipeCard (string title, System.IO.Stream image, string ingredients, string instructions, decimal? readyInMinutes, decimal? servings, string mask, string backgroundImage, string author, string backgroundColor, string fontColor, string source)

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
            
            var apiInstance = new DefaultApi();
            var title = title_example;  // string | The title of the recipe.
            var image = new System.IO.Stream(); // System.IO.Stream | The binary image of the recipe as jpg.
            var ingredients = ingredients_example;  // string | The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n).
            var instructions = instructions_example;  // string | The instructions to make the recipe. One step per line (separate lines with \\\\n).
            var readyInMinutes = 8.14;  // decimal? | The number of minutes it takes to get the recipe on the table.
            var servings = 8.14;  // decimal? | The number of servings the recipe makes.
            var mask = mask_example;  // string | The mask to put over the recipe image (\\\"ellipseMask\\\", \\\"diamondMask\\\", \\\"starMask\\\", \\\"heartMask\\\", \\\"potMask\\\", \\\"fishMask\\\").
            var backgroundImage = backgroundImage_example;  // string | The background image (\\\"none\\\",\\\"background1\\\", or \\\"background2\\\").
            var author = author_example;  // string | The author of the recipe. (optional) 
            var backgroundColor = backgroundColor_example;  // string | The background color for the recipe card as a hex-string. (optional) 
            var fontColor = fontColor_example;  // string | The font color for the recipe card as a hex-string. (optional) 
            var source = source_example;  // string | The source of the recipe. (optional) 

            try
            {
                // Create Recipe Card
                Object result = apiInstance.CreateRecipeCard(title, image, ingredients, instructions, readyInMinutes, servings, mask, backgroundImage, author, backgroundColor, fontColor, source);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.CreateRecipeCard: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **string**| The title of the recipe. | 
 **image** | **System.IO.Stream**| The binary image of the recipe as jpg. | 
 **ingredients** | **string**| The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n). | 
 **instructions** | **string**| The instructions to make the recipe. One step per line (separate lines with \\\\n). | 
 **readyInMinutes** | **decimal?**| The number of minutes it takes to get the recipe on the table. | 
 **servings** | **decimal?**| The number of servings the recipe makes. | 
 **mask** | **string**| The mask to put over the recipe image (\\\&quot;ellipseMask\\\&quot;, \\\&quot;diamondMask\\\&quot;, \\\&quot;starMask\\\&quot;, \\\&quot;heartMask\\\&quot;, \\\&quot;potMask\\\&quot;, \\\&quot;fishMask\\\&quot;). | 
 **backgroundImage** | **string**| The background image (\\\&quot;none\\\&quot;,\\\&quot;background1\\\&quot;, or \\\&quot;background2\\\&quot;). | 
 **author** | **string**| The author of the recipe. | [optional] 
 **backgroundColor** | **string**| The background color for the recipe card as a hex-string. | [optional] 
 **fontColor** | **string**| The font color for the recipe card as a hex-string. | [optional] 
 **source** | **string**| The source of the recipe. | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="deletefrommealplan"></a>
# **DeleteFromMealPlan**
> Object DeleteFromMealPlan (string username, decimal? id, string hash, InlineObject10 inlineObject10)

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
            
            var apiInstance = new DefaultApi();
            var username = dsky;  // string | The username.
            var id = 15678;  // decimal? | The shopping list item id.
            var hash = 4b5v4398573406;  // string | The private hash for the username.
            var inlineObject10 = new InlineObject10(); // InlineObject10 | 

            try
            {
                // Delete from Meal Plan
                Object result = apiInstance.DeleteFromMealPlan(username, id, hash, inlineObject10);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.DeleteFromMealPlan: " + e.Message );
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
 **inlineObject10** | [**InlineObject10**](InlineObject10.md)|  | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="deletefromshoppinglist"></a>
# **DeleteFromShoppingList**
> Object DeleteFromShoppingList (string username, decimal? id, string hash, InlineObject13 inlineObject13)

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
            
            var apiInstance = new DefaultApi();
            var username = dsky;  // string | The username.
            var id = 15678;  // decimal? | The shopping list item id.
            var hash = 4b5v4398573406;  // string | The private hash for the username.
            var inlineObject13 = new InlineObject13(); // InlineObject13 | 

            try
            {
                // Delete from Shopping List
                Object result = apiInstance.DeleteFromShoppingList(username, id, hash, inlineObject13);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.DeleteFromShoppingList: " + e.Message );
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
 **inlineObject13** | [**InlineObject13**](InlineObject13.md)|  | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="detectfoodintext"></a>
# **DetectFoodInText**
> Object DetectFoodInText (string text)

Detect Food in Text

Take any text and find all mentions of food contained within it. This task is also called Named Entity Recognition (NER). In this case, the entities are foods. Either dishes, such as pizza or cheeseburger, or ingredients, such as cucumber or almonds.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class DetectFoodInTextExample
    {
        public void main()
        {
            
            var apiInstance = new DefaultApi();
            var text = text_example;  // string | The text in which food items, such as dish names and ingredients, should be detected in.

            try
            {
                // Detect Food in Text
                Object result = apiInstance.DetectFoodInText(text);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.DetectFoodInText: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **string**| The text in which food items, such as dish names and ingredients, should be detected in. | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="extractrecipefromwebsite"></a>
# **ExtractRecipeFromWebsite**
> Object ExtractRecipeFromWebsite (string url, bool? forceExtraction, bool? analyze)

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
            
            var apiInstance = new DefaultApi();
            var url = https://foodista.com/recipe/ZHK4KPB6/chocolate-crinkle-cookies;  // string | The URL of the recipe page.
            var forceExtraction = true;  // bool? | If true, the extraction will be triggered whether we already know the recipe or not. Use this only if information is missing as this operation is slower. (optional) 
            var analyze = false;  // bool? | If true, the recipe will be analyzed and classified resolving in more data such as cuisines, dish types, and more. (optional) 

            try
            {
                // Extract Recipe from Website
                Object result = apiInstance.ExtractRecipeFromWebsite(url, forceExtraction, analyze);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.ExtractRecipeFromWebsite: " + e.Message );
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

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="generatemealplan"></a>
# **GenerateMealPlan**
> Object GenerateMealPlan (string timeFrame, decimal? targetCalories, string diet, string exclude)

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
            
            var apiInstance = new DefaultApi();
            var timeFrame = day;  // string | Either for one \"day\" or an entire \"week\". (optional) 
            var targetCalories = 2000;  // decimal? | What is the caloric target for one day? The meal plan generator will try to get as close as possible to that goal. (optional) 
            var diet = vegetarian;  // string | Enter a diet that the meal plan has to adhere to. See a full list of supported diets. (optional) 
            var exclude = shellfish, olives;  // string | A comma-separated list of allergens or ingredients that must be excluded. (optional) 

            try
            {
                // Generate Meal Plan
                Object result = apiInstance.GenerateMealPlan(timeFrame, targetCalories, diet, exclude);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GenerateMealPlan: " + e.Message );
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

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="generateshoppinglist"></a>
# **GenerateShoppingList**
> Object GenerateShoppingList (string username, string startDate, string endDate, string hash, InlineObject11 inlineObject11)

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
            
            var apiInstance = new DefaultApi();
            var username = dsky;  // string | The username.
            var startDate = 2020-06-01;  // string | The start date in the format yyyy-mm-dd.
            var endDate = 2020-06-07;  // string | The end date in the format yyyy-mm-dd.
            var hash = 4b5v4398573406;  // string | The private hash for the username.
            var inlineObject11 = new InlineObject11(); // InlineObject11 | 

            try
            {
                // Generate Shopping List
                Object result = apiInstance.GenerateShoppingList(username, startDate, endDate, hash, inlineObject11);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GenerateShoppingList: " + e.Message );
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
 **inlineObject11** | [**InlineObject11**](InlineObject11.md)|  | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getarandomfoodjoke"></a>
# **GetARandomFoodJoke**
> Object GetARandomFoodJoke ()

Get a Random Food Joke

Get a random joke that is related to food. Caution: this is an endpoint for adults!

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class GetARandomFoodJokeExample
    {
        public void main()
        {
            
            var apiInstance = new DefaultApi();

            try
            {
                // Get a Random Food Joke
                Object result = apiInstance.GetARandomFoodJoke();
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetARandomFoodJoke: " + e.Message );
            }
        }
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getanalyzedrecipeinstructions"></a>
# **GetAnalyzedRecipeInstructions**
> Object GetAnalyzedRecipeInstructions (decimal? id, bool? stepBreakdown)

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
            
            var apiInstance = new DefaultApi();
            var id = 324694;  // decimal? | The recipe id.
            var stepBreakdown = true;  // bool? | Whether to break down the recipe steps even more. (optional) 

            try
            {
                // Get Analyzed Recipe Instructions
                Object result = apiInstance.GetAnalyzedRecipeInstructions(id, stepBreakdown);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetAnalyzedRecipeInstructions: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **decimal?**| The recipe id. | 
 **stepBreakdown** | **bool?**| Whether to break down the recipe steps even more. | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getcomparableproducts"></a>
# **GetComparableProducts**
> Object GetComparableProducts (decimal? upc)

Get Comparable Products

Find comparable products to the given one.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class GetComparableProductsExample
    {
        public void main()
        {
            
            var apiInstance = new DefaultApi();
            var upc = 33698816271;  // decimal? | The UPC of the product for which you want to find comparable products.

            try
            {
                // Get Comparable Products
                Object result = apiInstance.GetComparableProducts(upc);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetComparableProducts: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **upc** | **decimal?**| The UPC of the product for which you want to find comparable products. | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getconversationsuggests"></a>
# **GetConversationSuggests**
> Object GetConversationSuggests (string query, decimal? number)

Get Conversation Suggests

This endpoint returns suggestions for things the user can say or ask the chatbot.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class GetConversationSuggestsExample
    {
        public void main()
        {
            
            var apiInstance = new DefaultApi();
            var query = tell;  // string | A (partial) query from the user. The endpoint will return if it matches topics it can talk about.
            var number = 5;  // decimal? | The number of suggestions to return (between 1 and 25). (optional) 

            try
            {
                // Get Conversation Suggests
                Object result = apiInstance.GetConversationSuggests(query, number);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetConversationSuggests: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| A (partial) query from the user. The endpoint will return if it matches topics it can talk about. | 
 **number** | **decimal?**| The number of suggestions to return (between 1 and 25). | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getdishpairingforwine"></a>
# **GetDishPairingForWine**
> Object GetDishPairingForWine (string wine)

Get Dish Pairing for Wine

Find a dish that goes well with a given wine.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class GetDishPairingForWineExample
    {
        public void main()
        {
            
            var apiInstance = new DefaultApi();
            var wine = malbec;  // string | The type of wine that should be paired, e.g. \"merlot\", \"riesling\", or \"malbec\".

            try
            {
                // Get Dish Pairing for Wine
                Object result = apiInstance.GetDishPairingForWine(wine);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetDishPairingForWine: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wine** | **string**| The type of wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;. | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getingredientinformation"></a>
# **GetIngredientInformation**
> Object GetIngredientInformation (decimal? id, decimal? amount, string unit)

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
            
            var apiInstance = new DefaultApi();
            var id = 9266;  // decimal? | The ingredient id.
            var amount = 150;  // decimal? | The amount of this ingredient. (optional) 
            var unit = grams;  // string | The unit for the given amount. (optional) 

            try
            {
                // Get Ingredient Information
                Object result = apiInstance.GetIngredientInformation(id, amount, unit);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetIngredientInformation: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **decimal?**| The ingredient id. | 
 **amount** | **decimal?**| The amount of this ingredient. | [optional] 
 **unit** | **string**| The unit for the given amount. | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getingredientsubstitutes"></a>
# **GetIngredientSubstitutes**
> Object GetIngredientSubstitutes (string ingredientName)

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
            
            var apiInstance = new DefaultApi();
            var ingredientName = butter;  // string | The name of the ingredient you want to replace.

            try
            {
                // Get Ingredient Substitutes
                Object result = apiInstance.GetIngredientSubstitutes(ingredientName);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetIngredientSubstitutes: " + e.Message );
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

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getingredientsubstitutesbyid"></a>
# **GetIngredientSubstitutesByID**
> Object GetIngredientSubstitutesByID (decimal? id)

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
            
            var apiInstance = new DefaultApi();
            var id = 1001;  // decimal? | The id of the ingredient you want substitutes for.

            try
            {
                // Get Ingredient Substitutes by ID
                Object result = apiInstance.GetIngredientSubstitutesByID(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetIngredientSubstitutesByID: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **decimal?**| The id of the ingredient you want substitutes for. | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getmealplantemplate"></a>
# **GetMealPlanTemplate**
> Object GetMealPlanTemplate (string username, decimal? id, string hash)

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
            
            var apiInstance = new DefaultApi();
            var username = dsky;  // string | The username.
            var id = 15678;  // decimal? | The shopping list item id.
            var hash = 4b5v4398573406;  // string | The private hash for the username.

            try
            {
                // Get Meal Plan Template
                Object result = apiInstance.GetMealPlanTemplate(username, id, hash);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetMealPlanTemplate: " + e.Message );
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

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getmealplantemplates"></a>
# **GetMealPlanTemplates**
> Object GetMealPlanTemplates (string username, string hash)

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
            
            var apiInstance = new DefaultApi();
            var username = dsky;  // string | The username.
            var hash = 4b5v4398573406;  // string | The private hash for the username.

            try
            {
                // Get Meal Plan Templates
                Object result = apiInstance.GetMealPlanTemplates(username, hash);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetMealPlanTemplates: " + e.Message );
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

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getmealplanweek"></a>
# **GetMealPlanWeek**
> Object GetMealPlanWeek (string username, string startDate, string hash)

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
            
            var apiInstance = new DefaultApi();
            var username = dsky;  // string | The username.
            var startDate = 2020-06-01;  // string | The start date of the meal planned week in the format yyyy-mm-dd.
            var hash = 4b5v4398573406;  // string | The private hash for the username.

            try
            {
                // Get Meal Plan Week
                Object result = apiInstance.GetMealPlanWeek(username, startDate, hash);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetMealPlanWeek: " + e.Message );
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

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getmenuiteminformation"></a>
# **GetMenuItemInformation**
> Object GetMenuItemInformation (decimal? id)

Get Menu Item Information

Use a menu item id to get all available information about a menu item, such as nutrition.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class GetMenuItemInformationExample
    {
        public void main()
        {
            
            var apiInstance = new DefaultApi();
            var id = 424571;  // decimal? | The menu item id.

            try
            {
                // Get Menu Item Information
                Object result = apiInstance.GetMenuItemInformation(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetMenuItemInformation: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **decimal?**| The menu item id. | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getproductinformation"></a>
# **GetProductInformation**
> Object GetProductInformation (decimal? id)

Get Product Information

Use a product id to get full information about a product, such as ingredients, nutrition, etc. The nutritional information is per serving.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class GetProductInformationExample
    {
        public void main()
        {
            
            var apiInstance = new DefaultApi();
            var id = 22347;  // decimal? | The id of the packaged food.

            try
            {
                // Get Product Information
                Object result = apiInstance.GetProductInformation(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetProductInformation: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **decimal?**| The id of the packaged food. | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getrandomfoodtrivia"></a>
# **GetRandomFoodTrivia**
> Object GetRandomFoodTrivia ()

Get Random Food Trivia

Returns random food trivia.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class GetRandomFoodTriviaExample
    {
        public void main()
        {
            
            var apiInstance = new DefaultApi();

            try
            {
                // Get Random Food Trivia
                Object result = apiInstance.GetRandomFoodTrivia();
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetRandomFoodTrivia: " + e.Message );
            }
        }
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getrandomrecipes"></a>
# **GetRandomRecipes**
> Object GetRandomRecipes (bool? limitLicense, string tags, decimal? number)

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
            
            var apiInstance = new DefaultApi();
            var limitLicense = true;  // bool? | Whether the recipes should have an open license that allows display with proper attribution. (optional) 
            var tags = vegetarian, dessert;  // string | The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have. (optional) 
            var number = 1;  // decimal? | The number of random recipes to be returned (between 1 and 100). (optional) 

            try
            {
                // Get Random Recipes
                Object result = apiInstance.GetRandomRecipes(limitLicense, tags, number);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetRandomRecipes: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limitLicense** | **bool?**| Whether the recipes should have an open license that allows display with proper attribution. | [optional] 
 **tags** | **string**| The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have. | [optional] 
 **number** | **decimal?**| The number of random recipes to be returned (between 1 and 100). | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getrecipeequipmentbyid"></a>
# **GetRecipeEquipmentByID**
> Object GetRecipeEquipmentByID (decimal? id)

Get Recipe Equipment by ID

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
            
            var apiInstance = new DefaultApi();
            var id = 1003464;  // decimal? | The recipe id.

            try
            {
                // Get Recipe Equipment by ID
                Object result = apiInstance.GetRecipeEquipmentByID(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetRecipeEquipmentByID: " + e.Message );
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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getrecipeinformation"></a>
# **GetRecipeInformation**
> Object GetRecipeInformation (decimal? id, bool? includeNutrition)

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
            
            var apiInstance = new DefaultApi();
            var id = 716429;  // decimal? | The id of the recipe.
            var includeNutrition = false;  // bool? | Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. (optional) 

            try
            {
                // Get Recipe Information
                Object result = apiInstance.GetRecipeInformation(id, includeNutrition);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetRecipeInformation: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **decimal?**| The id of the recipe. | 
 **includeNutrition** | **bool?**| Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getrecipeinformationbulk"></a>
# **GetRecipeInformationBulk**
> Object GetRecipeInformationBulk (string ids, bool? includeNutrition)

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
            
            var apiInstance = new DefaultApi();
            var ids = 715538,716429;  // string | A comma-separated list of recipe ids.
            var includeNutrition = false;  // bool? | Include nutrition data to the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. (optional) 

            try
            {
                // Get Recipe Information Bulk
                Object result = apiInstance.GetRecipeInformationBulk(ids, includeNutrition);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetRecipeInformationBulk: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | **string**| A comma-separated list of recipe ids. | 
 **includeNutrition** | **bool?**| Include nutrition data to the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getrecipeingredientsbyid"></a>
# **GetRecipeIngredientsByID**
> Object GetRecipeIngredientsByID (decimal? id)

Get Recipe Ingredients by ID

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
            
            var apiInstance = new DefaultApi();
            var id = 1003464;  // decimal? | The recipe id.

            try
            {
                // Get Recipe Ingredients by ID
                Object result = apiInstance.GetRecipeIngredientsByID(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetRecipeIngredientsByID: " + e.Message );
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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getrecipenutritionwidgetbyid"></a>
# **GetRecipeNutritionWidgetByID**
> Object GetRecipeNutritionWidgetByID (decimal? id)

Get Recipe Nutrition Widget by ID

Get a recipe's nutrition widget data.

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
            
            var apiInstance = new DefaultApi();
            var id = 1003464;  // decimal? | The recipe id.

            try
            {
                // Get Recipe Nutrition Widget by ID
                Object result = apiInstance.GetRecipeNutritionWidgetByID(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetRecipeNutritionWidgetByID: " + e.Message );
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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getrecipepricebreakdownbyid"></a>
# **GetRecipePriceBreakdownByID**
> Object GetRecipePriceBreakdownByID (decimal? id)

Get Recipe Price Breakdown by ID

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
            
            var apiInstance = new DefaultApi();
            var id = 1003464;  // decimal? | The recipe id.

            try
            {
                // Get Recipe Price Breakdown by ID
                Object result = apiInstance.GetRecipePriceBreakdownByID(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetRecipePriceBreakdownByID: " + e.Message );
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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getshoppinglist"></a>
# **GetShoppingList**
> Object GetShoppingList (string username, string hash)

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
            
            var apiInstance = new DefaultApi();
            var username = dsky;  // string | The username.
            var hash = 4b5v4398573406;  // string | The private hash for the username.

            try
            {
                // Get Shopping List
                Object result = apiInstance.GetShoppingList(username, hash);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetShoppingList: " + e.Message );
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

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getsimilarrecipes"></a>
# **GetSimilarRecipes**
> Object GetSimilarRecipes (decimal? id, decimal? number, bool? limitLicense)

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
            
            var apiInstance = new DefaultApi();
            var id = 715538;  // decimal? | The id of the source recipe for which similar recipes should be found.
            var number = 1;  // decimal? | The number of random recipes to be returned (between 1 and 100). (optional) 
            var limitLicense = true;  // bool? | Whether the recipes should have an open license that allows display with proper attribution. (optional) 

            try
            {
                // Get Similar Recipes
                Object result = apiInstance.GetSimilarRecipes(id, number, limitLicense);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetSimilarRecipes: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **decimal?**| The id of the source recipe for which similar recipes should be found. | 
 **number** | **decimal?**| The number of random recipes to be returned (between 1 and 100). | [optional] 
 **limitLicense** | **bool?**| Whether the recipes should have an open license that allows display with proper attribution. | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getwinedescription"></a>
# **GetWineDescription**
> Object GetWineDescription (string wine)

Get Wine Description

Get a simple description of a certain wine, e.g. \"malbec\", \"riesling\", or \"merlot\".

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class GetWineDescriptionExample
    {
        public void main()
        {
            
            var apiInstance = new DefaultApi();
            var wine = merlot;  // string | The name of the wine that should be paired, e.g. \"merlot\", \"riesling\", or \"malbec\".

            try
            {
                // Get Wine Description
                Object result = apiInstance.GetWineDescription(wine);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetWineDescription: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wine** | **string**| The name of the wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;. | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getwinepairing"></a>
# **GetWinePairing**
> Object GetWinePairing (string food, decimal? maxPrice)

Get Wine Pairing

Find a wine that goes well with a food. Food can be a dish name (\"steak\"), an ingredient name (\"salmon\"), or a cuisine (\"italian\").

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class GetWinePairingExample
    {
        public void main()
        {
            
            var apiInstance = new DefaultApi();
            var food = steak;  // string | The food to get a pairing for. This can be a dish (\"steak\"), an ingredient (\"salmon\"), or a cuisine (\"italian\").
            var maxPrice = 50;  // decimal? | The maximum price for the specific wine recommendation in USD. (optional) 

            try
            {
                // Get Wine Pairing
                Object result = apiInstance.GetWinePairing(food, maxPrice);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetWinePairing: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **food** | **string**| The food to get a pairing for. This can be a dish (\&quot;steak\&quot;), an ingredient (\&quot;salmon\&quot;), or a cuisine (\&quot;italian\&quot;). | 
 **maxPrice** | **decimal?**| The maximum price for the specific wine recommendation in USD. | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getwinerecommendation"></a>
# **GetWineRecommendation**
> Object GetWineRecommendation (string wine, decimal? maxPrice, decimal? minRating, decimal? number)

Get Wine Recommendation

Get a specific wine recommendation (concrete product) for a given wine type, e.g. \"merlot\".

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class GetWineRecommendationExample
    {
        public void main()
        {
            
            var apiInstance = new DefaultApi();
            var wine = merlot;  // string | The type of wine to get a specific product recommendation for.
            var maxPrice = 50;  // decimal? | The maximum price for the specific wine recommendation in USD. (optional) 
            var minRating = 0.7;  // decimal? | The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars. (optional) 
            var number = 3;  // decimal? | The number of wine recommendations expected (between 1 and 100). (optional) 

            try
            {
                // Get Wine Recommendation
                Object result = apiInstance.GetWineRecommendation(wine, maxPrice, minRating, number);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetWineRecommendation: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wine** | **string**| The type of wine to get a specific product recommendation for. | 
 **maxPrice** | **decimal?**| The maximum price for the specific wine recommendation in USD. | [optional] 
 **minRating** | **decimal?**| The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars. | [optional] 
 **number** | **decimal?**| The number of wine recommendations expected (between 1 and 100). | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="guessnutritionbydishname"></a>
# **GuessNutritionByDishName**
> Object GuessNutritionByDishName (string title)

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
            
            var apiInstance = new DefaultApi();
            var title = Spaghetti Aglio et Olio;  // string | The title of the dish.

            try
            {
                // Guess Nutrition by Dish Name
                Object result = apiInstance.GuessNutritionByDishName(title);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GuessNutritionByDishName: " + e.Message );
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

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="imageanalysisbyurl"></a>
# **ImageAnalysisByURL**
> Object ImageAnalysisByURL (string imageUrl)

Image Analysis by URL

Analyze a food image. The API tries to classify the image, guess the nutrition, and find a matching recipes. You can play around with that endpoint!

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class ImageAnalysisByURLExample
    {
        public void main()
        {
            
            var apiInstance = new DefaultApi();
            var imageUrl = https://spoonacular.com/recipeImages/635350-240x150.jpg;  // string | The URL of the image to be analyzed.

            try
            {
                // Image Analysis by URL
                Object result = apiInstance.ImageAnalysisByURL(imageUrl);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.ImageAnalysisByURL: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imageUrl** | **string**| The URL of the image to be analyzed. | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="imageclassificationbyurl"></a>
# **ImageClassificationByURL**
> Object ImageClassificationByURL (string imageUrl)

Image Classification by URL

Classify a food image. You can play around with that endpoint!

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class ImageClassificationByURLExample
    {
        public void main()
        {
            
            var apiInstance = new DefaultApi();
            var imageUrl = https://spoonacular.com/recipeImages/635350-240x150.jpg;  // string | The URL of the image to be classified.

            try
            {
                // Image Classification by URL
                Object result = apiInstance.ImageClassificationByURL(imageUrl);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.ImageClassificationByURL: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imageUrl** | **string**| The URL of the image to be classified. | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="mapingredientstogroceryproducts"></a>
# **MapIngredientsToGroceryProducts**
> Object MapIngredientsToGroceryProducts (Object body)

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
            
            var apiInstance = new DefaultApi();
            var body = ;  // Object | 

            try
            {
                // Map Ingredients to Grocery Products
                Object result = apiInstance.MapIngredientsToGroceryProducts(body);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.MapIngredientsToGroceryProducts: " + e.Message );
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

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="parseingredients"></a>
# **ParseIngredients**
> Object ParseIngredients (string ingredientList, decimal? servings, bool? includeNutrition)

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
            
            var apiInstance = new DefaultApi();
            var ingredientList = ingredientList_example;  // string | The ingredient list of the recipe, one ingredient per line.
            var servings = 8.14;  // decimal? | The number of servings that you can make from the ingredients.
            var includeNutrition = true;  // bool? | Whether nutrition data should be added to correctly parsed ingredients. (optional) 

            try
            {
                // Parse Ingredients
                Object result = apiInstance.ParseIngredients(ingredientList, servings, includeNutrition);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.ParseIngredients: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredientList** | **string**| The ingredient list of the recipe, one ingredient per line. | 
 **servings** | **decimal?**| The number of servings that you can make from the ingredients. | 
 **includeNutrition** | **bool?**| Whether nutrition data should be added to correctly parsed ingredients. | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="quickanswer"></a>
# **QuickAnswer**
> Object QuickAnswer (string q)

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
            
            var apiInstance = new DefaultApi();
            var q = How much vitamin c is in 2 apples?;  // string | The nutrition related question.

            try
            {
                // Quick Answer
                Object result = apiInstance.QuickAnswer(q);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.QuickAnswer: " + e.Message );
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

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="searchcustomfoods"></a>
# **SearchCustomFoods**
> Object SearchCustomFoods (string query, string username, string hash, decimal? offset, decimal? number)

Search Custom Foods

Search custom foods in a user's account.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class SearchCustomFoodsExample
    {
        public void main()
        {
            
            var apiInstance = new DefaultApi();
            var query = brat;  // string | The search query.
            var username = dsky;  // string | The username.
            var hash = 4b5v4398573406;  // string | The private hash for the username.
            var offset = 0;  // decimal? | The number of results to skip (between 0 and 990). (optional) 
            var number = 10;  // decimal? | The number of expected results (between 1 and 100). (optional) 

            try
            {
                // Search Custom Foods
                Object result = apiInstance.SearchCustomFoods(query, username, hash, offset, number);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.SearchCustomFoods: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The search query. | 
 **username** | **string**| The username. | 
 **hash** | **string**| The private hash for the username. | 
 **offset** | **decimal?**| The number of results to skip (between 0 and 990). | [optional] 
 **number** | **decimal?**| The number of expected results (between 1 and 100). | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="searchfoodvideos"></a>
# **SearchFoodVideos**
> Object SearchFoodVideos (string query, string type, string cuisine, string diet, string includeIngredients, string excludeIngredients, decimal? minLength, decimal? maxLength, decimal? offset, decimal? number)

Search Food Videos

Find recipe and other food related videos.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class SearchFoodVideosExample
    {
        public void main()
        {
            
            var apiInstance = new DefaultApi();
            var query = chicken soup;  // string | The search query.
            var type = main course;  // string | The type of the recipes. See a full list of supported meal types. (optional) 
            var cuisine = italian;  // string | The cuisine(s) of the recipes. One or more, comma separated. See a full list of supported cuisines. (optional) 
            var diet = vegetarian;  // string | The diet for which the recipes must be suitable. See a full list of supported diets. (optional) 
            var includeIngredients = tomato,cheese;  // string | A comma-separated list of ingredients that the recipes should contain. (optional) 
            var excludeIngredients = eggs;  // string | A comma-separated list of ingredients or ingredient types that the recipes must not contain. (optional) 
            var minLength = 0;  // decimal? | Minimum video length in seconds. (optional) 
            var maxLength = 999;  // decimal? | Maximum video length in seconds. (optional) 
            var offset = 0;  // decimal? | The number of results to skip (between 0 and 900). (optional) 
            var number = 10;  // decimal? | The number of results to return (between 1 and 100). (optional) 

            try
            {
                // Search Food Videos
                Object result = apiInstance.SearchFoodVideos(query, type, cuisine, diet, includeIngredients, excludeIngredients, minLength, maxLength, offset, number);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.SearchFoodVideos: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The search query. | 
 **type** | **string**| The type of the recipes. See a full list of supported meal types. | [optional] 
 **cuisine** | **string**| The cuisine(s) of the recipes. One or more, comma separated. See a full list of supported cuisines. | [optional] 
 **diet** | **string**| The diet for which the recipes must be suitable. See a full list of supported diets. | [optional] 
 **includeIngredients** | **string**| A comma-separated list of ingredients that the recipes should contain. | [optional] 
 **excludeIngredients** | **string**| A comma-separated list of ingredients or ingredient types that the recipes must not contain. | [optional] 
 **minLength** | **decimal?**| Minimum video length in seconds. | [optional] 
 **maxLength** | **decimal?**| Maximum video length in seconds. | [optional] 
 **offset** | **decimal?**| The number of results to skip (between 0 and 900). | [optional] 
 **number** | **decimal?**| The number of results to return (between 1 and 100). | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="searchgroceryproducts"></a>
# **SearchGroceryProducts**
> Object SearchGroceryProducts (string query, decimal? minCalories, decimal? maxCalories, decimal? minCarbs, decimal? maxCarbs, decimal? minProtein, decimal? maxProtein, decimal? minFat, decimal? maxFat, decimal? offset, decimal? number)

Search Grocery Products

Search packaged food products, such as frozen pizza or Greek yogurt.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class SearchGroceryProductsExample
    {
        public void main()
        {
            
            var apiInstance = new DefaultApi();
            var query = greek yogurt;  // string | The search query.
            var minCalories = 50;  // decimal? | The minimum amount of calories the product must have. (optional) 
            var maxCalories = 800;  // decimal? | The maximum amount of calories the product can have. (optional) 
            var minCarbs = 10;  // decimal? | The minimum amount of carbohydrates in grams the product must have. (optional) 
            var maxCarbs = 100;  // decimal? | The maximum amount of carbohydrates in grams the product can have. (optional) 
            var minProtein = 10;  // decimal? | The minimum amount of protein in grams the product must have. (optional) 
            var maxProtein = 100;  // decimal? | The maximum amount of protein in grams the product can have. (optional) 
            var minFat = 1;  // decimal? | The minimum amount of fat in grams the product must have. (optional) 
            var maxFat = 100;  // decimal? | The maximum amount of fat in grams the product can have. (optional) 
            var offset = 0;  // decimal? | The number of results to skip (between 0 and 990). (optional) 
            var number = 10;  // decimal? | The number of expected results (between 1 and 100). (optional) 

            try
            {
                // Search Grocery Products
                Object result = apiInstance.SearchGroceryProducts(query, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, offset, number);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.SearchGroceryProducts: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The search query. | 
 **minCalories** | **decimal?**| The minimum amount of calories the product must have. | [optional] 
 **maxCalories** | **decimal?**| The maximum amount of calories the product can have. | [optional] 
 **minCarbs** | **decimal?**| The minimum amount of carbohydrates in grams the product must have. | [optional] 
 **maxCarbs** | **decimal?**| The maximum amount of carbohydrates in grams the product can have. | [optional] 
 **minProtein** | **decimal?**| The minimum amount of protein in grams the product must have. | [optional] 
 **maxProtein** | **decimal?**| The maximum amount of protein in grams the product can have. | [optional] 
 **minFat** | **decimal?**| The minimum amount of fat in grams the product must have. | [optional] 
 **maxFat** | **decimal?**| The maximum amount of fat in grams the product can have. | [optional] 
 **offset** | **decimal?**| The number of results to skip (between 0 and 990). | [optional] 
 **number** | **decimal?**| The number of expected results (between 1 and 100). | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="searchgroceryproductsbyupc"></a>
# **SearchGroceryProductsByUPC**
> Object SearchGroceryProductsByUPC (decimal? upc)

Search Grocery Products by UPC

Get information about a packaged food using its UPC.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class SearchGroceryProductsByUPCExample
    {
        public void main()
        {
            
            var apiInstance = new DefaultApi();
            var upc = 41631000564;  // decimal? | The product's UPC.

            try
            {
                // Search Grocery Products by UPC
                Object result = apiInstance.SearchGroceryProductsByUPC(upc);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.SearchGroceryProductsByUPC: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **upc** | **decimal?**| The product&#39;s UPC. | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="searchmenuitems"></a>
# **SearchMenuItems**
> Object SearchMenuItems (string query, decimal? minCalories, decimal? maxCalories, decimal? minCarbs, decimal? maxCarbs, decimal? minProtein, decimal? maxProtein, decimal? minFat, decimal? maxFat, decimal? offset, decimal? number)

Search Menu Items

Search over 115,000 menu items from over 800 fast food and chain restaurants. For example, McDonald's Big Mac or Starbucks Mocha.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class SearchMenuItemsExample
    {
        public void main()
        {
            
            var apiInstance = new DefaultApi();
            var query = snickers;  // string | The search query.
            var minCalories = 50;  // decimal? | The minimum amount of calories the menu item must have. (optional) 
            var maxCalories = 800;  // decimal? | The maximum amount of calories the menu item can have. (optional) 
            var minCarbs = 10;  // decimal? | The minimum amount of carbohydrates in grams the menu item must have. (optional) 
            var maxCarbs = 100;  // decimal? | The maximum amount of carbohydrates in grams the menu item can have. (optional) 
            var minProtein = 10;  // decimal? | The minimum amount of protein in grams the menu item must have. (optional) 
            var maxProtein = 100;  // decimal? | The maximum amount of protein in grams the menu item can have. (optional) 
            var minFat = 1;  // decimal? | The minimum amount of fat in grams the menu item must have. (optional) 
            var maxFat = 100;  // decimal? | The maximum amount of fat in grams the menu item can have. (optional) 
            var offset = 0;  // decimal? | The offset number for paging (between 0 and 990). (optional) 
            var number = 100;  // decimal? | The number of expected results (between 1 and 10). (optional) 

            try
            {
                // Search Menu Items
                Object result = apiInstance.SearchMenuItems(query, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, offset, number);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.SearchMenuItems: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The search query. | 
 **minCalories** | **decimal?**| The minimum amount of calories the menu item must have. | [optional] 
 **maxCalories** | **decimal?**| The maximum amount of calories the menu item can have. | [optional] 
 **minCarbs** | **decimal?**| The minimum amount of carbohydrates in grams the menu item must have. | [optional] 
 **maxCarbs** | **decimal?**| The maximum amount of carbohydrates in grams the menu item can have. | [optional] 
 **minProtein** | **decimal?**| The minimum amount of protein in grams the menu item must have. | [optional] 
 **maxProtein** | **decimal?**| The maximum amount of protein in grams the menu item can have. | [optional] 
 **minFat** | **decimal?**| The minimum amount of fat in grams the menu item must have. | [optional] 
 **maxFat** | **decimal?**| The maximum amount of fat in grams the menu item can have. | [optional] 
 **offset** | **decimal?**| The offset number for paging (between 0 and 990). | [optional] 
 **number** | **decimal?**| The number of expected results (between 1 and 10). | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="searchrecipes"></a>
# **SearchRecipes**
> Object SearchRecipes (string query, string cuisine, string diet, string excludeIngredients, string intolerances, decimal? offset, decimal? number, bool? limitLicense, bool? instructionsRequired)

Search Recipes

Our recipe API includes over 360,000 recipes as well as an open source recipe database. Consider using the \"Search Recipes Complex\" endpoint for much more flexibility.

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
            
            var apiInstance = new DefaultApi();
            var query = burger;  // string | The (natural language) recipe search query.
            var cuisine = italian;  // string | The cuisine(s) of the recipes. One or more comma separated. See a full list of supported cuisines. (optional) 
            var diet = vegetarian;  // string | The diet for which the recipes must be suitable. See a full list of supported diets. (optional) 
            var excludeIngredients = eggs;  // string | A comma-separated list of ingredients or ingredient types that the recipes must not contain. (optional) 
            var intolerances = gluten;  // string | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. Please note: due to the automatic nature of the recipe analysis, the API cannot be 100% accurate in all cases. Please advise your users to seek professional help with medical issues. (optional) 
            var offset = 0;  // decimal? | The number of results to skip (between 0 and 900). (optional) 
            var number = 10;  // decimal? | The number of results to return (between 1 and 100). (optional) 
            var limitLicense = true;  // bool? | Whether the recipes should have an open license that allows display with proper attribution. (optional) 
            var instructionsRequired = true;  // bool? | Whether the recipes must have instructions. (optional) 

            try
            {
                // Search Recipes
                Object result = apiInstance.SearchRecipes(query, cuisine, diet, excludeIngredients, intolerances, offset, number, limitLicense, instructionsRequired);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.SearchRecipes: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The (natural language) recipe search query. | 
 **cuisine** | **string**| The cuisine(s) of the recipes. One or more comma separated. See a full list of supported cuisines. | [optional] 
 **diet** | **string**| The diet for which the recipes must be suitable. See a full list of supported diets. | [optional] 
 **excludeIngredients** | **string**| A comma-separated list of ingredients or ingredient types that the recipes must not contain. | [optional] 
 **intolerances** | **string**| A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. Please note: due to the automatic nature of the recipe analysis, the API cannot be 100% accurate in all cases. Please advise your users to seek professional help with medical issues. | [optional] 
 **offset** | **decimal?**| The number of results to skip (between 0 and 900). | [optional] 
 **number** | **decimal?**| The number of results to return (between 1 and 100). | [optional] 
 **limitLicense** | **bool?**| Whether the recipes should have an open license that allows display with proper attribution. | [optional] 
 **instructionsRequired** | **bool?**| Whether the recipes must have instructions. | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="searchrecipesbyingredients"></a>
# **SearchRecipesByIngredients**
> Object SearchRecipesByIngredients (string ingredients, decimal? number, bool? limitLicense, decimal? ranking, bool? ignorePantry)

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
            
            var apiInstance = new DefaultApi();
            var ingredients = apples,flour,sugar;  // string | A comma-separated list of ingredients that the recipes should contain.
            var number = 10;  // decimal? | The maximum number of recipes to return (between 1 and 100). Defaults to 10. (optional) 
            var limitLicense = true;  // bool? | Whether the recipes should have an open license that allows display with proper attribution. (optional) 
            var ranking = 1;  // decimal? | Whether to maximize used ingredients (1) or minimize missing ingredients (2) first. (optional) 
            var ignorePantry = true;  // bool? | Whether to ignore typical pantry items, such as water, salt, flour, etc. (optional) 

            try
            {
                // Search Recipes by Ingredients
                Object result = apiInstance.SearchRecipesByIngredients(ingredients, number, limitLicense, ranking, ignorePantry);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.SearchRecipesByIngredients: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredients** | **string**| A comma-separated list of ingredients that the recipes should contain. | 
 **number** | **decimal?**| The maximum number of recipes to return (between 1 and 100). Defaults to 10. | [optional] 
 **limitLicense** | **bool?**| Whether the recipes should have an open license that allows display with proper attribution. | [optional] 
 **ranking** | **decimal?**| Whether to maximize used ingredients (1) or minimize missing ingredients (2) first. | [optional] 
 **ignorePantry** | **bool?**| Whether to ignore typical pantry items, such as water, salt, flour, etc. | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="searchrecipesbynutrients"></a>
# **SearchRecipesByNutrients**
> Object SearchRecipesByNutrients (decimal? minCarbs, decimal? maxCarbs, decimal? minProtein, decimal? maxProtein, decimal? minCalories, decimal? maxCalories, decimal? minFat, decimal? maxFat, decimal? minAlcohol, decimal? maxAlcohol, decimal? minCaffeine, decimal? maxCaffeine, decimal? minCopper, decimal? maxCopper, decimal? minCalcium, decimal? maxCalcium, decimal? minCholine, decimal? maxCholine, decimal? minCholesterol, decimal? maxCholesterol, decimal? minFluoride, decimal? maxFluoride, decimal? minSaturatedFat, decimal? maxSaturatedFat, decimal? minVitaminA, decimal? maxVitaminA, decimal? minVitaminC, decimal? maxVitaminC, decimal? minVitaminD, decimal? maxVitaminD, decimal? minVitaminE, decimal? maxVitaminE, decimal? minVitaminK, decimal? maxVitaminK, decimal? minVitaminB1, decimal? maxVitaminB1, decimal? minVitaminB2, decimal? maxVitaminB2, decimal? minVitaminB5, decimal? maxVitaminB5, decimal? minVitaminB3, decimal? maxVitaminB3, decimal? minVitaminB6, decimal? maxVitaminB6, decimal? minVitaminB12, decimal? maxVitaminB12, decimal? minFiber, decimal? maxFiber, decimal? minFolate, decimal? maxFolate, decimal? minFolicAcid, decimal? maxFolicAcid, decimal? minIodine, decimal? maxIodine, decimal? minIron, decimal? maxIron, decimal? minMagnesium, decimal? maxMagnesium, decimal? minManganese, decimal? maxManganese, decimal? minPhosphorus, decimal? maxPhosphorus, decimal? minPotassium, decimal? maxPotassium, decimal? minSelenium, decimal? maxSelenium, decimal? minSodium, decimal? maxSodium, decimal? minSugar, decimal? maxSugar, decimal? minZinc, decimal? maxZinc, decimal? offset, decimal? number, bool? random, bool? limitLicense)

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
            
            var apiInstance = new DefaultApi();
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
            var minFolate = 0;  // decimal? | The minimum amount of folate in grams the recipe must have. (optional) 
            var maxFolate = 100;  // decimal? | The maximum amount of folate in grams the recipe can have. (optional) 
            var minFolicAcid = 0;  // decimal? | The minimum amount of folic acid in grams the recipe must have. (optional) 
            var maxFolicAcid = 100;  // decimal? | The maximum amount of folic acid in grams the recipe can have. (optional) 
            var minIodine = 0;  // decimal? | The minimum amount of iodine in grams the recipe must have. (optional) 
            var maxIodine = 100;  // decimal? | The maximum amount of iodine in grams the recipe can have. (optional) 
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
            var minSelenium = 0;  // decimal? | The minimum amount of selenium in grams the recipe must have. (optional) 
            var maxSelenium = 100;  // decimal? | The maximum amount of selenium in grams the recipe can have. (optional) 
            var minSodium = 0;  // decimal? | The minimum amount of sodium in milligrams the recipe must have. (optional) 
            var maxSodium = 100;  // decimal? | The maximum amount of sodium in milligrams the recipe can have. (optional) 
            var minSugar = 0;  // decimal? | The minimum amount of sugar in grams the recipe must have. (optional) 
            var maxSugar = 100;  // decimal? | The maximum amount of sugar in grams the recipe can have. (optional) 
            var minZinc = 0;  // decimal? | The minimum amount of zinc in milligrams the recipe must have. (optional) 
            var maxZinc = 100;  // decimal? | The maximum amount of zinc in milligrams the recipe can have. (optional) 
            var offset = 0;  // decimal? | The number of results to skip (between 0 and 900). (optional) 
            var number = 10;  // decimal? | The number of expected results (between 1 and 100). (optional) 
            var random = false;  // bool? | If true, every request will give you a random set of recipes within the requested limits. (optional) 
            var limitLicense = true;  // bool? | Whether the recipes should have an open license that allows display with proper attribution. (optional) 

            try
            {
                // Search Recipes by Nutrients
                Object result = apiInstance.SearchRecipesByNutrients(minCarbs, maxCarbs, minProtein, maxProtein, minCalories, maxCalories, minFat, maxFat, minAlcohol, maxAlcohol, minCaffeine, maxCaffeine, minCopper, maxCopper, minCalcium, maxCalcium, minCholine, maxCholine, minCholesterol, maxCholesterol, minFluoride, maxFluoride, minSaturatedFat, maxSaturatedFat, minVitaminA, maxVitaminA, minVitaminC, maxVitaminC, minVitaminD, maxVitaminD, minVitaminE, maxVitaminE, minVitaminK, maxVitaminK, minVitaminB1, maxVitaminB1, minVitaminB2, maxVitaminB2, minVitaminB5, maxVitaminB5, minVitaminB3, maxVitaminB3, minVitaminB6, maxVitaminB6, minVitaminB12, maxVitaminB12, minFiber, maxFiber, minFolate, maxFolate, minFolicAcid, maxFolicAcid, minIodine, maxIodine, minIron, maxIron, minMagnesium, maxMagnesium, minManganese, maxManganese, minPhosphorus, maxPhosphorus, minPotassium, maxPotassium, minSelenium, maxSelenium, minSodium, maxSodium, minSugar, maxSugar, minZinc, maxZinc, offset, number, random, limitLicense);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.SearchRecipesByNutrients: " + e.Message );
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
 **minFolate** | **decimal?**| The minimum amount of folate in grams the recipe must have. | [optional] 
 **maxFolate** | **decimal?**| The maximum amount of folate in grams the recipe can have. | [optional] 
 **minFolicAcid** | **decimal?**| The minimum amount of folic acid in grams the recipe must have. | [optional] 
 **maxFolicAcid** | **decimal?**| The maximum amount of folic acid in grams the recipe can have. | [optional] 
 **minIodine** | **decimal?**| The minimum amount of iodine in grams the recipe must have. | [optional] 
 **maxIodine** | **decimal?**| The maximum amount of iodine in grams the recipe can have. | [optional] 
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
 **minSelenium** | **decimal?**| The minimum amount of selenium in grams the recipe must have. | [optional] 
 **maxSelenium** | **decimal?**| The maximum amount of selenium in grams the recipe can have. | [optional] 
 **minSodium** | **decimal?**| The minimum amount of sodium in milligrams the recipe must have. | [optional] 
 **maxSodium** | **decimal?**| The maximum amount of sodium in milligrams the recipe can have. | [optional] 
 **minSugar** | **decimal?**| The minimum amount of sugar in grams the recipe must have. | [optional] 
 **maxSugar** | **decimal?**| The maximum amount of sugar in grams the recipe can have. | [optional] 
 **minZinc** | **decimal?**| The minimum amount of zinc in milligrams the recipe must have. | [optional] 
 **maxZinc** | **decimal?**| The maximum amount of zinc in milligrams the recipe can have. | [optional] 
 **offset** | **decimal?**| The number of results to skip (between 0 and 900). | [optional] 
 **number** | **decimal?**| The number of expected results (between 1 and 100). | [optional] 
 **random** | **bool?**| If true, every request will give you a random set of recipes within the requested limits. | [optional] 
 **limitLicense** | **bool?**| Whether the recipes should have an open license that allows display with proper attribution. | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="searchrecipescomplex"></a>
# **SearchRecipesComplex**
> Object SearchRecipesComplex (string query, string cuisine, string excludeCuisine, string diet, string intolerances, string equipment, string includeIngredients, string excludeIngredients, string type, bool? instructionsRequired, bool? fillIngredients, bool? addRecipeInformation, bool? addRecipeNutrition, string author, string tags, decimal? recipeBoxId, string titleMatch, decimal? maxReadyTime, bool? ignorePantry, string sort, string sortDirection, decimal? minCarbs, decimal? maxCarbs, decimal? minProtein, decimal? maxProtein, decimal? minCalories, decimal? maxCalories, decimal? minFat, decimal? maxFat, decimal? minAlcohol, decimal? maxAlcohol, decimal? minCaffeine, decimal? maxCaffeine, decimal? minCopper, decimal? maxCopper, decimal? minCalcium, decimal? maxCalcium, decimal? minCholine, decimal? maxCholine, decimal? minCholesterol, decimal? maxCholesterol, decimal? minFluoride, decimal? maxFluoride, decimal? minSaturatedFat, decimal? maxSaturatedFat, decimal? minVitaminA, decimal? maxVitaminA, decimal? minVitaminC, decimal? maxVitaminC, decimal? minVitaminD, decimal? maxVitaminD, decimal? minVitaminE, decimal? maxVitaminE, decimal? minVitaminK, decimal? maxVitaminK, decimal? minVitaminB1, decimal? maxVitaminB1, decimal? minVitaminB2, decimal? maxVitaminB2, decimal? minVitaminB5, decimal? maxVitaminB5, decimal? minVitaminB3, decimal? maxVitaminB3, decimal? minVitaminB6, decimal? maxVitaminB6, decimal? minVitaminB12, decimal? maxVitaminB12, decimal? minFiber, decimal? maxFiber, decimal? minFolate, decimal? maxFolate, decimal? minFolicAcid, decimal? maxFolicAcid, decimal? minIodine, decimal? maxIodine, decimal? minIron, decimal? maxIron, decimal? minMagnesium, decimal? maxMagnesium, decimal? minManganese, decimal? maxManganese, decimal? minPhosphorus, decimal? maxPhosphorus, decimal? minPotassium, decimal? maxPotassium, decimal? minSelenium, decimal? maxSelenium, decimal? minSodium, decimal? maxSodium, decimal? minSugar, decimal? maxSugar, decimal? minZinc, decimal? maxZinc, decimal? offset, decimal? number, bool? limitLicense)

Search Recipes Complex

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
    public class SearchRecipesComplexExample
    {
        public void main()
        {
            
            var apiInstance = new DefaultApi();
            var query = pasta;  // string | The (natural language) recipe search query.
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
            var tags = myCustomTag;  // string | User defined tags that have to match. The author param has to be set. (optional) 
            var recipeBoxId = 2468;  // decimal? | The id of the recipe box to which the search should be limited to. (optional) 
            var titleMatch = Crock Pot;  // string | Enter text that must be found in the title of the recipes. (optional) 
            var maxReadyTime = 20;  // decimal? | The maximum time in minutes it should take to prepare and cook the recipe. (optional) 
            var ignorePantry = true;  // bool? | Whether to ignore typical pantry items, such as water, salt, flour, etc. (optional) 
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
            var minFolate = 0;  // decimal? | The minimum amount of folate in grams the recipe must have. (optional) 
            var maxFolate = 100;  // decimal? | The maximum amount of folate in grams the recipe can have. (optional) 
            var minFolicAcid = 0;  // decimal? | The minimum amount of folic acid in grams the recipe must have. (optional) 
            var maxFolicAcid = 100;  // decimal? | The maximum amount of folic acid in grams the recipe can have. (optional) 
            var minIodine = 0;  // decimal? | The minimum amount of iodine in grams the recipe must have. (optional) 
            var maxIodine = 100;  // decimal? | The maximum amount of iodine in grams the recipe can have. (optional) 
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
            var minSelenium = 0;  // decimal? | The minimum amount of selenium in grams the recipe must have. (optional) 
            var maxSelenium = 100;  // decimal? | The maximum amount of selenium in grams the recipe can have. (optional) 
            var minSodium = 0;  // decimal? | The minimum amount of sodium in milligrams the recipe must have. (optional) 
            var maxSodium = 100;  // decimal? | The maximum amount of sodium in milligrams the recipe can have. (optional) 
            var minSugar = 0;  // decimal? | The minimum amount of sugar in grams the recipe must have. (optional) 
            var maxSugar = 100;  // decimal? | The maximum amount of sugar in grams the recipe can have. (optional) 
            var minZinc = 0;  // decimal? | The minimum amount of zinc in milligrams the recipe must have. (optional) 
            var maxZinc = 100;  // decimal? | The maximum amount of zinc in milligrams the recipe can have. (optional) 
            var offset = 0;  // decimal? | The number of results to skip (between 0 and 900). (optional) 
            var number = 10;  // decimal? | The number of expected results (between 1 and 100). (optional) 
            var limitLicense = true;  // bool? | Whether the recipes should have an open license that allows display with proper attribution. (optional) 

            try
            {
                // Search Recipes Complex
                Object result = apiInstance.SearchRecipesComplex(query, cuisine, excludeCuisine, diet, intolerances, equipment, includeIngredients, excludeIngredients, type, instructionsRequired, fillIngredients, addRecipeInformation, addRecipeNutrition, author, tags, recipeBoxId, titleMatch, maxReadyTime, ignorePantry, sort, sortDirection, minCarbs, maxCarbs, minProtein, maxProtein, minCalories, maxCalories, minFat, maxFat, minAlcohol, maxAlcohol, minCaffeine, maxCaffeine, minCopper, maxCopper, minCalcium, maxCalcium, minCholine, maxCholine, minCholesterol, maxCholesterol, minFluoride, maxFluoride, minSaturatedFat, maxSaturatedFat, minVitaminA, maxVitaminA, minVitaminC, maxVitaminC, minVitaminD, maxVitaminD, minVitaminE, maxVitaminE, minVitaminK, maxVitaminK, minVitaminB1, maxVitaminB1, minVitaminB2, maxVitaminB2, minVitaminB5, maxVitaminB5, minVitaminB3, maxVitaminB3, minVitaminB6, maxVitaminB6, minVitaminB12, maxVitaminB12, minFiber, maxFiber, minFolate, maxFolate, minFolicAcid, maxFolicAcid, minIodine, maxIodine, minIron, maxIron, minMagnesium, maxMagnesium, minManganese, maxManganese, minPhosphorus, maxPhosphorus, minPotassium, maxPotassium, minSelenium, maxSelenium, minSodium, maxSodium, minSugar, maxSugar, minZinc, maxZinc, offset, number, limitLicense);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.SearchRecipesComplex: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The (natural language) recipe search query. | 
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
 **tags** | **string**| User defined tags that have to match. The author param has to be set. | [optional] 
 **recipeBoxId** | **decimal?**| The id of the recipe box to which the search should be limited to. | [optional] 
 **titleMatch** | **string**| Enter text that must be found in the title of the recipes. | [optional] 
 **maxReadyTime** | **decimal?**| The maximum time in minutes it should take to prepare and cook the recipe. | [optional] 
 **ignorePantry** | **bool?**| Whether to ignore typical pantry items, such as water, salt, flour, etc. | [optional] 
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
 **minFolate** | **decimal?**| The minimum amount of folate in grams the recipe must have. | [optional] 
 **maxFolate** | **decimal?**| The maximum amount of folate in grams the recipe can have. | [optional] 
 **minFolicAcid** | **decimal?**| The minimum amount of folic acid in grams the recipe must have. | [optional] 
 **maxFolicAcid** | **decimal?**| The maximum amount of folic acid in grams the recipe can have. | [optional] 
 **minIodine** | **decimal?**| The minimum amount of iodine in grams the recipe must have. | [optional] 
 **maxIodine** | **decimal?**| The maximum amount of iodine in grams the recipe can have. | [optional] 
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
 **minSelenium** | **decimal?**| The minimum amount of selenium in grams the recipe must have. | [optional] 
 **maxSelenium** | **decimal?**| The maximum amount of selenium in grams the recipe can have. | [optional] 
 **minSodium** | **decimal?**| The minimum amount of sodium in milligrams the recipe must have. | [optional] 
 **maxSodium** | **decimal?**| The maximum amount of sodium in milligrams the recipe can have. | [optional] 
 **minSugar** | **decimal?**| The minimum amount of sugar in grams the recipe must have. | [optional] 
 **maxSugar** | **decimal?**| The maximum amount of sugar in grams the recipe can have. | [optional] 
 **minZinc** | **decimal?**| The minimum amount of zinc in milligrams the recipe must have. | [optional] 
 **maxZinc** | **decimal?**| The maximum amount of zinc in milligrams the recipe can have. | [optional] 
 **offset** | **decimal?**| The number of results to skip (between 0 and 900). | [optional] 
 **number** | **decimal?**| The number of expected results (between 1 and 100). | [optional] 
 **limitLicense** | **bool?**| Whether the recipes should have an open license that allows display with proper attribution. | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="searchsitecontent"></a>
# **SearchSiteContent**
> Object SearchSiteContent (string query)

Search Site Content

Search spoonacular's site content. You'll be able to find everything that you could also find using the search suggestions on spoonacular.com. This is a suggest API so you can send partial strings as queries.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class SearchSiteContentExample
    {
        public void main()
        {
            
            var apiInstance = new DefaultApi();
            var query = past;  // string | The query to search for. You can also use partial queries such as \"spagh\" to already find spaghetti recipes, articles, grocery products, and other content.

            try
            {
                // Search Site Content
                Object result = apiInstance.SearchSiteContent(query);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.SearchSiteContent: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The query to search for. You can also use partial queries such as \&quot;spagh\&quot; to already find spaghetti recipes, articles, grocery products, and other content. | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="summarizerecipe"></a>
# **SummarizeRecipe**
> Object SummarizeRecipe (decimal? id)

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
            
            var apiInstance = new DefaultApi();
            var id = 4632;  // decimal? | The recipe id.

            try
            {
                // Summarize Recipe
                Object result = apiInstance.SummarizeRecipe(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.SummarizeRecipe: " + e.Message );
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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="talktochatbot"></a>
# **TalkToChatbot**
> Object TalkToChatbot (string text, string contextId)

Talk to Chatbot

This endpoint can be used to have a conversation about food with the spoonacular chatbot. Use the \"Get Conversation Suggests\" endpoint to show your user what he or she can say.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class TalkToChatbotExample
    {
        public void main()
        {
            
            var apiInstance = new DefaultApi();
            var text = donut recipes;  // string | The request / question / answer from the user to the chatbot.
            var contextId = 342938;  // string | An arbitrary globally unique id for your conversation. The conversation can contain states so you should pass your context id if you want the bot to be able to remember the conversation. (optional) 

            try
            {
                // Talk to Chatbot
                Object result = apiInstance.TalkToChatbot(text, contextId);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.TalkToChatbot: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **string**| The request / question / answer from the user to the chatbot. | 
 **contextId** | **string**| An arbitrary globally unique id for your conversation. The conversation can contain states so you should pass your context id if you want the bot to be able to remember the conversation. | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="visualizeequipment"></a>
# **VisualizeEquipment**
> string VisualizeEquipment (string ingredientList, decimal? servings, string view, bool? defaultCss, bool? showBacklink)

Visualize Equipment

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
            
            var apiInstance = new DefaultApi();
            var ingredientList = ingredientList_example;  // string | The ingredient list of the recipe, one ingredient per line.
            var servings = 8.14;  // decimal? | The number of servings.
            var view = view_example;  // string | How to visualize the equipment, either \\\"grid\\\" or \\\"list\\\". (optional) 
            var defaultCss = true;  // bool? | Whether the default CSS should be added to the response. (optional) 
            var showBacklink = true;  // bool? | Whether to show a backlink to spoonacular. If set false, this call counts against your quota. (optional) 

            try
            {
                // Visualize Equipment
                string result = apiInstance.VisualizeEquipment(ingredientList, servings, view, defaultCss, showBacklink);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.VisualizeEquipment: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredientList** | **string**| The ingredient list of the recipe, one ingredient per line. | 
 **servings** | **decimal?**| The number of servings. | 
 **view** | **string**| How to visualize the equipment, either \\\&quot;grid\\\&quot; or \\\&quot;list\\\&quot;. | [optional] 
 **defaultCss** | **bool?**| Whether the default CSS should be added to the response. | [optional] 
 **showBacklink** | **bool?**| Whether to show a backlink to spoonacular. If set false, this call counts against your quota. | [optional] 

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="visualizeingredients"></a>
# **VisualizeIngredients**
> string VisualizeIngredients (string ingredientList, decimal? servings, string measure, string view, bool? defaultCss, bool? showBacklink)

Visualize Ingredients

Visualize ingredients of a recipe.

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
            
            var apiInstance = new DefaultApi();
            var ingredientList = ingredientList_example;  // string | The ingredient list of the recipe, one ingredient per line.
            var servings = 8.14;  // decimal? | The number of servings.
            var measure = measure_example;  // string | The original system of measurement, either \\\"metric\\\" or \\\"us\\\". (optional) 
            var view = view_example;  // string | How to visualize the ingredients, either \\\"grid\\\" or \\\"list\\\". (optional) 
            var defaultCss = true;  // bool? | Whether the default CSS should be added to the response. (optional) 
            var showBacklink = true;  // bool? | Whether to show a backlink to spoonacular. If set false, this call counts against your quota. (optional) 

            try
            {
                // Visualize Ingredients
                string result = apiInstance.VisualizeIngredients(ingredientList, servings, measure, view, defaultCss, showBacklink);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.VisualizeIngredients: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredientList** | **string**| The ingredient list of the recipe, one ingredient per line. | 
 **servings** | **decimal?**| The number of servings. | 
 **measure** | **string**| The original system of measurement, either \\\&quot;metric\\\&quot; or \\\&quot;us\\\&quot;. | [optional] 
 **view** | **string**| How to visualize the ingredients, either \\\&quot;grid\\\&quot; or \\\&quot;list\\\&quot;. | [optional] 
 **defaultCss** | **bool?**| Whether the default CSS should be added to the response. | [optional] 
 **showBacklink** | **bool?**| Whether to show a backlink to spoonacular. If set false, this call counts against your quota. | [optional] 

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="visualizemenuitemnutritionbyid"></a>
# **VisualizeMenuItemNutritionByID**
> string VisualizeMenuItemNutritionByID (decimal? id, bool? defaultCss)

Visualize Menu Item Nutrition by ID

Visualize a menu item's nutritional information as HTML including CSS.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class VisualizeMenuItemNutritionByIDExample
    {
        public void main()
        {
            
            var apiInstance = new DefaultApi();
            var id = 1003464;  // decimal? | The menu item id.
            var defaultCss = true;  // bool? | Whether the default CSS should be added to the response. (optional) 

            try
            {
                // Visualize Menu Item Nutrition by ID
                string result = apiInstance.VisualizeMenuItemNutritionByID(id, defaultCss);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.VisualizeMenuItemNutritionByID: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **decimal?**| The menu item id. | 
 **defaultCss** | **bool?**| Whether the default CSS should be added to the response. | [optional] 

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="visualizepricebreakdown"></a>
# **VisualizePriceBreakdown**
> string VisualizePriceBreakdown (string ingredientList, decimal? servings, decimal? mode, bool? defaultCss, bool? showBacklink)

Visualize Price Breakdown

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
            
            var apiInstance = new DefaultApi();
            var ingredientList = ingredientList_example;  // string | The ingredient list of the recipe, one ingredient per line.
            var servings = 8.14;  // decimal? | The number of servings.
            var mode = 8.14;  // decimal? | The mode in which the widget should be delivered. 1 = separate views (compact), 2 = all in one view (full). (optional) 
            var defaultCss = true;  // bool? | Whether the default CSS should be added to the response. (optional) 
            var showBacklink = true;  // bool? | Whether to show a backlink to spoonacular. If set false, this call counts against your quota. (optional) 

            try
            {
                // Visualize Price Breakdown
                string result = apiInstance.VisualizePriceBreakdown(ingredientList, servings, mode, defaultCss, showBacklink);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.VisualizePriceBreakdown: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredientList** | **string**| The ingredient list of the recipe, one ingredient per line. | 
 **servings** | **decimal?**| The number of servings. | 
 **mode** | **decimal?**| The mode in which the widget should be delivered. 1 &#x3D; separate views (compact), 2 &#x3D; all in one view (full). | [optional] 
 **defaultCss** | **bool?**| Whether the default CSS should be added to the response. | [optional] 
 **showBacklink** | **bool?**| Whether to show a backlink to spoonacular. If set false, this call counts against your quota. | [optional] 

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="visualizeproductnutritionbyid"></a>
# **VisualizeProductNutritionByID**
> string VisualizeProductNutritionByID (decimal? id, bool? defaultCss)

Visualize Product Nutrition by ID

Visualize a product's nutritional information as HTML including CSS.

### Example
```csharp
using System;
using System.Diagnostics;
using com.spoonacular;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace Example
{
    public class VisualizeProductNutritionByIDExample
    {
        public void main()
        {
            
            var apiInstance = new DefaultApi();
            var id = 7657;  // decimal? | The id of the product.
            var defaultCss = true;  // bool? | Whether the default CSS should be added to the response. (optional) 

            try
            {
                // Visualize Product Nutrition by ID
                string result = apiInstance.VisualizeProductNutritionByID(id, defaultCss);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.VisualizeProductNutritionByID: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **decimal?**| The id of the product. | 
 **defaultCss** | **bool?**| Whether the default CSS should be added to the response. | [optional] 

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="visualizerecipeequipmentbyid"></a>
# **VisualizeRecipeEquipmentByID**
> string VisualizeRecipeEquipmentByID (decimal? id, bool? defaultCss)

Visualize Recipe Equipment by ID

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
            
            var apiInstance = new DefaultApi();
            var id = 44860;  // decimal? | The recipe id.
            var defaultCss = true;  // bool? | Whether the default CSS should be added to the response. (optional) 

            try
            {
                // Visualize Recipe Equipment by ID
                string result = apiInstance.VisualizeRecipeEquipmentByID(id, defaultCss);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.VisualizeRecipeEquipmentByID: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **decimal?**| The recipe id. | 
 **defaultCss** | **bool?**| Whether the default CSS should be added to the response. | [optional] 

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="visualizerecipeingredientsbyid"></a>
# **VisualizeRecipeIngredientsByID**
> string VisualizeRecipeIngredientsByID (decimal? id, bool? defaultCss)

Visualize Recipe Ingredients by ID

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
            
            var apiInstance = new DefaultApi();
            var id = 1082038;  // decimal? | The recipe id.
            var defaultCss = true;  // bool? | Whether the default CSS should be added to the response. (optional) 

            try
            {
                // Visualize Recipe Ingredients by ID
                string result = apiInstance.VisualizeRecipeIngredientsByID(id, defaultCss);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.VisualizeRecipeIngredientsByID: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **decimal?**| The recipe id. | 
 **defaultCss** | **bool?**| Whether the default CSS should be added to the response. | [optional] 

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="visualizerecipenutrition"></a>
# **VisualizeRecipeNutrition**
> string VisualizeRecipeNutrition (string ingredientList, decimal? servings, bool? defaultCss, bool? showBacklink)

Visualize Recipe Nutrition

Visualize a recipe's nutritional information as HTML including CSS

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
            
            var apiInstance = new DefaultApi();
            var ingredientList = ingredientList_example;  // string | The ingredient list of the recipe, one ingredient per line.
            var servings = 8.14;  // decimal? | The number of servings.
            var defaultCss = true;  // bool? | Whether the default CSS should be added to the response. (optional) 
            var showBacklink = true;  // bool? | Whether to show a backlink to spoonacular. If set false, this call counts against your quota. (optional) 

            try
            {
                // Visualize Recipe Nutrition
                string result = apiInstance.VisualizeRecipeNutrition(ingredientList, servings, defaultCss, showBacklink);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.VisualizeRecipeNutrition: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredientList** | **string**| The ingredient list of the recipe, one ingredient per line. | 
 **servings** | **decimal?**| The number of servings. | 
 **defaultCss** | **bool?**| Whether the default CSS should be added to the response. | [optional] 
 **showBacklink** | **bool?**| Whether to show a backlink to spoonacular. If set false, this call counts against your quota. | [optional] 

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="visualizerecipenutritionbyid"></a>
# **VisualizeRecipeNutritionByID**
> string VisualizeRecipeNutritionByID (decimal? id, bool? defaultCss)

Visualize Recipe Nutrition by ID

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
            
            var apiInstance = new DefaultApi();
            var id = 1082038;  // decimal? | The recipe id.
            var defaultCss = true;  // bool? | Whether the default CSS should be added to the response. (optional) 

            try
            {
                // Visualize Recipe Nutrition by ID
                string result = apiInstance.VisualizeRecipeNutritionByID(id, defaultCss);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.VisualizeRecipeNutritionByID: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **decimal?**| The recipe id. | 
 **defaultCss** | **bool?**| Whether the default CSS should be added to the response. | [optional] 

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="visualizerecipepricebreakdownbyid"></a>
# **VisualizeRecipePriceBreakdownByID**
> string VisualizeRecipePriceBreakdownByID (decimal? id, bool? defaultCss)

Visualize Recipe Price Breakdown by ID

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
            
            var apiInstance = new DefaultApi();
            var id = 1082038;  // decimal? | The recipe id.
            var defaultCss = true;  // bool? | Whether the default CSS should be added to the response. (optional) 

            try
            {
                // Visualize Recipe Price Breakdown by ID
                string result = apiInstance.VisualizeRecipePriceBreakdownByID(id, defaultCss);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.VisualizeRecipePriceBreakdownByID: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **decimal?**| The recipe id. | 
 **defaultCss** | **bool?**| Whether the default CSS should be added to the response. | [optional] 

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

