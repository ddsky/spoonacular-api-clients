# \RecipesApi

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**analyze_a_recipe_search_query**](RecipesApi.md#analyze_a_recipe_search_query) | **GET** /recipes/queries/analyze | Analyze a Recipe Search Query
[**analyze_recipe_instructions**](RecipesApi.md#analyze_recipe_instructions) | **POST** /recipes/analyzeInstructions | Analyze Recipe Instructions
[**autocomplete_recipe_search**](RecipesApi.md#autocomplete_recipe_search) | **GET** /recipes/autocomplete | Autocomplete Recipe Search
[**classify_cuisine**](RecipesApi.md#classify_cuisine) | **POST** /recipes/cuisine | Classify Cuisine
[**compute_glycemic_load**](RecipesApi.md#compute_glycemic_load) | **POST** /food/ingredients/glycemicLoad | Compute Glycemic Load
[**convert_amounts**](RecipesApi.md#convert_amounts) | **GET** /recipes/convert | Convert Amounts
[**create_recipe_card**](RecipesApi.md#create_recipe_card) | **POST** /recipes/visualizeRecipe | Create Recipe Card
[**equipment_by_id_image**](RecipesApi.md#equipment_by_id_image) | **GET** /recipes/{id}/equipmentWidget.png | Equipment by ID Image
[**extract_recipe_from_website**](RecipesApi.md#extract_recipe_from_website) | **GET** /recipes/extract | Extract Recipe from Website
[**get_analyzed_recipe_instructions**](RecipesApi.md#get_analyzed_recipe_instructions) | **GET** /recipes/{id}/analyzedInstructions | Get Analyzed Recipe Instructions
[**get_random_recipes**](RecipesApi.md#get_random_recipes) | **GET** /recipes/random | Get Random Recipes
[**get_recipe_equipment_by_id**](RecipesApi.md#get_recipe_equipment_by_id) | **GET** /recipes/{id}/equipmentWidget.json | Equipment by ID
[**get_recipe_information**](RecipesApi.md#get_recipe_information) | **GET** /recipes/{id}/information | Get Recipe Information
[**get_recipe_information_bulk**](RecipesApi.md#get_recipe_information_bulk) | **GET** /recipes/informationBulk | Get Recipe Information Bulk
[**get_recipe_ingredients_by_id**](RecipesApi.md#get_recipe_ingredients_by_id) | **GET** /recipes/{id}/ingredientWidget.json | Ingredients by ID
[**get_recipe_nutrition_widget_by_id**](RecipesApi.md#get_recipe_nutrition_widget_by_id) | **GET** /recipes/{id}/nutritionWidget.json | Nutrition by ID
[**get_recipe_price_breakdown_by_id**](RecipesApi.md#get_recipe_price_breakdown_by_id) | **GET** /recipes/{id}/priceBreakdownWidget.json | Price Breakdown by ID
[**get_recipe_taste_by_id**](RecipesApi.md#get_recipe_taste_by_id) | **GET** /recipes/{id}/tasteWidget.json | Taste by ID
[**get_similar_recipes**](RecipesApi.md#get_similar_recipes) | **GET** /recipes/{id}/similar | Get Similar Recipes
[**guess_nutrition_by_dish_name**](RecipesApi.md#guess_nutrition_by_dish_name) | **GET** /recipes/guessNutrition | Guess Nutrition by Dish Name
[**parse_ingredients**](RecipesApi.md#parse_ingredients) | **POST** /recipes/parseIngredients | Parse Ingredients
[**price_breakdown_by_id_image**](RecipesApi.md#price_breakdown_by_id_image) | **GET** /recipes/{id}/priceBreakdownWidget.png | Price Breakdown by ID Image
[**quick_answer**](RecipesApi.md#quick_answer) | **GET** /recipes/quickAnswer | Quick Answer
[**recipe_nutrition_by_id_image**](RecipesApi.md#recipe_nutrition_by_id_image) | **GET** /recipes/{id}/nutritionWidget.png | Recipe Nutrition by ID Image
[**recipe_nutrition_label_image**](RecipesApi.md#recipe_nutrition_label_image) | **GET** /recipes/{id}/nutritionLabel.png | Recipe Nutrition Label Image
[**recipe_nutrition_label_widget**](RecipesApi.md#recipe_nutrition_label_widget) | **GET** /recipes/{id}/nutritionLabel | Recipe Nutrition Label Widget
[**recipe_taste_by_id_image**](RecipesApi.md#recipe_taste_by_id_image) | **GET** /recipes/{id}/tasteWidget.png | Recipe Taste by ID Image
[**search_recipes**](RecipesApi.md#search_recipes) | **GET** /recipes/complexSearch | Search Recipes
[**search_recipes_by_ingredients**](RecipesApi.md#search_recipes_by_ingredients) | **GET** /recipes/findByIngredients | Search Recipes by Ingredients
[**search_recipes_by_nutrients**](RecipesApi.md#search_recipes_by_nutrients) | **GET** /recipes/findByNutrients | Search Recipes by Nutrients
[**summarize_recipe**](RecipesApi.md#summarize_recipe) | **GET** /recipes/{id}/summary | Summarize Recipe
[**visualize_equipment**](RecipesApi.md#visualize_equipment) | **POST** /recipes/visualizeEquipment | Equipment Widget
[**visualize_price_breakdown**](RecipesApi.md#visualize_price_breakdown) | **POST** /recipes/visualizePriceEstimator | Price Breakdown Widget
[**visualize_recipe_equipment_by_id**](RecipesApi.md#visualize_recipe_equipment_by_id) | **GET** /recipes/{id}/equipmentWidget | Equipment by ID Widget
[**visualize_recipe_ingredients_by_id**](RecipesApi.md#visualize_recipe_ingredients_by_id) | **GET** /recipes/{id}/ingredientWidget | Ingredients by ID Widget
[**visualize_recipe_nutrition**](RecipesApi.md#visualize_recipe_nutrition) | **POST** /recipes/visualizeNutrition | Recipe Nutrition Widget
[**visualize_recipe_nutrition_by_id**](RecipesApi.md#visualize_recipe_nutrition_by_id) | **GET** /recipes/{id}/nutritionWidget | Recipe Nutrition by ID Widget
[**visualize_recipe_price_breakdown_by_id**](RecipesApi.md#visualize_recipe_price_breakdown_by_id) | **GET** /recipes/{id}/priceBreakdownWidget | Price Breakdown by ID Widget
[**visualize_recipe_taste**](RecipesApi.md#visualize_recipe_taste) | **POST** /recipes/visualizeTaste | Recipe Taste Widget
[**visualize_recipe_taste_by_id**](RecipesApi.md#visualize_recipe_taste_by_id) | **GET** /recipes/{id}/tasteWidget | Recipe Taste by ID Widget



## analyze_a_recipe_search_query

> crate::models::AnalyzeARecipeSearchQuery200Response analyze_a_recipe_search_query(q)
Analyze a Recipe Search Query

Parse a recipe search query to find out its intention.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**q** | **String** | The recipe search query. | [required] |

### Return type

[**crate::models::AnalyzeARecipeSearchQuery200Response**](analyzeARecipeSearchQuery_200_response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## analyze_recipe_instructions

> crate::models::AnalyzeRecipeInstructions200Response analyze_recipe_instructions(content_type)
Analyze Recipe Instructions

This endpoint allows you to break down instructions into atomic steps. Furthermore, each step will contain the ingredients and equipment required. Additionally, all ingredients and equipment from the recipe's instructions will be extracted independently of the step they're used in.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**content_type** | Option<**String**> | The content type. |  |

### Return type

[**crate::models::AnalyzeRecipeInstructions200Response**](analyzeRecipeInstructions_200_response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## autocomplete_recipe_search

> Vec<crate::models::AutocompleteRecipeSearch200ResponseInner> autocomplete_recipe_search(query, number)
Autocomplete Recipe Search

Autocomplete a partial input to suggest possible recipe names.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**query** | Option<**String**> | The (natural language) search query. |  |
**number** | Option<**i32**> | The maximum number of items to return (between 1 and 100). Defaults to 10. |  |[default to 10]

### Return type

[**Vec<crate::models::AutocompleteRecipeSearch200ResponseInner>**](autocompleteRecipeSearch_200_response_inner.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## classify_cuisine

> crate::models::ClassifyCuisine200Response classify_cuisine(content_type)
Classify Cuisine

Classify the recipe's cuisine.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**content_type** | Option<**String**> | The content type. |  |

### Return type

[**crate::models::ClassifyCuisine200Response**](classifyCuisine_200_response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## compute_glycemic_load

> crate::models::ComputeGlycemicLoad200Response compute_glycemic_load(compute_glycemic_load_request, language)
Compute Glycemic Load

Retrieve the glycemic index for a list of ingredients and compute the individual and total glycemic load.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**compute_glycemic_load_request** | [**ComputeGlycemicLoadRequest**](ComputeGlycemicLoadRequest.md) |  | [required] |
**language** | Option<**String**> | The language of the input. Either 'en' or 'de'. |  |

### Return type

[**crate::models::ComputeGlycemicLoad200Response**](computeGlycemicLoad_200_response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## convert_amounts

> crate::models::ConvertAmounts200Response convert_amounts(ingredient_name, source_amount, source_unit, target_unit)
Convert Amounts

Convert amounts like \"2 cups of flour to grams\".

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**ingredient_name** | **String** | The ingredient which you want to convert. | [required] |
**source_amount** | **f32** | The amount from which you want to convert, e.g. the 2.5 in \"2.5 cups of flour to grams\". | [required] |
**source_unit** | **String** | The unit from which you want to convert, e.g. the grams in \"2.5 cups of flour to grams\". You can also use \"piece\", e.g. \"3.4 oz tomatoes to piece\" | [required] |
**target_unit** | **String** | The unit to which you want to convert, e.g. the grams in \"2.5 cups of flour to grams\". You can also use \"piece\", e.g. \"3.4 oz tomatoes to piece\" | [required] |

### Return type

[**crate::models::ConvertAmounts200Response**](convertAmounts_200_response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## create_recipe_card

> crate::models::CreateRecipeCard200Response create_recipe_card(content_type)
Create Recipe Card

Generate a recipe card for a recipe.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**content_type** | Option<**String**> | The content type. |  |

### Return type

[**crate::models::CreateRecipeCard200Response**](createRecipeCard_200_response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## equipment_by_id_image

> serde_json::Value equipment_by_id_image(id)
Equipment by ID Image

Visualize a recipe's equipment list as an image.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **f32** | The recipe id. | [required] |

### Return type

[**serde_json::Value**](serde_json::Value.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## extract_recipe_from_website

> crate::models::GetRecipeInformation200Response extract_recipe_from_website(url, force_extraction, analyze, include_nutrition, include_taste)
Extract Recipe from Website

This endpoint lets you extract recipe data such as title, ingredients, and instructions from any properly formatted Website.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**url** | **String** | The URL of the recipe page. | [required] |
**force_extraction** | Option<**bool**> | If true, the extraction will be triggered whether we already know the recipe or not. Use this only if information is missing as this operation is slower. |  |
**analyze** | Option<**bool**> | If true, the recipe will be analyzed and classified resolving in more data such as cuisines, dish types, and more. |  |
**include_nutrition** | Option<**bool**> | Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. |  |[default to false]
**include_taste** | Option<**bool**> | Whether taste data should be added to correctly parsed ingredients. |  |[default to false]

### Return type

[**crate::models::GetRecipeInformation200Response**](getRecipeInformation_200_response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_analyzed_recipe_instructions

> crate::models::GetAnalyzedRecipeInstructions200Response get_analyzed_recipe_instructions(id, step_breakdown)
Get Analyzed Recipe Instructions

Get an analyzed breakdown of a recipe's instructions. Each step is enriched with the ingredients and equipment required.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | The item's id. | [required] |
**step_breakdown** | Option<**bool**> | Whether to break down the recipe steps even more. |  |

### Return type

[**crate::models::GetAnalyzedRecipeInstructions200Response**](getAnalyzedRecipeInstructions_200_response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_random_recipes

> crate::models::GetRandomRecipes200Response get_random_recipes(limit_license, include_nutrition, include_tags, exclude_tags, number)
Get Random Recipes

Find random (popular) recipes. If you need to filter recipes by diet, nutrition etc. you might want to consider using the complex recipe search endpoint and set the sort request parameter to random.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**limit_license** | Option<**bool**> | Whether the recipes should have an open license that allows display with proper attribution. |  |[default to true]
**include_nutrition** | Option<**bool**> | Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. |  |[default to false]
**include_tags** | Option<**String**> | A comma-separated list of tags that the random recipe(s) must adhere to. |  |
**exclude_tags** | Option<**String**> | A comma-separated list of tags that the random recipe(s) must not adhere to. |  |
**number** | Option<**i32**> | The maximum number of items to return (between 1 and 100). Defaults to 10. |  |[default to 10]

### Return type

[**crate::models::GetRandomRecipes200Response**](getRandomRecipes_200_response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_recipe_equipment_by_id

> crate::models::GetRecipeEquipmentById200Response get_recipe_equipment_by_id(id)
Equipment by ID

Get a recipe's equipment list.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | The item's id. | [required] |

### Return type

[**crate::models::GetRecipeEquipmentById200Response**](getRecipeEquipmentByID_200_response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_recipe_information

> crate::models::GetRecipeInformation200Response get_recipe_information(id, include_nutrition)
Get Recipe Information

Use a recipe id to get full information about a recipe, such as ingredients, nutrition, diet and allergen information, etc.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | The item's id. | [required] |
**include_nutrition** | Option<**bool**> | Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. |  |[default to false]

### Return type

[**crate::models::GetRecipeInformation200Response**](getRecipeInformation_200_response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_recipe_information_bulk

> Vec<crate::models::GetRecipeInformationBulk200ResponseInner> get_recipe_information_bulk(ids, include_nutrition)
Get Recipe Information Bulk

Get information about multiple recipes at once. This is equivalent to calling the Get Recipe Information endpoint multiple times, but faster.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**ids** | **String** | A comma-separated list of recipe ids. | [required] |
**include_nutrition** | Option<**bool**> | Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. |  |[default to false]

### Return type

[**Vec<crate::models::GetRecipeInformationBulk200ResponseInner>**](getRecipeInformationBulk_200_response_inner.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_recipe_ingredients_by_id

> crate::models::GetRecipeIngredientsById200Response get_recipe_ingredients_by_id(id)
Ingredients by ID

Get a recipe's ingredient list.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | The item's id. | [required] |

### Return type

[**crate::models::GetRecipeIngredientsById200Response**](getRecipeIngredientsByID_200_response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_recipe_nutrition_widget_by_id

> crate::models::GetRecipeNutritionWidgetById200Response get_recipe_nutrition_widget_by_id(id)
Nutrition by ID

Get a recipe's nutrition data.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | The item's id. | [required] |

### Return type

[**crate::models::GetRecipeNutritionWidgetById200Response**](getRecipeNutritionWidgetByID_200_response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_recipe_price_breakdown_by_id

> crate::models::GetRecipePriceBreakdownById200Response get_recipe_price_breakdown_by_id(id)
Price Breakdown by ID

Get a recipe's price breakdown data.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | The item's id. | [required] |

### Return type

[**crate::models::GetRecipePriceBreakdownById200Response**](getRecipePriceBreakdownByID_200_response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_recipe_taste_by_id

> crate::models::GetRecipeTasteById200Response get_recipe_taste_by_id(id, normalize)
Taste by ID

Get a recipe's taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | The item's id. | [required] |
**normalize** | Option<**bool**> | Normalize to the strongest taste. |  |[default to true]

### Return type

[**crate::models::GetRecipeTasteById200Response**](getRecipeTasteByID_200_response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_similar_recipes

> Vec<crate::models::GetSimilarRecipes200ResponseInner> get_similar_recipes(id, number, limit_license)
Get Similar Recipes

Find recipes which are similar to the given one.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | The item's id. | [required] |
**number** | Option<**i32**> | The maximum number of items to return (between 1 and 100). Defaults to 10. |  |[default to 10]
**limit_license** | Option<**bool**> | Whether the recipes should have an open license that allows display with proper attribution. |  |[default to true]

### Return type

[**Vec<crate::models::GetSimilarRecipes200ResponseInner>**](getSimilarRecipes_200_response_inner.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## guess_nutrition_by_dish_name

> crate::models::GuessNutritionByDishName200Response guess_nutrition_by_dish_name(title)
Guess Nutrition by Dish Name

Estimate the macronutrients of a dish based on its title.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**title** | **String** | The title of the dish. | [required] |

### Return type

[**crate::models::GuessNutritionByDishName200Response**](guessNutritionByDishName_200_response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## parse_ingredients

> Vec<crate::models::ParseIngredients200ResponseInner> parse_ingredients(content_type, language)
Parse Ingredients

Extract an ingredient from plain text.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**content_type** | Option<**String**> | The content type. |  |
**language** | Option<**String**> | The language of the input. Either 'en' or 'de'. |  |

### Return type

[**Vec<crate::models::ParseIngredients200ResponseInner>**](parseIngredients_200_response_inner.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## price_breakdown_by_id_image

> serde_json::Value price_breakdown_by_id_image(id)
Price Breakdown by ID Image

Visualize a recipe's price breakdown.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **f32** | The recipe id. | [required] |

### Return type

[**serde_json::Value**](serde_json::Value.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## quick_answer

> crate::models::QuickAnswer200Response quick_answer(q)
Quick Answer

Answer a nutrition related natural language question.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**q** | **String** | The nutrition related question. | [required] |

### Return type

[**crate::models::QuickAnswer200Response**](quickAnswer_200_response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## recipe_nutrition_by_id_image

> serde_json::Value recipe_nutrition_by_id_image(id)
Recipe Nutrition by ID Image

Visualize a recipe's nutritional information as an image.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **f32** | The recipe id. | [required] |

### Return type

[**serde_json::Value**](serde_json::Value.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## recipe_nutrition_label_image

> serde_json::Value recipe_nutrition_label_image(id, show_optional_nutrients, show_zero_values, show_ingredients)
Recipe Nutrition Label Image

Get a recipe's nutrition label as an image.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **f32** | The recipe id. | [required] |
**show_optional_nutrients** | Option<**bool**> | Whether to show optional nutrients. |  |
**show_zero_values** | Option<**bool**> | Whether to show zero values. |  |
**show_ingredients** | Option<**bool**> | Whether to show a list of ingredients. |  |

### Return type

[**serde_json::Value**](serde_json::Value.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## recipe_nutrition_label_widget

> String recipe_nutrition_label_widget(id, default_css, show_optional_nutrients, show_zero_values, show_ingredients)
Recipe Nutrition Label Widget

Get a recipe's nutrition label as an HTML widget.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **f32** | The recipe id. | [required] |
**default_css** | Option<**bool**> | Whether the default CSS should be added to the response. |  |[default to true]
**show_optional_nutrients** | Option<**bool**> | Whether to show optional nutrients. |  |
**show_zero_values** | Option<**bool**> | Whether to show zero values. |  |
**show_ingredients** | Option<**bool**> | Whether to show a list of ingredients. |  |

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## recipe_taste_by_id_image

> serde_json::Value recipe_taste_by_id_image(id, normalize, rgb)
Recipe Taste by ID Image

Get a recipe's taste as an image. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **f32** | The recipe id. | [required] |
**normalize** | Option<**bool**> | Normalize to the strongest taste. |  |
**rgb** | Option<**String**> | Red, green, blue values for the chart color. |  |

### Return type

[**serde_json::Value**](serde_json::Value.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## search_recipes

> crate::models::SearchRecipes200Response search_recipes(query, cuisine, exclude_cuisine, diet, intolerances, equipment, include_ingredients, exclude_ingredients, r#type, instructions_required, fill_ingredients, add_recipe_information, add_recipe_nutrition, author, tags, recipe_box_id, title_match, max_ready_time, min_servings, max_servings, ignore_pantry, sort, sort_direction, min_carbs, max_carbs, min_protein, max_protein, min_calories, max_calories, min_fat, max_fat, min_alcohol, max_alcohol, min_caffeine, max_caffeine, min_copper, max_copper, min_calcium, max_calcium, min_choline, max_choline, min_cholesterol, max_cholesterol, min_fluoride, max_fluoride, min_saturated_fat, max_saturated_fat, min_vitamin_a, max_vitamin_a, min_vitamin_c, max_vitamin_c, min_vitamin_d, max_vitamin_d, min_vitamin_e, max_vitamin_e, min_vitamin_k, max_vitamin_k, min_vitamin_b1, max_vitamin_b1, min_vitamin_b2, max_vitamin_b2, min_vitamin_b5, max_vitamin_b5, min_vitamin_b3, max_vitamin_b3, min_vitamin_b6, max_vitamin_b6, min_vitamin_b12, max_vitamin_b12, min_fiber, max_fiber, min_folate, max_folate, min_folic_acid, max_folic_acid, min_iodine, max_iodine, min_iron, max_iron, min_magnesium, max_magnesium, min_manganese, max_manganese, min_phosphorus, max_phosphorus, min_potassium, max_potassium, min_selenium, max_selenium, min_sodium, max_sodium, min_sugar, max_sugar, min_zinc, max_zinc, offset, number, limit_license)
Search Recipes

Search through hundreds of thousands of recipes using advanced filtering and ranking. NOTE: This method combines searching by query, by ingredients, and by nutrients into one endpoint.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**query** | Option<**String**> | The (natural language) search query. |  |
**cuisine** | Option<**String**> | The cuisine(s) of the recipes. One or more, comma separated (will be interpreted as 'OR'). See a full list of supported cuisines. |  |
**exclude_cuisine** | Option<**String**> | The cuisine(s) the recipes must not match. One or more, comma separated (will be interpreted as 'AND'). See a full list of supported cuisines. |  |
**diet** | Option<**String**> | The diet for which the recipes must be suitable. See a full list of supported diets. |  |
**intolerances** | Option<**String**> | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. |  |
**equipment** | Option<**String**> | The equipment required. Multiple values will be interpreted as 'or'. For example, value could be \"blender, frying pan, bowl\". |  |
**include_ingredients** | Option<**String**> | A comma-separated list of ingredients that should/must be used in the recipes. |  |
**exclude_ingredients** | Option<**String**> | A comma-separated list of ingredients or ingredient types that the recipes must not contain. |  |
**r#type** | Option<**String**> | The type of recipe. See a full list of supported meal types. |  |
**instructions_required** | Option<**bool**> | Whether the recipes must have instructions. |  |
**fill_ingredients** | Option<**bool**> | Add information about the ingredients and whether they are used or missing in relation to the query. |  |
**add_recipe_information** | Option<**bool**> | If set to true, you get more information about the recipes returned. |  |
**add_recipe_nutrition** | Option<**bool**> | If set to true, you get nutritional information about each recipes returned. |  |
**author** | Option<**String**> | The username of the recipe author. |  |
**tags** | Option<**String**> | The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have. |  |
**recipe_box_id** | Option<**f32**> | The id of the recipe box to which the search should be limited to. |  |
**title_match** | Option<**String**> | Enter text that must be found in the title of the recipes. |  |
**max_ready_time** | Option<**f32**> | The maximum time in minutes it should take to prepare and cook the recipe. |  |
**min_servings** | Option<**f32**> | The minimum amount of servings the recipe is for. |  |
**max_servings** | Option<**f32**> | The maximum amount of servings the recipe is for. |  |
**ignore_pantry** | Option<**bool**> | Whether to ignore typical pantry items, such as water, salt, flour, etc. |  |[default to false]
**sort** | Option<**String**> | The strategy to sort recipes by. See a full list of supported sorting options. |  |
**sort_direction** | Option<**String**> | The direction in which to sort. Must be either 'asc' (ascending) or 'desc' (descending). |  |
**min_carbs** | Option<**f32**> | The minimum amount of carbohydrates in grams the recipe must have. |  |
**max_carbs** | Option<**f32**> | The maximum amount of carbohydrates in grams the recipe can have. |  |
**min_protein** | Option<**f32**> | The minimum amount of protein in grams the recipe must have. |  |
**max_protein** | Option<**f32**> | The maximum amount of protein in grams the recipe can have. |  |
**min_calories** | Option<**f32**> | The minimum amount of calories the recipe must have. |  |
**max_calories** | Option<**f32**> | The maximum amount of calories the recipe can have. |  |
**min_fat** | Option<**f32**> | The minimum amount of fat in grams the recipe must have. |  |
**max_fat** | Option<**f32**> | The maximum amount of fat in grams the recipe can have. |  |
**min_alcohol** | Option<**f32**> | The minimum amount of alcohol in grams the recipe must have. |  |
**max_alcohol** | Option<**f32**> | The maximum amount of alcohol in grams the recipe can have. |  |
**min_caffeine** | Option<**f32**> | The minimum amount of caffeine in milligrams the recipe must have. |  |
**max_caffeine** | Option<**f32**> | The maximum amount of caffeine in milligrams the recipe can have. |  |
**min_copper** | Option<**f32**> | The minimum amount of copper in milligrams the recipe must have. |  |
**max_copper** | Option<**f32**> | The maximum amount of copper in milligrams the recipe can have. |  |
**min_calcium** | Option<**f32**> | The minimum amount of calcium in milligrams the recipe must have. |  |
**max_calcium** | Option<**f32**> | The maximum amount of calcium in milligrams the recipe can have. |  |
**min_choline** | Option<**f32**> | The minimum amount of choline in milligrams the recipe must have. |  |
**max_choline** | Option<**f32**> | The maximum amount of choline in milligrams the recipe can have. |  |
**min_cholesterol** | Option<**f32**> | The minimum amount of cholesterol in milligrams the recipe must have. |  |
**max_cholesterol** | Option<**f32**> | The maximum amount of cholesterol in milligrams the recipe can have. |  |
**min_fluoride** | Option<**f32**> | The minimum amount of fluoride in milligrams the recipe must have. |  |
**max_fluoride** | Option<**f32**> | The maximum amount of fluoride in milligrams the recipe can have. |  |
**min_saturated_fat** | Option<**f32**> | The minimum amount of saturated fat in grams the recipe must have. |  |
**max_saturated_fat** | Option<**f32**> | The maximum amount of saturated fat in grams the recipe can have. |  |
**min_vitamin_a** | Option<**f32**> | The minimum amount of Vitamin A in IU the recipe must have. |  |
**max_vitamin_a** | Option<**f32**> | The maximum amount of Vitamin A in IU the recipe can have. |  |
**min_vitamin_c** | Option<**f32**> | The minimum amount of Vitamin C milligrams the recipe must have. |  |
**max_vitamin_c** | Option<**f32**> | The maximum amount of Vitamin C in milligrams the recipe can have. |  |
**min_vitamin_d** | Option<**f32**> | The minimum amount of Vitamin D in micrograms the recipe must have. |  |
**max_vitamin_d** | Option<**f32**> | The maximum amount of Vitamin D in micrograms the recipe can have. |  |
**min_vitamin_e** | Option<**f32**> | The minimum amount of Vitamin E in milligrams the recipe must have. |  |
**max_vitamin_e** | Option<**f32**> | The maximum amount of Vitamin E in milligrams the recipe can have. |  |
**min_vitamin_k** | Option<**f32**> | The minimum amount of Vitamin K in micrograms the recipe must have. |  |
**max_vitamin_k** | Option<**f32**> | The maximum amount of Vitamin K in micrograms the recipe can have. |  |
**min_vitamin_b1** | Option<**f32**> | The minimum amount of Vitamin B1 in milligrams the recipe must have. |  |
**max_vitamin_b1** | Option<**f32**> | The maximum amount of Vitamin B1 in milligrams the recipe can have. |  |
**min_vitamin_b2** | Option<**f32**> | The minimum amount of Vitamin B2 in milligrams the recipe must have. |  |
**max_vitamin_b2** | Option<**f32**> | The maximum amount of Vitamin B2 in milligrams the recipe can have. |  |
**min_vitamin_b5** | Option<**f32**> | The minimum amount of Vitamin B5 in milligrams the recipe must have. |  |
**max_vitamin_b5** | Option<**f32**> | The maximum amount of Vitamin B5 in milligrams the recipe can have. |  |
**min_vitamin_b3** | Option<**f32**> | The minimum amount of Vitamin B3 in milligrams the recipe must have. |  |
**max_vitamin_b3** | Option<**f32**> | The maximum amount of Vitamin B3 in milligrams the recipe can have. |  |
**min_vitamin_b6** | Option<**f32**> | The minimum amount of Vitamin B6 in milligrams the recipe must have. |  |
**max_vitamin_b6** | Option<**f32**> | The maximum amount of Vitamin B6 in milligrams the recipe can have. |  |
**min_vitamin_b12** | Option<**f32**> | The minimum amount of Vitamin B12 in micrograms the recipe must have. |  |
**max_vitamin_b12** | Option<**f32**> | The maximum amount of Vitamin B12 in micrograms the recipe can have. |  |
**min_fiber** | Option<**f32**> | The minimum amount of fiber in grams the recipe must have. |  |
**max_fiber** | Option<**f32**> | The maximum amount of fiber in grams the recipe can have. |  |
**min_folate** | Option<**f32**> | The minimum amount of folate in micrograms the recipe must have. |  |
**max_folate** | Option<**f32**> | The maximum amount of folate in micrograms the recipe can have. |  |
**min_folic_acid** | Option<**f32**> | The minimum amount of folic acid in micrograms the recipe must have. |  |
**max_folic_acid** | Option<**f32**> | The maximum amount of folic acid in micrograms the recipe can have. |  |
**min_iodine** | Option<**f32**> | The minimum amount of iodine in micrograms the recipe must have. |  |
**max_iodine** | Option<**f32**> | The maximum amount of iodine in micrograms the recipe can have. |  |
**min_iron** | Option<**f32**> | The minimum amount of iron in milligrams the recipe must have. |  |
**max_iron** | Option<**f32**> | The maximum amount of iron in milligrams the recipe can have. |  |
**min_magnesium** | Option<**f32**> | The minimum amount of magnesium in milligrams the recipe must have. |  |
**max_magnesium** | Option<**f32**> | The maximum amount of magnesium in milligrams the recipe can have. |  |
**min_manganese** | Option<**f32**> | The minimum amount of manganese in milligrams the recipe must have. |  |
**max_manganese** | Option<**f32**> | The maximum amount of manganese in milligrams the recipe can have. |  |
**min_phosphorus** | Option<**f32**> | The minimum amount of phosphorus in milligrams the recipe must have. |  |
**max_phosphorus** | Option<**f32**> | The maximum amount of phosphorus in milligrams the recipe can have. |  |
**min_potassium** | Option<**f32**> | The minimum amount of potassium in milligrams the recipe must have. |  |
**max_potassium** | Option<**f32**> | The maximum amount of potassium in milligrams the recipe can have. |  |
**min_selenium** | Option<**f32**> | The minimum amount of selenium in micrograms the recipe must have. |  |
**max_selenium** | Option<**f32**> | The maximum amount of selenium in micrograms the recipe can have. |  |
**min_sodium** | Option<**f32**> | The minimum amount of sodium in milligrams the recipe must have. |  |
**max_sodium** | Option<**f32**> | The maximum amount of sodium in milligrams the recipe can have. |  |
**min_sugar** | Option<**f32**> | The minimum amount of sugar in grams the recipe must have. |  |
**max_sugar** | Option<**f32**> | The maximum amount of sugar in grams the recipe can have. |  |
**min_zinc** | Option<**f32**> | The minimum amount of zinc in milligrams the recipe must have. |  |
**max_zinc** | Option<**f32**> | The maximum amount of zinc in milligrams the recipe can have. |  |
**offset** | Option<**i32**> | The number of results to skip (between 0 and 900). |  |
**number** | Option<**i32**> | The maximum number of items to return (between 1 and 100). Defaults to 10. |  |[default to 10]
**limit_license** | Option<**bool**> | Whether the recipes should have an open license that allows display with proper attribution. |  |[default to true]

### Return type

[**crate::models::SearchRecipes200Response**](searchRecipes_200_response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## search_recipes_by_ingredients

> Vec<crate::models::SearchRecipesByIngredients200ResponseInner> search_recipes_by_ingredients(ingredients, number, limit_license, ranking, ignore_pantry)
Search Recipes by Ingredients

 Ever wondered what recipes you can cook with the ingredients you have in your fridge or pantry? This endpoint lets you find recipes that either maximize the usage of ingredients you have at hand (pre shopping) or minimize the ingredients that you don't currently have (post shopping).         

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**ingredients** | Option<**String**> | A comma-separated list of ingredients that the recipes should contain. |  |
**number** | Option<**i32**> | The maximum number of items to return (between 1 and 100). Defaults to 10. |  |[default to 10]
**limit_license** | Option<**bool**> | Whether the recipes should have an open license that allows display with proper attribution. |  |[default to true]
**ranking** | Option<**f32**> | Whether to maximize used ingredients (1) or minimize missing ingredients (2) first. |  |
**ignore_pantry** | Option<**bool**> | Whether to ignore typical pantry items, such as water, salt, flour, etc. |  |[default to false]

### Return type

[**Vec<crate::models::SearchRecipesByIngredients200ResponseInner>**](searchRecipesByIngredients_200_response_inner.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## search_recipes_by_nutrients

> Vec<crate::models::SearchRecipesByNutrients200ResponseInner> search_recipes_by_nutrients(min_carbs, max_carbs, min_protein, max_protein, min_calories, max_calories, min_fat, max_fat, min_alcohol, max_alcohol, min_caffeine, max_caffeine, min_copper, max_copper, min_calcium, max_calcium, min_choline, max_choline, min_cholesterol, max_cholesterol, min_fluoride, max_fluoride, min_saturated_fat, max_saturated_fat, min_vitamin_a, max_vitamin_a, min_vitamin_c, max_vitamin_c, min_vitamin_d, max_vitamin_d, min_vitamin_e, max_vitamin_e, min_vitamin_k, max_vitamin_k, min_vitamin_b1, max_vitamin_b1, min_vitamin_b2, max_vitamin_b2, min_vitamin_b5, max_vitamin_b5, min_vitamin_b3, max_vitamin_b3, min_vitamin_b6, max_vitamin_b6, min_vitamin_b12, max_vitamin_b12, min_fiber, max_fiber, min_folate, max_folate, min_folic_acid, max_folic_acid, min_iodine, max_iodine, min_iron, max_iron, min_magnesium, max_magnesium, min_manganese, max_manganese, min_phosphorus, max_phosphorus, min_potassium, max_potassium, min_selenium, max_selenium, min_sodium, max_sodium, min_sugar, max_sugar, min_zinc, max_zinc, offset, number, random, limit_license)
Search Recipes by Nutrients

Find a set of recipes that adhere to the given nutritional limits. You may set limits for macronutrients (calories, protein, fat, and carbohydrate) and/or many micronutrients.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**min_carbs** | Option<**f32**> | The minimum amount of carbohydrates in grams the recipe must have. |  |
**max_carbs** | Option<**f32**> | The maximum amount of carbohydrates in grams the recipe can have. |  |
**min_protein** | Option<**f32**> | The minimum amount of protein in grams the recipe must have. |  |
**max_protein** | Option<**f32**> | The maximum amount of protein in grams the recipe can have. |  |
**min_calories** | Option<**f32**> | The minimum amount of calories the recipe must have. |  |
**max_calories** | Option<**f32**> | The maximum amount of calories the recipe can have. |  |
**min_fat** | Option<**f32**> | The minimum amount of fat in grams the recipe must have. |  |
**max_fat** | Option<**f32**> | The maximum amount of fat in grams the recipe can have. |  |
**min_alcohol** | Option<**f32**> | The minimum amount of alcohol in grams the recipe must have. |  |
**max_alcohol** | Option<**f32**> | The maximum amount of alcohol in grams the recipe can have. |  |
**min_caffeine** | Option<**f32**> | The minimum amount of caffeine in milligrams the recipe must have. |  |
**max_caffeine** | Option<**f32**> | The maximum amount of caffeine in milligrams the recipe can have. |  |
**min_copper** | Option<**f32**> | The minimum amount of copper in milligrams the recipe must have. |  |
**max_copper** | Option<**f32**> | The maximum amount of copper in milligrams the recipe can have. |  |
**min_calcium** | Option<**f32**> | The minimum amount of calcium in milligrams the recipe must have. |  |
**max_calcium** | Option<**f32**> | The maximum amount of calcium in milligrams the recipe can have. |  |
**min_choline** | Option<**f32**> | The minimum amount of choline in milligrams the recipe must have. |  |
**max_choline** | Option<**f32**> | The maximum amount of choline in milligrams the recipe can have. |  |
**min_cholesterol** | Option<**f32**> | The minimum amount of cholesterol in milligrams the recipe must have. |  |
**max_cholesterol** | Option<**f32**> | The maximum amount of cholesterol in milligrams the recipe can have. |  |
**min_fluoride** | Option<**f32**> | The minimum amount of fluoride in milligrams the recipe must have. |  |
**max_fluoride** | Option<**f32**> | The maximum amount of fluoride in milligrams the recipe can have. |  |
**min_saturated_fat** | Option<**f32**> | The minimum amount of saturated fat in grams the recipe must have. |  |
**max_saturated_fat** | Option<**f32**> | The maximum amount of saturated fat in grams the recipe can have. |  |
**min_vitamin_a** | Option<**f32**> | The minimum amount of Vitamin A in IU the recipe must have. |  |
**max_vitamin_a** | Option<**f32**> | The maximum amount of Vitamin A in IU the recipe can have. |  |
**min_vitamin_c** | Option<**f32**> | The minimum amount of Vitamin C in milligrams the recipe must have. |  |
**max_vitamin_c** | Option<**f32**> | The maximum amount of Vitamin C in milligrams the recipe can have. |  |
**min_vitamin_d** | Option<**f32**> | The minimum amount of Vitamin D in micrograms the recipe must have. |  |
**max_vitamin_d** | Option<**f32**> | The maximum amount of Vitamin D in micrograms the recipe can have. |  |
**min_vitamin_e** | Option<**f32**> | The minimum amount of Vitamin E in milligrams the recipe must have. |  |
**max_vitamin_e** | Option<**f32**> | The maximum amount of Vitamin E in milligrams the recipe can have. |  |
**min_vitamin_k** | Option<**f32**> | The minimum amount of Vitamin K in micrograms the recipe must have. |  |
**max_vitamin_k** | Option<**f32**> | The maximum amount of Vitamin K in micrograms the recipe can have. |  |
**min_vitamin_b1** | Option<**f32**> | The minimum amount of Vitamin B1 in milligrams the recipe must have. |  |
**max_vitamin_b1** | Option<**f32**> | The maximum amount of Vitamin B1 in milligrams the recipe can have. |  |
**min_vitamin_b2** | Option<**f32**> | The minimum amount of Vitamin B2 in milligrams the recipe must have. |  |
**max_vitamin_b2** | Option<**f32**> | The maximum amount of Vitamin B2 in milligrams the recipe can have. |  |
**min_vitamin_b5** | Option<**f32**> | The minimum amount of Vitamin B5 in milligrams the recipe must have. |  |
**max_vitamin_b5** | Option<**f32**> | The maximum amount of Vitamin B5 in milligrams the recipe can have. |  |
**min_vitamin_b3** | Option<**f32**> | The minimum amount of Vitamin B3 in milligrams the recipe must have. |  |
**max_vitamin_b3** | Option<**f32**> | The maximum amount of Vitamin B3 in milligrams the recipe can have. |  |
**min_vitamin_b6** | Option<**f32**> | The minimum amount of Vitamin B6 in milligrams the recipe must have. |  |
**max_vitamin_b6** | Option<**f32**> | The maximum amount of Vitamin B6 in milligrams the recipe can have. |  |
**min_vitamin_b12** | Option<**f32**> | The minimum amount of Vitamin B12 in micrograms the recipe must have. |  |
**max_vitamin_b12** | Option<**f32**> | The maximum amount of Vitamin B12 in micrograms the recipe can have. |  |
**min_fiber** | Option<**f32**> | The minimum amount of fiber in grams the recipe must have. |  |
**max_fiber** | Option<**f32**> | The maximum amount of fiber in grams the recipe can have. |  |
**min_folate** | Option<**f32**> | The minimum amount of folate in micrograms the recipe must have. |  |
**max_folate** | Option<**f32**> | The maximum amount of folate in micrograms the recipe can have. |  |
**min_folic_acid** | Option<**f32**> | The minimum amount of folic acid in micrograms the recipe must have. |  |
**max_folic_acid** | Option<**f32**> | The maximum amount of folic acid in micrograms the recipe can have. |  |
**min_iodine** | Option<**f32**> | The minimum amount of iodine in micrograms the recipe must have. |  |
**max_iodine** | Option<**f32**> | The maximum amount of iodine in micrograms the recipe can have. |  |
**min_iron** | Option<**f32**> | The minimum amount of iron in milligrams the recipe must have. |  |
**max_iron** | Option<**f32**> | The maximum amount of iron in milligrams the recipe can have. |  |
**min_magnesium** | Option<**f32**> | The minimum amount of magnesium in milligrams the recipe must have. |  |
**max_magnesium** | Option<**f32**> | The maximum amount of magnesium in milligrams the recipe can have. |  |
**min_manganese** | Option<**f32**> | The minimum amount of manganese in milligrams the recipe must have. |  |
**max_manganese** | Option<**f32**> | The maximum amount of manganese in milligrams the recipe can have. |  |
**min_phosphorus** | Option<**f32**> | The minimum amount of phosphorus in milligrams the recipe must have. |  |
**max_phosphorus** | Option<**f32**> | The maximum amount of phosphorus in milligrams the recipe can have. |  |
**min_potassium** | Option<**f32**> | The minimum amount of potassium in milligrams the recipe must have. |  |
**max_potassium** | Option<**f32**> | The maximum amount of potassium in milligrams the recipe can have. |  |
**min_selenium** | Option<**f32**> | The minimum amount of selenium in micrograms the recipe must have. |  |
**max_selenium** | Option<**f32**> | The maximum amount of selenium in micrograms the recipe can have. |  |
**min_sodium** | Option<**f32**> | The minimum amount of sodium in milligrams the recipe must have. |  |
**max_sodium** | Option<**f32**> | The maximum amount of sodium in milligrams the recipe can have. |  |
**min_sugar** | Option<**f32**> | The minimum amount of sugar in grams the recipe must have. |  |
**max_sugar** | Option<**f32**> | The maximum amount of sugar in grams the recipe can have. |  |
**min_zinc** | Option<**f32**> | The minimum amount of zinc in milligrams the recipe must have. |  |
**max_zinc** | Option<**f32**> | The maximum amount of zinc in milligrams the recipe can have. |  |
**offset** | Option<**i32**> | The number of results to skip (between 0 and 900). |  |
**number** | Option<**i32**> | The maximum number of items to return (between 1 and 100). Defaults to 10. |  |[default to 10]
**random** | Option<**bool**> | If true, every request will give you a random set of recipes within the requested limits. |  |
**limit_license** | Option<**bool**> | Whether the recipes should have an open license that allows display with proper attribution. |  |[default to true]

### Return type

[**Vec<crate::models::SearchRecipesByNutrients200ResponseInner>**](searchRecipesByNutrients_200_response_inner.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## summarize_recipe

> crate::models::SummarizeRecipe200Response summarize_recipe(id)
Summarize Recipe

Automatically generate a short description that summarizes key information about the recipe.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | The item's id. | [required] |

### Return type

[**crate::models::SummarizeRecipe200Response**](summarizeRecipe_200_response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## visualize_equipment

> String visualize_equipment(content_type, accept)
Equipment Widget

Visualize the equipment used to make a recipe.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**content_type** | Option<**String**> | The content type. |  |
**accept** | Option<**String**> | Accept header. |  |

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## visualize_price_breakdown

> String visualize_price_breakdown(content_type, accept, language)
Price Breakdown Widget

Visualize the price breakdown of a recipe.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**content_type** | Option<**String**> | The content type. |  |
**accept** | Option<**String**> | Accept header. |  |
**language** | Option<**String**> | The language of the input. Either 'en' or 'de'. |  |

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## visualize_recipe_equipment_by_id

> String visualize_recipe_equipment_by_id(id, default_css)
Equipment by ID Widget

Visualize a recipe's equipment list.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | The item's id. | [required] |
**default_css** | Option<**bool**> | Whether the default CSS should be added to the response. |  |[default to true]

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## visualize_recipe_ingredients_by_id

> String visualize_recipe_ingredients_by_id(id, default_css, measure)
Ingredients by ID Widget

Visualize a recipe's ingredient list.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | The item's id. | [required] |
**default_css** | Option<**bool**> | Whether the default CSS should be added to the response. |  |[default to true]
**measure** | Option<**String**> | Whether the the measures should be 'us' or 'metric'. |  |

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## visualize_recipe_nutrition

> String visualize_recipe_nutrition(content_type, accept, language)
Recipe Nutrition Widget

Visualize a recipe's nutritional information as HTML including CSS.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**content_type** | Option<**String**> | The content type. |  |
**accept** | Option<**String**> | Accept header. |  |
**language** | Option<**String**> | The language of the input. Either 'en' or 'de'. |  |

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## visualize_recipe_nutrition_by_id

> String visualize_recipe_nutrition_by_id(id, default_css, accept)
Recipe Nutrition by ID Widget

Visualize a recipe's nutritional information as HTML including CSS.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | The item's id. | [required] |
**default_css** | Option<**bool**> | Whether the default CSS should be added to the response. |  |[default to true]
**accept** | Option<**String**> | Accept header. |  |

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## visualize_recipe_price_breakdown_by_id

> String visualize_recipe_price_breakdown_by_id(id, default_css)
Price Breakdown by ID Widget

Visualize a recipe's price breakdown.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | The item's id. | [required] |
**default_css** | Option<**bool**> | Whether the default CSS should be added to the response. |  |[default to true]

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## visualize_recipe_taste

> String visualize_recipe_taste(language, content_type, accept, normalize, rgb)
Recipe Taste Widget

Visualize a recipe's taste information as HTML including CSS. You can play around with that endpoint!

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**language** | Option<**String**> | The language of the input. Either 'en' or 'de'. |  |
**content_type** | Option<**String**> | The content type. |  |
**accept** | Option<**String**> | Accept header. |  |
**normalize** | Option<**bool**> | Whether to normalize to the strongest taste. |  |
**rgb** | Option<**String**> | Red, green, blue values for the chart color. |  |

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## visualize_recipe_taste_by_id

> String visualize_recipe_taste_by_id(id, normalize, rgb)
Recipe Taste by ID Widget

Get a recipe's taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | The item's id. | [required] |
**normalize** | Option<**bool**> | Whether to normalize to the strongest taste. |  |[default to true]
**rgb** | Option<**String**> | Red, green, blue values for the chart color. |  |

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

