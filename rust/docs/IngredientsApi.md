# com.spoonacular.client\IngredientsApi

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**autocomplete_ingredient_search**](IngredientsApi.md#autocomplete_ingredient_search) | **Get** /food/ingredients/autocomplete | Autocomplete Ingredient Search
[**compute_ingredient_amount**](IngredientsApi.md#compute_ingredient_amount) | **Get** /food/ingredients/{id}/amount | Compute Ingredient Amount
[**get_ingredient_information**](IngredientsApi.md#get_ingredient_information) | **Get** /food/ingredients/{id}/information | Get Ingredient Information
[**get_ingredient_substitutes**](IngredientsApi.md#get_ingredient_substitutes) | **Get** /food/ingredients/substitutes | Get Ingredient Substitutes
[**get_ingredient_substitutes_by_id**](IngredientsApi.md#get_ingredient_substitutes_by_id) | **Get** /food/ingredients/{id}/substitutes | Get Ingredient Substitutes by ID
[**ingredient_search**](IngredientsApi.md#ingredient_search) | **Get** /food/ingredients/search | Ingredient Search
[**ingredients_by_id_image**](IngredientsApi.md#ingredients_by_id_image) | **Get** /recipes/{id}/ingredientWidget.png | Ingredients by ID Image
[**map_ingredients_to_grocery_products**](IngredientsApi.md#map_ingredients_to_grocery_products) | **Post** /food/ingredients/map | Map Ingredients to Grocery Products
[**visualize_ingredients**](IngredientsApi.md#visualize_ingredients) | **Post** /recipes/visualizeIngredients | Ingredients Widget



## autocomplete_ingredient_search

> Vec<::models::InlineResponse20024> autocomplete_ingredient_search(ctx, optional)
Autocomplete Ingredient Search

Autocomplete the entry of an ingredient.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The (natural language) search query. | 
 **number** | **i32**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [default to 10]
 **meta_information** | **bool**| Whether to return more meta information about the ingredients. | 
 **intolerances** | **String**| A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. | 

### Return type

[**Vec<::models::InlineResponse20024>**](inline_response_200_24.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## compute_ingredient_amount

> ::models::RecipesParseIngredientsNutritionWeightPerServing compute_ingredient_amount(ctx, id, nutrient, target, optional)
Compute Ingredient Amount

Compute the amount you need of a certain ingredient for a certain nutritional goal. For example, how much pineapple do you have to eat to get 10 grams of protein?

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **id** | **f32**| The id of the ingredient you want the amount for. | 
  **nutrient** | **String**| The target nutrient. See a list of supported nutrients. | 
  **target** | **f32**| The target number of the given nutrient. | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **f32**| The id of the ingredient you want the amount for. | 
 **nutrient** | **String**| The target nutrient. See a list of supported nutrients. | 
 **target** | **f32**| The target number of the given nutrient. | 
 **unit** | **String**| The target unit. | 

### Return type

[**::models::RecipesParseIngredientsNutritionWeightPerServing**](_recipes_parseIngredients_nutrition_weightPerServing.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_ingredient_information

> ::models::InlineResponse20022 get_ingredient_information(ctx, id, optional)
Get Ingredient Information

Use an ingredient id to get all available information about an ingredient, such as its image and supermarket aisle.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **id** | **i32**| The item's id. | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **i32**| The item's id. | 
 **amount** | **f32**| The amount of this ingredient. | 
 **unit** | **String**| The unit for the given amount. | 

### Return type

[**::models::InlineResponse20022**](inline_response_200_22.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_ingredient_substitutes

> ::models::InlineResponse20026 get_ingredient_substitutes(ctx, ingredient_name)
Get Ingredient Substitutes

Search for substitutes for a given ingredient.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **ingredient_name** | **String**| The name of the ingredient you want to replace. | 

### Return type

[**::models::InlineResponse20026**](inline_response_200_26.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_ingredient_substitutes_by_id

> ::models::InlineResponse20026 get_ingredient_substitutes_by_id(ctx, id)
Get Ingredient Substitutes by ID

Search for substitutes for a given ingredient.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **id** | **i32**| The item's id. | 

### Return type

[**::models::InlineResponse20026**](inline_response_200_26.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## ingredient_search

> ::models::InlineResponse20025 ingredient_search(ctx, optional)
Ingredient Search

Search for simple whole foods (e.g. fruits, vegetables, nuts, grains, meat, fish, dairy etc.).

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The (natural language) search query. | 
 **add_children** | **bool**| Whether to add children of found foods. | 
 **min_protein_percent** | **f32**| The minimum percentage of protein the food must have (between 0 and 100). | 
 **max_protein_percent** | **f32**| The maximum percentage of protein the food can have (between 0 and 100). | 
 **min_fat_percent** | **f32**| The minimum percentage of fat the food must have (between 0 and 100). | 
 **max_fat_percent** | **f32**| The maximum percentage of fat the food can have (between 0 and 100). | 
 **min_carbs_percent** | **f32**| The minimum percentage of carbs the food must have (between 0 and 100). | 
 **max_carbs_percent** | **f32**| The maximum percentage of carbs the food can have (between 0 and 100). | 
 **meta_information** | **bool**| Whether to return more meta information about the ingredients. | 
 **intolerances** | **String**| A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. | 
 **sort** | **String**| The strategy to sort recipes by. See a full list of supported sorting options. | 
 **sort_direction** | **String**| The direction in which to sort. Must be either 'asc' (ascending) or 'desc' (descending). | 
 **offset** | **i32**| The number of results to skip (between 0 and 900). | 
 **number** | **i32**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [default to 10]

### Return type

[**::models::InlineResponse20025**](inline_response_200_25.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## ingredients_by_id_image

> Value ingredients_by_id_image(ctx, id, optional)
Ingredients by ID Image

Visualize a recipe's ingredient list.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **id** | **f32**| The recipe id. | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **f32**| The recipe id. | 
 **measure** | **String**| Whether the the measures should be 'us' or 'metric'. | 

### Return type

[**Value**](Value.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## map_ingredients_to_grocery_products

> Vec<::models::InlineResponse20034> map_ingredients_to_grocery_products(ctx, inline_object2)
Map Ingredients to Grocery Products

Map a set of ingredients to products you can buy in the grocery store.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **inline_object2** | [**InlineObject2**](InlineObject2.md)|  | 

### Return type

[**Vec<::models::InlineResponse20034>**](inline_response_200_34.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## visualize_ingredients

> String visualize_ingredients(ctx, optional)
Ingredients Widget

Visualize ingredients of a recipe. You can play around with that endpoint!

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content_type** | **String**| The content type. | 
 **language** | **String**| The language of the input. Either 'en' or 'de'. | 
 **accept** | **String**| Accept header. | 

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

