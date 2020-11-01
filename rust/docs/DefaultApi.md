# com.spoonacular.client\DefaultApi

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_to_meal_plan**](DefaultApi.md#add_to_meal_plan) | **Post** /mealplanner/{username}/items | Add to Meal Plan
[**add_to_shopping_list**](DefaultApi.md#add_to_shopping_list) | **Post** /mealplanner/{username}/shopping-list/items | Add to Shopping List
[**analyze_a_recipe_search_query**](DefaultApi.md#analyze_a_recipe_search_query) | **Get** /recipes/queries/analyze | Analyze a Recipe Search Query
[**analyze_recipe_instructions**](DefaultApi.md#analyze_recipe_instructions) | **Post** /recipes/analyzeInstructions | Analyze Recipe Instructions
[**autocomplete_ingredient_search**](DefaultApi.md#autocomplete_ingredient_search) | **Get** /food/ingredients/autocomplete | Autocomplete Ingredient Search
[**autocomplete_menu_item_search**](DefaultApi.md#autocomplete_menu_item_search) | **Get** /food/menuItems/suggest | Autocomplete Menu Item Search
[**autocomplete_product_search**](DefaultApi.md#autocomplete_product_search) | **Get** /food/products/suggest | Autocomplete Product Search
[**autocomplete_recipe_search**](DefaultApi.md#autocomplete_recipe_search) | **Get** /recipes/autocomplete | Autocomplete Recipe Search
[**classify_cuisine**](DefaultApi.md#classify_cuisine) | **Post** /recipes/cuisine | Classify Cuisine
[**classify_grocery_product**](DefaultApi.md#classify_grocery_product) | **Post** /food/products/classify | Classify Grocery Product
[**classify_grocery_product_bulk**](DefaultApi.md#classify_grocery_product_bulk) | **Post** /food/products/classifyBatch | Classify Grocery Product Bulk
[**clear_meal_plan_day**](DefaultApi.md#clear_meal_plan_day) | **Delete** /mealplanner/{username}/day/{date} | Clear Meal Plan Day
[**compute_glycemic_load**](DefaultApi.md#compute_glycemic_load) | **Post** /food/ingredients/glycemicLoad | Compute Glycemic Load
[**connect_user**](DefaultApi.md#connect_user) | **Post** /users/connect | Connect User
[**convert_amounts**](DefaultApi.md#convert_amounts) | **Get** /recipes/convert | Convert Amounts
[**create_recipe_card**](DefaultApi.md#create_recipe_card) | **Post** /recipes/visualizeRecipe | Create Recipe Card
[**delete_from_meal_plan**](DefaultApi.md#delete_from_meal_plan) | **Delete** /mealplanner/{username}/items/{id} | Delete from Meal Plan
[**delete_from_shopping_list**](DefaultApi.md#delete_from_shopping_list) | **Delete** /mealplanner/{username}/shopping-list/items/{id} | Delete from Shopping List
[**detect_food_in_text**](DefaultApi.md#detect_food_in_text) | **Post** /food/detect | Detect Food in Text
[**extract_recipe_from_website**](DefaultApi.md#extract_recipe_from_website) | **Get** /recipes/extract | Extract Recipe from Website
[**generate_meal_plan**](DefaultApi.md#generate_meal_plan) | **Get** /mealplanner/generate | Generate Meal Plan
[**generate_shopping_list**](DefaultApi.md#generate_shopping_list) | **Post** /mealplanner/{username}/shopping-list/{start-date}/{end-date} | Generate Shopping List
[**get_a_random_food_joke**](DefaultApi.md#get_a_random_food_joke) | **Get** /food/jokes/random | Get a Random Food Joke
[**get_analyzed_recipe_instructions**](DefaultApi.md#get_analyzed_recipe_instructions) | **Get** /recipes/{id}/analyzedInstructions | Get Analyzed Recipe Instructions
[**get_comparable_products**](DefaultApi.md#get_comparable_products) | **Get** /food/products/upc/{upc}/comparable | Get Comparable Products
[**get_conversation_suggests**](DefaultApi.md#get_conversation_suggests) | **Get** /food/converse/suggest | Get Conversation Suggests
[**get_dish_pairing_for_wine**](DefaultApi.md#get_dish_pairing_for_wine) | **Get** /food/wine/dishes | Get Dish Pairing for Wine
[**get_ingredient_information**](DefaultApi.md#get_ingredient_information) | **Get** /food/ingredients/{id}/information | Get Ingredient Information
[**get_ingredient_substitutes**](DefaultApi.md#get_ingredient_substitutes) | **Get** /food/ingredients/substitutes | Get Ingredient Substitutes
[**get_ingredient_substitutes_by_id**](DefaultApi.md#get_ingredient_substitutes_by_id) | **Get** /food/ingredients/{id}/substitutes | Get Ingredient Substitutes by ID
[**get_meal_plan_template**](DefaultApi.md#get_meal_plan_template) | **Get** /mealplanner/{username}/templates/{id} | Get Meal Plan Template
[**get_meal_plan_templates**](DefaultApi.md#get_meal_plan_templates) | **Get** /mealplanner/{username}/templates | Get Meal Plan Templates
[**get_meal_plan_week**](DefaultApi.md#get_meal_plan_week) | **Get** /mealplanner/{username}/week/{start-date} | Get Meal Plan Week
[**get_menu_item_information**](DefaultApi.md#get_menu_item_information) | **Get** /food/menuItems/{id} | Get Menu Item Information
[**get_product_information**](DefaultApi.md#get_product_information) | **Get** /food/products/{id} | Get Product Information
[**get_random_food_trivia**](DefaultApi.md#get_random_food_trivia) | **Get** /food/trivia/random | Get Random Food Trivia
[**get_random_recipes**](DefaultApi.md#get_random_recipes) | **Get** /recipes/random | Get Random Recipes
[**get_recipe_equipment_by_id**](DefaultApi.md#get_recipe_equipment_by_id) | **Get** /recipes/{id}/equipmentWidget.json | Get Recipe Equipment by ID
[**get_recipe_information**](DefaultApi.md#get_recipe_information) | **Get** /recipes/{id}/information | Get Recipe Information
[**get_recipe_information_bulk**](DefaultApi.md#get_recipe_information_bulk) | **Get** /recipes/informationBulk | Get Recipe Information Bulk
[**get_recipe_ingredients_by_id**](DefaultApi.md#get_recipe_ingredients_by_id) | **Get** /recipes/{id}/ingredientWidget.json | Get Recipe Ingredients by ID
[**get_recipe_nutrition_widget_by_id**](DefaultApi.md#get_recipe_nutrition_widget_by_id) | **Get** /recipes/{id}/nutritionWidget.json | Get Recipe Nutrition Widget by ID
[**get_recipe_price_breakdown_by_id**](DefaultApi.md#get_recipe_price_breakdown_by_id) | **Get** /recipes/{id}/priceBreakdownWidget.json | Get Recipe Price Breakdown by ID
[**get_recipe_taste_by_id**](DefaultApi.md#get_recipe_taste_by_id) | **Get** /recipes/{id}/tasteWidget.json | Get Recipe Taste by ID
[**get_shopping_list**](DefaultApi.md#get_shopping_list) | **Get** /mealplanner/{username}/shopping-list | Get Shopping List
[**get_similar_recipes**](DefaultApi.md#get_similar_recipes) | **Get** /recipes/{id}/similar | Get Similar Recipes
[**get_wine_description**](DefaultApi.md#get_wine_description) | **Get** /food/wine/description | Get Wine Description
[**get_wine_pairing**](DefaultApi.md#get_wine_pairing) | **Get** /food/wine/pairing | Get Wine Pairing
[**get_wine_recommendation**](DefaultApi.md#get_wine_recommendation) | **Get** /food/wine/recommendation | Get Wine Recommendation
[**guess_nutrition_by_dish_name**](DefaultApi.md#guess_nutrition_by_dish_name) | **Get** /recipes/guessNutrition | Guess Nutrition by Dish Name
[**image_analysis_by_url**](DefaultApi.md#image_analysis_by_url) | **Get** /food/images/analyze | Image Analysis by URL
[**image_classification_by_url**](DefaultApi.md#image_classification_by_url) | **Get** /food/images/classify | Image Classification by URL
[**ingredient_search**](DefaultApi.md#ingredient_search) | **Get** /food/ingredients/search | Ingredient Search
[**map_ingredients_to_grocery_products**](DefaultApi.md#map_ingredients_to_grocery_products) | **Post** /food/ingredients/map | Map Ingredients to Grocery Products
[**parse_ingredients**](DefaultApi.md#parse_ingredients) | **Post** /recipes/parseIngredients | Parse Ingredients
[**quick_answer**](DefaultApi.md#quick_answer) | **Get** /recipes/quickAnswer | Quick Answer
[**search_all_food**](DefaultApi.md#search_all_food) | **Get** /food/search | Search All Food
[**search_custom_foods**](DefaultApi.md#search_custom_foods) | **Get** /food/customFoods/search | Search Custom Foods
[**search_food_videos**](DefaultApi.md#search_food_videos) | **Get** /food/videos/search | Search Food Videos
[**search_grocery_products**](DefaultApi.md#search_grocery_products) | **Get** /food/products/search | Search Grocery Products
[**search_grocery_products_by_upc**](DefaultApi.md#search_grocery_products_by_upc) | **Get** /food/products/upc/{upc} | Search Grocery Products by UPC
[**search_menu_items**](DefaultApi.md#search_menu_items) | **Get** /food/menuItems/search | Search Menu Items
[**search_recipes**](DefaultApi.md#search_recipes) | **Get** /recipes/complexSearch | Search Recipes
[**search_recipes_by_ingredients**](DefaultApi.md#search_recipes_by_ingredients) | **Get** /recipes/findByIngredients | Search Recipes by Ingredients
[**search_recipes_by_nutrients**](DefaultApi.md#search_recipes_by_nutrients) | **Get** /recipes/findByNutrients | Search Recipes by Nutrients
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
[**visualize_recipe_taste**](DefaultApi.md#visualize_recipe_taste) | **Post** /recipes/visualizeTaste | Visualize Recipe Taste
[**visualize_recipe_taste_by_id**](DefaultApi.md#visualize_recipe_taste_by_id) | **Get** /recipes/{id}/tasteWidget | Visualize Recipe Taste by ID



## add_to_meal_plan

> Value add_to_meal_plan(username, hash, inline_object11)
Add to Meal Plan

Add an item to the user's meal plan.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **username** | **String**| The username. | 
  **hash** | **String**| The private hash for the username. | 
  **inline_object11** | [**InlineObject11**](InlineObject11.md)|  | 

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: 
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## add_to_shopping_list

> Value add_to_shopping_list(username, hash, inline_object14)
Add to Shopping List

Add an item to the current shopping list of a user.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **username** | **String**| The username. | 
  **hash** | **String**| The private hash for the username. | 
  **inline_object14** | [**InlineObject14**](InlineObject14.md)|  | 

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: 
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


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

This endpoint allows you to break down instructions into atomic steps. Furthermore, each step will contain the ingredients and equipment required. Additionally, all ingredients and equipment from the recipe's instructions will be extracted independently of the step they're used in.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **instructions** | **String**| The instructions to be analyzed. | 

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

Autocomplete the entry of an ingredient.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **query** | **String**| The partial or full ingredient name. | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The partial or full ingredient name. | 
 **number** | **f32**| The number of results to return (between 1 and 100). | 
 **meta_information** | **bool**| Whether to return more meta information about the ingredients. | 
 **intolerances** | **String**| A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. | 

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

Autocomplete a partial input to suggest possible recipe names.

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

> Value classify_grocery_product(inline_object9, optional)
Classify Grocery Product

This endpoint allows you to match a packaged food to a basic category, e.g. a specific brand of milk to the category milk.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **inline_object9** | [**InlineObject9**](InlineObject9.md)|  | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inline_object9** | [**InlineObject9**](InlineObject9.md)|  | 
 **locale** | **String**| The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). | 

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

Provide a set of product jsons, get back classified products.

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
 **locale** | **String**| The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). | 

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## clear_meal_plan_day

> Value clear_meal_plan_day(username, date, hash, inline_object10)
Clear Meal Plan Day

Delete all planned items from the user's meal plan for a specific day.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **username** | **String**| The username. | 
  **date** | **String**| The date in the format yyyy-mm-dd. | 
  **hash** | **String**| The private hash for the username. | 
  **inline_object10** | [**InlineObject10**](InlineObject10.md)|  | 

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: 
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## compute_glycemic_load

> Value compute_glycemic_load(body)
Compute Glycemic Load

Retrieve the glycemic index for a list of ingredients and compute the individual and total glycemic load.

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


## connect_user

> Value connect_user(body)
Connect User

In order to call user-specific endpoints, you need to connect your app's users to spoonacular users.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **body** | **Value**|  | 

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: 
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

Generate a recipe card for a recipe.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **title** | **String**| The title of the recipe. | 
  **image** | **&std::path::Path**| The binary image of the recipe as jpg. | 
  **ingredients** | **String**| The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n). | 
  **instructions** | **String**| The instructions to make the recipe. One step per line (separate lines with \\\\n). | 
  **ready_in_minutes** | **f32**| The number of minutes it takes to get the recipe on the table. | 
  **servings** | **f32**| The number of servings the recipe makes. | 
  **mask** | **String**| The mask to put over the recipe image (\\\"ellipseMask\\\", \\\"diamondMask\\\", \\\"starMask\\\", \\\"heartMask\\\", \\\"potMask\\\", \\\"fishMask\\\"). | 
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
 **servings** | **f32**| The number of servings the recipe makes. | 
 **mask** | **String**| The mask to put over the recipe image (\\\"ellipseMask\\\", \\\"diamondMask\\\", \\\"starMask\\\", \\\"heartMask\\\", \\\"potMask\\\", \\\"fishMask\\\"). | 
 **background_image** | **String**| The background image (\\\"none\\\",\\\"background1\\\", or \\\"background2\\\"). | 
 **author** | **String**| The author of the recipe. | 
 **background_color** | **String**| The background color for the recipe card as a hex-string. | 
 **font_color** | **String**| The font color for the recipe card as a hex-string. | 
 **source** | **String**| The source of the recipe. | 

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## delete_from_meal_plan

> Value delete_from_meal_plan(username, id, hash, inline_object12)
Delete from Meal Plan

Delete an item from the user's meal plan.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **username** | **String**| The username. | 
  **id** | **f32**| The shopping list item id. | 
  **hash** | **String**| The private hash for the username. | 
  **inline_object12** | [**InlineObject12**](InlineObject12.md)|  | 

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: 
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## delete_from_shopping_list

> Value delete_from_shopping_list(username, id, hash, inline_object15)
Delete from Shopping List

Delete an item from the current shopping list of the user.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **username** | **String**| The username. | 
  **id** | **f32**| The shopping list item id. | 
  **hash** | **String**| The private hash for the username. | 
  **inline_object15** | [**InlineObject15**](InlineObject15.md)|  | 

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: 
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## detect_food_in_text

> Value detect_food_in_text(text)
Detect Food in Text

Take any text and find all mentions of food contained within it. This task is also called Named Entity Recognition (NER). In this case, the entities are foods. Either dishes, such as pizza or cheeseburger, or ingredients, such as cucumber or almonds.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **text** | **String**| The text in which food items, such as dish names and ingredients, should be detected in. | 

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

This endpoint lets you extract recipe data such as title, ingredients, and instructions from any properly formatted Website.

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
 **force_extraction** | **bool**| If true, the extraction will be triggered whether we already know the recipe or not. Use this only if information is missing as this operation is slower. | 
 **analyze** | **bool**| If true, the recipe will be analyzed and classified resolving in more data such as cuisines, dish types, and more. | 

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


## generate_shopping_list

> Value generate_shopping_list(username, start_date, end_date, hash, inline_object13)
Generate Shopping List

Generate the shopping list for a user from the meal planner in a given time frame.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **username** | **String**| The username. | 
  **start_date** | **String**| The start date in the format yyyy-mm-dd. | 
  **end_date** | **String**| The end date in the format yyyy-mm-dd. | 
  **hash** | **String**| The private hash for the username. | 
  **inline_object13** | [**InlineObject13**](InlineObject13.md)|  | 

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: 
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_a_random_food_joke

> Value get_a_random_food_joke()
Get a Random Food Joke

Get a random joke that is related to food. Caution: this is an endpoint for adults!

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

Get an analyzed breakdown of a recipe's instructions. Each step is enriched with the ingredients and equipment required.

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
  **upc** | **f32**| The UPC of the product for which you want to find comparable products. | 

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

This endpoint returns suggestions for things the user can say or ask the chatbot.

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

Find a dish that goes well with a given wine.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **wine** | **String**| The type of wine that should be paired, e.g. \"merlot\", \"riesling\", or \"malbec\". | 

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_ingredient_information

> Value get_ingredient_information(id, optional)
Get Ingredient Information

Use an ingredient id to get all available information about an ingredient, such as its image and supermarket aisle.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **id** | **f32**| The ingredient id. | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **f32**| The ingredient id. | 
 **amount** | **f32**| The amount of this ingredient. | 
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


## get_meal_plan_template

> Value get_meal_plan_template(username, id, hash)
Get Meal Plan Template

Get information about a meal plan template.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **username** | **String**| The username. | 
  **id** | **f32**| The shopping list item id. | 
  **hash** | **String**| The private hash for the username. | 

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_meal_plan_templates

> Value get_meal_plan_templates(username, hash)
Get Meal Plan Templates

Get meal plan templates from user or public ones.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **username** | **String**| The username. | 
  **hash** | **String**| The private hash for the username. | 

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_meal_plan_week

> Value get_meal_plan_week(username, start_date, hash)
Get Meal Plan Week

Retrieve a meal planned week for the given user. The username must be a spoonacular user and the hash must the the user's hash that can be found in his/her account.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **username** | **String**| The username. | 
  **start_date** | **String**| The start date of the meal planned week in the format yyyy-mm-dd. | 
  **hash** | **String**| The private hash for the username. | 

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

Use a menu item id to get all available information about a menu item, such as nutrition.

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

Use a product id to get full information about a product, such as ingredients, nutrition, etc. The nutritional information is per serving.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **id** | **f32**| The id of the packaged food. | 

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

Find random (popular) recipes. If you need to filter recipes by diet, nutrition etc. you might want to consider using the complex recipe search endpoint and set the sort request parameter to random.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit_license** | **bool**| Whether the recipes should have an open license that allows display with proper attribution. | 
 **tags** | **String**| The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have. | 
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

Use a recipe id to get full information about a recipe, such as ingredients, nutrition, diet and allergen information, etc.

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
 **include_nutrition** | **bool**| Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. | 

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

Get information about multiple recipes at once. This is equivalent to calling the Get Recipe Information endpoint multiple times, but faster.

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


## get_recipe_nutrition_widget_by_id

> Value get_recipe_nutrition_widget_by_id(id)
Get Recipe Nutrition Widget by ID

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


## get_recipe_taste_by_id

> Value get_recipe_taste_by_id(id)
Get Recipe Taste by ID

Get a recipe's taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.

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


## get_shopping_list

> Value get_shopping_list(username, hash)
Get Shopping List

Get the current shopping list for the given user.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **username** | **String**| The username. | 
  **hash** | **String**| The private hash for the username. | 

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
  **id** | **f32**| The id of the source recipe for which similar recipes should be found. | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **f32**| The id of the source recipe for which similar recipes should be found. | 
 **number** | **f32**| The number of random recipes to be returned (between 1 and 100). | 
 **limit_license** | **bool**| Whether the recipes should have an open license that allows display with proper attribution. | 

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

Get a simple description of a certain wine, e.g. \"malbec\", \"riesling\", or \"merlot\".

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

Get a specific wine recommendation (concrete product) for a given wine type, e.g. \"merlot\".

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **wine** | **String**| The type of wine to get a specific product recommendation for. | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wine** | **String**| The type of wine to get a specific product recommendation for. | 
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

Estimate the macronutrients of a dish based on its title.

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


## image_analysis_by_url

> Value image_analysis_by_url(image_url)
Image Analysis by URL

Analyze a food image. The API tries to classify the image, guess the nutrition, and find a matching recipes. You can play around with that endpoint!

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **image_url** | **String**| The URL of the image to be analyzed. | 

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## image_classification_by_url

> Value image_classification_by_url(image_url)
Image Classification by URL

Classify a food image. You can play around with that endpoint!

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **image_url** | **String**| The URL of the image to be classified. | 

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## ingredient_search

> Value ingredient_search(query, optional)
Ingredient Search

Search for simple whole foods (e.g. fruits, vegetables, nuts, grains, meat, fish, dairy etc.).

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **query** | **String**| The partial or full ingredient name. | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The partial or full ingredient name. | 
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
 **offset** | **f32**| The number of results to skip (between 0 and 990). | 
 **number** | **f32**| The number of expected results (between 1 and 100). | 

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
  **q** | **String**| The nutrition related question. | 

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## search_all_food

> Value search_all_food(query, optional)
Search All Food

Search all food content with one call. That includes recipes, grocery products, menu items, simple foods (ingredients), and food videos.

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
 **offset** | **f32**| The number of results to skip (between 0 and 990). | 
 **number** | **f32**| The number of expected results (between 1 and 100). | 

### Return type

[**Value**](Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## search_custom_foods

> Value search_custom_foods(query, username, hash, optional)
Search Custom Foods

Search custom foods in a user's account.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **query** | **String**| The search query. | 
  **username** | **String**| The username. | 
  **hash** | **String**| The private hash for the username. | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The search query. | 
 **username** | **String**| The username. | 
 **hash** | **String**| The private hash for the username. | 
 **offset** | **f32**| The number of results to skip (between 0 and 990). | 
 **number** | **f32**| The number of expected results (between 1 and 100). | 

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
 **cuisine** | **String**| The cuisine(s) of the recipes. One or more, comma separated. See a full list of supported cuisines. | 
 **diet** | **String**| The diet for which the recipes must be suitable. See a full list of supported diets. | 
 **include_ingredients** | **String**| A comma-separated list of ingredients that the recipes should contain. | 
 **exclude_ingredients** | **String**| A comma-separated list of ingredients or ingredient types that the recipes must not contain. | 
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

Search packaged food products, such as frozen pizza or Greek yogurt.

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
 **min_calories** | **f32**| The minimum amount of calories the product must have. | 
 **max_calories** | **f32**| The maximum amount of calories the product can have. | 
 **min_carbs** | **f32**| The minimum amount of carbohydrates in grams the product must have. | 
 **max_carbs** | **f32**| The maximum amount of carbohydrates in grams the product can have. | 
 **min_protein** | **f32**| The minimum amount of protein in grams the product must have. | 
 **max_protein** | **f32**| The maximum amount of protein in grams the product can have. | 
 **min_fat** | **f32**| The minimum amount of fat in grams the product must have. | 
 **max_fat** | **f32**| The maximum amount of fat in grams the product can have. | 
 **offset** | **f32**| The number of results to skip (between 0 and 990). | 
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

Get information about a packaged food using its UPC.

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

Search over 115,000 menu items from over 800 fast food and chain restaurants. For example, McDonald's Big Mac or Starbucks Mocha.

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
 **min_calories** | **f32**| The minimum amount of calories the menu item must have. | 
 **max_calories** | **f32**| The maximum amount of calories the menu item can have. | 
 **min_carbs** | **f32**| The minimum amount of carbohydrates in grams the menu item must have. | 
 **max_carbs** | **f32**| The maximum amount of carbohydrates in grams the menu item can have. | 
 **min_protein** | **f32**| The minimum amount of protein in grams the menu item must have. | 
 **max_protein** | **f32**| The maximum amount of protein in grams the menu item can have. | 
 **min_fat** | **f32**| The minimum amount of fat in grams the menu item must have. | 
 **max_fat** | **f32**| The maximum amount of fat in grams the menu item can have. | 
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

Search through hundreds of thousands of recipes using advanced filtering and ranking. NOTE: This method combines searching by query, by ingredients, and by nutrients into one endpoint.

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
 **tags** | **String**| User defined tags that have to match. The author param has to be set. | 
 **recipe_box_id** | **f32**| The id of the recipe box to which the search should be limited to. | 
 **title_match** | **String**| Enter text that must be found in the title of the recipes. | 
 **max_ready_time** | **f32**| The maximum time in minutes it should take to prepare and cook the recipe. | 
 **ignore_pantry** | **bool**| Whether to ignore typical pantry items, such as water, salt, flour, etc. | 
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
 **offset** | **f32**| The number of results to skip (between 0 and 900). | 
 **number** | **f32**| The number of expected results (between 1 and 100). | 
 **limit_license** | **bool**| Whether the recipes should have an open license that allows display with proper attribution. | 

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

             Ever wondered what recipes you can cook with the ingredients you have in your fridge or pantry? This endpoint lets you find recipes that either maximize the usage of ingredients you have at hand (pre shopping) or minimize the ingredients that you don't currently have (post shopping).         

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
 **number** | **f32**| The maximum number of recipes to return (between 1 and 100). Defaults to 10. | 
 **limit_license** | **bool**| Whether the recipes should have an open license that allows display with proper attribution. | 
 **ranking** | **f32**| Whether to maximize used ingredients (1) or minimize missing ingredients (2) first. | 
 **ignore_pantry** | **bool**| Whether to ignore typical pantry items, such as water, salt, flour, etc. | 

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

Find a set of recipes that adhere to the given nutritional limits. You may set limits for macronutrients (calories, protein, fat, and carbohydrate) and/or many micronutrients.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
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
 **offset** | **f32**| The number of results to skip (between 0 and 900). | 
 **number** | **f32**| The number of expected results (between 1 and 100). | 
 **random** | **bool**| If true, every request will give you a random set of recipes within the requested limits. | 
 **limit_license** | **bool**| Whether the recipes should have an open license that allows display with proper attribution. | 

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

Search spoonacular's site content. You'll be able to find everything that you could also find using the search suggestions on spoonacular.com. This is a suggest API so you can send partial strings as queries.

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

Automatically generate a short description that summarizes key information about the recipe.

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

This endpoint can be used to have a conversation about food with the spoonacular chatbot. Use the \"Get Conversation Suggests\" endpoint to show your user what he or she can say.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **text** | **String**| The request / question / answer from the user to the chatbot. | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **String**| The request / question / answer from the user to the chatbot. | 
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

> String visualize_equipment(instructions, optional)
Visualize Equipment

Visualize the equipment used to make a recipe. You can play around with that endpoint!

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **instructions** | **String**| The recipe's instructions. | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instructions** | **String**| The recipe's instructions. | 
 **view** | **String**| How to visualize the equipment, either \\\"grid\\\" or \\\"list\\\". | 
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

Visualize ingredients of a recipe. You can play around with that endpoint!

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
 **measure** | **String**| The original system of measurement, either \\\"metric\\\" or \\\"us\\\". | 
 **view** | **String**| How to visualize the ingredients, either \\\"grid\\\" or \\\"list\\\". | 
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

Visualize a menu item's nutritional information as HTML including CSS.

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

Visualize the price breakdown of a recipe. You can play around with that endpoint!

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

Visualize a product's nutritional information as HTML including CSS.

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

Visualize a recipe's nutritional information as HTML including CSS. You can play around with that endpoint!

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

Visualize a recipe's nutritional information as HTML including CSS.

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


## visualize_recipe_taste

> String visualize_recipe_taste(ingredient_list)
Visualize Recipe Taste

Visualize a recipe's taste information as HTML including CSS. You can play around with that endpoint!

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **ingredient_list** | **String**| The ingredient list of the recipe, one ingredient per line. | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## visualize_recipe_taste_by_id

> String visualize_recipe_taste_by_id(id)
Visualize Recipe Taste by ID

Get a recipe's taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **id** | **f32**| The recipe id. | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

