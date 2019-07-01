# com.spoonacular.client\DefaultApi

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**analyze_a_recipe_search_query**](DefaultApi.md#analyze_a_recipe_search_query) | **Get** /recipes/queries/analyze | Analyze a Recipe Search Query
[**analyze_recipe_instructions**](DefaultApi.md#analyze_recipe_instructions) | **Post** /recipes/analyzeInstructions | Analyze Recipe Instructions
[**autocomplete_ingredient_search**](DefaultApi.md#autocomplete_ingredient_search) | **Get** /food/ingredients/autocomplete | Autocomplete Ingredient Search
[**autocomplete_menu_item_search**](DefaultApi.md#autocomplete_menu_item_search) | **Get** /food/menuItems/suggest | Autocomplete Menu Item Search
[**autocomplete_product_search**](DefaultApi.md#autocomplete_product_search) | **Get** /food/products/suggest | Autocomplete Product Search
[**autocomplete_recipe_search**](DefaultApi.md#autocomplete_recipe_search) | **Get** /recipes/autocomplete | Autocomplete Recipe Search
[**classify_cuisine**](DefaultApi.md#classify_cuisine) | **Post** /recipes/cuisine | Classify Cuisine
[**classify_grocery_product**](DefaultApi.md#classify_grocery_product) | **Post** /food/products/classify | Classify Grocery Product
[**classify_grocery_product_bulk**](DefaultApi.md#classify_grocery_product_bulk) | **Post** /food/products/classifyBatch | Classify Grocery Product Bulk
[**convert_amounts**](DefaultApi.md#convert_amounts) | **Get** /recipes/convert | Convert Amounts
[**create_recipe_card**](DefaultApi.md#create_recipe_card) | **Post** /recipes/visualizeRecipe | Create Recipe Card
[**detect_food_in_text**](DefaultApi.md#detect_food_in_text) | **Post** /food/detect | Detect Food in Text
[**extract_recipe_from_website**](DefaultApi.md#extract_recipe_from_website) | **Get** /recipes/extract | Extract Recipe from Website
[**generate_meal_plan**](DefaultApi.md#generate_meal_plan) | **Get** /recipes/mealplans/generate | Generate Meal Plan
[**get_a_random_food_joke**](DefaultApi.md#get_a_random_food_joke) | **Get** /food/jokes/random | Get a Random Food Joke
[**get_analyzed_recipe_instructions**](DefaultApi.md#get_analyzed_recipe_instructions) | **Get** /recipes/{id}/analyzedInstructions | Get Analyzed Recipe Instructions
[**get_comparable_products**](DefaultApi.md#get_comparable_products) | **Get** /food/products/upc/{upc}/comparable | Get Comparable Products
[**get_conversation_suggests**](DefaultApi.md#get_conversation_suggests) | **Get** /food/converse/suggest | Get Conversation Suggests
[**get_dish_pairing_for_wine**](DefaultApi.md#get_dish_pairing_for_wine) | **Get** /food/wine/dishes | Get Dish Pairing for Wine
[**get_food_information**](DefaultApi.md#get_food_information) | **Get** /food/ingredients/{id}/information | Get Food Information
[**get_ingredient_substitutes**](DefaultApi.md#get_ingredient_substitutes) | **Get** /food/ingredients/substitutes | Get Ingredient Substitutes
[**get_ingredient_substitutes_by_id**](DefaultApi.md#get_ingredient_substitutes_by_id) | **Get** /food/ingredients/{id}/substitutes | Get Ingredient Substitutes by ID
[**get_menu_item_information**](DefaultApi.md#get_menu_item_information) | **Get** /food/menuItems/{id} | Get Menu Item Information
[**get_product_information**](DefaultApi.md#get_product_information) | **Get** /food/products/{id} | Get Product Information
[**get_random_food_trivia**](DefaultApi.md#get_random_food_trivia) | **Get** /food/trivia/random | Get Random Food Trivia
[**get_random_recipes**](DefaultApi.md#get_random_recipes) | **Get** /recipes/random | Get Random Recipes
[**get_recipe_equipment_by_id**](DefaultApi.md#get_recipe_equipment_by_id) | **Get** /recipes/{id}/equipmentWidget.json | Get Recipe Equipment by ID
[**get_recipe_information**](DefaultApi.md#get_recipe_information) | **Get** /recipes/{id}/information | Get Recipe Information
[**get_recipe_information_bulk**](DefaultApi.md#get_recipe_information_bulk) | **Get** /recipes/informationBulk | Get Recipe Information Bulk
[**get_recipe_ingredients_by_id**](DefaultApi.md#get_recipe_ingredients_by_id) | **Get** /recipes/{id}/ingredientWidget.json | Get Recipe Ingredients by ID
[**get_recipe_nutrition_by_id**](DefaultApi.md#get_recipe_nutrition_by_id) | **Get** /recipes/{id}/nutritionWidget.json | Get Recipe Nutrition by ID
[**get_recipe_price_breakdown_by_id**](DefaultApi.md#get_recipe_price_breakdown_by_id) | **Get** /recipes/{id}/priceBreakdownWidget.json | Get Recipe Price Breakdown by ID
[**get_similar_recipes**](DefaultApi.md#get_similar_recipes) | **Get** /recipes/{id}/similar | Get Similar Recipes
[**get_wine_description**](DefaultApi.md#get_wine_description) | **Get** /food/wine/description | Get Wine Description
[**get_wine_pairing**](DefaultApi.md#get_wine_pairing) | **Get** /food/wine/pairing | Get Wine Pairing
[**get_wine_recommendation**](DefaultApi.md#get_wine_recommendation) | **Get** /food/wine/recommendation | Get Wine Recommendation
[**guess_nutrition_by_dish_name**](DefaultApi.md#guess_nutrition_by_dish_name) | **Get** /recipes/guessNutrition | Guess Nutrition by Dish Name
[**map_ingredients_to_grocery_products**](DefaultApi.md#map_ingredients_to_grocery_products) | **Post** /food/ingredients/map | Map Ingredients to Grocery Products
[**parse_ingredients**](DefaultApi.md#parse_ingredients) | **Post** /recipes/parseIngredients | Parse Ingredients
[**quick_answer**](DefaultApi.md#quick_answer) | **Get** /recipes/quickAnswer | Quick Answer
[**search_food_videos**](DefaultApi.md#search_food_videos) | **Get** /food/videos/search | Search Food Videos
[**search_grocery_products**](DefaultApi.md#search_grocery_products) | **Get** /food/products/search | Search Grocery Products
[**search_grocery_products_by_upc**](DefaultApi.md#search_grocery_products_by_upc) | **Get** /food/products/upc/{upc} | Search Grocery Products by UPC
[**search_menu_items**](DefaultApi.md#search_menu_items) | **Get** /food/menuItems/search | Search Menu Items
[**search_recipes**](DefaultApi.md#search_recipes) | **Get** /recipes/search | Search Recipes
[**search_recipes_by_ingredients**](DefaultApi.md#search_recipes_by_ingredients) | **Get** /recipes/findByIngredients | Search Recipes by Ingredients
[**search_recipes_by_nutrients**](DefaultApi.md#search_recipes_by_nutrients) | **Get** /recipes/findByNutrients | Search Recipes by Nutrients
[**search_recipes_complex**](DefaultApi.md#search_recipes_complex) | **Get** /recipes/complexSearch | Search Recipes Complex
[**search_site_content**](DefaultApi.md#search_site_content) | **Get** /food/site/search | Search Site Content
[**summarize_recipe**](DefaultApi.md#summarize_recipe) | **Get** /recipes/{id}/summary | Summarize Recipe
[**talk_to_chatbot**](DefaultApi.md#talk_to_chatbot) | **Get** /food/converse | Talk to Chatbot
[**visualize_equipment**](DefaultApi.md#visualize_equipment) | **Post** /recipes/visualizeEquipment | Visualize Equipment
[**visualize_ingredients**](DefaultApi.md#visualize_ingredients) | **Post** /recipes/visualizeIngredients | Visualize Ingredients
[**visualize_menu_item_nutrition_by_id**](DefaultApi.md#visualize_menu_item_nutrition_by_id) | **Get** /food/menuItems/{id}/nutritionWidget | Visualize Menu Item Nutrition by ID
[**visualize_price_breakdown**](DefaultApi.md#visualize_price_breakdown) | **Post** /recipes/visualizePriceEstimator | Visualize Price Breakdown
[**visualize_product_nutrition_by_id**](DefaultApi.md#visualize_product_nutrition_by_id) | **Get** /food/products/{id}/nutritionWidget | Visualize Product Nutrition by ID
[**visualize_recipe_equipment_by_id**](DefaultApi.md#visualize_recipe_equipment_by_id) | **Get** /recipes/{id}/equipmentWidget | Visualize Recipe Equipment by ID
[**visualize_recipe_ingredients_by_id**](DefaultApi.md#visualize_recipe_ingredients_by_id) | **Get** /recipes/{id}/ingredientWidget | Visualize Recipe Ingredients by ID
[**visualize_recipe_nutrition**](DefaultApi.md#visualize_recipe_nutrition) | **Post** /recipes/visualizeNutrition | Visualize Recipe Nutrition
[**visualize_recipe_nutrition_by_id**](DefaultApi.md#visualize_recipe_nutrition_by_id) | **Get** /recipes/{id}/nutritionWidget | Visualize Recipe Nutrition by ID
[**visualize_recipe_price_breakdown_by_id**](DefaultApi.md#visualize_recipe_price_breakdown_by_id) | **Get** /recipes/{id}/priceBreakdownWidget | Visualize Recipe Price Breakdown by ID



## analyze_a_recipe_search_query

> Value analyze_a_recipe_search_query(q)
Analyze a Recipe Search Query

Parse a recipe search query to find out its intention.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **q** | **String**| The recipe search query. | 

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## analyze_recipe_instructions

> Value analyze_recipe_instructions(instructions)
Analyze Recipe Instructions

Extract ingredients and equipment from the recipe instruction steps.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **instructions** | **String**| The instructions text. | 

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## autocomplete_ingredient_search

> Value autocomplete_ingredient_search(query, optional)
Autocomplete Ingredient Search

Autocomplete a search for an ingredient.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **query** | **String**| The query - a partial or full ingredient name. | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The query - a partial or full ingredient name. | 
 **number** | **f32**| The number of results to return (between 1 and 100). | 
 **meta_information** | **bool**| Whether to return more meta information about the ingredients. | 
 **intolerances** | **bool**| A comma-separated list of intolerances. All found ingredients must not cause problems for people with one of the given tolerances. See a full list of supported intolerances. | 

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## autocomplete_menu_item_search

> Value autocomplete_menu_item_search(query, optional)
Autocomplete Menu Item Search

Generate suggestions for menu items based on a (partial) query. The matches will be found by looking in the title only.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **query** | **String**| The (partial) search query. | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The (partial) search query. | 
 **number** | **f32**| The number of results to return (between 1 and 25). | 

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## autocomplete_product_search

> Value autocomplete_product_search(query, optional)
Autocomplete Product Search

Generate suggestions for grocery products based on a (partial) query. The matches will be found by looking in the title only.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **query** | **String**| The (partial) search query. | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The (partial) search query. | 
 **number** | **f32**| The number of results to return (between 1 and 25). | 

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## autocomplete_recipe_search

> Value autocomplete_recipe_search(query, optional)
Autocomplete Recipe Search

Autocomplete a partial input to possible recipe names.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **query** | **String**| The query to be autocompleted. | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The query to be autocompleted. | 
 **number** | **f32**| The number of results to return (between 1 and 25). | 

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## classify_cuisine

> Value classify_cuisine(title, ingredient_list)
Classify Cuisine

Classify the recipe's cuisine.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **title** | **String**| The title of the recipe. | 
  **ingredient_list** | **String**| The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n). | 

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## classify_grocery_product

> Value classify_grocery_product(inline_object8, optional)
Classify Grocery Product

Given a grocery product title, this endpoint allows you to detect what basic ingredient it is.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **inline_object8** | [**InlineObject8**](InlineObject8.md)|  | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inline_object8** | [**InlineObject8**](InlineObject8.md)|  | 
 **locale** | **String**| The locale of the returned category, supported is en_US and en_GB. | 

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## classify_grocery_product_bulk

> Value classify_grocery_product_bulk(body, optional)
Classify Grocery Product Bulk

Given a set of product jsons, get back classified products.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **body** | **Value**|  | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **Value**|  | 
 **locale** | **String**| The locale of the returned category, supported is en_US and en_GB. | 

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## convert_amounts

> Value convert_amounts(ingredient_name, source_amount, source_unit, target_unit)
Convert Amounts

Convert amounts like \"2 cups of flour to grams\".

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **ingredient_name** | **String**| The ingredient which you want to convert. | 
  **source_amount** | **f32**| The amount from which you want to convert, e.g. the 2.5 in \"2.5 cups of flour to grams\". | 
  **source_unit** | **String**| The unit from which you want to convert, e.g. the grams in \"2.5 cups of flour to grams\". You can also use \"piece\", e.g. \"3.4 oz tomatoes to piece\" | 
  **target_unit** | **String**| The unit to which you want to convert, e.g. the grams in \"2.5 cups of flour to grams\". You can also use \"piece\", e.g. \"3.4 oz tomatoes to piece\" | 

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## create_recipe_card

> Value create_recipe_card(title, image, ingredients, instructions, ready_in_minutes, servings, mask, background_image, optional)
Create Recipe Card

Create Recipe Card.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **title** | **String**| The title of the recipe. | 
  **image** | **&std::path::Path**| The binary image of the recipe as jpg. | 
  **ingredients** | **String**| The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n). | 
  **instructions** | **String**| The instructions to make the recipe. One step per line (separate lines with \\\\n). | 
  **ready_in_minutes** | **f32**| The number of minutes it takes to get the recipe on the table. | 
  **servings** | **f32**| The number of servings that you can make from the ingredients. | 
  **mask** | **String**| The mask to put over the recipe image (\\\"ellipseMask\\\", \\\"diamondMask\\\", \\\"diamondMask\\\", \\\"starMask\\\", \\\"heartMask\\\", \\\"potMask\\\", \\\"fishMask\\\"). | 
  **background_image** | **String**| The background image (\\\"none\\\",\\\"background1\\\", or \\\"background2\\\"). | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **String**| The title of the recipe. | 
 **image** | **&std::path::Path**| The binary image of the recipe as jpg. | 
 **ingredients** | **String**| The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n). | 
 **instructions** | **String**| The instructions to make the recipe. One step per line (separate lines with \\\\n). | 
 **ready_in_minutes** | **f32**| The number of minutes it takes to get the recipe on the table. | 
 **servings** | **f32**| The number of servings that you can make from the ingredients. | 
 **mask** | **String**| The mask to put over the recipe image (\\\"ellipseMask\\\", \\\"diamondMask\\\", \\\"diamondMask\\\", \\\"starMask\\\", \\\"heartMask\\\", \\\"potMask\\\", \\\"fishMask\\\"). | 
 **background_image** | **String**| The background image (\\\"none\\\",\\\"background1\\\", or \\\"background2\\\"). | 
 **author** | **String**| The author of the recipe. | 
 **background_color** | **String**| The background color on the recipe card as a hex-string. | 
 **font_color** | **String**| The font color on the recipe card as a hex-string. | 
 **source** | **String**| The source of the recipe. | 

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## detect_food_in_text

> Value detect_food_in_text(text)
Detect Food in Text

Detect ingredients and dishes in texts. This task is also called Named Entity Recognition (NER). In our case the entities are foods. Either dishes, such as pizza and cheeseburger or ingredients, such as cucumber and almonds.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **text** | **String**| The text in which food items such as dish names and ingredients should be detected in. | 

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## extract_recipe_from_website

> Value extract_recipe_from_website(url, optional)
Extract Recipe from Website

Get an analyzed breakdown of a recipe's instructions. Each step is enriched with the ingredients and the equipment that is used.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **url** | **String**| The URL of the recipe page. | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **String**| The URL of the recipe page. | 
 **force_extraction** | **bool**| If true, the extraction will be triggered no matter whether we know the recipe already. Use that only if information is missing as this operation is slower. | 

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## generate_meal_plan

> Value generate_meal_plan(optional)
Generate Meal Plan

Generate a meal plan with three meals per day (breakfast, lunch, and dinner).

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **time_frame** | **String**| Either for one \"day\" or an entire \"week\". | 
 **target_calories** | **f32**| What is the caloric target for one day? The meal plan generator will try to get as close as possible to that goal. | 
 **diet** | **String**| Enter a diet that the meal plan has to adhere to. See a full list of supported diets. | 
 **exclude** | **String**| A comma-separated list of allergens or ingredients that must be excluded. | 

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_a_random_food_joke

> Value get_a_random_food_joke()
Get a Random Food Joke

Get a random joke that includes or is about food.

### Required Parameters

This endpoint does not need any parameter.

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_analyzed_recipe_instructions

> Value get_analyzed_recipe_instructions(id, optional)
Get Analyzed Recipe Instructions

Get an analyzed breakdown of a recipe's instructions. Each step is enriched with the ingredients and the equipment that is used.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **id** | **f32**| The recipe id. | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **f32**| The recipe id. | 
 **step_breakdown** | **bool**| Whether to break down the recipe steps even more. | 

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_comparable_products

> Value get_comparable_products(upc)
Get Comparable Products

Find comparable products to the given one.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **upc** | **f32**| The UPC of the product for that you want to find comparable products. | 

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_conversation_suggests

> Value get_conversation_suggests(query, optional)
Get Conversation Suggests

This endpoint returns suggestions for things the user can say or ask the chat bot.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **query** | **String**| A (partial) query from the user. The endpoint will return if it matches topics it can talk about. | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| A (partial) query from the user. The endpoint will return if it matches topics it can talk about. | 
 **number** | **f32**| The number of suggestions to return (between 1 and 25). | 

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_dish_pairing_for_wine

> Value get_dish_pairing_for_wine(wine)
Get Dish Pairing for Wine

Get a dish that goes well with a given wine.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **wine** | **String**| The name of the wine that should be paired, e.g. \"merlot\", \"riesling\", or \"malbec\". | 

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_food_information

> Value get_food_information(id, optional)
Get Food Information

Get information about a certain food (ingredient).

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **id** | **f32**| The id of the food / ingredient. | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **f32**| The id of the food / ingredient. | 
 **amount** | **f32**| The amount of that food. | 
 **unit** | **String**| The unit for the given amount. | 

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_ingredient_substitutes

> Value get_ingredient_substitutes(ingredient_name)
Get Ingredient Substitutes

Search for substitutes for a given ingredient.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **ingredient_name** | **String**| The name of the ingredient you want to replace. | 

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_ingredient_substitutes_by_id

> Value get_ingredient_substitutes_by_id(id)
Get Ingredient Substitutes by ID

Search for substitutes for a given ingredient.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **id** | **f32**| The id of the ingredient you want substitutes for. | 

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_menu_item_information

> Value get_menu_item_information(id)
Get Menu Item Information

Get information about a certain menu item.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **id** | **f32**| The menu item id. | 

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_product_information

> Value get_product_information(id)
Get Product Information

Get information about a packaged food product.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **id** | **f32**| The id of the packaged food product. | 

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_random_food_trivia

> Value get_random_food_trivia()
Get Random Food Trivia

Returns random food trivia.

### Required Parameters

This endpoint does not need any parameter.

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_random_recipes

> Value get_random_recipes(optional)
Get Random Recipes

Find random (popular) recipes.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit_license** | **bool**| Whether the recipes should have an open license that allows for displaying with proper attribution. | 
 **tags** | **String**| The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must adhere to. | 
 **number** | **f32**| The number of random recipes to be returned (between 1 and 100). | 

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_recipe_equipment_by_id

> Value get_recipe_equipment_by_id(id)
Get Recipe Equipment by ID

Get a recipe's equipment list.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **id** | **f32**| The recipe id. | 

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_recipe_information

> Value get_recipe_information(id, optional)
Get Recipe Information

Get information about a recipe.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **id** | **f32**| The id of the recipe. | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **f32**| The id of the recipe. | 
 **include_nutrition** | **bool**| Include nutrition data to the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. | 

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_recipe_information_bulk

> Value get_recipe_information_bulk(ids, optional)
Get Recipe Information Bulk

Get information about multiple recipes at once. That is equivalent of calling the Get Recipe Information endpoint multiple times but is faster.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **ids** | **String**| A comma-separated list of recipe ids. | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | **String**| A comma-separated list of recipe ids. | 
 **include_nutrition** | **bool**| Include nutrition data to the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. | 

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_recipe_ingredients_by_id

> Value get_recipe_ingredients_by_id(id)
Get Recipe Ingredients by ID

Get a recipe's ingredient list.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **id** | **f32**| The recipe id. | 

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_recipe_nutrition_by_id

> Value get_recipe_nutrition_by_id(id)
Get Recipe Nutrition by ID

Get a recipe's nutrition widget data.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **id** | **f32**| The recipe id. | 

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_recipe_price_breakdown_by_id

> Value get_recipe_price_breakdown_by_id(id)
Get Recipe Price Breakdown by ID

Get a recipe's price breakdown data.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **id** | **f32**| The recipe id. | 

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_similar_recipes

> Value get_similar_recipes(id, optional)
Get Similar Recipes

Find recipes which are similar to the given one.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **id** | **f32**| The id of the source recipe to which similar recipes should be found. | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **f32**| The id of the source recipe to which similar recipes should be found. | 
 **number** | **f32**| The number of random recipes to be returned (between 1 and 100). | 

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_wine_description

> Value get_wine_description(wine)
Get Wine Description

Get the description of a certain wine, e.g. \"malbec\", \"riesling\", or \"merlot\".

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **wine** | **String**| The name of the wine that should be paired, e.g. \"merlot\", \"riesling\", or \"malbec\". | 

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_wine_pairing

> Value get_wine_pairing(food, optional)
Get Wine Pairing

Find a wine that goes well with a food. Food can be a dish name (\"steak\"), an ingredient name (\"salmon\"), or a cuisine (\"italian\").

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **food** | **String**| The food to get a pairing for. This can be a dish (\"steak\"), an ingredient (\"salmon\"), or a cuisine (\"italian\"). | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **food** | **String**| The food to get a pairing for. This can be a dish (\"steak\"), an ingredient (\"salmon\"), or a cuisine (\"italian\"). | 
 **max_price** | **f32**| The maximum price for the specific wine recommendation in USD. | 

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_wine_recommendation

> Value get_wine_recommendation(wine, optional)
Get Wine Recommendation

Get a specific wine recommendation (concrete product) for a given wine, e.g. \"merlot\".

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **wine** | **String**| The name of the wine to get a specific product recommendation for. | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wine** | **String**| The name of the wine to get a specific product recommendation for. | 
 **max_price** | **f32**| The maximum price for the specific wine recommendation in USD. | 
 **min_rating** | **f32**| The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars. | 
 **number** | **f32**| The number of wine recommendations expected (between 1 and 100). | 

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## guess_nutrition_by_dish_name

> Value guess_nutrition_by_dish_name(title)
Guess Nutrition by Dish Name

Guess the macro nutrients of a dish given its title.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **title** | **String**| The title of the dish. | 

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## map_ingredients_to_grocery_products

> Value map_ingredients_to_grocery_products(body)
Map Ingredients to Grocery Products

Map a set of ingredients to products you can buy in the grocery store.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **body** | **Value**|  | 

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## parse_ingredients

> Value parse_ingredients(ingredient_list, servings, optional)
Parse Ingredients

Extract an ingredient from plain text.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **ingredient_list** | **String**| The ingredient list of the recipe, one ingredient per line. | 
  **servings** | **f32**| The number of servings that you can make from the ingredients. | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredient_list** | **String**| The ingredient list of the recipe, one ingredient per line. | 
 **servings** | **f32**| The number of servings that you can make from the ingredients. | 
 **include_nutrition** | **bool**| Whether nutrition data should be added to correctly parsed ingredients. | 

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## quick_answer

> Value quick_answer(q)
Quick Answer

Answer a nutrition related natural language question.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **q** | **String**| The nutrition-related question. | 

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## search_food_videos

> Value search_food_videos(query, optional)
Search Food Videos

Find recipe and other food related videos.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **query** | **String**| The search query. | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The search query. | 
 **_type** | **String**| The type of the recipes. See a full list of supported meal types. | 
 **cuisine** | **String**| The cuisine(s) of the recipes. One or more comma separated. See a full list of supported cuisines. | 
 **diet** | **String**| The diet to which the recipes must be compliant. See a full list of supported diets. | 
 **include_ingredients** | **String**| A comma-separated list of ingredients that should/must be contained in the recipe. | 
 **exclude_ingredients** | **String**| A comma-separated list of ingredients or ingredient types that must not be contained in the recipes. | 
 **min_length** | **f32**| Minimum video length in seconds. | 
 **max_length** | **f32**| Maximum video length in seconds. | 
 **offset** | **f32**| The number of results to skip (between 0 and 900). | 
 **number** | **f32**| The number of results to return (between 1 and 100). | 

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## search_grocery_products

> Value search_grocery_products(query, optional)
Search Grocery Products

Search packaged food products such as frozen pizza and snickers bars.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **query** | **String**| The search query. | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The search query. | 
 **min_calories** | **f32**| The minimum number of calories the product must have. | 
 **max_calories** | **f32**| The maximum number of calories the product can have. | 
 **min_carbs** | **f32**| The minimum number of carbohydrates in grams the product must have. | 
 **max_carbs** | **f32**| The maximum number of carbohydrates in grams the product can have. | 
 **min_protein** | **f32**| The minimum number of protein in grams the product must have. | 
 **max_protein** | **f32**| The maximum number of protein in grams the product can have. | 
 **min_fat** | **f32**| The minimum number of fat in grams the product must have. | 
 **max_fat** | **f32**| The maximum number of fat in grams the product can have. | 
 **offset** | **f32**| The offset number for paging (between 0 and 990). | 
 **number** | **f32**| The number of expected results (between 1 and 100). | 

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## search_grocery_products_by_upc

> Value search_grocery_products_by_upc(upc)
Search Grocery Products by UPC

Get information about a food product given its UPC.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **upc** | **f32**| The product's UPC. | 

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## search_menu_items

> Value search_menu_items(query, optional)
Search Menu Items

Search over 115,000 menu items from over 800 fast food and chain restaurants such as McDonalds Big Mac or Starbucks Mocha.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **query** | **String**| The search query. | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The search query. | 
 **min_calories** | **f32**| The minimum number of calories the menu item must have. | 
 **max_calories** | **f32**| The maximum number of calories the menu item can have. | 
 **min_carbs** | **f32**| The minimum number of carbohydrates in grams the menu item must have. | 
 **max_carbs** | **f32**| The maximum number of carbohydrates in grams the menu item can have. | 
 **min_protein** | **f32**| The minimum number of protein in grams the menu item must have. | 
 **max_protein** | **f32**| The maximum number of protein in grams the menu item can have. | 
 **min_fat** | **f32**| The minimum number of fat in grams the menu item must have. | 
 **max_fat** | **f32**| The maximum number of fat in grams the menu item can have. | 
 **offset** | **f32**| The offset number for paging (between 0 and 990). | 
 **number** | **f32**| The number of expected results (between 1 and 10). | 

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## search_recipes

> Value search_recipes(query, optional)
Search Recipes

Our recipe API includes over 360,000 recipes as well as an open source recipe database. Consider using the \"Search Recipes Complex\" endpoint for much more flexibility.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **query** | **String**| The (natural language) recipe search query. | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The (natural language) recipe search query. | 
 **cuisine** | **String**| The cuisine(s) of the recipes. One or more comma separated. See a full list of supported cuisines. | 
 **diet** | **String**| The diet to which the recipes must be compliant. See a full list of supported diets. | 
 **exclude_ingredients** | **String**| An comma-separated list of ingredients or ingredient types that must not be contained in the recipes. | 
 **intolerances** | **String**| A comma-separated list of intolerances. All found recipes must not have ingredients that could cause problems for people with one of the given tolerances. See a full list of supported intolerances. | 
 **offset** | **f32**| The number of results to skip (between 0 and 900). | 
 **number** | **f32**| The number of results to return (between 1 and 100). | 
 **limit_license** | **bool**| Whether the recipes should have an open license that allows for displaying with proper attribution. | 
 **instructions_required** | **bool**| Whether the recipes must have instructions. | 

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## search_recipes_by_ingredients

> Value search_recipes_by_ingredients(ingredients, optional)
Search Recipes by Ingredients

Find recipes that use as many of the given ingredients as possible and have as little as possible missing ingredients. This is a \"what's in your fridge\" API endpoint.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **ingredients** | **String**| A comma-separated list of ingredients that the recipes should contain. | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredients** | **String**| A comma-separated list of ingredients that the recipes should contain. | 
 **number** | **f32**| The maximal number of recipes to return (between 1 and 100). Defaults to 10. | 
 **limit_license** | **bool**| Whether the recipes should have an open license that allows for displaying with proper attribution. | 
 **ranking** | **f32**| Whether to maximize used ingredients (1) or minimize missing ingredients (2) first. | 
 **ignore_pantry** | **bool**| Whether to ignore pantry ingredients such as water, salt, flour etc. | 

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## search_recipes_by_nutrients

> Value search_recipes_by_nutrients(optional)
Search Recipes by Nutrients

Find a set of recipes that adhere to the given nutritional limits. All the returned recipes will have macro nutrients within the calories, protein, fat, and carbohydrate limits.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **min_carbs** | **f32**| The minimum number of carbohydrates in grams the recipe must have. | 
 **max_carbs** | **f32**| The maximum number of carbohydrates in grams the recipe can have. | 
 **min_protein** | **f32**| The minimum number of protein in grams the recipe must have. | 
 **max_protein** | **f32**| The maximum number of protein in grams the recipe can have. | 
 **min_calories** | **f32**| The minimum number of calories the recipe must have. | 
 **max_calories** | **f32**| The maximum number of calories the recipe can have. | 
 **min_fat** | **f32**| The minimum number of fat in grams the recipe must have. | 
 **max_fat** | **f32**| The maximum number of fat in grams the recipe can have. | 
 **min_alcohol** | **f32**| The minimum number of alcohol in grams the recipe must have. | 
 **max_alcohol** | **f32**| The maximum number of alcohol in grams the recipe must have. | 
 **min_caffeine** | **f32**| The minimum number of milligrams of caffeine the recipe must have. | 
 **max_caffeine** | **f32**| The maximum number of alcohol in grams the recipe must have. | 
 **min_copper** | **f32**| The minimum number of copper in milligrams the recipe must have. | 
 **max_copper** | **f32**| The maximum number of copper in milligrams the recipe must have. | 
 **min_calcium** | **f32**| The minimum number of calcium in milligrams the recipe must have. | 
 **max_calcium** | **f32**| The maximum number of calcium in milligrams the recipe must have. | 
 **min_choline** | **f32**| The minimum number of choline in milligrams the recipe must have. | 
 **max_choline** | **f32**| The maximum number of choline in milligrams the recipe can have. | 
 **min_cholesterol** | **f32**| The minimum number of cholesterol in milligrams the recipe must have. | 
 **max_cholesterol** | **f32**| The maximum number of cholesterol in milligrams the recipe must have. | 
 **min_fluoride** | **f32**| The minimum number of fluoride in milligrams the recipe must have. | 
 **max_fluoride** | **f32**| The maximum number of fluoride in milligrams the recipe can have. | 
 **min_saturated_fat** | **f32**| The minimum number of saturated fat in grams the recipe must have. | 
 **max_saturated_fat** | **f32**| The maximum number of saturated fat in grams the recipe must have. | 
 **min_vitamin_a** | **f32**| The minimum number of Vitamin A in IU the recipe must have. | 
 **max_vitamin_a** | **f32**| The maximum number of Vitamin A in IU the recipe must have. | 
 **min_vitamin_c** | **f32**| The minimum number of Vitamin C milligrams the recipe must have. | 
 **max_vitamin_c** | **f32**| The maximum number of Vitamin C in milligrams the recipe can have. | 
 **min_vitamin_d** | **f32**| The minimum number of Vitamin D in micrograms the recipe must have. | 
 **max_vitamin_d** | **f32**| The maximum number of Vitamin D in micrograms the recipe must have. | 
 **min_vitamin_e** | **f32**| The minimum number of Vitamin E in milligrams the recipe must have. | 
 **max_vitamin_e** | **f32**| The maximum number of Vitamin E in milligrams the recipe must have. | 
 **min_vitamin_k** | **f32**| The minimum number of Vitamin K in micrograms the recipe must have. | 
 **max_vitamin_k** | **f32**| The maximum number of Vitamin K in micrograms the recipe must have. | 
 **min_vitamin_b1** | **f32**| The minimum number of Vitamin B1 in milligrams the recipe must have. | 
 **max_vitamin_b1** | **f32**| The maximum number of Vitamin B1 in milligrams the recipe must have. | 
 **min_vitamin_b2** | **f32**| The minimum number of Vitamin B2 in milligrams the recipe must have. | 
 **max_vitamin_b2** | **f32**| The maximum number of Vitamin B2 in milligrams the recipe must have. | 
 **min_vitamin_b5** | **f32**| The minimum number of Vitamin B5 in milligrams the recipe must have. | 
 **max_vitamin_b5** | **f32**| The maximum number of Vitamin B5 in milligrams the recipe can have. | 
 **min_vitamin_b3** | **f32**| The minimum number of Vitamin B3 in milligrams the recipe must have. | 
 **max_vitamin_b3** | **f32**| The maximum number of Vitamin B3 in milligrams the recipe can have. | 
 **min_vitamin_b6** | **f32**| The minimum number of Vitamin B6 in milligrams the recipe must have. | 
 **max_vitamin_b6** | **f32**| The maximum number of Vitamin B6 in milligrams the recipe can have. | 
 **min_vitamin_b12** | **f32**| The minimum number of Vitamin B12 in micrograms the recipe must have. | 
 **max_vitamin_b12** | **f32**| The maximum number of Vitamin B12 in micrograms the recipe must have. | 
 **min_fiber** | **f32**| The minimum number of fiber in grams the recipe must have. | 
 **max_fiber** | **f32**| The maximum number of fiber in grams the recipe must have. | 
 **min_folate** | **f32**| The minimum number of folate in grams the recipe must have. | 
 **max_folate** | **f32**| The maximum number of folate in grams the recipe must have. | 
 **min_folic_acid** | **f32**| The minimum number of folic acid in grams the recipe must have. | 
 **max_folic_acid** | **f32**| The maximum number of folic acid in grams the recipe must have. | 
 **min_iodine** | **f32**| The minimum number of Iodine in grams the recipe must have. | 
 **max_iodine** | **f32**| The maximum number of iodine in grams the recipe must have. | 
 **min_iron** | **f32**| The minimum number of iron in milligrams the recipe must have. | 
 **max_iron** | **f32**| The maximum number of iron in milligrams the recipe can have. | 
 **min_magnesium** | **f32**| The minimum number of magnesium in milligrams the recipe must have. | 
 **max_magnesium** | **f32**| The maximum number of magnesium in milligrams the recipe can have. | 
 **min_manganese** | **f32**| The minimum number of manganese in milligrams the recipe must have. | 
 **max_manganese** | **f32**| The maximum number of manganese in milligrams the recipe can have. | 
 **min_phosphorus** | **f32**| The minimum number of phosphorus in milligrams the recipe must have. | 
 **max_phosphorus** | **f32**| The maximum number of phosphorus in milligrams the recipe can have. | 
 **min_potassium** | **f32**| The minimum number of potassium in milligrams the recipe must have. | 
 **max_potassium** | **f32**| The maximum number of potassium in milligrams the recipe can have. | 
 **min_selenium** | **f32**| The minimum number of selenium in grams the recipe must have. | 
 **max_selenium** | **f32**| The maximum number of selenium in grams the recipe must have. | 
 **min_sodium** | **f32**| The minimum number of sodium in milligrams the recipe must have. | 
 **max_sodium** | **f32**| The maximum number of sodium in milligrams the recipe must have. | 
 **min_sugar** | **f32**| The minimum number of sugar in grams the recipe must have. | 
 **max_sugar** | **f32**| The maximum number of sugar in grams the recipe must have. | 
 **min_zinc** | **f32**| The minimum number of zinc in milligrams the recipe must have. | 
 **max_zinc** | **f32**| The maximum number of zinc in milligrams the recipe can have. | 
 **offset** | **f32**| The offset number for paging (between 0 and 990). | 
 **number** | **f32**| The number of expected results (between 1 and 100). | 
 **random** | **bool**| If true, every request will give you a random set of recipes within the requested limits. | 
 **limit_license** | **bool**| Whether the recipes should have an open license that allows for displaying with proper attribution. | 

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## search_recipes_complex

> Value search_recipes_complex(query, optional)
Search Recipes Complex

Search through hundreds of thousands of recipes using advanced filtering and ranking. NOTE: Since this method combines searching by query, by ingredients, and by nutrients in one endpoint.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **query** | **String**| The (natural language) recipe search query. | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The (natural language) recipe search query. | 
 **cuisine** | **String**| The cuisine(s) of the recipes. One or more comma separated (will be iterpreted as 'OR'). See a full list of supported cuisines. | 
 **exclude_cuisine** | **String**| The cuisine(s) the recipes must not match. One or more comma separated (will be iterpreted as 'AND'). See a full list of supported cuisines. | 
 **diet** | **String**| The diet to which the recipes must be compliant. See a full list of supported diets. | 
 **intolerances** | **String**| A comma-separated list of intolerances. All found recipes must not have ingredients that could cause problems for people with one of the given tolerances. See a full list of supported intolerances. | 
 **equipment** | **String**| The equipment required. Multiple values will be interpreted as 'or'. For example, value could be \"blender, frying pan, bowl\". | 
 **include_ingredients** | **String**| A comma-separated list of ingredients that should/must be contained in the recipe. | 
 **exclude_ingredients** | **String**| A comma-separated list of ingredients or ingredient types that must not be contained in the recipes. | 
 **_type** | **String**| The type of the recipes. See a full list of supported meal types. | 
 **instructions_required** | **bool**| Whether the recipes must have instructions. | 
 **fill_ingredients** | **bool**| Add information about the used and missing ingredients in each recipe. | 
 **add_recipe_information** | **bool**| If set to true, you get more information about the recipes returned. This saves the calls to get recipe information. | 
 **author** | **String**| The username of the recipe author. | 
 **tags** | **String**| User defined tags that have to match. | 
 **title_match** | **String**| A text that has to match in the title of the recipes. | 
 **sort** | **String**| The strategy to sort recipes by. See a full list of supported sorting options. | 
 **sort_direction** | **String**| The direction in which to sort. Must be either 'asc' (ascending) or 'desc' (descending). | 
 **min_carbs** | **f32**| The minimum number of carbohydrates in grams the recipe must have. | 
 **max_carbs** | **f32**| The maximum number of carbohydrates in grams the recipe can have. | 
 **min_protein** | **f32**| The minimum number of protein in grams the recipe must have. | 
 **max_protein** | **f32**| The maximum number of protein in grams the recipe can have. | 
 **min_calories** | **f32**| The minimum number of calories the recipe must have. | 
 **max_calories** | **f32**| The maximum number of calories the recipe can have. | 
 **min_fat** | **f32**| The minimum number of fat in grams the recipe must have. | 
 **max_fat** | **f32**| The maximum number of fat in grams the recipe can have. | 
 **min_alcohol** | **f32**| The minimum number of alcohol in grams the recipe must have. | 
 **max_alcohol** | **f32**| The maximum number of alcohol in grams the recipe must have. | 
 **min_caffeine** | **f32**| The minimum number of milligrams of caffeine the recipe must have. | 
 **max_caffeine** | **f32**| The maximum number of alcohol in grams the recipe must have. | 
 **min_copper** | **f32**| The minimum number of copper in milligrams the recipe must have. | 
 **max_copper** | **f32**| The maximum number of copper in milligrams the recipe must have. | 
 **min_calcium** | **f32**| The minimum number of calcium in milligrams the recipe must have. | 
 **max_calcium** | **f32**| The maximum number of calcium in milligrams the recipe must have. | 
 **min_choline** | **f32**| The minimum number of choline in milligrams the recipe must have. | 
 **max_choline** | **f32**| The maximum number of choline in milligrams the recipe can have. | 
 **min_cholesterol** | **f32**| The minimum number of cholesterol in milligrams the recipe must have. | 
 **max_cholesterol** | **f32**| The maximum number of cholesterol in milligrams the recipe must have. | 
 **min_fluoride** | **f32**| The minimum number of fluoride in milligrams the recipe must have. | 
 **max_fluoride** | **f32**| The maximum number of fluoride in milligrams the recipe can have. | 
 **min_saturated_fat** | **f32**| The minimum number of saturated fat in grams the recipe must have. | 
 **max_saturated_fat** | **f32**| The maximum number of saturated fat in grams the recipe must have. | 
 **min_vitamin_a** | **f32**| The minimum number of Vitamin A in IU the recipe must have. | 
 **max_vitamin_a** | **f32**| The maximum number of Vitamin A in IU the recipe must have. | 
 **min_vitamin_c** | **f32**| The minimum number of Vitamin C milligrams the recipe must have. | 
 **max_vitamin_c** | **f32**| The maximum number of Vitamin C in milligrams the recipe can have. | 
 **min_vitamin_d** | **f32**| The minimum number of Vitamin D in micrograms the recipe must have. | 
 **max_vitamin_d** | **f32**| The maximum number of Vitamin D in micrograms the recipe must have. | 
 **min_vitamin_e** | **f32**| The minimum number of Vitamin E in milligrams the recipe must have. | 
 **max_vitamin_e** | **f32**| The maximum number of Vitamin E in milligrams the recipe must have. | 
 **min_vitamin_k** | **f32**| The minimum number of Vitamin K in micrograms the recipe must have. | 
 **max_vitamin_k** | **f32**| The maximum number of Vitamin K in micrograms the recipe must have. | 
 **min_vitamin_b1** | **f32**| The minimum number of Vitamin B1 in milligrams the recipe must have. | 
 **max_vitamin_b1** | **f32**| The maximum number of Vitamin B1 in milligrams the recipe must have. | 
 **min_vitamin_b2** | **f32**| The minimum number of Vitamin B2 in milligrams the recipe must have. | 
 **max_vitamin_b2** | **f32**| The maximum number of Vitamin B2 in milligrams the recipe must have. | 
 **min_vitamin_b5** | **f32**| The minimum number of Vitamin B5 in milligrams the recipe must have. | 
 **max_vitamin_b5** | **f32**| The maximum number of Vitamin B5 in milligrams the recipe can have. | 
 **min_vitamin_b3** | **f32**| The minimum number of Vitamin B3 in milligrams the recipe must have. | 
 **max_vitamin_b3** | **f32**| The maximum number of Vitamin B3 in milligrams the recipe can have. | 
 **min_vitamin_b6** | **f32**| The minimum number of Vitamin B6 in milligrams the recipe must have. | 
 **max_vitamin_b6** | **f32**| The maximum number of Vitamin B6 in milligrams the recipe can have. | 
 **min_vitamin_b12** | **f32**| The minimum number of Vitamin B12 in micrograms the recipe must have. | 
 **max_vitamin_b12** | **f32**| The maximum number of Vitamin B12 in micrograms the recipe must have. | 
 **min_fiber** | **f32**| The minimum number of fiber in grams the recipe must have. | 
 **max_fiber** | **f32**| The maximum number of fiber in grams the recipe must have. | 
 **min_folate** | **f32**| The minimum number of folate in grams the recipe must have. | 
 **max_folate** | **f32**| The maximum number of folate in grams the recipe must have. | 
 **min_folic_acid** | **f32**| The minimum number of folic acid in grams the recipe must have. | 
 **max_folic_acid** | **f32**| The maximum number of folic acid in grams the recipe must have. | 
 **min_iodine** | **f32**| The minimum number of Iodine in grams the recipe must have. | 
 **max_iodine** | **f32**| The maximum number of iodine in grams the recipe must have. | 
 **min_iron** | **f32**| The minimum number of iron in milligrams the recipe must have. | 
 **max_iron** | **f32**| The maximum number of iron in milligrams the recipe can have. | 
 **min_magnesium** | **f32**| The minimum number of magnesium in milligrams the recipe must have. | 
 **max_magnesium** | **f32**| The maximum number of magnesium in milligrams the recipe can have. | 
 **min_manganese** | **f32**| The minimum number of manganese in milligrams the recipe must have. | 
 **max_manganese** | **f32**| The maximum number of manganese in milligrams the recipe can have. | 
 **min_phosphorus** | **f32**| The minimum number of phosphorus in milligrams the recipe must have. | 
 **max_phosphorus** | **f32**| The maximum number of phosphorus in milligrams the recipe can have. | 
 **min_potassium** | **f32**| The minimum number of potassium in milligrams the recipe must have. | 
 **max_potassium** | **f32**| The maximum number of potassium in milligrams the recipe can have. | 
 **min_selenium** | **f32**| The minimum number of selenium in grams the recipe must have. | 
 **max_selenium** | **f32**| The maximum number of selenium in grams the recipe must have. | 
 **min_sodium** | **f32**| The minimum number of sodium in milligrams the recipe must have. | 
 **max_sodium** | **f32**| The maximum number of sodium in milligrams the recipe must have. | 
 **min_sugar** | **f32**| The minimum number of sugar in grams the recipe must have. | 
 **max_sugar** | **f32**| The maximum number of sugar in grams the recipe must have. | 
 **min_zinc** | **f32**| The minimum number of zinc in milligrams the recipe must have. | 
 **max_zinc** | **f32**| The maximum number of zinc in milligrams the recipe can have. | 
 **offset** | **f32**| The offset number for paging (between 0 and 990). | 
 **number** | **f32**| The number of expected results (between 1 and 10). | 
 **limit_license** | **bool**| Whether the recipes should have an open license that allows for displaying with proper attribution. | 

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## search_site_content

> Value search_site_content(query)
Search Site Content

Search spoonacular's site content. You'll be able to find everything that you could also find using the search suggests on spoonacular.com. This is a suggest API so you can send partial strings as queries.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **query** | **String**| The query to search for. You can also use partial queries such as \"spagh\" to already find spaghetti recipes, articles, grocery products, and other content. | 

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## summarize_recipe

> Value summarize_recipe(id)
Summarize Recipe

Summarize the recipe in a short text.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **id** | **f32**| The recipe id. | 

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## talk_to_chatbot

> Value talk_to_chatbot(text, optional)
Talk to Chatbot

This endpoint can be used to have a conversation about food with the spoonacular chat bot. Use the \"Get Conversation Suggests\" endpoint to show your user what he or she can say.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **text** | **String**| The request / question / answer from the user to the chat bot. | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **String**| The request / question / answer from the user to the chat bot. | 
 **context_id** | **String**| An arbitrary globally unique id for your conversation. The conversation can contain states so you should pass your context id if you want the bot to be able to remember the conversation. | 

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## visualize_equipment

> String visualize_equipment(ingredient_list, servings, optional)
Visualize Equipment

Visualize the equipment used to make a recipe.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **ingredient_list** | **String**| The ingredient list of the recipe, one ingredient per line. | 
  **servings** | **f32**| The number of servings. | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredient_list** | **String**| The ingredient list of the recipe, one ingredient per line. | 
 **servings** | **f32**| The number of servings. | 
 **view** | **String**| Either \\\"grid\\\" or \\\"list\\\" as visualization of the equipment. | 
 **default_css** | **bool**| Whether the default CSS should be added to the response. | 
 **show_backlink** | **bool**| Whether to show a backlink to spoonacular. If set false, this call counts against your quota. | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## visualize_ingredients

> String visualize_ingredients(ingredient_list, servings, optional)
Visualize Ingredients

Visualize ingredients of a recipe.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **ingredient_list** | **String**| The ingredient list of the recipe, one ingredient per line. | 
  **servings** | **f32**| The number of servings. | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredient_list** | **String**| The ingredient list of the recipe, one ingredient per line. | 
 **servings** | **f32**| The number of servings. | 
 **measure** | **String**| The initial measure, either \\\"metric\\\" or \\\"us\\\". | 
 **view** | **String**| Either \\\"grid\\\" or \\\"list\\\" as visualization of the equipment. | 
 **default_css** | **bool**| Whether the default CSS should be added to the response. | 
 **show_backlink** | **bool**| Whether to show a backlink to spoonacular. If set false, this call counts against your quota. | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## visualize_menu_item_nutrition_by_id

> String visualize_menu_item_nutrition_by_id(id, optional)
Visualize Menu Item Nutrition by ID

Visualize a menu items' nutrition data.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **id** | **f32**| The menu item id. | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **f32**| The menu item id. | 
 **default_css** | **bool**| Whether the default CSS should be added to the response. | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## visualize_price_breakdown

> String visualize_price_breakdown(ingredient_list, servings, optional)
Visualize Price Breakdown

Visualize the price breakdown of a recipe.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **ingredient_list** | **String**| The ingredient list of the recipe, one ingredient per line. | 
  **servings** | **f32**| The number of servings. | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredient_list** | **String**| The ingredient list of the recipe, one ingredient per line. | 
 **servings** | **f32**| The number of servings. | 
 **mode** | **f32**| The mode in which the widget should be delivered. 1 = separate views (compact), 2 = all in one view (full). | 
 **default_css** | **bool**| Whether the default CSS should be added to the response. | 
 **show_backlink** | **bool**| Whether to show a backlink to spoonacular. If set false, this call counts against your quota. | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## visualize_product_nutrition_by_id

> String visualize_product_nutrition_by_id(id, optional)
Visualize Product Nutrition by ID

Visualize a grocery product's nutritional information.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **id** | **f32**| The id of the product. | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **f32**| The id of the product. | 
 **default_css** | **bool**| Whether the default CSS should be added to the response. | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## visualize_recipe_equipment_by_id

> String visualize_recipe_equipment_by_id(id, optional)
Visualize Recipe Equipment by ID

Visualize a recipe's equipment list.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **id** | **f32**| The recipe id. | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **f32**| The recipe id. | 
 **default_css** | **bool**| Whether the default CSS should be added to the response. | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## visualize_recipe_ingredients_by_id

> String visualize_recipe_ingredients_by_id(id, optional)
Visualize Recipe Ingredients by ID

Visualize a recipe's ingredient list.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **id** | **f32**| The recipe id. | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **f32**| The recipe id. | 
 **default_css** | **bool**| Whether the default CSS should be added to the response. | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## visualize_recipe_nutrition

> String visualize_recipe_nutrition(ingredient_list, servings, optional)
Visualize Recipe Nutrition

Visualize a recipe's nutrition data.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **ingredient_list** | **String**| The ingredient list of the recipe, one ingredient per line. | 
  **servings** | **f32**| The number of servings. | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredient_list** | **String**| The ingredient list of the recipe, one ingredient per line. | 
 **servings** | **f32**| The number of servings. | 
 **default_css** | **bool**| Whether the default CSS should be added to the response. | 
 **show_backlink** | **bool**| Whether to show a backlink to spoonacular. If set false, this call counts against your quota. | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## visualize_recipe_nutrition_by_id

> String visualize_recipe_nutrition_by_id(id, optional)
Visualize Recipe Nutrition by ID

Visualize a recipe's nutritional information.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **id** | **f32**| The id of the product. | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **f32**| The id of the product. | 
 **default_css** | **bool**| Whether the default CSS should be added to the response. | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## visualize_recipe_price_breakdown_by_id

> String visualize_recipe_price_breakdown_by_id(id, optional)
Visualize Recipe Price Breakdown by ID

Visualize a recipe's price breakdown.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **id** | **f32**| The recipe id. | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **f32**| The recipe id. | 
 **default_css** | **bool**| Whether the default CSS should be added to the response. | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

