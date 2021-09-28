# com.spoonacular.client\RecipesApi

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AnalyzeARecipeSearchQuery**](RecipesApi.md#AnalyzeARecipeSearchQuery) | **Get** /recipes/queries/analyze | Analyze a Recipe Search Query
[**AnalyzeRecipeInstructions**](RecipesApi.md#AnalyzeRecipeInstructions) | **Post** /recipes/analyzeInstructions | Analyze Recipe Instructions
[**AutocompleteRecipeSearch**](RecipesApi.md#AutocompleteRecipeSearch) | **Get** /recipes/autocomplete | Autocomplete Recipe Search
[**ClassifyCuisine**](RecipesApi.md#ClassifyCuisine) | **Post** /recipes/cuisine | Classify Cuisine
[**ComputeGlycemicLoad**](RecipesApi.md#ComputeGlycemicLoad) | **Post** /food/ingredients/glycemicLoad | Compute Glycemic Load
[**ConvertAmounts**](RecipesApi.md#ConvertAmounts) | **Get** /recipes/convert | Convert Amounts
[**CreateRecipeCard**](RecipesApi.md#CreateRecipeCard) | **Post** /recipes/visualizeRecipe | Create Recipe Card
[**EquipmentByIDImage**](RecipesApi.md#EquipmentByIDImage) | **Get** /recipes/{id}/equipmentWidget.png | Equipment by ID Image
[**ExtractRecipeFromWebsite**](RecipesApi.md#ExtractRecipeFromWebsite) | **Get** /recipes/extract | Extract Recipe from Website
[**GetAnalyzedRecipeInstructions**](RecipesApi.md#GetAnalyzedRecipeInstructions) | **Get** /recipes/{id}/analyzedInstructions | Get Analyzed Recipe Instructions
[**GetRandomRecipes**](RecipesApi.md#GetRandomRecipes) | **Get** /recipes/random | Get Random Recipes
[**GetRecipeEquipmentByID**](RecipesApi.md#GetRecipeEquipmentByID) | **Get** /recipes/{id}/equipmentWidget.json | Equipment by ID
[**GetRecipeInformation**](RecipesApi.md#GetRecipeInformation) | **Get** /recipes/{id}/information | Get Recipe Information
[**GetRecipeInformationBulk**](RecipesApi.md#GetRecipeInformationBulk) | **Get** /recipes/informationBulk | Get Recipe Information Bulk
[**GetRecipeIngredientsByID**](RecipesApi.md#GetRecipeIngredientsByID) | **Get** /recipes/{id}/ingredientWidget.json | Ingredients by ID
[**GetRecipeNutritionWidgetByID**](RecipesApi.md#GetRecipeNutritionWidgetByID) | **Get** /recipes/{id}/nutritionWidget.json | Nutrition by ID
[**GetRecipePriceBreakdownByID**](RecipesApi.md#GetRecipePriceBreakdownByID) | **Get** /recipes/{id}/priceBreakdownWidget.json | Price Breakdown by ID
[**GetRecipeTasteByID**](RecipesApi.md#GetRecipeTasteByID) | **Get** /recipes/{id}/tasteWidget.json | Taste by ID
[**GetSimilarRecipes**](RecipesApi.md#GetSimilarRecipes) | **Get** /recipes/{id}/similar | Get Similar Recipes
[**GuessNutritionByDishName**](RecipesApi.md#GuessNutritionByDishName) | **Get** /recipes/guessNutrition | Guess Nutrition by Dish Name
[**IngredientsByIDImage**](RecipesApi.md#IngredientsByIDImage) | **Get** /recipes/{id}/ingredientWidget.png | Ingredients by ID Image
[**ParseIngredients**](RecipesApi.md#ParseIngredients) | **Post** /recipes/parseIngredients | Parse Ingredients
[**PriceBreakdownByIDImage**](RecipesApi.md#PriceBreakdownByIDImage) | **Get** /recipes/{id}/priceBreakdownWidget.png | Price Breakdown by ID Image
[**QuickAnswer**](RecipesApi.md#QuickAnswer) | **Get** /recipes/quickAnswer | Quick Answer
[**RecipeNutritionByIDImage**](RecipesApi.md#RecipeNutritionByIDImage) | **Get** /recipes/{id}/nutritionWidget.png | Recipe Nutrition by ID Image
[**RecipeNutritionLabelImage**](RecipesApi.md#RecipeNutritionLabelImage) | **Get** /recipes/{id}/nutritionLabel.png | Recipe Nutrition Label Image
[**RecipeNutritionLabelWidget**](RecipesApi.md#RecipeNutritionLabelWidget) | **Get** /recipes/{id}/nutritionLabel | Recipe Nutrition Label Widget
[**RecipeTasteByIDImage**](RecipesApi.md#RecipeTasteByIDImage) | **Get** /recipes/{id}/tasteWidget.png | Recipe Taste by ID Image
[**SearchRecipes**](RecipesApi.md#SearchRecipes) | **Get** /recipes/complexSearch | Search Recipes
[**SearchRecipesByIngredients**](RecipesApi.md#SearchRecipesByIngredients) | **Get** /recipes/findByIngredients | Search Recipes by Ingredients
[**SearchRecipesByNutrients**](RecipesApi.md#SearchRecipesByNutrients) | **Get** /recipes/findByNutrients | Search Recipes by Nutrients
[**SummarizeRecipe**](RecipesApi.md#SummarizeRecipe) | **Get** /recipes/{id}/summary | Summarize Recipe
[**VisualizeEquipment**](RecipesApi.md#VisualizeEquipment) | **Post** /recipes/visualizeEquipment | Equipment Widget
[**VisualizePriceBreakdown**](RecipesApi.md#VisualizePriceBreakdown) | **Post** /recipes/visualizePriceEstimator | Price Breakdown Widget
[**VisualizeRecipeEquipmentByID**](RecipesApi.md#VisualizeRecipeEquipmentByID) | **Get** /recipes/{id}/equipmentWidget | Equipment by ID Widget
[**VisualizeRecipeIngredientsByID**](RecipesApi.md#VisualizeRecipeIngredientsByID) | **Get** /recipes/{id}/ingredientWidget | Ingredients by ID Widget
[**VisualizeRecipeNutrition**](RecipesApi.md#VisualizeRecipeNutrition) | **Post** /recipes/visualizeNutrition | Recipe Nutrition Widget
[**VisualizeRecipeNutritionByID**](RecipesApi.md#VisualizeRecipeNutritionByID) | **Get** /recipes/{id}/nutritionWidget | Recipe Nutrition by ID Widget
[**VisualizeRecipePriceBreakdownByID**](RecipesApi.md#VisualizeRecipePriceBreakdownByID) | **Get** /recipes/{id}/priceBreakdownWidget | Price Breakdown by ID Widget
[**VisualizeRecipeTaste**](RecipesApi.md#VisualizeRecipeTaste) | **Post** /recipes/visualizeTaste | Recipe Taste Widget
[**VisualizeRecipeTasteByID**](RecipesApi.md#VisualizeRecipeTasteByID) | **Get** /recipes/{id}/tasteWidget | Recipe Taste by ID Widget



## AnalyzeARecipeSearchQuery

> InlineResponse20018 AnalyzeARecipeSearchQuery(ctx, q)
Analyze a Recipe Search Query

Parse a recipe search query to find out its intention.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**q** | **string**| The recipe search query. | 

### Return type

[**InlineResponse20018**](inline_response_200_18.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AnalyzeRecipeInstructions

> InlineResponse20016 AnalyzeRecipeInstructions(ctx, optional)
Analyze Recipe Instructions

This endpoint allows you to break down instructions into atomic steps. Furthermore, each step will contain the ingredients and equipment required. Additionally, all ingredients and equipment from the recipe's instructions will be extracted independently of the step they're used in.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***AnalyzeRecipeInstructionsOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a AnalyzeRecipeInstructionsOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentType** | **optional.String**| The content type. | 

### Return type

[**InlineResponse20016**](inline_response_200_16.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AutocompleteRecipeSearch

> []InlineResponse2007 AutocompleteRecipeSearch(ctx, optional)
Autocomplete Recipe Search

Autocomplete a partial input to suggest possible recipe names.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***AutocompleteRecipeSearchOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a AutocompleteRecipeSearchOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **optional.String**| The (natural language) search query. | 
 **number** | **optional.Int32**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [default to 10]

### Return type

[**[]InlineResponse2007**](inline_response_200_7.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ClassifyCuisine

> InlineResponse20017 ClassifyCuisine(ctx, optional)
Classify Cuisine

Classify the recipe's cuisine.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***ClassifyCuisineOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a ClassifyCuisineOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentType** | **optional.String**| The content type. | 

### Return type

[**InlineResponse20017**](inline_response_200_17.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ComputeGlycemicLoad

> InlineResponse20023 ComputeGlycemicLoad(ctx, inlineObject, optional)
Compute Glycemic Load

Retrieve the glycemic index for a list of ingredients and compute the individual and total glycemic load.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**inlineObject** | [**InlineObject**](InlineObject.md)|  | 
 **optional** | ***ComputeGlycemicLoadOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a ComputeGlycemicLoadOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **language** | **optional.String**| The language of the input. Either &#39;en&#39; or &#39;de&#39;. | 

### Return type

[**InlineResponse20023**](inline_response_200_23.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ConvertAmounts

> InlineResponse20019 ConvertAmounts(ctx, ingredientName, sourceAmount, sourceUnit, targetUnit)
Convert Amounts

Convert amounts like \"2 cups of flour to grams\".

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**ingredientName** | **string**| The ingredient which you want to convert. | 
**sourceAmount** | **float32**| The amount from which you want to convert, e.g. the 2.5 in \&quot;2.5 cups of flour to grams\&quot;. | 
**sourceUnit** | **string**| The unit from which you want to convert, e.g. the grams in \&quot;2.5 cups of flour to grams\&quot;. You can also use \&quot;piece\&quot;, e.g. \&quot;3.4 oz tomatoes to piece\&quot; | 
**targetUnit** | **string**| The unit to which you want to convert, e.g. the grams in \&quot;2.5 cups of flour to grams\&quot;. You can also use \&quot;piece\&quot;, e.g. \&quot;3.4 oz tomatoes to piece\&quot; | 

### Return type

[**InlineResponse20019**](inline_response_200_19.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CreateRecipeCard

> InlineResponse20015 CreateRecipeCard(ctx, optional)
Create Recipe Card

Generate a recipe card for a recipe.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***CreateRecipeCardOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a CreateRecipeCardOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentType** | **optional.String**| The content type. | 

### Return type

[**InlineResponse20015**](inline_response_200_15.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## EquipmentByIDImage

> map[string]interface{} EquipmentByIDImage(ctx, id)
Equipment by ID Image

Visualize a recipe's equipment list as an image.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **float32**| The recipe id. | 

### Return type

[**map[string]interface{}**](map[string]interface{}.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ExtractRecipeFromWebsite

> InlineResponse2003 ExtractRecipeFromWebsite(ctx, url, optional)
Extract Recipe from Website

This endpoint lets you extract recipe data such as title, ingredients, and instructions from any properly formatted Website.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**url** | **string**| The URL of the recipe page. | 
 **optional** | ***ExtractRecipeFromWebsiteOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a ExtractRecipeFromWebsiteOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **forceExtraction** | **optional.Bool**| If true, the extraction will be triggered whether we already know the recipe or not. Use this only if information is missing as this operation is slower. | 
 **analyze** | **optional.Bool**| If true, the recipe will be analyzed and classified resolving in more data such as cuisines, dish types, and more. | 
 **includeNutrition** | **optional.Bool**| Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. | [default to false]
 **includeTaste** | **optional.Bool**| Whether taste data should be added to correctly parsed ingredients. | [default to false]

### Return type

[**InlineResponse2003**](inline_response_200_3.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetAnalyzedRecipeInstructions

> InlineResponse20013 GetAnalyzedRecipeInstructions(ctx, id, optional)
Get Analyzed Recipe Instructions

Get an analyzed breakdown of a recipe's instructions. Each step is enriched with the ingredients and equipment required.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32**| The item&#39;s id. | 
 **optional** | ***GetAnalyzedRecipeInstructionsOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a GetAnalyzedRecipeInstructionsOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **stepBreakdown** | **optional.Bool**| Whether to break down the recipe steps even more. | 

### Return type

[**InlineResponse20013**](inline_response_200_13.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetRandomRecipes

> InlineResponse2006 GetRandomRecipes(ctx, optional)
Get Random Recipes

Find random (popular) recipes. If you need to filter recipes by diet, nutrition etc. you might want to consider using the complex recipe search endpoint and set the sort request parameter to random.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***GetRandomRecipesOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a GetRandomRecipesOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limitLicense** | **optional.Bool**| Whether the recipes should have an open license that allows display with proper attribution. | [default to true]
 **tags** | **optional.String**| The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have. | 
 **number** | **optional.Int32**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [default to 10]

### Return type

[**InlineResponse2006**](inline_response_200_6.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetRecipeEquipmentByID

> InlineResponse2009 GetRecipeEquipmentByID(ctx, id)
Equipment by ID

Get a recipe's equipment list.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32**| The item&#39;s id. | 

### Return type

[**InlineResponse2009**](inline_response_200_9.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetRecipeInformation

> InlineResponse2003 GetRecipeInformation(ctx, id, optional)
Get Recipe Information

Use a recipe id to get full information about a recipe, such as ingredients, nutrition, diet and allergen information, etc.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32**| The item&#39;s id. | 
 **optional** | ***GetRecipeInformationOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a GetRecipeInformationOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **includeNutrition** | **optional.Bool**| Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. | [default to false]

### Return type

[**InlineResponse2003**](inline_response_200_3.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetRecipeInformationBulk

> []InlineResponse2004 GetRecipeInformationBulk(ctx, ids, optional)
Get Recipe Information Bulk

Get information about multiple recipes at once. This is equivalent to calling the Get Recipe Information endpoint multiple times, but faster.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**ids** | **string**| A comma-separated list of recipe ids. | 
 **optional** | ***GetRecipeInformationBulkOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a GetRecipeInformationBulkOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **includeNutrition** | **optional.Bool**| Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. | [default to false]

### Return type

[**[]InlineResponse2004**](inline_response_200_4.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetRecipeIngredientsByID

> InlineResponse20011 GetRecipeIngredientsByID(ctx, id)
Ingredients by ID

Get a recipe's ingredient list.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32**| The item&#39;s id. | 

### Return type

[**InlineResponse20011**](inline_response_200_11.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetRecipeNutritionWidgetByID

> InlineResponse20012 GetRecipeNutritionWidgetByID(ctx, id)
Nutrition by ID

Get a recipe's nutrition data.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32**| The item&#39;s id. | 

### Return type

[**InlineResponse20012**](inline_response_200_12.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetRecipePriceBreakdownByID

> InlineResponse20010 GetRecipePriceBreakdownByID(ctx, id)
Price Breakdown by ID

Get a recipe's price breakdown data.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32**| The item&#39;s id. | 

### Return type

[**InlineResponse20010**](inline_response_200_10.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetRecipeTasteByID

> InlineResponse2008 GetRecipeTasteByID(ctx, id, optional)
Taste by ID

Get a recipe's taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32**| The item&#39;s id. | 
 **optional** | ***GetRecipeTasteByIDOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a GetRecipeTasteByIDOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **normalize** | **optional.Bool**| Normalize to the strongest taste. | [default to true]

### Return type

[**InlineResponse2008**](inline_response_200_8.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetSimilarRecipes

> []InlineResponse2005 GetSimilarRecipes(ctx, id, optional)
Get Similar Recipes

Find recipes which are similar to the given one.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32**| The item&#39;s id. | 
 **optional** | ***GetSimilarRecipesOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a GetSimilarRecipesOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **number** | **optional.Int32**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [default to 10]
 **limitLicense** | **optional.Bool**| Whether the recipes should have an open license that allows display with proper attribution. | [default to true]

### Return type

[**[]InlineResponse2005**](inline_response_200_5.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GuessNutritionByDishName

> InlineResponse20021 GuessNutritionByDishName(ctx, title)
Guess Nutrition by Dish Name

Estimate the macronutrients of a dish based on its title.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**title** | **string**| The title of the dish. | 

### Return type

[**InlineResponse20021**](inline_response_200_21.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## IngredientsByIDImage

> map[string]interface{} IngredientsByIDImage(ctx, id, optional)
Ingredients by ID Image

Visualize a recipe's ingredient list.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **float32**| The recipe id. | 
 **optional** | ***IngredientsByIDImageOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a IngredientsByIDImageOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **measure** | **optional.String**| Whether the the measures should be &#39;us&#39; or &#39;metric&#39;. | 

### Return type

[**map[string]interface{}**](map[string]interface{}.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ParseIngredients

> []InlineResponse20020 ParseIngredients(ctx, optional)
Parse Ingredients

Extract an ingredient from plain text.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***ParseIngredientsOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a ParseIngredientsOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentType** | **optional.String**| The content type. | 
 **language** | **optional.String**| The language of the input. Either &#39;en&#39; or &#39;de&#39;. | 

### Return type

[**[]InlineResponse20020**](inline_response_200_20.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PriceBreakdownByIDImage

> map[string]interface{} PriceBreakdownByIDImage(ctx, id)
Price Breakdown by ID Image

Visualize a recipe's price breakdown.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **float32**| The recipe id. | 

### Return type

[**map[string]interface{}**](map[string]interface{}.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## QuickAnswer

> InlineResponse20049 QuickAnswer(ctx, q)
Quick Answer

Answer a nutrition related natural language question.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**q** | **string**| The nutrition related question. | 

### Return type

[**InlineResponse20049**](inline_response_200_49.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RecipeNutritionByIDImage

> map[string]interface{} RecipeNutritionByIDImage(ctx, id)
Recipe Nutrition by ID Image

Visualize a recipe's nutritional information as an image.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **float32**| The recipe id. | 

### Return type

[**map[string]interface{}**](map[string]interface{}.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RecipeNutritionLabelImage

> map[string]interface{} RecipeNutritionLabelImage(ctx, id, optional)
Recipe Nutrition Label Image

Get a recipe's nutrition label as an image.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **float32**| The recipe id. | 
 **optional** | ***RecipeNutritionLabelImageOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a RecipeNutritionLabelImageOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **showOptionalNutrients** | **optional.Bool**| Whether to show optional nutrients. | 
 **showZeroValues** | **optional.Bool**| Whether to show zero values. | 
 **showIngredients** | **optional.Bool**| Whether to show a list of ingredients. | 

### Return type

[**map[string]interface{}**](map[string]interface{}.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RecipeNutritionLabelWidget

> string RecipeNutritionLabelWidget(ctx, id, optional)
Recipe Nutrition Label Widget

Get a recipe's nutrition label as an HTML widget.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **float32**| The recipe id. | 
 **optional** | ***RecipeNutritionLabelWidgetOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a RecipeNutritionLabelWidgetOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **defaultCss** | **optional.Bool**| Whether the default CSS should be added to the response. | [default to true]
 **showOptionalNutrients** | **optional.Bool**| Whether to show optional nutrients. | 
 **showZeroValues** | **optional.Bool**| Whether to show zero values. | 
 **showIngredients** | **optional.Bool**| Whether to show a list of ingredients. | 

### Return type

**string**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RecipeTasteByIDImage

> map[string]interface{} RecipeTasteByIDImage(ctx, id, optional)
Recipe Taste by ID Image

Get a recipe's taste as an image. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **float32**| The recipe id. | 
 **optional** | ***RecipeTasteByIDImageOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a RecipeTasteByIDImageOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **normalize** | **optional.Bool**| Normalize to the strongest taste. | 
 **rgb** | **optional.String**| Red, green, blue values for the chart color. | 

### Return type

[**map[string]interface{}**](map[string]interface{}.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SearchRecipes

> InlineResponse200 SearchRecipes(ctx, optional)
Search Recipes

Search through hundreds of thousands of recipes using advanced filtering and ranking. NOTE: This method combines searching by query, by ingredients, and by nutrients into one endpoint.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***SearchRecipesOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a SearchRecipesOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **optional.String**| The (natural language) search query. | 
 **cuisine** | **optional.String**| The cuisine(s) of the recipes. One or more, comma separated (will be interpreted as &#39;OR&#39;). See a full list of supported cuisines. | 
 **excludeCuisine** | **optional.String**| The cuisine(s) the recipes must not match. One or more, comma separated (will be interpreted as &#39;AND&#39;). See a full list of supported cuisines. | 
 **diet** | **optional.String**| The diet for which the recipes must be suitable. See a full list of supported diets. | 
 **intolerances** | **optional.String**| A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. | 
 **equipment** | **optional.String**| The equipment required. Multiple values will be interpreted as &#39;or&#39;. For example, value could be \&quot;blender, frying pan, bowl\&quot;. | 
 **includeIngredients** | **optional.String**| A comma-separated list of ingredients that should/must be used in the recipes. | 
 **excludeIngredients** | **optional.String**| A comma-separated list of ingredients or ingredient types that the recipes must not contain. | 
 **type_** | **optional.String**| The type of recipe. See a full list of supported meal types. | 
 **instructionsRequired** | **optional.Bool**| Whether the recipes must have instructions. | 
 **fillIngredients** | **optional.Bool**| Add information about the ingredients and whether they are used or missing in relation to the query. | 
 **addRecipeInformation** | **optional.Bool**| If set to true, you get more information about the recipes returned. | 
 **addRecipeNutrition** | **optional.Bool**| If set to true, you get nutritional information about each recipes returned. | 
 **author** | **optional.String**| The username of the recipe author. | 
 **tags** | **optional.String**| The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have. | 
 **recipeBoxId** | **optional.Float32**| The id of the recipe box to which the search should be limited to. | 
 **titleMatch** | **optional.String**| Enter text that must be found in the title of the recipes. | 
 **maxReadyTime** | **optional.Float32**| The maximum time in minutes it should take to prepare and cook the recipe. | 
 **ignorePantry** | **optional.Bool**| Whether to ignore typical pantry items, such as water, salt, flour, etc. | [default to false]
 **sort** | **optional.String**| The strategy to sort recipes by. See a full list of supported sorting options. | 
 **sortDirection** | **optional.String**| The direction in which to sort. Must be either &#39;asc&#39; (ascending) or &#39;desc&#39; (descending). | 
 **minCarbs** | **optional.Float32**| The minimum amount of carbohydrates in grams the recipe must have. | 
 **maxCarbs** | **optional.Float32**| The maximum amount of carbohydrates in grams the recipe can have. | 
 **minProtein** | **optional.Float32**| The minimum amount of protein in grams the recipe must have. | 
 **maxProtein** | **optional.Float32**| The maximum amount of protein in grams the recipe can have. | 
 **minCalories** | **optional.Float32**| The minimum amount of calories the recipe must have. | 
 **maxCalories** | **optional.Float32**| The maximum amount of calories the recipe can have. | 
 **minFat** | **optional.Float32**| The minimum amount of fat in grams the recipe must have. | 
 **maxFat** | **optional.Float32**| The maximum amount of fat in grams the recipe can have. | 
 **minAlcohol** | **optional.Float32**| The minimum amount of alcohol in grams the recipe must have. | 
 **maxAlcohol** | **optional.Float32**| The maximum amount of alcohol in grams the recipe can have. | 
 **minCaffeine** | **optional.Float32**| The minimum amount of caffeine in milligrams the recipe must have. | 
 **maxCaffeine** | **optional.Float32**| The maximum amount of caffeine in milligrams the recipe can have. | 
 **minCopper** | **optional.Float32**| The minimum amount of copper in milligrams the recipe must have. | 
 **maxCopper** | **optional.Float32**| The maximum amount of copper in milligrams the recipe can have. | 
 **minCalcium** | **optional.Float32**| The minimum amount of calcium in milligrams the recipe must have. | 
 **maxCalcium** | **optional.Float32**| The maximum amount of calcium in milligrams the recipe can have. | 
 **minCholine** | **optional.Float32**| The minimum amount of choline in milligrams the recipe must have. | 
 **maxCholine** | **optional.Float32**| The maximum amount of choline in milligrams the recipe can have. | 
 **minCholesterol** | **optional.Float32**| The minimum amount of cholesterol in milligrams the recipe must have. | 
 **maxCholesterol** | **optional.Float32**| The maximum amount of cholesterol in milligrams the recipe can have. | 
 **minFluoride** | **optional.Float32**| The minimum amount of fluoride in milligrams the recipe must have. | 
 **maxFluoride** | **optional.Float32**| The maximum amount of fluoride in milligrams the recipe can have. | 
 **minSaturatedFat** | **optional.Float32**| The minimum amount of saturated fat in grams the recipe must have. | 
 **maxSaturatedFat** | **optional.Float32**| The maximum amount of saturated fat in grams the recipe can have. | 
 **minVitaminA** | **optional.Float32**| The minimum amount of Vitamin A in IU the recipe must have. | 
 **maxVitaminA** | **optional.Float32**| The maximum amount of Vitamin A in IU the recipe can have. | 
 **minVitaminC** | **optional.Float32**| The minimum amount of Vitamin C milligrams the recipe must have. | 
 **maxVitaminC** | **optional.Float32**| The maximum amount of Vitamin C in milligrams the recipe can have. | 
 **minVitaminD** | **optional.Float32**| The minimum amount of Vitamin D in micrograms the recipe must have. | 
 **maxVitaminD** | **optional.Float32**| The maximum amount of Vitamin D in micrograms the recipe can have. | 
 **minVitaminE** | **optional.Float32**| The minimum amount of Vitamin E in milligrams the recipe must have. | 
 **maxVitaminE** | **optional.Float32**| The maximum amount of Vitamin E in milligrams the recipe can have. | 
 **minVitaminK** | **optional.Float32**| The minimum amount of Vitamin K in micrograms the recipe must have. | 
 **maxVitaminK** | **optional.Float32**| The maximum amount of Vitamin K in micrograms the recipe can have. | 
 **minVitaminB1** | **optional.Float32**| The minimum amount of Vitamin B1 in milligrams the recipe must have. | 
 **maxVitaminB1** | **optional.Float32**| The maximum amount of Vitamin B1 in milligrams the recipe can have. | 
 **minVitaminB2** | **optional.Float32**| The minimum amount of Vitamin B2 in milligrams the recipe must have. | 
 **maxVitaminB2** | **optional.Float32**| The maximum amount of Vitamin B2 in milligrams the recipe can have. | 
 **minVitaminB5** | **optional.Float32**| The minimum amount of Vitamin B5 in milligrams the recipe must have. | 
 **maxVitaminB5** | **optional.Float32**| The maximum amount of Vitamin B5 in milligrams the recipe can have. | 
 **minVitaminB3** | **optional.Float32**| The minimum amount of Vitamin B3 in milligrams the recipe must have. | 
 **maxVitaminB3** | **optional.Float32**| The maximum amount of Vitamin B3 in milligrams the recipe can have. | 
 **minVitaminB6** | **optional.Float32**| The minimum amount of Vitamin B6 in milligrams the recipe must have. | 
 **maxVitaminB6** | **optional.Float32**| The maximum amount of Vitamin B6 in milligrams the recipe can have. | 
 **minVitaminB12** | **optional.Float32**| The minimum amount of Vitamin B12 in micrograms the recipe must have. | 
 **maxVitaminB12** | **optional.Float32**| The maximum amount of Vitamin B12 in micrograms the recipe can have. | 
 **minFiber** | **optional.Float32**| The minimum amount of fiber in grams the recipe must have. | 
 **maxFiber** | **optional.Float32**| The maximum amount of fiber in grams the recipe can have. | 
 **minFolate** | **optional.Float32**| The minimum amount of folate in micrograms the recipe must have. | 
 **maxFolate** | **optional.Float32**| The maximum amount of folate in micrograms the recipe can have. | 
 **minFolicAcid** | **optional.Float32**| The minimum amount of folic acid in micrograms the recipe must have. | 
 **maxFolicAcid** | **optional.Float32**| The maximum amount of folic acid in micrograms the recipe can have. | 
 **minIodine** | **optional.Float32**| The minimum amount of iodine in micrograms the recipe must have. | 
 **maxIodine** | **optional.Float32**| The maximum amount of iodine in micrograms the recipe can have. | 
 **minIron** | **optional.Float32**| The minimum amount of iron in milligrams the recipe must have. | 
 **maxIron** | **optional.Float32**| The maximum amount of iron in milligrams the recipe can have. | 
 **minMagnesium** | **optional.Float32**| The minimum amount of magnesium in milligrams the recipe must have. | 
 **maxMagnesium** | **optional.Float32**| The maximum amount of magnesium in milligrams the recipe can have. | 
 **minManganese** | **optional.Float32**| The minimum amount of manganese in milligrams the recipe must have. | 
 **maxManganese** | **optional.Float32**| The maximum amount of manganese in milligrams the recipe can have. | 
 **minPhosphorus** | **optional.Float32**| The minimum amount of phosphorus in milligrams the recipe must have. | 
 **maxPhosphorus** | **optional.Float32**| The maximum amount of phosphorus in milligrams the recipe can have. | 
 **minPotassium** | **optional.Float32**| The minimum amount of potassium in milligrams the recipe must have. | 
 **maxPotassium** | **optional.Float32**| The maximum amount of potassium in milligrams the recipe can have. | 
 **minSelenium** | **optional.Float32**| The minimum amount of selenium in micrograms the recipe must have. | 
 **maxSelenium** | **optional.Float32**| The maximum amount of selenium in micrograms the recipe can have. | 
 **minSodium** | **optional.Float32**| The minimum amount of sodium in milligrams the recipe must have. | 
 **maxSodium** | **optional.Float32**| The maximum amount of sodium in milligrams the recipe can have. | 
 **minSugar** | **optional.Float32**| The minimum amount of sugar in grams the recipe must have. | 
 **maxSugar** | **optional.Float32**| The maximum amount of sugar in grams the recipe can have. | 
 **minZinc** | **optional.Float32**| The minimum amount of zinc in milligrams the recipe must have. | 
 **maxZinc** | **optional.Float32**| The maximum amount of zinc in milligrams the recipe can have. | 
 **offset** | **optional.Int32**| The number of results to skip (between 0 and 900). | 
 **number** | **optional.Int32**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [default to 10]
 **limitLicense** | **optional.Bool**| Whether the recipes should have an open license that allows display with proper attribution. | [default to true]

### Return type

[**InlineResponse200**](inline_response_200.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SearchRecipesByIngredients

> []InlineResponse2001 SearchRecipesByIngredients(ctx, optional)
Search Recipes by Ingredients

 Ever wondered what recipes you can cook with the ingredients you have in your fridge or pantry? This endpoint lets you find recipes that either maximize the usage of ingredients you have at hand (pre shopping) or minimize the ingredients that you don't currently have (post shopping).         

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***SearchRecipesByIngredientsOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a SearchRecipesByIngredientsOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredients** | **optional.String**| A comma-separated list of ingredients that the recipes should contain. | 
 **number** | **optional.Int32**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [default to 10]
 **limitLicense** | **optional.Bool**| Whether the recipes should have an open license that allows display with proper attribution. | [default to true]
 **ranking** | **optional.Float32**| Whether to maximize used ingredients (1) or minimize missing ingredients (2) first. | 
 **ignorePantry** | **optional.Bool**| Whether to ignore typical pantry items, such as water, salt, flour, etc. | [default to false]

### Return type

[**[]InlineResponse2001**](inline_response_200_1.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SearchRecipesByNutrients

> []InlineResponse2002 SearchRecipesByNutrients(ctx, optional)
Search Recipes by Nutrients

Find a set of recipes that adhere to the given nutritional limits. You may set limits for macronutrients (calories, protein, fat, and carbohydrate) and/or many micronutrients.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***SearchRecipesByNutrientsOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a SearchRecipesByNutrientsOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **minCarbs** | **optional.Float32**| The minimum amount of carbohydrates in grams the recipe must have. | 
 **maxCarbs** | **optional.Float32**| The maximum amount of carbohydrates in grams the recipe can have. | 
 **minProtein** | **optional.Float32**| The minimum amount of protein in grams the recipe must have. | 
 **maxProtein** | **optional.Float32**| The maximum amount of protein in grams the recipe can have. | 
 **minCalories** | **optional.Float32**| The minimum amount of calories the recipe must have. | 
 **maxCalories** | **optional.Float32**| The maximum amount of calories the recipe can have. | 
 **minFat** | **optional.Float32**| The minimum amount of fat in grams the recipe must have. | 
 **maxFat** | **optional.Float32**| The maximum amount of fat in grams the recipe can have. | 
 **minAlcohol** | **optional.Float32**| The minimum amount of alcohol in grams the recipe must have. | 
 **maxAlcohol** | **optional.Float32**| The maximum amount of alcohol in grams the recipe can have. | 
 **minCaffeine** | **optional.Float32**| The minimum amount of caffeine in milligrams the recipe must have. | 
 **maxCaffeine** | **optional.Float32**| The maximum amount of caffeine in milligrams the recipe can have. | 
 **minCopper** | **optional.Float32**| The minimum amount of copper in milligrams the recipe must have. | 
 **maxCopper** | **optional.Float32**| The maximum amount of copper in milligrams the recipe can have. | 
 **minCalcium** | **optional.Float32**| The minimum amount of calcium in milligrams the recipe must have. | 
 **maxCalcium** | **optional.Float32**| The maximum amount of calcium in milligrams the recipe can have. | 
 **minCholine** | **optional.Float32**| The minimum amount of choline in milligrams the recipe must have. | 
 **maxCholine** | **optional.Float32**| The maximum amount of choline in milligrams the recipe can have. | 
 **minCholesterol** | **optional.Float32**| The minimum amount of cholesterol in milligrams the recipe must have. | 
 **maxCholesterol** | **optional.Float32**| The maximum amount of cholesterol in milligrams the recipe can have. | 
 **minFluoride** | **optional.Float32**| The minimum amount of fluoride in milligrams the recipe must have. | 
 **maxFluoride** | **optional.Float32**| The maximum amount of fluoride in milligrams the recipe can have. | 
 **minSaturatedFat** | **optional.Float32**| The minimum amount of saturated fat in grams the recipe must have. | 
 **maxSaturatedFat** | **optional.Float32**| The maximum amount of saturated fat in grams the recipe can have. | 
 **minVitaminA** | **optional.Float32**| The minimum amount of Vitamin A in IU the recipe must have. | 
 **maxVitaminA** | **optional.Float32**| The maximum amount of Vitamin A in IU the recipe can have. | 
 **minVitaminC** | **optional.Float32**| The minimum amount of Vitamin C in milligrams the recipe must have. | 
 **maxVitaminC** | **optional.Float32**| The maximum amount of Vitamin C in milligrams the recipe can have. | 
 **minVitaminD** | **optional.Float32**| The minimum amount of Vitamin D in micrograms the recipe must have. | 
 **maxVitaminD** | **optional.Float32**| The maximum amount of Vitamin D in micrograms the recipe can have. | 
 **minVitaminE** | **optional.Float32**| The minimum amount of Vitamin E in milligrams the recipe must have. | 
 **maxVitaminE** | **optional.Float32**| The maximum amount of Vitamin E in milligrams the recipe can have. | 
 **minVitaminK** | **optional.Float32**| The minimum amount of Vitamin K in micrograms the recipe must have. | 
 **maxVitaminK** | **optional.Float32**| The maximum amount of Vitamin K in micrograms the recipe can have. | 
 **minVitaminB1** | **optional.Float32**| The minimum amount of Vitamin B1 in milligrams the recipe must have. | 
 **maxVitaminB1** | **optional.Float32**| The maximum amount of Vitamin B1 in milligrams the recipe can have. | 
 **minVitaminB2** | **optional.Float32**| The minimum amount of Vitamin B2 in milligrams the recipe must have. | 
 **maxVitaminB2** | **optional.Float32**| The maximum amount of Vitamin B2 in milligrams the recipe can have. | 
 **minVitaminB5** | **optional.Float32**| The minimum amount of Vitamin B5 in milligrams the recipe must have. | 
 **maxVitaminB5** | **optional.Float32**| The maximum amount of Vitamin B5 in milligrams the recipe can have. | 
 **minVitaminB3** | **optional.Float32**| The minimum amount of Vitamin B3 in milligrams the recipe must have. | 
 **maxVitaminB3** | **optional.Float32**| The maximum amount of Vitamin B3 in milligrams the recipe can have. | 
 **minVitaminB6** | **optional.Float32**| The minimum amount of Vitamin B6 in milligrams the recipe must have. | 
 **maxVitaminB6** | **optional.Float32**| The maximum amount of Vitamin B6 in milligrams the recipe can have. | 
 **minVitaminB12** | **optional.Float32**| The minimum amount of Vitamin B12 in micrograms the recipe must have. | 
 **maxVitaminB12** | **optional.Float32**| The maximum amount of Vitamin B12 in micrograms the recipe can have. | 
 **minFiber** | **optional.Float32**| The minimum amount of fiber in grams the recipe must have. | 
 **maxFiber** | **optional.Float32**| The maximum amount of fiber in grams the recipe can have. | 
 **minFolate** | **optional.Float32**| The minimum amount of folate in micrograms the recipe must have. | 
 **maxFolate** | **optional.Float32**| The maximum amount of folate in micrograms the recipe can have. | 
 **minFolicAcid** | **optional.Float32**| The minimum amount of folic acid in micrograms the recipe must have. | 
 **maxFolicAcid** | **optional.Float32**| The maximum amount of folic acid in micrograms the recipe can have. | 
 **minIodine** | **optional.Float32**| The minimum amount of iodine in micrograms the recipe must have. | 
 **maxIodine** | **optional.Float32**| The maximum amount of iodine in micrograms the recipe can have. | 
 **minIron** | **optional.Float32**| The minimum amount of iron in milligrams the recipe must have. | 
 **maxIron** | **optional.Float32**| The maximum amount of iron in milligrams the recipe can have. | 
 **minMagnesium** | **optional.Float32**| The minimum amount of magnesium in milligrams the recipe must have. | 
 **maxMagnesium** | **optional.Float32**| The maximum amount of magnesium in milligrams the recipe can have. | 
 **minManganese** | **optional.Float32**| The minimum amount of manganese in milligrams the recipe must have. | 
 **maxManganese** | **optional.Float32**| The maximum amount of manganese in milligrams the recipe can have. | 
 **minPhosphorus** | **optional.Float32**| The minimum amount of phosphorus in milligrams the recipe must have. | 
 **maxPhosphorus** | **optional.Float32**| The maximum amount of phosphorus in milligrams the recipe can have. | 
 **minPotassium** | **optional.Float32**| The minimum amount of potassium in milligrams the recipe must have. | 
 **maxPotassium** | **optional.Float32**| The maximum amount of potassium in milligrams the recipe can have. | 
 **minSelenium** | **optional.Float32**| The minimum amount of selenium in micrograms the recipe must have. | 
 **maxSelenium** | **optional.Float32**| The maximum amount of selenium in micrograms the recipe can have. | 
 **minSodium** | **optional.Float32**| The minimum amount of sodium in milligrams the recipe must have. | 
 **maxSodium** | **optional.Float32**| The maximum amount of sodium in milligrams the recipe can have. | 
 **minSugar** | **optional.Float32**| The minimum amount of sugar in grams the recipe must have. | 
 **maxSugar** | **optional.Float32**| The maximum amount of sugar in grams the recipe can have. | 
 **minZinc** | **optional.Float32**| The minimum amount of zinc in milligrams the recipe must have. | 
 **maxZinc** | **optional.Float32**| The maximum amount of zinc in milligrams the recipe can have. | 
 **offset** | **optional.Int32**| The number of results to skip (between 0 and 900). | 
 **number** | **optional.Int32**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [default to 10]
 **random** | **optional.Bool**| If true, every request will give you a random set of recipes within the requested limits. | 
 **limitLicense** | **optional.Bool**| Whether the recipes should have an open license that allows display with proper attribution. | [default to true]

### Return type

[**[]InlineResponse2002**](inline_response_200_2.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SummarizeRecipe

> InlineResponse20014 SummarizeRecipe(ctx, id)
Summarize Recipe

Automatically generate a short description that summarizes key information about the recipe.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32**| The item&#39;s id. | 

### Return type

[**InlineResponse20014**](inline_response_200_14.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## VisualizeEquipment

> string VisualizeEquipment(ctx, optional)
Equipment Widget

Visualize the equipment used to make a recipe.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***VisualizeEquipmentOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a VisualizeEquipmentOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentType** | **optional.String**| The content type. | 
 **accept** | **optional.String**| Accept header. | 

### Return type

**string**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## VisualizePriceBreakdown

> string VisualizePriceBreakdown(ctx, optional)
Price Breakdown Widget

Visualize the price breakdown of a recipe.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***VisualizePriceBreakdownOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a VisualizePriceBreakdownOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentType** | **optional.String**| The content type. | 
 **accept** | **optional.String**| Accept header. | 
 **language** | **optional.String**| The language of the input. Either &#39;en&#39; or &#39;de&#39;. | 

### Return type

**string**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## VisualizeRecipeEquipmentByID

> string VisualizeRecipeEquipmentByID(ctx, id, optional)
Equipment by ID Widget

Visualize a recipe's equipment list.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32**| The item&#39;s id. | 
 **optional** | ***VisualizeRecipeEquipmentByIDOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a VisualizeRecipeEquipmentByIDOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **defaultCss** | **optional.Bool**| Whether the default CSS should be added to the response. | [default to true]

### Return type

**string**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## VisualizeRecipeIngredientsByID

> string VisualizeRecipeIngredientsByID(ctx, id, optional)
Ingredients by ID Widget

Visualize a recipe's ingredient list.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32**| The item&#39;s id. | 
 **optional** | ***VisualizeRecipeIngredientsByIDOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a VisualizeRecipeIngredientsByIDOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **defaultCss** | **optional.Bool**| Whether the default CSS should be added to the response. | [default to true]
 **measure** | **optional.String**| Whether the the measures should be &#39;us&#39; or &#39;metric&#39;. | 

### Return type

**string**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## VisualizeRecipeNutrition

> string VisualizeRecipeNutrition(ctx, optional)
Recipe Nutrition Widget

Visualize a recipe's nutritional information as HTML including CSS.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***VisualizeRecipeNutritionOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a VisualizeRecipeNutritionOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentType** | **optional.String**| The content type. | 
 **accept** | **optional.String**| Accept header. | 
 **language** | **optional.String**| The language of the input. Either &#39;en&#39; or &#39;de&#39;. | 

### Return type

**string**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## VisualizeRecipeNutritionByID

> string VisualizeRecipeNutritionByID(ctx, id, optional)
Recipe Nutrition by ID Widget

Visualize a recipe's nutritional information as HTML including CSS.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32**| The item&#39;s id. | 
 **optional** | ***VisualizeRecipeNutritionByIDOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a VisualizeRecipeNutritionByIDOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **defaultCss** | **optional.Bool**| Whether the default CSS should be added to the response. | [default to true]
 **accept** | **optional.String**| Accept header. | 

### Return type

**string**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## VisualizeRecipePriceBreakdownByID

> string VisualizeRecipePriceBreakdownByID(ctx, id, optional)
Price Breakdown by ID Widget

Visualize a recipe's price breakdown.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32**| The item&#39;s id. | 
 **optional** | ***VisualizeRecipePriceBreakdownByIDOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a VisualizeRecipePriceBreakdownByIDOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **defaultCss** | **optional.Bool**| Whether the default CSS should be added to the response. | [default to true]

### Return type

**string**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## VisualizeRecipeTaste

> string VisualizeRecipeTaste(ctx, optional)
Recipe Taste Widget

Visualize a recipe's taste information as HTML including CSS. You can play around with that endpoint!

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***VisualizeRecipeTasteOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a VisualizeRecipeTasteOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **language** | **optional.String**| The language of the input. Either &#39;en&#39; or &#39;de&#39;. | 
 **contentType** | **optional.String**| The content type. | 
 **accept** | **optional.String**| Accept header. | 
 **normalize** | **optional.Bool**| Whether to normalize to the strongest taste. | 
 **rgb** | **optional.String**| Red, green, blue values for the chart color. | 

### Return type

**string**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## VisualizeRecipeTasteByID

> string VisualizeRecipeTasteByID(ctx, id, optional)
Recipe Taste by ID Widget

Get a recipe's taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32**| The item&#39;s id. | 
 **optional** | ***VisualizeRecipeTasteByIDOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a VisualizeRecipeTasteByIDOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **normalize** | **optional.Bool**| Whether to normalize to the strongest taste. | [default to true]
 **rgb** | **optional.String**| Red, green, blue values for the chart color. | 

### Return type

**string**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

