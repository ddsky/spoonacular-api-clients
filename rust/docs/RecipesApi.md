# com.spoonacular.client\RecipesApi

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**analyze_a_recipe_search_query**](RecipesApi.md#analyze_a_recipe_search_query) | **Get** /recipes/queries/analyze | Analyze a Recipe Search Query
[**analyze_recipe_instructions**](RecipesApi.md#analyze_recipe_instructions) | **Post** /recipes/analyzeInstructions | Analyze Recipe Instructions
[**autocomplete_recipe_search**](RecipesApi.md#autocomplete_recipe_search) | **Get** /recipes/autocomplete | Autocomplete Recipe Search
[**classify_cuisine**](RecipesApi.md#classify_cuisine) | **Post** /recipes/cuisine | Classify Cuisine
[**compute_glycemic_load**](RecipesApi.md#compute_glycemic_load) | **Post** /food/ingredients/glycemicLoad | Compute Glycemic Load
[**convert_amounts**](RecipesApi.md#convert_amounts) | **Get** /recipes/convert | Convert Amounts
[**create_recipe_card**](RecipesApi.md#create_recipe_card) | **Post** /recipes/visualizeRecipe | Create Recipe Card
[**equipment_by_id_image**](RecipesApi.md#equipment_by_id_image) | **Get** /recipes/{id}/equipmentWidget.png | Equipment by ID Image
[**extract_recipe_from_website**](RecipesApi.md#extract_recipe_from_website) | **Get** /recipes/extract | Extract Recipe from Website
[**get_analyzed_recipe_instructions**](RecipesApi.md#get_analyzed_recipe_instructions) | **Get** /recipes/{id}/analyzedInstructions | Get Analyzed Recipe Instructions
[**get_random_recipes**](RecipesApi.md#get_random_recipes) | **Get** /recipes/random | Get Random Recipes
[**get_recipe_equipment_by_id**](RecipesApi.md#get_recipe_equipment_by_id) | **Get** /recipes/{id}/equipmentWidget.json | Equipment by ID
[**get_recipe_information**](RecipesApi.md#get_recipe_information) | **Get** /recipes/{id}/information | Get Recipe Information
[**get_recipe_information_bulk**](RecipesApi.md#get_recipe_information_bulk) | **Get** /recipes/informationBulk | Get Recipe Information Bulk
[**get_recipe_ingredients_by_id**](RecipesApi.md#get_recipe_ingredients_by_id) | **Get** /recipes/{id}/ingredientWidget.json | Ingredients by ID
[**get_recipe_nutrition_widget_by_id**](RecipesApi.md#get_recipe_nutrition_widget_by_id) | **Get** /recipes/{id}/nutritionWidget.json | Nutrition by ID
[**get_recipe_price_breakdown_by_id**](RecipesApi.md#get_recipe_price_breakdown_by_id) | **Get** /recipes/{id}/priceBreakdownWidget.json | Price Breakdown by ID
[**get_recipe_taste_by_id**](RecipesApi.md#get_recipe_taste_by_id) | **Get** /recipes/{id}/tasteWidget.json | Taste by ID
[**get_similar_recipes**](RecipesApi.md#get_similar_recipes) | **Get** /recipes/{id}/similar | Get Similar Recipes
[**guess_nutrition_by_dish_name**](RecipesApi.md#guess_nutrition_by_dish_name) | **Get** /recipes/guessNutrition | Guess Nutrition by Dish Name
[**ingredients_by_id_image**](RecipesApi.md#ingredients_by_id_image) | **Get** /recipes/{id}/ingredientWidget.png | Ingredients by ID Image
[**parse_ingredients**](RecipesApi.md#parse_ingredients) | **Post** /recipes/parseIngredients | Parse Ingredients
[**price_breakdown_by_id_image**](RecipesApi.md#price_breakdown_by_id_image) | **Get** /recipes/{id}/priceBreakdownWidget.png | Price Breakdown by ID Image
[**quick_answer**](RecipesApi.md#quick_answer) | **Get** /recipes/quickAnswer | Quick Answer
[**recipe_nutrition_by_id_image**](RecipesApi.md#recipe_nutrition_by_id_image) | **Get** /recipes/{id}/nutritionWidget.png | Recipe Nutrition by ID Image
[**recipe_nutrition_label_image**](RecipesApi.md#recipe_nutrition_label_image) | **Get** /recipes/{id}/nutritionLabel.png | Recipe Nutrition Label Image
[**recipe_nutrition_label_widget**](RecipesApi.md#recipe_nutrition_label_widget) | **Get** /recipes/{id}/nutritionLabel | Recipe Nutrition Label Widget
[**recipe_taste_by_id_image**](RecipesApi.md#recipe_taste_by_id_image) | **Get** /recipes/{id}/tasteWidget.png | Recipe Taste by ID Image
[**search_recipes**](RecipesApi.md#search_recipes) | **Get** /recipes/complexSearch | Search Recipes
[**search_recipes_by_ingredients**](RecipesApi.md#search_recipes_by_ingredients) | **Get** /recipes/findByIngredients | Search Recipes by Ingredients
[**search_recipes_by_nutrients**](RecipesApi.md#search_recipes_by_nutrients) | **Get** /recipes/findByNutrients | Search Recipes by Nutrients
[**summarize_recipe**](RecipesApi.md#summarize_recipe) | **Get** /recipes/{id}/summary | Summarize Recipe
[**visualize_equipment**](RecipesApi.md#visualize_equipment) | **Post** /recipes/visualizeEquipment | Equipment Widget
[**visualize_price_breakdown**](RecipesApi.md#visualize_price_breakdown) | **Post** /recipes/visualizePriceEstimator | Price Breakdown Widget
[**visualize_recipe_equipment_by_id**](RecipesApi.md#visualize_recipe_equipment_by_id) | **Get** /recipes/{id}/equipmentWidget | Equipment by ID Widget
[**visualize_recipe_ingredients_by_id**](RecipesApi.md#visualize_recipe_ingredients_by_id) | **Get** /recipes/{id}/ingredientWidget | Ingredients by ID Widget
[**visualize_recipe_nutrition**](RecipesApi.md#visualize_recipe_nutrition) | **Post** /recipes/visualizeNutrition | Recipe Nutrition Widget
[**visualize_recipe_nutrition_by_id**](RecipesApi.md#visualize_recipe_nutrition_by_id) | **Get** /recipes/{id}/nutritionWidget | Recipe Nutrition by ID Widget
[**visualize_recipe_price_breakdown_by_id**](RecipesApi.md#visualize_recipe_price_breakdown_by_id) | **Get** /recipes/{id}/priceBreakdownWidget | Price Breakdown by ID Widget
[**visualize_recipe_taste**](RecipesApi.md#visualize_recipe_taste) | **Post** /recipes/visualizeTaste | Recipe Taste Widget
[**visualize_recipe_taste_by_id**](RecipesApi.md#visualize_recipe_taste_by_id) | **Get** /recipes/{id}/tasteWidget | Recipe Taste by ID Widget



## analyze_a_recipe_search_query

> ::models::InlineResponse20018 analyze_a_recipe_search_query(ctx, q)
Analyze a Recipe Search Query

Parse a recipe search query to find out its intention.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **q** | **String**| The recipe search query. | 

### Return type

[**::models::InlineResponse20018**](inline_response_200_18.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## analyze_recipe_instructions

> ::models::InlineResponse20016 analyze_recipe_instructions(ctx, optional)
Analyze Recipe Instructions

This endpoint allows you to break down instructions into atomic steps. Furthermore, each step will contain the ingredients and equipment required. Additionally, all ingredients and equipment from the recipe's instructions will be extracted independently of the step they're used in.

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

### Return type

[**::models::InlineResponse20016**](inline_response_200_16.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## autocomplete_recipe_search

> Vec<::models::InlineResponse2007> autocomplete_recipe_search(ctx, optional)
Autocomplete Recipe Search

Autocomplete a partial input to suggest possible recipe names.

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

### Return type

[**Vec<::models::InlineResponse2007>**](inline_response_200_7.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## classify_cuisine

> ::models::InlineResponse20017 classify_cuisine(ctx, optional)
Classify Cuisine

Classify the recipe's cuisine.

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

### Return type

[**::models::InlineResponse20017**](inline_response_200_17.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## compute_glycemic_load

> ::models::InlineResponse20023 compute_glycemic_load(ctx, inline_object, optional)
Compute Glycemic Load

Retrieve the glycemic index for a list of ingredients and compute the individual and total glycemic load.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **inline_object** | [**InlineObject**](InlineObject.md)|  | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inline_object** | [**InlineObject**](InlineObject.md)|  | 
 **language** | **String**| The language of the input. Either 'en' or 'de'. | 

### Return type

[**::models::InlineResponse20023**](inline_response_200_23.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## convert_amounts

> ::models::InlineResponse20019 convert_amounts(ctx, ingredient_name, source_amount, source_unit, target_unit)
Convert Amounts

Convert amounts like \"2 cups of flour to grams\".

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **ingredient_name** | **String**| The ingredient which you want to convert. | 
  **source_amount** | **f32**| The amount from which you want to convert, e.g. the 2.5 in \"2.5 cups of flour to grams\". | 
  **source_unit** | **String**| The unit from which you want to convert, e.g. the grams in \"2.5 cups of flour to grams\". You can also use \"piece\", e.g. \"3.4 oz tomatoes to piece\" | 
  **target_unit** | **String**| The unit to which you want to convert, e.g. the grams in \"2.5 cups of flour to grams\". You can also use \"piece\", e.g. \"3.4 oz tomatoes to piece\" | 

### Return type

[**::models::InlineResponse20019**](inline_response_200_19.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## create_recipe_card

> ::models::InlineResponse20015 create_recipe_card(ctx, optional)
Create Recipe Card

Generate a recipe card for a recipe.

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

### Return type

[**::models::InlineResponse20015**](inline_response_200_15.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## equipment_by_id_image

> Value equipment_by_id_image(ctx, id)
Equipment by ID Image

Visualize a recipe's equipment list as an image.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **id** | **f32**| The recipe id. | 

### Return type

[**Value**](Value.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## extract_recipe_from_website

> ::models::InlineResponse2003 extract_recipe_from_website(ctx, url, optional)
Extract Recipe from Website

This endpoint lets you extract recipe data such as title, ingredients, and instructions from any properly formatted Website.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **url** | **String**| The URL of the recipe page. | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **String**| The URL of the recipe page. | 
 **force_extraction** | **bool**| If true, the extraction will be triggered whether we already know the recipe or not. Use this only if information is missing as this operation is slower. | 
 **analyze** | **bool**| If true, the recipe will be analyzed and classified resolving in more data such as cuisines, dish types, and more. | 
 **include_nutrition** | **bool**| Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. | [default to false]
 **include_taste** | **bool**| Whether taste data should be added to correctly parsed ingredients. | [default to false]

### Return type

[**::models::InlineResponse2003**](inline_response_200_3.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_analyzed_recipe_instructions

> ::models::InlineResponse20013 get_analyzed_recipe_instructions(ctx, id, optional)
Get Analyzed Recipe Instructions

Get an analyzed breakdown of a recipe's instructions. Each step is enriched with the ingredients and equipment required.

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
 **step_breakdown** | **bool**| Whether to break down the recipe steps even more. | 

### Return type

[**::models::InlineResponse20013**](inline_response_200_13.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_random_recipes

> ::models::InlineResponse2006 get_random_recipes(ctx, optional)
Get Random Recipes

Find random (popular) recipes. If you need to filter recipes by diet, nutrition etc. you might want to consider using the complex recipe search endpoint and set the sort request parameter to random.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit_license** | **bool**| Whether the recipes should have an open license that allows display with proper attribution. | [default to true]
 **tags** | **String**| The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have. | 
 **number** | **i32**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [default to 10]

### Return type

[**::models::InlineResponse2006**](inline_response_200_6.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_recipe_equipment_by_id

> ::models::InlineResponse2009 get_recipe_equipment_by_id(ctx, id)
Equipment by ID

Get a recipe's equipment list.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **id** | **i32**| The item's id. | 

### Return type

[**::models::InlineResponse2009**](inline_response_200_9.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_recipe_information

> ::models::InlineResponse2003 get_recipe_information(ctx, id, optional)
Get Recipe Information

Use a recipe id to get full information about a recipe, such as ingredients, nutrition, diet and allergen information, etc.

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
 **include_nutrition** | **bool**| Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. | [default to false]

### Return type

[**::models::InlineResponse2003**](inline_response_200_3.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_recipe_information_bulk

> Vec<::models::InlineResponse2004> get_recipe_information_bulk(ctx, ids, optional)
Get Recipe Information Bulk

Get information about multiple recipes at once. This is equivalent to calling the Get Recipe Information endpoint multiple times, but faster.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **ids** | **String**| A comma-separated list of recipe ids. | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | **String**| A comma-separated list of recipe ids. | 
 **include_nutrition** | **bool**| Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. | [default to false]

### Return type

[**Vec<::models::InlineResponse2004>**](inline_response_200_4.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_recipe_ingredients_by_id

> ::models::InlineResponse20011 get_recipe_ingredients_by_id(ctx, id)
Ingredients by ID

Get a recipe's ingredient list.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **id** | **i32**| The item's id. | 

### Return type

[**::models::InlineResponse20011**](inline_response_200_11.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_recipe_nutrition_widget_by_id

> ::models::InlineResponse20012 get_recipe_nutrition_widget_by_id(ctx, id)
Nutrition by ID

Get a recipe's nutrition data.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **id** | **i32**| The item's id. | 

### Return type

[**::models::InlineResponse20012**](inline_response_200_12.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_recipe_price_breakdown_by_id

> ::models::InlineResponse20010 get_recipe_price_breakdown_by_id(ctx, id)
Price Breakdown by ID

Get a recipe's price breakdown data.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **id** | **i32**| The item's id. | 

### Return type

[**::models::InlineResponse20010**](inline_response_200_10.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_recipe_taste_by_id

> ::models::InlineResponse2008 get_recipe_taste_by_id(ctx, id, optional)
Taste by ID

Get a recipe's taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.

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
 **normalize** | **bool**| Normalize to the strongest taste. | [default to true]

### Return type

[**::models::InlineResponse2008**](inline_response_200_8.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_similar_recipes

> Vec<::models::InlineResponse2005> get_similar_recipes(ctx, id, optional)
Get Similar Recipes

Find recipes which are similar to the given one.

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
 **number** | **i32**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [default to 10]
 **limit_license** | **bool**| Whether the recipes should have an open license that allows display with proper attribution. | [default to true]

### Return type

[**Vec<::models::InlineResponse2005>**](inline_response_200_5.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## guess_nutrition_by_dish_name

> ::models::InlineResponse20021 guess_nutrition_by_dish_name(ctx, title)
Guess Nutrition by Dish Name

Estimate the macronutrients of a dish based on its title.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **title** | **String**| The title of the dish. | 

### Return type

[**::models::InlineResponse20021**](inline_response_200_21.md)

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


## parse_ingredients

> Vec<::models::InlineResponse20020> parse_ingredients(ctx, optional)
Parse Ingredients

Extract an ingredient from plain text.

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

### Return type

[**Vec<::models::InlineResponse20020>**](inline_response_200_20.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## price_breakdown_by_id_image

> Value price_breakdown_by_id_image(ctx, id)
Price Breakdown by ID Image

Visualize a recipe's price breakdown.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **id** | **f32**| The recipe id. | 

### Return type

[**Value**](Value.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## quick_answer

> ::models::InlineResponse20050 quick_answer(ctx, q)
Quick Answer

Answer a nutrition related natural language question.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **q** | **String**| The nutrition related question. | 

### Return type

[**::models::InlineResponse20050**](inline_response_200_50.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## recipe_nutrition_by_id_image

> Value recipe_nutrition_by_id_image(ctx, id)
Recipe Nutrition by ID Image

Visualize a recipe's nutritional information as an image.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **id** | **f32**| The recipe id. | 

### Return type

[**Value**](Value.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## recipe_nutrition_label_image

> Value recipe_nutrition_label_image(ctx, id, optional)
Recipe Nutrition Label Image

Get a recipe's nutrition label as an image.

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
 **show_optional_nutrients** | **bool**| Whether to show optional nutrients. | 
 **show_zero_values** | **bool**| Whether to show zero values. | 
 **show_ingredients** | **bool**| Whether to show a list of ingredients. | 

### Return type

[**Value**](Value.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## recipe_nutrition_label_widget

> String recipe_nutrition_label_widget(ctx, id, optional)
Recipe Nutrition Label Widget

Get a recipe's nutrition label as an HTML widget.

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
 **default_css** | **bool**| Whether the default CSS should be added to the response. | [default to true]
 **show_optional_nutrients** | **bool**| Whether to show optional nutrients. | 
 **show_zero_values** | **bool**| Whether to show zero values. | 
 **show_ingredients** | **bool**| Whether to show a list of ingredients. | 

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## recipe_taste_by_id_image

> Value recipe_taste_by_id_image(ctx, id, optional)
Recipe Taste by ID Image

Get a recipe's taste as an image. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.

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
 **normalize** | **bool**| Normalize to the strongest taste. | 
 **rgb** | **String**| Red, green, blue values for the chart color. | 

### Return type

[**Value**](Value.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## search_recipes

> ::models::InlineResponse200 search_recipes(ctx, optional)
Search Recipes

Search through hundreds of thousands of recipes using advanced filtering and ranking. NOTE: This method combines searching by query, by ingredients, and by nutrients into one endpoint.

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
 **cuisine** | **String**| The cuisine(s) of the recipes. One or more, comma separated (will be interpreted as 'OR'). See a full list of supported cuisines. | 
 **exclude_cuisine** | **String**| The cuisine(s) the recipes must not match. One or more, comma separated (will be interpreted as 'AND'). See a full list of supported cuisines. | 
 **diet** | **String**| The diet for which the recipes must be suitable. See a full list of supported diets. | 
 **intolerances** | **String**| A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. | 
 **equipment** | **String**| The equipment required. Multiple values will be interpreted as 'or'. For example, value could be \"blender, frying pan, bowl\". | 
 **include_ingredients** | **String**| A comma-separated list of ingredients that should/must be used in the recipes. | 
 **exclude_ingredients** | **String**| A comma-separated list of ingredients or ingredient types that the recipes must not contain. | 
 **_type** | **String**| The type of recipe. See a full list of supported meal types. | 
 **instructions_required** | **bool**| Whether the recipes must have instructions. | 
 **fill_ingredients** | **bool**| Add information about the ingredients and whether they are used or missing in relation to the query. | 
 **add_recipe_information** | **bool**| If set to true, you get more information about the recipes returned. | 
 **add_recipe_nutrition** | **bool**| If set to true, you get nutritional information about each recipes returned. | 
 **author** | **String**| The username of the recipe author. | 
 **tags** | **String**| The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have. | 
 **recipe_box_id** | **f32**| The id of the recipe box to which the search should be limited to. | 
 **title_match** | **String**| Enter text that must be found in the title of the recipes. | 
 **max_ready_time** | **f32**| The maximum time in minutes it should take to prepare and cook the recipe. | 
 **ignore_pantry** | **bool**| Whether to ignore typical pantry items, such as water, salt, flour, etc. | [default to false]
 **sort** | **String**| The strategy to sort recipes by. See a full list of supported sorting options. | 
 **sort_direction** | **String**| The direction in which to sort. Must be either 'asc' (ascending) or 'desc' (descending). | 
 **min_carbs** | **f32**| The minimum amount of carbohydrates in grams the recipe must have. | 
 **max_carbs** | **f32**| The maximum amount of carbohydrates in grams the recipe can have. | 
 **min_protein** | **f32**| The minimum amount of protein in grams the recipe must have. | 
 **max_protein** | **f32**| The maximum amount of protein in grams the recipe can have. | 
 **min_calories** | **f32**| The minimum amount of calories the recipe must have. | 
 **max_calories** | **f32**| The maximum amount of calories the recipe can have. | 
 **min_fat** | **f32**| The minimum amount of fat in grams the recipe must have. | 
 **max_fat** | **f32**| The maximum amount of fat in grams the recipe can have. | 
 **min_alcohol** | **f32**| The minimum amount of alcohol in grams the recipe must have. | 
 **max_alcohol** | **f32**| The maximum amount of alcohol in grams the recipe can have. | 
 **min_caffeine** | **f32**| The minimum amount of caffeine in milligrams the recipe must have. | 
 **max_caffeine** | **f32**| The maximum amount of caffeine in milligrams the recipe can have. | 
 **min_copper** | **f32**| The minimum amount of copper in milligrams the recipe must have. | 
 **max_copper** | **f32**| The maximum amount of copper in milligrams the recipe can have. | 
 **min_calcium** | **f32**| The minimum amount of calcium in milligrams the recipe must have. | 
 **max_calcium** | **f32**| The maximum amount of calcium in milligrams the recipe can have. | 
 **min_choline** | **f32**| The minimum amount of choline in milligrams the recipe must have. | 
 **max_choline** | **f32**| The maximum amount of choline in milligrams the recipe can have. | 
 **min_cholesterol** | **f32**| The minimum amount of cholesterol in milligrams the recipe must have. | 
 **max_cholesterol** | **f32**| The maximum amount of cholesterol in milligrams the recipe can have. | 
 **min_fluoride** | **f32**| The minimum amount of fluoride in milligrams the recipe must have. | 
 **max_fluoride** | **f32**| The maximum amount of fluoride in milligrams the recipe can have. | 
 **min_saturated_fat** | **f32**| The minimum amount of saturated fat in grams the recipe must have. | 
 **max_saturated_fat** | **f32**| The maximum amount of saturated fat in grams the recipe can have. | 
 **min_vitamin_a** | **f32**| The minimum amount of Vitamin A in IU the recipe must have. | 
 **max_vitamin_a** | **f32**| The maximum amount of Vitamin A in IU the recipe can have. | 
 **min_vitamin_c** | **f32**| The minimum amount of Vitamin C milligrams the recipe must have. | 
 **max_vitamin_c** | **f32**| The maximum amount of Vitamin C in milligrams the recipe can have. | 
 **min_vitamin_d** | **f32**| The minimum amount of Vitamin D in micrograms the recipe must have. | 
 **max_vitamin_d** | **f32**| The maximum amount of Vitamin D in micrograms the recipe can have. | 
 **min_vitamin_e** | **f32**| The minimum amount of Vitamin E in milligrams the recipe must have. | 
 **max_vitamin_e** | **f32**| The maximum amount of Vitamin E in milligrams the recipe can have. | 
 **min_vitamin_k** | **f32**| The minimum amount of Vitamin K in micrograms the recipe must have. | 
 **max_vitamin_k** | **f32**| The maximum amount of Vitamin K in micrograms the recipe can have. | 
 **min_vitamin_b1** | **f32**| The minimum amount of Vitamin B1 in milligrams the recipe must have. | 
 **max_vitamin_b1** | **f32**| The maximum amount of Vitamin B1 in milligrams the recipe can have. | 
 **min_vitamin_b2** | **f32**| The minimum amount of Vitamin B2 in milligrams the recipe must have. | 
 **max_vitamin_b2** | **f32**| The maximum amount of Vitamin B2 in milligrams the recipe can have. | 
 **min_vitamin_b5** | **f32**| The minimum amount of Vitamin B5 in milligrams the recipe must have. | 
 **max_vitamin_b5** | **f32**| The maximum amount of Vitamin B5 in milligrams the recipe can have. | 
 **min_vitamin_b3** | **f32**| The minimum amount of Vitamin B3 in milligrams the recipe must have. | 
 **max_vitamin_b3** | **f32**| The maximum amount of Vitamin B3 in milligrams the recipe can have. | 
 **min_vitamin_b6** | **f32**| The minimum amount of Vitamin B6 in milligrams the recipe must have. | 
 **max_vitamin_b6** | **f32**| The maximum amount of Vitamin B6 in milligrams the recipe can have. | 
 **min_vitamin_b12** | **f32**| The minimum amount of Vitamin B12 in micrograms the recipe must have. | 
 **max_vitamin_b12** | **f32**| The maximum amount of Vitamin B12 in micrograms the recipe can have. | 
 **min_fiber** | **f32**| The minimum amount of fiber in grams the recipe must have. | 
 **max_fiber** | **f32**| The maximum amount of fiber in grams the recipe can have. | 
 **min_folate** | **f32**| The minimum amount of folate in micrograms the recipe must have. | 
 **max_folate** | **f32**| The maximum amount of folate in micrograms the recipe can have. | 
 **min_folic_acid** | **f32**| The minimum amount of folic acid in micrograms the recipe must have. | 
 **max_folic_acid** | **f32**| The maximum amount of folic acid in micrograms the recipe can have. | 
 **min_iodine** | **f32**| The minimum amount of iodine in micrograms the recipe must have. | 
 **max_iodine** | **f32**| The maximum amount of iodine in micrograms the recipe can have. | 
 **min_iron** | **f32**| The minimum amount of iron in milligrams the recipe must have. | 
 **max_iron** | **f32**| The maximum amount of iron in milligrams the recipe can have. | 
 **min_magnesium** | **f32**| The minimum amount of magnesium in milligrams the recipe must have. | 
 **max_magnesium** | **f32**| The maximum amount of magnesium in milligrams the recipe can have. | 
 **min_manganese** | **f32**| The minimum amount of manganese in milligrams the recipe must have. | 
 **max_manganese** | **f32**| The maximum amount of manganese in milligrams the recipe can have. | 
 **min_phosphorus** | **f32**| The minimum amount of phosphorus in milligrams the recipe must have. | 
 **max_phosphorus** | **f32**| The maximum amount of phosphorus in milligrams the recipe can have. | 
 **min_potassium** | **f32**| The minimum amount of potassium in milligrams the recipe must have. | 
 **max_potassium** | **f32**| The maximum amount of potassium in milligrams the recipe can have. | 
 **min_selenium** | **f32**| The minimum amount of selenium in micrograms the recipe must have. | 
 **max_selenium** | **f32**| The maximum amount of selenium in micrograms the recipe can have. | 
 **min_sodium** | **f32**| The minimum amount of sodium in milligrams the recipe must have. | 
 **max_sodium** | **f32**| The maximum amount of sodium in milligrams the recipe can have. | 
 **min_sugar** | **f32**| The minimum amount of sugar in grams the recipe must have. | 
 **max_sugar** | **f32**| The maximum amount of sugar in grams the recipe can have. | 
 **min_zinc** | **f32**| The minimum amount of zinc in milligrams the recipe must have. | 
 **max_zinc** | **f32**| The maximum amount of zinc in milligrams the recipe can have. | 
 **offset** | **i32**| The number of results to skip (between 0 and 900). | 
 **number** | **i32**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [default to 10]
 **limit_license** | **bool**| Whether the recipes should have an open license that allows display with proper attribution. | [default to true]

### Return type

[**::models::InlineResponse200**](inline_response_200.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## search_recipes_by_ingredients

> Vec<::models::InlineResponse2001> search_recipes_by_ingredients(ctx, optional)
Search Recipes by Ingredients

 Ever wondered what recipes you can cook with the ingredients you have in your fridge or pantry? This endpoint lets you find recipes that either maximize the usage of ingredients you have at hand (pre shopping) or minimize the ingredients that you don't currently have (post shopping).         

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredients** | **String**| A comma-separated list of ingredients that the recipes should contain. | 
 **number** | **i32**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [default to 10]
 **limit_license** | **bool**| Whether the recipes should have an open license that allows display with proper attribution. | [default to true]
 **ranking** | **f32**| Whether to maximize used ingredients (1) or minimize missing ingredients (2) first. | 
 **ignore_pantry** | **bool**| Whether to ignore typical pantry items, such as water, salt, flour, etc. | [default to false]

### Return type

[**Vec<::models::InlineResponse2001>**](inline_response_200_1.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## search_recipes_by_nutrients

> Vec<::models::InlineResponse2002> search_recipes_by_nutrients(ctx, optional)
Search Recipes by Nutrients

Find a set of recipes that adhere to the given nutritional limits. You may set limits for macronutrients (calories, protein, fat, and carbohydrate) and/or many micronutrients.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **min_carbs** | **f32**| The minimum amount of carbohydrates in grams the recipe must have. | 
 **max_carbs** | **f32**| The maximum amount of carbohydrates in grams the recipe can have. | 
 **min_protein** | **f32**| The minimum amount of protein in grams the recipe must have. | 
 **max_protein** | **f32**| The maximum amount of protein in grams the recipe can have. | 
 **min_calories** | **f32**| The minimum amount of calories the recipe must have. | 
 **max_calories** | **f32**| The maximum amount of calories the recipe can have. | 
 **min_fat** | **f32**| The minimum amount of fat in grams the recipe must have. | 
 **max_fat** | **f32**| The maximum amount of fat in grams the recipe can have. | 
 **min_alcohol** | **f32**| The minimum amount of alcohol in grams the recipe must have. | 
 **max_alcohol** | **f32**| The maximum amount of alcohol in grams the recipe can have. | 
 **min_caffeine** | **f32**| The minimum amount of caffeine in milligrams the recipe must have. | 
 **max_caffeine** | **f32**| The maximum amount of caffeine in milligrams the recipe can have. | 
 **min_copper** | **f32**| The minimum amount of copper in milligrams the recipe must have. | 
 **max_copper** | **f32**| The maximum amount of copper in milligrams the recipe can have. | 
 **min_calcium** | **f32**| The minimum amount of calcium in milligrams the recipe must have. | 
 **max_calcium** | **f32**| The maximum amount of calcium in milligrams the recipe can have. | 
 **min_choline** | **f32**| The minimum amount of choline in milligrams the recipe must have. | 
 **max_choline** | **f32**| The maximum amount of choline in milligrams the recipe can have. | 
 **min_cholesterol** | **f32**| The minimum amount of cholesterol in milligrams the recipe must have. | 
 **max_cholesterol** | **f32**| The maximum amount of cholesterol in milligrams the recipe can have. | 
 **min_fluoride** | **f32**| The minimum amount of fluoride in milligrams the recipe must have. | 
 **max_fluoride** | **f32**| The maximum amount of fluoride in milligrams the recipe can have. | 
 **min_saturated_fat** | **f32**| The minimum amount of saturated fat in grams the recipe must have. | 
 **max_saturated_fat** | **f32**| The maximum amount of saturated fat in grams the recipe can have. | 
 **min_vitamin_a** | **f32**| The minimum amount of Vitamin A in IU the recipe must have. | 
 **max_vitamin_a** | **f32**| The maximum amount of Vitamin A in IU the recipe can have. | 
 **min_vitamin_c** | **f32**| The minimum amount of Vitamin C in milligrams the recipe must have. | 
 **max_vitamin_c** | **f32**| The maximum amount of Vitamin C in milligrams the recipe can have. | 
 **min_vitamin_d** | **f32**| The minimum amount of Vitamin D in micrograms the recipe must have. | 
 **max_vitamin_d** | **f32**| The maximum amount of Vitamin D in micrograms the recipe can have. | 
 **min_vitamin_e** | **f32**| The minimum amount of Vitamin E in milligrams the recipe must have. | 
 **max_vitamin_e** | **f32**| The maximum amount of Vitamin E in milligrams the recipe can have. | 
 **min_vitamin_k** | **f32**| The minimum amount of Vitamin K in micrograms the recipe must have. | 
 **max_vitamin_k** | **f32**| The maximum amount of Vitamin K in micrograms the recipe can have. | 
 **min_vitamin_b1** | **f32**| The minimum amount of Vitamin B1 in milligrams the recipe must have. | 
 **max_vitamin_b1** | **f32**| The maximum amount of Vitamin B1 in milligrams the recipe can have. | 
 **min_vitamin_b2** | **f32**| The minimum amount of Vitamin B2 in milligrams the recipe must have. | 
 **max_vitamin_b2** | **f32**| The maximum amount of Vitamin B2 in milligrams the recipe can have. | 
 **min_vitamin_b5** | **f32**| The minimum amount of Vitamin B5 in milligrams the recipe must have. | 
 **max_vitamin_b5** | **f32**| The maximum amount of Vitamin B5 in milligrams the recipe can have. | 
 **min_vitamin_b3** | **f32**| The minimum amount of Vitamin B3 in milligrams the recipe must have. | 
 **max_vitamin_b3** | **f32**| The maximum amount of Vitamin B3 in milligrams the recipe can have. | 
 **min_vitamin_b6** | **f32**| The minimum amount of Vitamin B6 in milligrams the recipe must have. | 
 **max_vitamin_b6** | **f32**| The maximum amount of Vitamin B6 in milligrams the recipe can have. | 
 **min_vitamin_b12** | **f32**| The minimum amount of Vitamin B12 in micrograms the recipe must have. | 
 **max_vitamin_b12** | **f32**| The maximum amount of Vitamin B12 in micrograms the recipe can have. | 
 **min_fiber** | **f32**| The minimum amount of fiber in grams the recipe must have. | 
 **max_fiber** | **f32**| The maximum amount of fiber in grams the recipe can have. | 
 **min_folate** | **f32**| The minimum amount of folate in micrograms the recipe must have. | 
 **max_folate** | **f32**| The maximum amount of folate in micrograms the recipe can have. | 
 **min_folic_acid** | **f32**| The minimum amount of folic acid in micrograms the recipe must have. | 
 **max_folic_acid** | **f32**| The maximum amount of folic acid in micrograms the recipe can have. | 
 **min_iodine** | **f32**| The minimum amount of iodine in micrograms the recipe must have. | 
 **max_iodine** | **f32**| The maximum amount of iodine in micrograms the recipe can have. | 
 **min_iron** | **f32**| The minimum amount of iron in milligrams the recipe must have. | 
 **max_iron** | **f32**| The maximum amount of iron in milligrams the recipe can have. | 
 **min_magnesium** | **f32**| The minimum amount of magnesium in milligrams the recipe must have. | 
 **max_magnesium** | **f32**| The maximum amount of magnesium in milligrams the recipe can have. | 
 **min_manganese** | **f32**| The minimum amount of manganese in milligrams the recipe must have. | 
 **max_manganese** | **f32**| The maximum amount of manganese in milligrams the recipe can have. | 
 **min_phosphorus** | **f32**| The minimum amount of phosphorus in milligrams the recipe must have. | 
 **max_phosphorus** | **f32**| The maximum amount of phosphorus in milligrams the recipe can have. | 
 **min_potassium** | **f32**| The minimum amount of potassium in milligrams the recipe must have. | 
 **max_potassium** | **f32**| The maximum amount of potassium in milligrams the recipe can have. | 
 **min_selenium** | **f32**| The minimum amount of selenium in micrograms the recipe must have. | 
 **max_selenium** | **f32**| The maximum amount of selenium in micrograms the recipe can have. | 
 **min_sodium** | **f32**| The minimum amount of sodium in milligrams the recipe must have. | 
 **max_sodium** | **f32**| The maximum amount of sodium in milligrams the recipe can have. | 
 **min_sugar** | **f32**| The minimum amount of sugar in grams the recipe must have. | 
 **max_sugar** | **f32**| The maximum amount of sugar in grams the recipe can have. | 
 **min_zinc** | **f32**| The minimum amount of zinc in milligrams the recipe must have. | 
 **max_zinc** | **f32**| The maximum amount of zinc in milligrams the recipe can have. | 
 **offset** | **i32**| The number of results to skip (between 0 and 900). | 
 **number** | **i32**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [default to 10]
 **random** | **bool**| If true, every request will give you a random set of recipes within the requested limits. | 
 **limit_license** | **bool**| Whether the recipes should have an open license that allows display with proper attribution. | [default to true]

### Return type

[**Vec<::models::InlineResponse2002>**](inline_response_200_2.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## summarize_recipe

> ::models::InlineResponse20014 summarize_recipe(ctx, id)
Summarize Recipe

Automatically generate a short description that summarizes key information about the recipe.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **id** | **i32**| The item's id. | 

### Return type

[**::models::InlineResponse20014**](inline_response_200_14.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## visualize_equipment

> String visualize_equipment(ctx, optional)
Equipment Widget

Visualize the equipment used to make a recipe.

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
 **accept** | **String**| Accept header. | 

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## visualize_price_breakdown

> String visualize_price_breakdown(ctx, optional)
Price Breakdown Widget

Visualize the price breakdown of a recipe.

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
 **accept** | **String**| Accept header. | 
 **language** | **String**| The language of the input. Either 'en' or 'de'. | 

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## visualize_recipe_equipment_by_id

> String visualize_recipe_equipment_by_id(ctx, id, optional)
Equipment by ID Widget

Visualize a recipe's equipment list.

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
 **default_css** | **bool**| Whether the default CSS should be added to the response. | [default to true]

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## visualize_recipe_ingredients_by_id

> String visualize_recipe_ingredients_by_id(ctx, id, optional)
Ingredients by ID Widget

Visualize a recipe's ingredient list.

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
 **default_css** | **bool**| Whether the default CSS should be added to the response. | [default to true]
 **measure** | **String**| Whether the the measures should be 'us' or 'metric'. | 

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## visualize_recipe_nutrition

> String visualize_recipe_nutrition(ctx, optional)
Recipe Nutrition Widget

Visualize a recipe's nutritional information as HTML including CSS.

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
 **accept** | **String**| Accept header. | 
 **language** | **String**| The language of the input. Either 'en' or 'de'. | 

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## visualize_recipe_nutrition_by_id

> String visualize_recipe_nutrition_by_id(ctx, id, optional)
Recipe Nutrition by ID Widget

Visualize a recipe's nutritional information as HTML including CSS.

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
 **default_css** | **bool**| Whether the default CSS should be added to the response. | [default to true]
 **accept** | **String**| Accept header. | 

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## visualize_recipe_price_breakdown_by_id

> String visualize_recipe_price_breakdown_by_id(ctx, id, optional)
Price Breakdown by ID Widget

Visualize a recipe's price breakdown.

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
 **default_css** | **bool**| Whether the default CSS should be added to the response. | [default to true]

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## visualize_recipe_taste

> String visualize_recipe_taste(ctx, optional)
Recipe Taste Widget

Visualize a recipe's taste information as HTML including CSS. You can play around with that endpoint!

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **language** | **String**| The language of the input. Either 'en' or 'de'. | 
 **content_type** | **String**| The content type. | 
 **accept** | **String**| Accept header. | 
 **normalize** | **bool**| Whether to normalize to the strongest taste. | 
 **rgb** | **String**| Red, green, blue values for the chart color. | 

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## visualize_recipe_taste_by_id

> String visualize_recipe_taste_by_id(ctx, id, optional)
Recipe Taste by ID Widget

Get a recipe's taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.

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
 **normalize** | **bool**| Whether to normalize to the strongest taste. | [default to true]
 **rgb** | **String**| Red, green, blue values for the chart color. | 

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

