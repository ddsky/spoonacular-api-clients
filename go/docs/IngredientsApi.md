# com.spoonacular.client\IngredientsApi

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AutocompleteIngredientSearch**](IngredientsApi.md#AutocompleteIngredientSearch) | **Get** /food/ingredients/autocomplete | Autocomplete Ingredient Search
[**ComputeIngredientAmount**](IngredientsApi.md#ComputeIngredientAmount) | **Get** /food/ingredients/{id}/amount | Compute Ingredient Amount
[**GetIngredientInformation**](IngredientsApi.md#GetIngredientInformation) | **Get** /food/ingredients/{id}/information | Get Ingredient Information
[**GetIngredientSubstitutes**](IngredientsApi.md#GetIngredientSubstitutes) | **Get** /food/ingredients/substitutes | Get Ingredient Substitutes
[**GetIngredientSubstitutesByID**](IngredientsApi.md#GetIngredientSubstitutesByID) | **Get** /food/ingredients/{id}/substitutes | Get Ingredient Substitutes by ID
[**IngredientSearch**](IngredientsApi.md#IngredientSearch) | **Get** /food/ingredients/search | Ingredient Search
[**IngredientsByIDImage**](IngredientsApi.md#IngredientsByIDImage) | **Get** /recipes/{id}/ingredientWidget.png | Ingredients by ID Image
[**MapIngredientsToGroceryProducts**](IngredientsApi.md#MapIngredientsToGroceryProducts) | **Post** /food/ingredients/map | Map Ingredients to Grocery Products
[**VisualizeIngredients**](IngredientsApi.md#VisualizeIngredients) | **Post** /recipes/visualizeIngredients | Ingredients Widget



## AutocompleteIngredientSearch

> []InlineResponse20024 AutocompleteIngredientSearch(ctx, optional)
Autocomplete Ingredient Search

Autocomplete the entry of an ingredient.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***AutocompleteIngredientSearchOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a AutocompleteIngredientSearchOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **optional.String**| The (natural language) search query. | 
 **number** | **optional.Int32**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [default to 10]
 **metaInformation** | **optional.Bool**| Whether to return more meta information about the ingredients. | 
 **intolerances** | **optional.String**| A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. | 

### Return type

[**[]InlineResponse20024**](inline_response_200_24.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ComputeIngredientAmount

> RecipesParseIngredientsNutritionWeightPerServing ComputeIngredientAmount(ctx, id, nutrient, target, optional)
Compute Ingredient Amount

Compute the amount you need of a certain ingredient for a certain nutritional goal. For example, how much pineapple do you have to eat to get 10 grams of protein?

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **float32**| The id of the ingredient you want the amount for. | 
**nutrient** | **string**| The target nutrient. See a list of supported nutrients. | 
**target** | **float32**| The target number of the given nutrient. | 
 **optional** | ***ComputeIngredientAmountOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a ComputeIngredientAmountOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



 **unit** | **optional.String**| The target unit. | 

### Return type

[**RecipesParseIngredientsNutritionWeightPerServing**](_recipes_parseIngredients_nutrition_weightPerServing.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetIngredientInformation

> InlineResponse20022 GetIngredientInformation(ctx, id, optional)
Get Ingredient Information

Use an ingredient id to get all available information about an ingredient, such as its image and supermarket aisle.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32**| The item&#39;s id. | 
 **optional** | ***GetIngredientInformationOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a GetIngredientInformationOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **amount** | **optional.Float32**| The amount of this ingredient. | 
 **unit** | **optional.String**| The unit for the given amount. | 

### Return type

[**InlineResponse20022**](inline_response_200_22.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetIngredientSubstitutes

> InlineResponse20026 GetIngredientSubstitutes(ctx, ingredientName)
Get Ingredient Substitutes

Search for substitutes for a given ingredient.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**ingredientName** | **string**| The name of the ingredient you want to replace. | 

### Return type

[**InlineResponse20026**](inline_response_200_26.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetIngredientSubstitutesByID

> InlineResponse20026 GetIngredientSubstitutesByID(ctx, id)
Get Ingredient Substitutes by ID

Search for substitutes for a given ingredient.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32**| The item&#39;s id. | 

### Return type

[**InlineResponse20026**](inline_response_200_26.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## IngredientSearch

> InlineResponse20025 IngredientSearch(ctx, optional)
Ingredient Search

Search for simple whole foods (e.g. fruits, vegetables, nuts, grains, meat, fish, dairy etc.).

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***IngredientSearchOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a IngredientSearchOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **optional.String**| The (natural language) search query. | 
 **addChildren** | **optional.Bool**| Whether to add children of found foods. | 
 **minProteinPercent** | **optional.Float32**| The minimum percentage of protein the food must have (between 0 and 100). | 
 **maxProteinPercent** | **optional.Float32**| The maximum percentage of protein the food can have (between 0 and 100). | 
 **minFatPercent** | **optional.Float32**| The minimum percentage of fat the food must have (between 0 and 100). | 
 **maxFatPercent** | **optional.Float32**| The maximum percentage of fat the food can have (between 0 and 100). | 
 **minCarbsPercent** | **optional.Float32**| The minimum percentage of carbs the food must have (between 0 and 100). | 
 **maxCarbsPercent** | **optional.Float32**| The maximum percentage of carbs the food can have (between 0 and 100). | 
 **metaInformation** | **optional.Bool**| Whether to return more meta information about the ingredients. | 
 **intolerances** | **optional.String**| A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. | 
 **sort** | **optional.String**| The strategy to sort recipes by. See a full list of supported sorting options. | 
 **sortDirection** | **optional.String**| The direction in which to sort. Must be either &#39;asc&#39; (ascending) or &#39;desc&#39; (descending). | 
 **offset** | **optional.Int32**| The number of results to skip (between 0 and 900). | 
 **number** | **optional.Int32**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [default to 10]

### Return type

[**InlineResponse20025**](inline_response_200_25.md)

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


## MapIngredientsToGroceryProducts

> []InlineResponse20034 MapIngredientsToGroceryProducts(ctx, inlineObject2)
Map Ingredients to Grocery Products

Map a set of ingredients to products you can buy in the grocery store.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**inlineObject2** | [**InlineObject2**](InlineObject2.md)|  | 

### Return type

[**[]InlineResponse20034**](inline_response_200_34.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## VisualizeIngredients

> string VisualizeIngredients(ctx, optional)
Ingredients Widget

Visualize ingredients of a recipe. You can play around with that endpoint!

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***VisualizeIngredientsOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a VisualizeIngredientsOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentType** | **optional.String**| The content type. | 
 **language** | **optional.String**| The language of the input. Either &#39;en&#39; or &#39;de&#39;. | 
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

