# spoonacular.DefaultApi

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**analyze_a_recipe_search_query**](DefaultApi.md#analyze_a_recipe_search_query) | **GET** /recipes/queries/analyze | Analyze a Recipe Search Query
[**analyze_recipe_instructions**](DefaultApi.md#analyze_recipe_instructions) | **POST** /recipes/analyzeInstructions | Analyze Recipe Instructions
[**autocomplete_ingredient_search**](DefaultApi.md#autocomplete_ingredient_search) | **GET** /food/ingredients/autocomplete | Autocomplete Ingredient Search
[**autocomplete_menu_item_search**](DefaultApi.md#autocomplete_menu_item_search) | **GET** /food/menuItems/suggest | Autocomplete Menu Item Search
[**autocomplete_product_search**](DefaultApi.md#autocomplete_product_search) | **GET** /food/products/suggest | Autocomplete Product Search
[**autocomplete_recipe_search**](DefaultApi.md#autocomplete_recipe_search) | **GET** /recipes/autocomplete | Autocomplete Recipe Search
[**classify_cuisine**](DefaultApi.md#classify_cuisine) | **POST** /recipes/cuisine | Classify Cuisine
[**classify_grocery_product**](DefaultApi.md#classify_grocery_product) | **POST** /food/products/classify | Classify Grocery Product
[**classify_grocery_product_bulk**](DefaultApi.md#classify_grocery_product_bulk) | **POST** /food/products/classifyBatch | Classify Grocery Product Bulk
[**convert_amounts**](DefaultApi.md#convert_amounts) | **GET** /recipes/convert | Convert Amounts
[**create_recipe_card**](DefaultApi.md#create_recipe_card) | **POST** /recipes/visualizeRecipe | Create Recipe Card
[**detect_food_in_text**](DefaultApi.md#detect_food_in_text) | **POST** /food/detect | Detect Food in Text
[**extract_recipe_from_website**](DefaultApi.md#extract_recipe_from_website) | **GET** /recipes/extract | Extract Recipe from Website
[**generate_meal_plan**](DefaultApi.md#generate_meal_plan) | **GET** /recipes/mealplans/generate | Generate Meal Plan
[**get_a_random_food_joke**](DefaultApi.md#get_a_random_food_joke) | **GET** /food/jokes/random | Get a Random Food Joke
[**get_analyzed_recipe_instructions**](DefaultApi.md#get_analyzed_recipe_instructions) | **GET** /recipes/{id}/analyzedInstructions | Get Analyzed Recipe Instructions
[**get_comparable_products**](DefaultApi.md#get_comparable_products) | **GET** /food/products/upc/{upc}/comparable | Get Comparable Products
[**get_conversation_suggests**](DefaultApi.md#get_conversation_suggests) | **GET** /food/converse/suggest | Get Conversation Suggests
[**get_dish_pairing_for_wine**](DefaultApi.md#get_dish_pairing_for_wine) | **GET** /food/wine/dishes | Get Dish Pairing for Wine
[**get_food_information**](DefaultApi.md#get_food_information) | **GET** /food/ingredients/{id}/information | Get Food Information
[**get_ingredient_substitutes**](DefaultApi.md#get_ingredient_substitutes) | **GET** /food/ingredients/substitutes | Get Ingredient Substitutes
[**get_ingredient_substitutes_by_id**](DefaultApi.md#get_ingredient_substitutes_by_id) | **GET** /food/ingredients/{id}/substitutes | Get Ingredient Substitutes by ID
[**get_menu_item_information**](DefaultApi.md#get_menu_item_information) | **GET** /food/menuItems/{id} | Get Menu Item Information
[**get_product_information**](DefaultApi.md#get_product_information) | **GET** /food/products/{id} | Get Product Information
[**get_random_food_trivia**](DefaultApi.md#get_random_food_trivia) | **GET** /food/trivia/random | Get Random Food Trivia
[**get_random_recipes**](DefaultApi.md#get_random_recipes) | **GET** /recipes/random | Get Random Recipes
[**get_recipe_equipment_by_id**](DefaultApi.md#get_recipe_equipment_by_id) | **GET** /recipes/{id}/equipmentWidget.json | Get Recipe Equipment by ID
[**get_recipe_information**](DefaultApi.md#get_recipe_information) | **GET** /recipes/{id}/information | Get Recipe Information
[**get_recipe_information_bulk**](DefaultApi.md#get_recipe_information_bulk) | **GET** /recipes/informationBulk | Get Recipe Information Bulk
[**get_recipe_ingredients_by_id**](DefaultApi.md#get_recipe_ingredients_by_id) | **GET** /recipes/{id}/ingredientWidget.json | Get Recipe Ingredients by ID
[**get_recipe_nutrition_by_id**](DefaultApi.md#get_recipe_nutrition_by_id) | **GET** /recipes/{id}/nutritionWidget.json | Get Recipe Nutrition by ID
[**get_recipe_price_breakdown_by_id**](DefaultApi.md#get_recipe_price_breakdown_by_id) | **GET** /recipes/{id}/priceBreakdownWidget.json | Get Recipe Price Breakdown by ID
[**get_similar_recipes**](DefaultApi.md#get_similar_recipes) | **GET** /recipes/{id}/similar | Get Similar Recipes
[**get_wine_description**](DefaultApi.md#get_wine_description) | **GET** /food/wine/description | Get Wine Description
[**get_wine_pairing**](DefaultApi.md#get_wine_pairing) | **GET** /food/wine/pairing | Get Wine Pairing
[**get_wine_recommendation**](DefaultApi.md#get_wine_recommendation) | **GET** /food/wine/recommendation | Get Wine Recommendation
[**guess_nutrition_by_dish_name**](DefaultApi.md#guess_nutrition_by_dish_name) | **GET** /recipes/guessNutrition | Guess Nutrition by Dish Name
[**map_ingredients_to_grocery_products**](DefaultApi.md#map_ingredients_to_grocery_products) | **POST** /food/ingredients/map | Map Ingredients to Grocery Products
[**parse_ingredients**](DefaultApi.md#parse_ingredients) | **POST** /recipes/parseIngredients | Parse Ingredients
[**quick_answer**](DefaultApi.md#quick_answer) | **GET** /recipes/quickAnswer | Quick Answer
[**search_food_videos**](DefaultApi.md#search_food_videos) | **GET** /food/videos/search | Search Food Videos
[**search_grocery_products**](DefaultApi.md#search_grocery_products) | **GET** /food/products/search | Search Grocery Products
[**search_grocery_products_by_upc**](DefaultApi.md#search_grocery_products_by_upc) | **GET** /food/products/upc/{upc} | Search Grocery Products by UPC
[**search_menu_items**](DefaultApi.md#search_menu_items) | **GET** /food/menuItems/search | Search Menu Items
[**search_recipes**](DefaultApi.md#search_recipes) | **GET** /recipes/search | Search Recipes
[**search_recipes_by_ingredients**](DefaultApi.md#search_recipes_by_ingredients) | **GET** /recipes/findByIngredients | Search Recipes by Ingredients
[**search_recipes_by_nutrients**](DefaultApi.md#search_recipes_by_nutrients) | **GET** /recipes/findByNutrients | Search Recipes by Nutrients
[**search_recipes_complex**](DefaultApi.md#search_recipes_complex) | **GET** /recipes/complexSearch | Search Recipes Complex
[**search_site_content**](DefaultApi.md#search_site_content) | **GET** /food/site/search | Search Site Content
[**summarize_recipe**](DefaultApi.md#summarize_recipe) | **GET** /recipes/{id}/summary | Summarize Recipe
[**talk_to_chatbot**](DefaultApi.md#talk_to_chatbot) | **GET** /food/converse | Talk to Chatbot
[**visualize_equipment**](DefaultApi.md#visualize_equipment) | **POST** /recipes/visualizeEquipment | Visualize Equipment
[**visualize_ingredients**](DefaultApi.md#visualize_ingredients) | **POST** /recipes/visualizeIngredients | Visualize Ingredients
[**visualize_menu_item_nutrition_by_id**](DefaultApi.md#visualize_menu_item_nutrition_by_id) | **GET** /food/menuItems/{id}/nutritionWidget | Visualize Menu Item Nutrition by ID
[**visualize_price_breakdown**](DefaultApi.md#visualize_price_breakdown) | **POST** /recipes/visualizePriceEstimator | Visualize Price Breakdown
[**visualize_product_nutrition_by_id**](DefaultApi.md#visualize_product_nutrition_by_id) | **GET** /food/products/{id}/nutritionWidget | Visualize Product Nutrition by ID
[**visualize_recipe_equipment_by_id**](DefaultApi.md#visualize_recipe_equipment_by_id) | **GET** /recipes/{id}/equipmentWidget | Visualize Recipe Equipment by ID
[**visualize_recipe_ingredients_by_id**](DefaultApi.md#visualize_recipe_ingredients_by_id) | **GET** /recipes/{id}/ingredientWidget | Visualize Recipe Ingredients by ID
[**visualize_recipe_nutrition**](DefaultApi.md#visualize_recipe_nutrition) | **POST** /recipes/visualizeNutrition | Visualize Recipe Nutrition
[**visualize_recipe_nutrition_by_id**](DefaultApi.md#visualize_recipe_nutrition_by_id) | **GET** /recipes/{id}/nutritionWidget | Visualize Recipe Nutrition by ID
[**visualize_recipe_price_breakdown_by_id**](DefaultApi.md#visualize_recipe_price_breakdown_by_id) | **GET** /recipes/{id}/priceBreakdownWidget | Visualize Recipe Price Breakdown by ID


# **analyze_a_recipe_search_query**
> object analyze_a_recipe_search_query(q)

Analyze a Recipe Search Query

Parse a recipe search query to find out its intention.

### Example

```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = spoonacular.DefaultApi()
q = 'salmon with fusilli and no nuts' # str | The recipe search query.

try:
    # Analyze a Recipe Search Query
    api_response = api_instance.analyze_a_recipe_search_query(q)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->analyze_a_recipe_search_query: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **str**| The recipe search query. | 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **analyze_recipe_instructions**
> object analyze_recipe_instructions(instructions)

Analyze Recipe Instructions

Extract ingredients and equipment from the recipe instruction steps.

### Example

```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = spoonacular.DefaultApi()
instructions = 'instructions_example' # str | The instructions text.

try:
    # Analyze Recipe Instructions
    api_response = api_instance.analyze_recipe_instructions(instructions)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->analyze_recipe_instructions: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instructions** | **str**| The instructions text. | 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **autocomplete_ingredient_search**
> object autocomplete_ingredient_search(query, number=number, meta_information=meta_information, intolerances=intolerances)

Autocomplete Ingredient Search

Autocomplete a search for an ingredient.

### Example

```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = spoonacular.DefaultApi()
query = 'appl' # str | The query - a partial or full ingredient name.
number = 10 # float | The number of results to return (between 1 and 100). (optional)
meta_information = false # bool | Whether to return more meta information about the ingredients. (optional)
intolerances = false # bool | A comma-separated list of intolerances. All found ingredients must not cause problems for people with one of the given tolerances. See a full list of supported intolerances. (optional)

try:
    # Autocomplete Ingredient Search
    api_response = api_instance.autocomplete_ingredient_search(query, number=number, meta_information=meta_information, intolerances=intolerances)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->autocomplete_ingredient_search: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **str**| The query - a partial or full ingredient name. | 
 **number** | **float**| The number of results to return (between 1 and 100). | [optional] 
 **meta_information** | **bool**| Whether to return more meta information about the ingredients. | [optional] 
 **intolerances** | **bool**| A comma-separated list of intolerances. All found ingredients must not cause problems for people with one of the given tolerances. See a full list of supported intolerances. | [optional] 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **autocomplete_menu_item_search**
> object autocomplete_menu_item_search(query, number=number)

Autocomplete Menu Item Search

Generate suggestions for menu items based on a (partial) query. The matches will be found by looking in the title only.

### Example

```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = spoonacular.DefaultApi()
query = 'chicke' # str | The (partial) search query.
number = 10 # float | The number of results to return (between 1 and 25). (optional)

try:
    # Autocomplete Menu Item Search
    api_response = api_instance.autocomplete_menu_item_search(query, number=number)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->autocomplete_menu_item_search: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **str**| The (partial) search query. | 
 **number** | **float**| The number of results to return (between 1 and 25). | [optional] 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **autocomplete_product_search**
> object autocomplete_product_search(query, number=number)

Autocomplete Product Search

Generate suggestions for grocery products based on a (partial) query. The matches will be found by looking in the title only.

### Example

```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = spoonacular.DefaultApi()
query = 'chicke' # str | The (partial) search query.
number = 10 # float | The number of results to return (between 1 and 25). (optional)

try:
    # Autocomplete Product Search
    api_response = api_instance.autocomplete_product_search(query, number=number)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->autocomplete_product_search: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **str**| The (partial) search query. | 
 **number** | **float**| The number of results to return (between 1 and 25). | [optional] 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **autocomplete_recipe_search**
> object autocomplete_recipe_search(query, number=number)

Autocomplete Recipe Search

Autocomplete a partial input to possible recipe names.

### Example

```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = spoonacular.DefaultApi()
query = 'burger' # str | The query to be autocompleted.
number = 10 # float | The number of results to return (between 1 and 25). (optional)

try:
    # Autocomplete Recipe Search
    api_response = api_instance.autocomplete_recipe_search(query, number=number)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->autocomplete_recipe_search: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **str**| The query to be autocompleted. | 
 **number** | **float**| The number of results to return (between 1 and 25). | [optional] 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **classify_cuisine**
> object classify_cuisine(title, ingredient_list)

Classify Cuisine

Classify the recipe's cuisine.

### Example

```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = spoonacular.DefaultApi()
title = 'title_example' # str | The title of the recipe.
ingredient_list = 'ingredient_list_example' # str | The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n).

try:
    # Classify Cuisine
    api_response = api_instance.classify_cuisine(title, ingredient_list)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->classify_cuisine: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **str**| The title of the recipe. | 
 **ingredient_list** | **str**| The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n). | 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **classify_grocery_product**
> object classify_grocery_product(inline_object8, locale=locale)

Classify Grocery Product

Given a grocery product title, this endpoint allows you to detect what basic ingredient it is.

### Example

```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = spoonacular.DefaultApi()
inline_object8 = spoonacular.InlineObject8() # InlineObject8 | 
locale = 'en_US' # str | The locale of the returned category, supported is en_US and en_GB. (optional)

try:
    # Classify Grocery Product
    api_response = api_instance.classify_grocery_product(inline_object8, locale=locale)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->classify_grocery_product: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inline_object8** | [**InlineObject8**](InlineObject8.md)|  | 
 **locale** | **str**| The locale of the returned category, supported is en_US and en_GB. | [optional] 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **classify_grocery_product_bulk**
> object classify_grocery_product_bulk(body, locale=locale)

Classify Grocery Product Bulk

Given a set of product jsons, get back classified products.

### Example

```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = spoonacular.DefaultApi()
body = None # object | 
locale = 'en_US' # str | The locale of the returned category, supported is en_US and en_GB. (optional)

try:
    # Classify Grocery Product Bulk
    api_response = api_instance.classify_grocery_product_bulk(body, locale=locale)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->classify_grocery_product_bulk: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **object**|  | 
 **locale** | **str**| The locale of the returned category, supported is en_US and en_GB. | [optional] 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **convert_amounts**
> object convert_amounts(ingredient_name, source_amount, source_unit, target_unit)

Convert Amounts

Convert amounts like \"2 cups of flour to grams\".

### Example

```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = spoonacular.DefaultApi()
ingredient_name = 'flour' # str | The ingredient which you want to convert.
source_amount = 2.5 # float | The amount from which you want to convert, e.g. the 2.5 in \"2.5 cups of flour to grams\".
source_unit = 'cups' # str | The unit from which you want to convert, e.g. the grams in \"2.5 cups of flour to grams\". You can also use \"piece\", e.g. \"3.4 oz tomatoes to piece\"
target_unit = 'grams' # str | The unit to which you want to convert, e.g. the grams in \"2.5 cups of flour to grams\". You can also use \"piece\", e.g. \"3.4 oz tomatoes to piece\"

try:
    # Convert Amounts
    api_response = api_instance.convert_amounts(ingredient_name, source_amount, source_unit, target_unit)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->convert_amounts: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredient_name** | **str**| The ingredient which you want to convert. | 
 **source_amount** | **float**| The amount from which you want to convert, e.g. the 2.5 in \&quot;2.5 cups of flour to grams\&quot;. | 
 **source_unit** | **str**| The unit from which you want to convert, e.g. the grams in \&quot;2.5 cups of flour to grams\&quot;. You can also use \&quot;piece\&quot;, e.g. \&quot;3.4 oz tomatoes to piece\&quot; | 
 **target_unit** | **str**| The unit to which you want to convert, e.g. the grams in \&quot;2.5 cups of flour to grams\&quot;. You can also use \&quot;piece\&quot;, e.g. \&quot;3.4 oz tomatoes to piece\&quot; | 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_recipe_card**
> object create_recipe_card(title, image, ingredients, instructions, ready_in_minutes, servings, mask, background_image, author=author, background_color=background_color, font_color=font_color, source=source)

Create Recipe Card

Create Recipe Card.

### Example

```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = spoonacular.DefaultApi()
title = 'title_example' # str | The title of the recipe.
image = '/path/to/file' # file | The binary image of the recipe as jpg.
ingredients = 'ingredients_example' # str | The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n).
instructions = 'instructions_example' # str | The instructions to make the recipe. One step per line (separate lines with \\\\n).
ready_in_minutes = 3.4 # float | The number of minutes it takes to get the recipe on the table.
servings = 3.4 # float | The number of servings that you can make from the ingredients.
mask = 'mask_example' # str | The mask to put over the recipe image (\\\"ellipseMask\\\", \\\"diamondMask\\\", \\\"diamondMask\\\", \\\"starMask\\\", \\\"heartMask\\\", \\\"potMask\\\", \\\"fishMask\\\").
background_image = 'background_image_example' # str | The background image (\\\"none\\\",\\\"background1\\\", or \\\"background2\\\").
author = 'author_example' # str | The author of the recipe. (optional)
background_color = 'background_color_example' # str | The background color on the recipe card as a hex-string. (optional)
font_color = 'font_color_example' # str | The font color on the recipe card as a hex-string. (optional)
source = 'source_example' # str | The source of the recipe. (optional)

try:
    # Create Recipe Card
    api_response = api_instance.create_recipe_card(title, image, ingredients, instructions, ready_in_minutes, servings, mask, background_image, author=author, background_color=background_color, font_color=font_color, source=source)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->create_recipe_card: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **str**| The title of the recipe. | 
 **image** | **file**| The binary image of the recipe as jpg. | 
 **ingredients** | **str**| The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n). | 
 **instructions** | **str**| The instructions to make the recipe. One step per line (separate lines with \\\\n). | 
 **ready_in_minutes** | **float**| The number of minutes it takes to get the recipe on the table. | 
 **servings** | **float**| The number of servings that you can make from the ingredients. | 
 **mask** | **str**| The mask to put over the recipe image (\\\&quot;ellipseMask\\\&quot;, \\\&quot;diamondMask\\\&quot;, \\\&quot;diamondMask\\\&quot;, \\\&quot;starMask\\\&quot;, \\\&quot;heartMask\\\&quot;, \\\&quot;potMask\\\&quot;, \\\&quot;fishMask\\\&quot;). | 
 **background_image** | **str**| The background image (\\\&quot;none\\\&quot;,\\\&quot;background1\\\&quot;, or \\\&quot;background2\\\&quot;). | 
 **author** | **str**| The author of the recipe. | [optional] 
 **background_color** | **str**| The background color on the recipe card as a hex-string. | [optional] 
 **font_color** | **str**| The font color on the recipe card as a hex-string. | [optional] 
 **source** | **str**| The source of the recipe. | [optional] 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **detect_food_in_text**
> object detect_food_in_text(text)

Detect Food in Text

Detect ingredients and dishes in texts. This task is also called Named Entity Recognition (NER). In our case the entities are foods. Either dishes, such as pizza and cheeseburger or ingredients, such as cucumber and almonds.

### Example

```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = spoonacular.DefaultApi()
text = 'text_example' # str | The text in which food items such as dish names and ingredients should be detected in.

try:
    # Detect Food in Text
    api_response = api_instance.detect_food_in_text(text)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->detect_food_in_text: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **str**| The text in which food items such as dish names and ingredients should be detected in. | 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **extract_recipe_from_website**
> object extract_recipe_from_website(url, force_extraction=force_extraction)

Extract Recipe from Website

Get an analyzed breakdown of a recipe's instructions. Each step is enriched with the ingredients and the equipment that is used.

### Example

```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = spoonacular.DefaultApi()
url = 'https://foodista.com/recipe/ZHK4KPB6/chocolate-crinkle-cookies' # str | The URL of the recipe page.
force_extraction = true # bool | If true, the extraction will be triggered no matter whether we know the recipe already. Use that only if information is missing as this operation is slower. (optional)

try:
    # Extract Recipe from Website
    api_response = api_instance.extract_recipe_from_website(url, force_extraction=force_extraction)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->extract_recipe_from_website: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **str**| The URL of the recipe page. | 
 **force_extraction** | **bool**| If true, the extraction will be triggered no matter whether we know the recipe already. Use that only if information is missing as this operation is slower. | [optional] 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generate_meal_plan**
> object generate_meal_plan(time_frame=time_frame, target_calories=target_calories, diet=diet, exclude=exclude)

Generate Meal Plan

Generate a meal plan with three meals per day (breakfast, lunch, and dinner).

### Example

```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = spoonacular.DefaultApi()
time_frame = 'day' # str | Either for one \"day\" or an entire \"week\". (optional)
target_calories = 2000 # float | What is the caloric target for one day? The meal plan generator will try to get as close as possible to that goal. (optional)
diet = 'vegetarian' # str | Enter a diet that the meal plan has to adhere to. See a full list of supported diets. (optional)
exclude = 'shellfish, olives' # str | A comma-separated list of allergens or ingredients that must be excluded. (optional)

try:
    # Generate Meal Plan
    api_response = api_instance.generate_meal_plan(time_frame=time_frame, target_calories=target_calories, diet=diet, exclude=exclude)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->generate_meal_plan: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **time_frame** | **str**| Either for one \&quot;day\&quot; or an entire \&quot;week\&quot;. | [optional] 
 **target_calories** | **float**| What is the caloric target for one day? The meal plan generator will try to get as close as possible to that goal. | [optional] 
 **diet** | **str**| Enter a diet that the meal plan has to adhere to. See a full list of supported diets. | [optional] 
 **exclude** | **str**| A comma-separated list of allergens or ingredients that must be excluded. | [optional] 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_a_random_food_joke**
> object get_a_random_food_joke()

Get a Random Food Joke

Get a random joke that includes or is about food.

### Example

```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = spoonacular.DefaultApi()

try:
    # Get a Random Food Joke
    api_response = api_instance.get_a_random_food_joke()
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->get_a_random_food_joke: %s\n" % e)
```

### Parameters
This endpoint does not need any parameter.

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_analyzed_recipe_instructions**
> object get_analyzed_recipe_instructions(id, step_breakdown=step_breakdown)

Get Analyzed Recipe Instructions

Get an analyzed breakdown of a recipe's instructions. Each step is enriched with the ingredients and the equipment that is used.

### Example

```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = spoonacular.DefaultApi()
id = 324694 # float | The recipe id.
step_breakdown = true # bool | Whether to break down the recipe steps even more. (optional)

try:
    # Get Analyzed Recipe Instructions
    api_response = api_instance.get_analyzed_recipe_instructions(id, step_breakdown=step_breakdown)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->get_analyzed_recipe_instructions: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **float**| The recipe id. | 
 **step_breakdown** | **bool**| Whether to break down the recipe steps even more. | [optional] 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_comparable_products**
> object get_comparable_products(upc)

Get Comparable Products

Find comparable products to the given one.

### Example

```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = spoonacular.DefaultApi()
upc = 33698816271 # float | The UPC of the product for that you want to find comparable products.

try:
    # Get Comparable Products
    api_response = api_instance.get_comparable_products(upc)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->get_comparable_products: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **upc** | **float**| The UPC of the product for that you want to find comparable products. | 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_conversation_suggests**
> object get_conversation_suggests(query, number=number)

Get Conversation Suggests

This endpoint returns suggestions for things the user can say or ask the chat bot.

### Example

```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = spoonacular.DefaultApi()
query = 'tell' # str | A (partial) query from the user. The endpoint will return if it matches topics it can talk about.
number = 5 # float | The number of suggestions to return (between 1 and 25). (optional)

try:
    # Get Conversation Suggests
    api_response = api_instance.get_conversation_suggests(query, number=number)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->get_conversation_suggests: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **str**| A (partial) query from the user. The endpoint will return if it matches topics it can talk about. | 
 **number** | **float**| The number of suggestions to return (between 1 and 25). | [optional] 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_dish_pairing_for_wine**
> object get_dish_pairing_for_wine(wine)

Get Dish Pairing for Wine

Get a dish that goes well with a given wine.

### Example

```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = spoonacular.DefaultApi()
wine = 'malbec' # str | The name of the wine that should be paired, e.g. \"merlot\", \"riesling\", or \"malbec\".

try:
    # Get Dish Pairing for Wine
    api_response = api_instance.get_dish_pairing_for_wine(wine)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->get_dish_pairing_for_wine: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wine** | **str**| The name of the wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;. | 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_food_information**
> object get_food_information(id, amount=amount, unit=unit)

Get Food Information

Get information about a certain food (ingredient).

### Example

```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = spoonacular.DefaultApi()
id = 9266 # float | The id of the food / ingredient.
amount = 150 # float | The amount of that food. (optional)
unit = 'grams' # str | The unit for the given amount. (optional)

try:
    # Get Food Information
    api_response = api_instance.get_food_information(id, amount=amount, unit=unit)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->get_food_information: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **float**| The id of the food / ingredient. | 
 **amount** | **float**| The amount of that food. | [optional] 
 **unit** | **str**| The unit for the given amount. | [optional] 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_ingredient_substitutes**
> object get_ingredient_substitutes(ingredient_name)

Get Ingredient Substitutes

Search for substitutes for a given ingredient.

### Example

```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = spoonacular.DefaultApi()
ingredient_name = 'butter' # str | The name of the ingredient you want to replace.

try:
    # Get Ingredient Substitutes
    api_response = api_instance.get_ingredient_substitutes(ingredient_name)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->get_ingredient_substitutes: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredient_name** | **str**| The name of the ingredient you want to replace. | 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_ingredient_substitutes_by_id**
> object get_ingredient_substitutes_by_id(id)

Get Ingredient Substitutes by ID

Search for substitutes for a given ingredient.

### Example

```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = spoonacular.DefaultApi()
id = 1001 # float | The id of the ingredient you want substitutes for.

try:
    # Get Ingredient Substitutes by ID
    api_response = api_instance.get_ingredient_substitutes_by_id(id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->get_ingredient_substitutes_by_id: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **float**| The id of the ingredient you want substitutes for. | 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_menu_item_information**
> object get_menu_item_information(id)

Get Menu Item Information

Get information about a certain menu item.

### Example

```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = spoonacular.DefaultApi()
id = 424571 # float | The menu item id.

try:
    # Get Menu Item Information
    api_response = api_instance.get_menu_item_information(id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->get_menu_item_information: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **float**| The menu item id. | 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_product_information**
> object get_product_information(id)

Get Product Information

Get information about a packaged food product.

### Example

```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = spoonacular.DefaultApi()
id = 22347 # float | The id of the packaged food product.

try:
    # Get Product Information
    api_response = api_instance.get_product_information(id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->get_product_information: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **float**| The id of the packaged food product. | 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_random_food_trivia**
> object get_random_food_trivia()

Get Random Food Trivia

Returns random food trivia.

### Example

```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = spoonacular.DefaultApi()

try:
    # Get Random Food Trivia
    api_response = api_instance.get_random_food_trivia()
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->get_random_food_trivia: %s\n" % e)
```

### Parameters
This endpoint does not need any parameter.

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_random_recipes**
> object get_random_recipes(limit_license=limit_license, tags=tags, number=number)

Get Random Recipes

Find random (popular) recipes.

### Example

```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = spoonacular.DefaultApi()
limit_license = true # bool | Whether the recipes should have an open license that allows for displaying with proper attribution. (optional)
tags = 'vegetarian, dessert' # str | The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must adhere to. (optional)
number = 1 # float | The number of random recipes to be returned (between 1 and 100). (optional)

try:
    # Get Random Recipes
    api_response = api_instance.get_random_recipes(limit_license=limit_license, tags=tags, number=number)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->get_random_recipes: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit_license** | **bool**| Whether the recipes should have an open license that allows for displaying with proper attribution. | [optional] 
 **tags** | **str**| The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must adhere to. | [optional] 
 **number** | **float**| The number of random recipes to be returned (between 1 and 100). | [optional] 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_recipe_equipment_by_id**
> object get_recipe_equipment_by_id(id)

Get Recipe Equipment by ID

Get a recipe's equipment list.

### Example

```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = spoonacular.DefaultApi()
id = 1003464 # float | The recipe id.

try:
    # Get Recipe Equipment by ID
    api_response = api_instance.get_recipe_equipment_by_id(id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->get_recipe_equipment_by_id: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **float**| The recipe id. | 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_recipe_information**
> object get_recipe_information(id, include_nutrition=include_nutrition)

Get Recipe Information

Get information about a recipe.

### Example

```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = spoonacular.DefaultApi()
id = 716429 # float | The id of the recipe.
include_nutrition = false # bool | Include nutrition data to the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. (optional)

try:
    # Get Recipe Information
    api_response = api_instance.get_recipe_information(id, include_nutrition=include_nutrition)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->get_recipe_information: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **float**| The id of the recipe. | 
 **include_nutrition** | **bool**| Include nutrition data to the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. | [optional] 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_recipe_information_bulk**
> object get_recipe_information_bulk(ids, include_nutrition=include_nutrition)

Get Recipe Information Bulk

Get information about multiple recipes at once. That is equivalent of calling the Get Recipe Information endpoint multiple times but is faster.

### Example

```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = spoonacular.DefaultApi()
ids = '715538,716429' # str | A comma-separated list of recipe ids.
include_nutrition = false # bool | Include nutrition data to the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. (optional)

try:
    # Get Recipe Information Bulk
    api_response = api_instance.get_recipe_information_bulk(ids, include_nutrition=include_nutrition)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->get_recipe_information_bulk: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | **str**| A comma-separated list of recipe ids. | 
 **include_nutrition** | **bool**| Include nutrition data to the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. | [optional] 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_recipe_ingredients_by_id**
> object get_recipe_ingredients_by_id(id)

Get Recipe Ingredients by ID

Get a recipe's ingredient list.

### Example

```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = spoonacular.DefaultApi()
id = 1003464 # float | The recipe id.

try:
    # Get Recipe Ingredients by ID
    api_response = api_instance.get_recipe_ingredients_by_id(id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->get_recipe_ingredients_by_id: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **float**| The recipe id. | 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_recipe_nutrition_by_id**
> object get_recipe_nutrition_by_id(id)

Get Recipe Nutrition by ID

Get a recipe's nutrition widget data.

### Example

```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = spoonacular.DefaultApi()
id = 1003464 # float | The recipe id.

try:
    # Get Recipe Nutrition by ID
    api_response = api_instance.get_recipe_nutrition_by_id(id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->get_recipe_nutrition_by_id: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **float**| The recipe id. | 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_recipe_price_breakdown_by_id**
> object get_recipe_price_breakdown_by_id(id)

Get Recipe Price Breakdown by ID

Get a recipe's price breakdown data.

### Example

```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = spoonacular.DefaultApi()
id = 1003464 # float | The recipe id.

try:
    # Get Recipe Price Breakdown by ID
    api_response = api_instance.get_recipe_price_breakdown_by_id(id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->get_recipe_price_breakdown_by_id: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **float**| The recipe id. | 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_similar_recipes**
> object get_similar_recipes(id, number=number)

Get Similar Recipes

Find recipes which are similar to the given one.

### Example

```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = spoonacular.DefaultApi()
id = 715538 # float | The id of the source recipe to which similar recipes should be found.
number = 1 # float | The number of random recipes to be returned (between 1 and 100). (optional)

try:
    # Get Similar Recipes
    api_response = api_instance.get_similar_recipes(id, number=number)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->get_similar_recipes: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **float**| The id of the source recipe to which similar recipes should be found. | 
 **number** | **float**| The number of random recipes to be returned (between 1 and 100). | [optional] 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_wine_description**
> object get_wine_description(wine)

Get Wine Description

Get the description of a certain wine, e.g. \"malbec\", \"riesling\", or \"merlot\".

### Example

```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = spoonacular.DefaultApi()
wine = 'merlot' # str | The name of the wine that should be paired, e.g. \"merlot\", \"riesling\", or \"malbec\".

try:
    # Get Wine Description
    api_response = api_instance.get_wine_description(wine)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->get_wine_description: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wine** | **str**| The name of the wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;. | 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_wine_pairing**
> object get_wine_pairing(food, max_price=max_price)

Get Wine Pairing

Find a wine that goes well with a food. Food can be a dish name (\"steak\"), an ingredient name (\"salmon\"), or a cuisine (\"italian\").

### Example

```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = spoonacular.DefaultApi()
food = 'steak' # str | The food to get a pairing for. This can be a dish (\"steak\"), an ingredient (\"salmon\"), or a cuisine (\"italian\").
max_price = 50 # float | The maximum price for the specific wine recommendation in USD. (optional)

try:
    # Get Wine Pairing
    api_response = api_instance.get_wine_pairing(food, max_price=max_price)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->get_wine_pairing: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **food** | **str**| The food to get a pairing for. This can be a dish (\&quot;steak\&quot;), an ingredient (\&quot;salmon\&quot;), or a cuisine (\&quot;italian\&quot;). | 
 **max_price** | **float**| The maximum price for the specific wine recommendation in USD. | [optional] 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_wine_recommendation**
> object get_wine_recommendation(wine, max_price=max_price, min_rating=min_rating, number=number)

Get Wine Recommendation

Get a specific wine recommendation (concrete product) for a given wine, e.g. \"merlot\".

### Example

```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = spoonacular.DefaultApi()
wine = 'merlot' # str | The name of the wine to get a specific product recommendation for.
max_price = 50 # float | The maximum price for the specific wine recommendation in USD. (optional)
min_rating = 0.7 # float | The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars. (optional)
number = 3 # float | The number of wine recommendations expected (between 1 and 100). (optional)

try:
    # Get Wine Recommendation
    api_response = api_instance.get_wine_recommendation(wine, max_price=max_price, min_rating=min_rating, number=number)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->get_wine_recommendation: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wine** | **str**| The name of the wine to get a specific product recommendation for. | 
 **max_price** | **float**| The maximum price for the specific wine recommendation in USD. | [optional] 
 **min_rating** | **float**| The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars. | [optional] 
 **number** | **float**| The number of wine recommendations expected (between 1 and 100). | [optional] 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **guess_nutrition_by_dish_name**
> object guess_nutrition_by_dish_name(title)

Guess Nutrition by Dish Name

Guess the macro nutrients of a dish given its title.

### Example

```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = spoonacular.DefaultApi()
title = 'Spaghetti Aglio et Olio' # str | The title of the dish.

try:
    # Guess Nutrition by Dish Name
    api_response = api_instance.guess_nutrition_by_dish_name(title)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->guess_nutrition_by_dish_name: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **str**| The title of the dish. | 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **map_ingredients_to_grocery_products**
> object map_ingredients_to_grocery_products(body)

Map Ingredients to Grocery Products

Map a set of ingredients to products you can buy in the grocery store.

### Example

```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = spoonacular.DefaultApi()
body = None # object | 

try:
    # Map Ingredients to Grocery Products
    api_response = api_instance.map_ingredients_to_grocery_products(body)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->map_ingredients_to_grocery_products: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **object**|  | 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **parse_ingredients**
> object parse_ingredients(ingredient_list, servings, include_nutrition=include_nutrition)

Parse Ingredients

Extract an ingredient from plain text.

### Example

```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = spoonacular.DefaultApi()
ingredient_list = 'ingredient_list_example' # str | The ingredient list of the recipe, one ingredient per line.
servings = 3.4 # float | The number of servings that you can make from the ingredients.
include_nutrition = True # bool | Whether nutrition data should be added to correctly parsed ingredients. (optional)

try:
    # Parse Ingredients
    api_response = api_instance.parse_ingredients(ingredient_list, servings, include_nutrition=include_nutrition)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->parse_ingredients: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredient_list** | **str**| The ingredient list of the recipe, one ingredient per line. | 
 **servings** | **float**| The number of servings that you can make from the ingredients. | 
 **include_nutrition** | **bool**| Whether nutrition data should be added to correctly parsed ingredients. | [optional] 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **quick_answer**
> object quick_answer(q)

Quick Answer

Answer a nutrition related natural language question.

### Example

```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = spoonacular.DefaultApi()
q = 'How much vitamin c is in 2 apples?' # str | The nutrition-related question.

try:
    # Quick Answer
    api_response = api_instance.quick_answer(q)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->quick_answer: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **str**| The nutrition-related question. | 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_food_videos**
> object search_food_videos(query, type=type, cuisine=cuisine, diet=diet, include_ingredients=include_ingredients, exclude_ingredients=exclude_ingredients, min_length=min_length, max_length=max_length, offset=offset, number=number)

Search Food Videos

Find recipe and other food related videos.

### Example

```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = spoonacular.DefaultApi()
query = 'chicken soup' # str | The search query.
type = 'main course' # str | The type of the recipes. See a full list of supported meal types. (optional)
cuisine = 'italian' # str | The cuisine(s) of the recipes. One or more comma separated. See a full list of supported cuisines. (optional)
diet = 'vegetarian' # str | The diet to which the recipes must be compliant. See a full list of supported diets. (optional)
include_ingredients = 'tomato,cheese' # str | A comma-separated list of ingredients that should/must be contained in the recipe. (optional)
exclude_ingredients = 'eggs' # str | A comma-separated list of ingredients or ingredient types that must not be contained in the recipes. (optional)
min_length = 0 # float | Minimum video length in seconds. (optional)
max_length = 999 # float | Maximum video length in seconds. (optional)
offset = 0 # float | The number of results to skip (between 0 and 900). (optional)
number = 10 # float | The number of results to return (between 1 and 100). (optional)

try:
    # Search Food Videos
    api_response = api_instance.search_food_videos(query, type=type, cuisine=cuisine, diet=diet, include_ingredients=include_ingredients, exclude_ingredients=exclude_ingredients, min_length=min_length, max_length=max_length, offset=offset, number=number)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->search_food_videos: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **str**| The search query. | 
 **type** | **str**| The type of the recipes. See a full list of supported meal types. | [optional] 
 **cuisine** | **str**| The cuisine(s) of the recipes. One or more comma separated. See a full list of supported cuisines. | [optional] 
 **diet** | **str**| The diet to which the recipes must be compliant. See a full list of supported diets. | [optional] 
 **include_ingredients** | **str**| A comma-separated list of ingredients that should/must be contained in the recipe. | [optional] 
 **exclude_ingredients** | **str**| A comma-separated list of ingredients or ingredient types that must not be contained in the recipes. | [optional] 
 **min_length** | **float**| Minimum video length in seconds. | [optional] 
 **max_length** | **float**| Maximum video length in seconds. | [optional] 
 **offset** | **float**| The number of results to skip (between 0 and 900). | [optional] 
 **number** | **float**| The number of results to return (between 1 and 100). | [optional] 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_grocery_products**
> object search_grocery_products(query, min_calories=min_calories, max_calories=max_calories, min_carbs=min_carbs, max_carbs=max_carbs, min_protein=min_protein, max_protein=max_protein, min_fat=min_fat, max_fat=max_fat, offset=offset, number=number)

Search Grocery Products

Search packaged food products such as frozen pizza and snickers bars.

### Example

```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = spoonacular.DefaultApi()
query = 'snickers' # str | The search query.
min_calories = 50 # float | The minimum number of calories the product must have. (optional)
max_calories = 800 # float | The maximum number of calories the product can have. (optional)
min_carbs = 10 # float | The minimum number of carbohydrates in grams the product must have. (optional)
max_carbs = 100 # float | The maximum number of carbohydrates in grams the product can have. (optional)
min_protein = 10 # float | The minimum number of protein in grams the product must have. (optional)
max_protein = 100 # float | The maximum number of protein in grams the product can have. (optional)
min_fat = 1 # float | The minimum number of fat in grams the product must have. (optional)
max_fat = 100 # float | The maximum number of fat in grams the product can have. (optional)
offset = 0 # float | The offset number for paging (between 0 and 990). (optional)
number = 10 # float | The number of expected results (between 1 and 100). (optional)

try:
    # Search Grocery Products
    api_response = api_instance.search_grocery_products(query, min_calories=min_calories, max_calories=max_calories, min_carbs=min_carbs, max_carbs=max_carbs, min_protein=min_protein, max_protein=max_protein, min_fat=min_fat, max_fat=max_fat, offset=offset, number=number)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->search_grocery_products: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **str**| The search query. | 
 **min_calories** | **float**| The minimum number of calories the product must have. | [optional] 
 **max_calories** | **float**| The maximum number of calories the product can have. | [optional] 
 **min_carbs** | **float**| The minimum number of carbohydrates in grams the product must have. | [optional] 
 **max_carbs** | **float**| The maximum number of carbohydrates in grams the product can have. | [optional] 
 **min_protein** | **float**| The minimum number of protein in grams the product must have. | [optional] 
 **max_protein** | **float**| The maximum number of protein in grams the product can have. | [optional] 
 **min_fat** | **float**| The minimum number of fat in grams the product must have. | [optional] 
 **max_fat** | **float**| The maximum number of fat in grams the product can have. | [optional] 
 **offset** | **float**| The offset number for paging (between 0 and 990). | [optional] 
 **number** | **float**| The number of expected results (between 1 and 100). | [optional] 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_grocery_products_by_upc**
> object search_grocery_products_by_upc(upc)

Search Grocery Products by UPC

Get information about a food product given its UPC.

### Example

```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = spoonacular.DefaultApi()
upc = 41631000564 # float | The product's UPC.

try:
    # Search Grocery Products by UPC
    api_response = api_instance.search_grocery_products_by_upc(upc)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->search_grocery_products_by_upc: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **upc** | **float**| The product&#39;s UPC. | 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_menu_items**
> object search_menu_items(query, min_calories=min_calories, max_calories=max_calories, min_carbs=min_carbs, max_carbs=max_carbs, min_protein=min_protein, max_protein=max_protein, min_fat=min_fat, max_fat=max_fat, offset=offset, number=number)

Search Menu Items

Search over 115,000 menu items from over 800 fast food and chain restaurants such as McDonalds Big Mac or Starbucks Mocha.

### Example

```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = spoonacular.DefaultApi()
query = 'snickers' # str | The search query.
min_calories = 50 # float | The minimum number of calories the menu item must have. (optional)
max_calories = 800 # float | The maximum number of calories the menu item can have. (optional)
min_carbs = 10 # float | The minimum number of carbohydrates in grams the menu item must have. (optional)
max_carbs = 100 # float | The maximum number of carbohydrates in grams the menu item can have. (optional)
min_protein = 10 # float | The minimum number of protein in grams the menu item must have. (optional)
max_protein = 100 # float | The maximum number of protein in grams the menu item can have. (optional)
min_fat = 1 # float | The minimum number of fat in grams the menu item must have. (optional)
max_fat = 100 # float | The maximum number of fat in grams the menu item can have. (optional)
offset = 0 # float | The offset number for paging (between 0 and 990). (optional)
number = 100 # float | The number of expected results (between 1 and 10). (optional)

try:
    # Search Menu Items
    api_response = api_instance.search_menu_items(query, min_calories=min_calories, max_calories=max_calories, min_carbs=min_carbs, max_carbs=max_carbs, min_protein=min_protein, max_protein=max_protein, min_fat=min_fat, max_fat=max_fat, offset=offset, number=number)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->search_menu_items: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **str**| The search query. | 
 **min_calories** | **float**| The minimum number of calories the menu item must have. | [optional] 
 **max_calories** | **float**| The maximum number of calories the menu item can have. | [optional] 
 **min_carbs** | **float**| The minimum number of carbohydrates in grams the menu item must have. | [optional] 
 **max_carbs** | **float**| The maximum number of carbohydrates in grams the menu item can have. | [optional] 
 **min_protein** | **float**| The minimum number of protein in grams the menu item must have. | [optional] 
 **max_protein** | **float**| The maximum number of protein in grams the menu item can have. | [optional] 
 **min_fat** | **float**| The minimum number of fat in grams the menu item must have. | [optional] 
 **max_fat** | **float**| The maximum number of fat in grams the menu item can have. | [optional] 
 **offset** | **float**| The offset number for paging (between 0 and 990). | [optional] 
 **number** | **float**| The number of expected results (between 1 and 10). | [optional] 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_recipes**
> object search_recipes(query, cuisine=cuisine, diet=diet, exclude_ingredients=exclude_ingredients, intolerances=intolerances, offset=offset, number=number, limit_license=limit_license, instructions_required=instructions_required)

Search Recipes

Our recipe API includes over 360,000 recipes as well as an open source recipe database. Consider using the \"Search Recipes Complex\" endpoint for much more flexibility.

### Example

```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = spoonacular.DefaultApi()
query = 'burger' # str | The (natural language) recipe search query.
cuisine = 'italian' # str | The cuisine(s) of the recipes. One or more comma separated. See a full list of supported cuisines. (optional)
diet = 'vegetarian' # str | The diet to which the recipes must be compliant. See a full list of supported diets. (optional)
exclude_ingredients = 'eggs' # str | An comma-separated list of ingredients or ingredient types that must not be contained in the recipes. (optional)
intolerances = 'gluten' # str | A comma-separated list of intolerances. All found recipes must not have ingredients that could cause problems for people with one of the given tolerances. See a full list of supported intolerances. (optional)
offset = 0 # float | The number of results to skip (between 0 and 900). (optional)
number = 10 # float | The number of results to return (between 1 and 100). (optional)
limit_license = true # bool | Whether the recipes should have an open license that allows for displaying with proper attribution. (optional)
instructions_required = true # bool | Whether the recipes must have instructions. (optional)

try:
    # Search Recipes
    api_response = api_instance.search_recipes(query, cuisine=cuisine, diet=diet, exclude_ingredients=exclude_ingredients, intolerances=intolerances, offset=offset, number=number, limit_license=limit_license, instructions_required=instructions_required)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->search_recipes: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **str**| The (natural language) recipe search query. | 
 **cuisine** | **str**| The cuisine(s) of the recipes. One or more comma separated. See a full list of supported cuisines. | [optional] 
 **diet** | **str**| The diet to which the recipes must be compliant. See a full list of supported diets. | [optional] 
 **exclude_ingredients** | **str**| An comma-separated list of ingredients or ingredient types that must not be contained in the recipes. | [optional] 
 **intolerances** | **str**| A comma-separated list of intolerances. All found recipes must not have ingredients that could cause problems for people with one of the given tolerances. See a full list of supported intolerances. | [optional] 
 **offset** | **float**| The number of results to skip (between 0 and 900). | [optional] 
 **number** | **float**| The number of results to return (between 1 and 100). | [optional] 
 **limit_license** | **bool**| Whether the recipes should have an open license that allows for displaying with proper attribution. | [optional] 
 **instructions_required** | **bool**| Whether the recipes must have instructions. | [optional] 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_recipes_by_ingredients**
> object search_recipes_by_ingredients(ingredients, number=number, limit_license=limit_license, ranking=ranking, ignore_pantry=ignore_pantry)

Search Recipes by Ingredients

Find recipes that use as many of the given ingredients as possible and have as little as possible missing ingredients. This is a \"what's in your fridge\" API endpoint.

### Example

```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = spoonacular.DefaultApi()
ingredients = 'apples,flour,sugar' # str | A comma-separated list of ingredients that the recipes should contain.
number = 10 # float | The maximal number of recipes to return (between 1 and 100). Defaults to 10. (optional)
limit_license = true # bool | Whether the recipes should have an open license that allows for displaying with proper attribution. (optional)
ranking = 1 # float | Whether to maximize used ingredients (1) or minimize missing ingredients (2) first. (optional)
ignore_pantry = true # bool | Whether to ignore pantry ingredients such as water, salt, flour etc. (optional)

try:
    # Search Recipes by Ingredients
    api_response = api_instance.search_recipes_by_ingredients(ingredients, number=number, limit_license=limit_license, ranking=ranking, ignore_pantry=ignore_pantry)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->search_recipes_by_ingredients: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredients** | **str**| A comma-separated list of ingredients that the recipes should contain. | 
 **number** | **float**| The maximal number of recipes to return (between 1 and 100). Defaults to 10. | [optional] 
 **limit_license** | **bool**| Whether the recipes should have an open license that allows for displaying with proper attribution. | [optional] 
 **ranking** | **float**| Whether to maximize used ingredients (1) or minimize missing ingredients (2) first. | [optional] 
 **ignore_pantry** | **bool**| Whether to ignore pantry ingredients such as water, salt, flour etc. | [optional] 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_recipes_by_nutrients**
> object search_recipes_by_nutrients(min_carbs=min_carbs, max_carbs=max_carbs, min_protein=min_protein, max_protein=max_protein, min_calories=min_calories, max_calories=max_calories, min_fat=min_fat, max_fat=max_fat, min_alcohol=min_alcohol, max_alcohol=max_alcohol, min_caffeine=min_caffeine, max_caffeine=max_caffeine, min_copper=min_copper, max_copper=max_copper, min_calcium=min_calcium, max_calcium=max_calcium, min_choline=min_choline, max_choline=max_choline, min_cholesterol=min_cholesterol, max_cholesterol=max_cholesterol, min_fluoride=min_fluoride, max_fluoride=max_fluoride, min_saturated_fat=min_saturated_fat, max_saturated_fat=max_saturated_fat, min_vitamin_a=min_vitamin_a, max_vitamin_a=max_vitamin_a, min_vitamin_c=min_vitamin_c, max_vitamin_c=max_vitamin_c, min_vitamin_d=min_vitamin_d, max_vitamin_d=max_vitamin_d, min_vitamin_e=min_vitamin_e, max_vitamin_e=max_vitamin_e, min_vitamin_k=min_vitamin_k, max_vitamin_k=max_vitamin_k, min_vitamin_b1=min_vitamin_b1, max_vitamin_b1=max_vitamin_b1, min_vitamin_b2=min_vitamin_b2, max_vitamin_b2=max_vitamin_b2, min_vitamin_b5=min_vitamin_b5, max_vitamin_b5=max_vitamin_b5, min_vitamin_b3=min_vitamin_b3, max_vitamin_b3=max_vitamin_b3, min_vitamin_b6=min_vitamin_b6, max_vitamin_b6=max_vitamin_b6, min_vitamin_b12=min_vitamin_b12, max_vitamin_b12=max_vitamin_b12, min_fiber=min_fiber, max_fiber=max_fiber, min_folate=min_folate, max_folate=max_folate, min_folic_acid=min_folic_acid, max_folic_acid=max_folic_acid, min_iodine=min_iodine, max_iodine=max_iodine, min_iron=min_iron, max_iron=max_iron, min_magnesium=min_magnesium, max_magnesium=max_magnesium, min_manganese=min_manganese, max_manganese=max_manganese, min_phosphorus=min_phosphorus, max_phosphorus=max_phosphorus, min_potassium=min_potassium, max_potassium=max_potassium, min_selenium=min_selenium, max_selenium=max_selenium, min_sodium=min_sodium, max_sodium=max_sodium, min_sugar=min_sugar, max_sugar=max_sugar, min_zinc=min_zinc, max_zinc=max_zinc, offset=offset, number=number, random=random, limit_license=limit_license)

Search Recipes by Nutrients

Find a set of recipes that adhere to the given nutritional limits. All the returned recipes will have macro nutrients within the calories, protein, fat, and carbohydrate limits.

### Example

```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = spoonacular.DefaultApi()
min_carbs = 10 # float | The minimum number of carbohydrates in grams the recipe must have. (optional)
max_carbs = 100 # float | The maximum number of carbohydrates in grams the recipe can have. (optional)
min_protein = 10 # float | The minimum number of protein in grams the recipe must have. (optional)
max_protein = 100 # float | The maximum number of protein in grams the recipe can have. (optional)
min_calories = 50 # float | The minimum number of calories the recipe must have. (optional)
max_calories = 800 # float | The maximum number of calories the recipe can have. (optional)
min_fat = 1 # float | The minimum number of fat in grams the recipe must have. (optional)
max_fat = 100 # float | The maximum number of fat in grams the recipe can have. (optional)
min_alcohol = 0 # float | The minimum number of alcohol in grams the recipe must have. (optional)
max_alcohol = 100 # float | The maximum number of alcohol in grams the recipe must have. (optional)
min_caffeine = 0 # float | The minimum number of milligrams of caffeine the recipe must have. (optional)
max_caffeine = 100 # float | The maximum number of alcohol in grams the recipe must have. (optional)
min_copper = 0 # float | The minimum number of copper in milligrams the recipe must have. (optional)
max_copper = 100 # float | The maximum number of copper in milligrams the recipe must have. (optional)
min_calcium = 0 # float | The minimum number of calcium in milligrams the recipe must have. (optional)
max_calcium = 100 # float | The maximum number of calcium in milligrams the recipe must have. (optional)
min_choline = 0 # float | The minimum number of choline in milligrams the recipe must have. (optional)
max_choline = 100 # float | The maximum number of choline in milligrams the recipe can have. (optional)
min_cholesterol = 0 # float | The minimum number of cholesterol in milligrams the recipe must have. (optional)
max_cholesterol = 100 # float | The maximum number of cholesterol in milligrams the recipe must have. (optional)
min_fluoride = 0 # float | The minimum number of fluoride in milligrams the recipe must have. (optional)
max_fluoride = 100 # float | The maximum number of fluoride in milligrams the recipe can have. (optional)
min_saturated_fat = 0 # float | The minimum number of saturated fat in grams the recipe must have. (optional)
max_saturated_fat = 100 # float | The maximum number of saturated fat in grams the recipe must have. (optional)
min_vitamin_a = 0 # float | The minimum number of Vitamin A in IU the recipe must have. (optional)
max_vitamin_a = 100 # float | The maximum number of Vitamin A in IU the recipe must have. (optional)
min_vitamin_c = 0 # float | The minimum number of Vitamin C milligrams the recipe must have. (optional)
max_vitamin_c = 100 # float | The maximum number of Vitamin C in milligrams the recipe can have. (optional)
min_vitamin_d = 0 # float | The minimum number of Vitamin D in micrograms the recipe must have. (optional)
max_vitamin_d = 100 # float | The maximum number of Vitamin D in micrograms the recipe must have. (optional)
min_vitamin_e = 0 # float | The minimum number of Vitamin E in milligrams the recipe must have. (optional)
max_vitamin_e = 100 # float | The maximum number of Vitamin E in milligrams the recipe must have. (optional)
min_vitamin_k = 0 # float | The minimum number of Vitamin K in micrograms the recipe must have. (optional)
max_vitamin_k = 100 # float | The maximum number of Vitamin K in micrograms the recipe must have. (optional)
min_vitamin_b1 = 0 # float | The minimum number of Vitamin B1 in milligrams the recipe must have. (optional)
max_vitamin_b1 = 100 # float | The maximum number of Vitamin B1 in milligrams the recipe must have. (optional)
min_vitamin_b2 = 0 # float | The minimum number of Vitamin B2 in milligrams the recipe must have. (optional)
max_vitamin_b2 = 100 # float | The maximum number of Vitamin B2 in milligrams the recipe must have. (optional)
min_vitamin_b5 = 0 # float | The minimum number of Vitamin B5 in milligrams the recipe must have. (optional)
max_vitamin_b5 = 100 # float | The maximum number of Vitamin B5 in milligrams the recipe can have. (optional)
min_vitamin_b3 = 0 # float | The minimum number of Vitamin B3 in milligrams the recipe must have. (optional)
max_vitamin_b3 = 100 # float | The maximum number of Vitamin B3 in milligrams the recipe can have. (optional)
min_vitamin_b6 = 0 # float | The minimum number of Vitamin B6 in milligrams the recipe must have. (optional)
max_vitamin_b6 = 100 # float | The maximum number of Vitamin B6 in milligrams the recipe can have. (optional)
min_vitamin_b12 = 0 # float | The minimum number of Vitamin B12 in micrograms the recipe must have. (optional)
max_vitamin_b12 = 100 # float | The maximum number of Vitamin B12 in micrograms the recipe must have. (optional)
min_fiber = 0 # float | The minimum number of fiber in grams the recipe must have. (optional)
max_fiber = 100 # float | The maximum number of fiber in grams the recipe must have. (optional)
min_folate = 0 # float | The minimum number of folate in grams the recipe must have. (optional)
max_folate = 100 # float | The maximum number of folate in grams the recipe must have. (optional)
min_folic_acid = 0 # float | The minimum number of folic acid in grams the recipe must have. (optional)
max_folic_acid = 100 # float | The maximum number of folic acid in grams the recipe must have. (optional)
min_iodine = 0 # float | The minimum number of Iodine in grams the recipe must have. (optional)
max_iodine = 100 # float | The maximum number of iodine in grams the recipe must have. (optional)
min_iron = 0 # float | The minimum number of iron in milligrams the recipe must have. (optional)
max_iron = 100 # float | The maximum number of iron in milligrams the recipe can have. (optional)
min_magnesium = 0 # float | The minimum number of magnesium in milligrams the recipe must have. (optional)
max_magnesium = 100 # float | The maximum number of magnesium in milligrams the recipe can have. (optional)
min_manganese = 0 # float | The minimum number of manganese in milligrams the recipe must have. (optional)
max_manganese = 100 # float | The maximum number of manganese in milligrams the recipe can have. (optional)
min_phosphorus = 0 # float | The minimum number of phosphorus in milligrams the recipe must have. (optional)
max_phosphorus = 100 # float | The maximum number of phosphorus in milligrams the recipe can have. (optional)
min_potassium = 0 # float | The minimum number of potassium in milligrams the recipe must have. (optional)
max_potassium = 100 # float | The maximum number of potassium in milligrams the recipe can have. (optional)
min_selenium = 0 # float | The minimum number of selenium in grams the recipe must have. (optional)
max_selenium = 100 # float | The maximum number of selenium in grams the recipe must have. (optional)
min_sodium = 0 # float | The minimum number of sodium in milligrams the recipe must have. (optional)
max_sodium = 100 # float | The maximum number of sodium in milligrams the recipe must have. (optional)
min_sugar = 0 # float | The minimum number of sugar in grams the recipe must have. (optional)
max_sugar = 100 # float | The maximum number of sugar in grams the recipe must have. (optional)
min_zinc = 0 # float | The minimum number of zinc in milligrams the recipe must have. (optional)
max_zinc = 100 # float | The maximum number of zinc in milligrams the recipe can have. (optional)
offset = 0 # float | The offset number for paging (between 0 and 990). (optional)
number = 10 # float | The number of expected results (between 1 and 100). (optional)
random = false # bool | If true, every request will give you a random set of recipes within the requested limits. (optional)
limit_license = true # bool | Whether the recipes should have an open license that allows for displaying with proper attribution. (optional)

try:
    # Search Recipes by Nutrients
    api_response = api_instance.search_recipes_by_nutrients(min_carbs=min_carbs, max_carbs=max_carbs, min_protein=min_protein, max_protein=max_protein, min_calories=min_calories, max_calories=max_calories, min_fat=min_fat, max_fat=max_fat, min_alcohol=min_alcohol, max_alcohol=max_alcohol, min_caffeine=min_caffeine, max_caffeine=max_caffeine, min_copper=min_copper, max_copper=max_copper, min_calcium=min_calcium, max_calcium=max_calcium, min_choline=min_choline, max_choline=max_choline, min_cholesterol=min_cholesterol, max_cholesterol=max_cholesterol, min_fluoride=min_fluoride, max_fluoride=max_fluoride, min_saturated_fat=min_saturated_fat, max_saturated_fat=max_saturated_fat, min_vitamin_a=min_vitamin_a, max_vitamin_a=max_vitamin_a, min_vitamin_c=min_vitamin_c, max_vitamin_c=max_vitamin_c, min_vitamin_d=min_vitamin_d, max_vitamin_d=max_vitamin_d, min_vitamin_e=min_vitamin_e, max_vitamin_e=max_vitamin_e, min_vitamin_k=min_vitamin_k, max_vitamin_k=max_vitamin_k, min_vitamin_b1=min_vitamin_b1, max_vitamin_b1=max_vitamin_b1, min_vitamin_b2=min_vitamin_b2, max_vitamin_b2=max_vitamin_b2, min_vitamin_b5=min_vitamin_b5, max_vitamin_b5=max_vitamin_b5, min_vitamin_b3=min_vitamin_b3, max_vitamin_b3=max_vitamin_b3, min_vitamin_b6=min_vitamin_b6, max_vitamin_b6=max_vitamin_b6, min_vitamin_b12=min_vitamin_b12, max_vitamin_b12=max_vitamin_b12, min_fiber=min_fiber, max_fiber=max_fiber, min_folate=min_folate, max_folate=max_folate, min_folic_acid=min_folic_acid, max_folic_acid=max_folic_acid, min_iodine=min_iodine, max_iodine=max_iodine, min_iron=min_iron, max_iron=max_iron, min_magnesium=min_magnesium, max_magnesium=max_magnesium, min_manganese=min_manganese, max_manganese=max_manganese, min_phosphorus=min_phosphorus, max_phosphorus=max_phosphorus, min_potassium=min_potassium, max_potassium=max_potassium, min_selenium=min_selenium, max_selenium=max_selenium, min_sodium=min_sodium, max_sodium=max_sodium, min_sugar=min_sugar, max_sugar=max_sugar, min_zinc=min_zinc, max_zinc=max_zinc, offset=offset, number=number, random=random, limit_license=limit_license)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->search_recipes_by_nutrients: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **min_carbs** | **float**| The minimum number of carbohydrates in grams the recipe must have. | [optional] 
 **max_carbs** | **float**| The maximum number of carbohydrates in grams the recipe can have. | [optional] 
 **min_protein** | **float**| The minimum number of protein in grams the recipe must have. | [optional] 
 **max_protein** | **float**| The maximum number of protein in grams the recipe can have. | [optional] 
 **min_calories** | **float**| The minimum number of calories the recipe must have. | [optional] 
 **max_calories** | **float**| The maximum number of calories the recipe can have. | [optional] 
 **min_fat** | **float**| The minimum number of fat in grams the recipe must have. | [optional] 
 **max_fat** | **float**| The maximum number of fat in grams the recipe can have. | [optional] 
 **min_alcohol** | **float**| The minimum number of alcohol in grams the recipe must have. | [optional] 
 **max_alcohol** | **float**| The maximum number of alcohol in grams the recipe must have. | [optional] 
 **min_caffeine** | **float**| The minimum number of milligrams of caffeine the recipe must have. | [optional] 
 **max_caffeine** | **float**| The maximum number of alcohol in grams the recipe must have. | [optional] 
 **min_copper** | **float**| The minimum number of copper in milligrams the recipe must have. | [optional] 
 **max_copper** | **float**| The maximum number of copper in milligrams the recipe must have. | [optional] 
 **min_calcium** | **float**| The minimum number of calcium in milligrams the recipe must have. | [optional] 
 **max_calcium** | **float**| The maximum number of calcium in milligrams the recipe must have. | [optional] 
 **min_choline** | **float**| The minimum number of choline in milligrams the recipe must have. | [optional] 
 **max_choline** | **float**| The maximum number of choline in milligrams the recipe can have. | [optional] 
 **min_cholesterol** | **float**| The minimum number of cholesterol in milligrams the recipe must have. | [optional] 
 **max_cholesterol** | **float**| The maximum number of cholesterol in milligrams the recipe must have. | [optional] 
 **min_fluoride** | **float**| The minimum number of fluoride in milligrams the recipe must have. | [optional] 
 **max_fluoride** | **float**| The maximum number of fluoride in milligrams the recipe can have. | [optional] 
 **min_saturated_fat** | **float**| The minimum number of saturated fat in grams the recipe must have. | [optional] 
 **max_saturated_fat** | **float**| The maximum number of saturated fat in grams the recipe must have. | [optional] 
 **min_vitamin_a** | **float**| The minimum number of Vitamin A in IU the recipe must have. | [optional] 
 **max_vitamin_a** | **float**| The maximum number of Vitamin A in IU the recipe must have. | [optional] 
 **min_vitamin_c** | **float**| The minimum number of Vitamin C milligrams the recipe must have. | [optional] 
 **max_vitamin_c** | **float**| The maximum number of Vitamin C in milligrams the recipe can have. | [optional] 
 **min_vitamin_d** | **float**| The minimum number of Vitamin D in micrograms the recipe must have. | [optional] 
 **max_vitamin_d** | **float**| The maximum number of Vitamin D in micrograms the recipe must have. | [optional] 
 **min_vitamin_e** | **float**| The minimum number of Vitamin E in milligrams the recipe must have. | [optional] 
 **max_vitamin_e** | **float**| The maximum number of Vitamin E in milligrams the recipe must have. | [optional] 
 **min_vitamin_k** | **float**| The minimum number of Vitamin K in micrograms the recipe must have. | [optional] 
 **max_vitamin_k** | **float**| The maximum number of Vitamin K in micrograms the recipe must have. | [optional] 
 **min_vitamin_b1** | **float**| The minimum number of Vitamin B1 in milligrams the recipe must have. | [optional] 
 **max_vitamin_b1** | **float**| The maximum number of Vitamin B1 in milligrams the recipe must have. | [optional] 
 **min_vitamin_b2** | **float**| The minimum number of Vitamin B2 in milligrams the recipe must have. | [optional] 
 **max_vitamin_b2** | **float**| The maximum number of Vitamin B2 in milligrams the recipe must have. | [optional] 
 **min_vitamin_b5** | **float**| The minimum number of Vitamin B5 in milligrams the recipe must have. | [optional] 
 **max_vitamin_b5** | **float**| The maximum number of Vitamin B5 in milligrams the recipe can have. | [optional] 
 **min_vitamin_b3** | **float**| The minimum number of Vitamin B3 in milligrams the recipe must have. | [optional] 
 **max_vitamin_b3** | **float**| The maximum number of Vitamin B3 in milligrams the recipe can have. | [optional] 
 **min_vitamin_b6** | **float**| The minimum number of Vitamin B6 in milligrams the recipe must have. | [optional] 
 **max_vitamin_b6** | **float**| The maximum number of Vitamin B6 in milligrams the recipe can have. | [optional] 
 **min_vitamin_b12** | **float**| The minimum number of Vitamin B12 in micrograms the recipe must have. | [optional] 
 **max_vitamin_b12** | **float**| The maximum number of Vitamin B12 in micrograms the recipe must have. | [optional] 
 **min_fiber** | **float**| The minimum number of fiber in grams the recipe must have. | [optional] 
 **max_fiber** | **float**| The maximum number of fiber in grams the recipe must have. | [optional] 
 **min_folate** | **float**| The minimum number of folate in grams the recipe must have. | [optional] 
 **max_folate** | **float**| The maximum number of folate in grams the recipe must have. | [optional] 
 **min_folic_acid** | **float**| The minimum number of folic acid in grams the recipe must have. | [optional] 
 **max_folic_acid** | **float**| The maximum number of folic acid in grams the recipe must have. | [optional] 
 **min_iodine** | **float**| The minimum number of Iodine in grams the recipe must have. | [optional] 
 **max_iodine** | **float**| The maximum number of iodine in grams the recipe must have. | [optional] 
 **min_iron** | **float**| The minimum number of iron in milligrams the recipe must have. | [optional] 
 **max_iron** | **float**| The maximum number of iron in milligrams the recipe can have. | [optional] 
 **min_magnesium** | **float**| The minimum number of magnesium in milligrams the recipe must have. | [optional] 
 **max_magnesium** | **float**| The maximum number of magnesium in milligrams the recipe can have. | [optional] 
 **min_manganese** | **float**| The minimum number of manganese in milligrams the recipe must have. | [optional] 
 **max_manganese** | **float**| The maximum number of manganese in milligrams the recipe can have. | [optional] 
 **min_phosphorus** | **float**| The minimum number of phosphorus in milligrams the recipe must have. | [optional] 
 **max_phosphorus** | **float**| The maximum number of phosphorus in milligrams the recipe can have. | [optional] 
 **min_potassium** | **float**| The minimum number of potassium in milligrams the recipe must have. | [optional] 
 **max_potassium** | **float**| The maximum number of potassium in milligrams the recipe can have. | [optional] 
 **min_selenium** | **float**| The minimum number of selenium in grams the recipe must have. | [optional] 
 **max_selenium** | **float**| The maximum number of selenium in grams the recipe must have. | [optional] 
 **min_sodium** | **float**| The minimum number of sodium in milligrams the recipe must have. | [optional] 
 **max_sodium** | **float**| The maximum number of sodium in milligrams the recipe must have. | [optional] 
 **min_sugar** | **float**| The minimum number of sugar in grams the recipe must have. | [optional] 
 **max_sugar** | **float**| The maximum number of sugar in grams the recipe must have. | [optional] 
 **min_zinc** | **float**| The minimum number of zinc in milligrams the recipe must have. | [optional] 
 **max_zinc** | **float**| The maximum number of zinc in milligrams the recipe can have. | [optional] 
 **offset** | **float**| The offset number for paging (between 0 and 990). | [optional] 
 **number** | **float**| The number of expected results (between 1 and 100). | [optional] 
 **random** | **bool**| If true, every request will give you a random set of recipes within the requested limits. | [optional] 
 **limit_license** | **bool**| Whether the recipes should have an open license that allows for displaying with proper attribution. | [optional] 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_recipes_complex**
> object search_recipes_complex(query, cuisine=cuisine, exclude_cuisine=exclude_cuisine, diet=diet, intolerances=intolerances, equipment=equipment, include_ingredients=include_ingredients, exclude_ingredients=exclude_ingredients, type=type, instructions_required=instructions_required, fill_ingredients=fill_ingredients, add_recipe_information=add_recipe_information, author=author, tags=tags, title_match=title_match, sort=sort, sort_direction=sort_direction, min_carbs=min_carbs, max_carbs=max_carbs, min_protein=min_protein, max_protein=max_protein, min_calories=min_calories, max_calories=max_calories, min_fat=min_fat, max_fat=max_fat, min_alcohol=min_alcohol, max_alcohol=max_alcohol, min_caffeine=min_caffeine, max_caffeine=max_caffeine, min_copper=min_copper, max_copper=max_copper, min_calcium=min_calcium, max_calcium=max_calcium, min_choline=min_choline, max_choline=max_choline, min_cholesterol=min_cholesterol, max_cholesterol=max_cholesterol, min_fluoride=min_fluoride, max_fluoride=max_fluoride, min_saturated_fat=min_saturated_fat, max_saturated_fat=max_saturated_fat, min_vitamin_a=min_vitamin_a, max_vitamin_a=max_vitamin_a, min_vitamin_c=min_vitamin_c, max_vitamin_c=max_vitamin_c, min_vitamin_d=min_vitamin_d, max_vitamin_d=max_vitamin_d, min_vitamin_e=min_vitamin_e, max_vitamin_e=max_vitamin_e, min_vitamin_k=min_vitamin_k, max_vitamin_k=max_vitamin_k, min_vitamin_b1=min_vitamin_b1, max_vitamin_b1=max_vitamin_b1, min_vitamin_b2=min_vitamin_b2, max_vitamin_b2=max_vitamin_b2, min_vitamin_b5=min_vitamin_b5, max_vitamin_b5=max_vitamin_b5, min_vitamin_b3=min_vitamin_b3, max_vitamin_b3=max_vitamin_b3, min_vitamin_b6=min_vitamin_b6, max_vitamin_b6=max_vitamin_b6, min_vitamin_b12=min_vitamin_b12, max_vitamin_b12=max_vitamin_b12, min_fiber=min_fiber, max_fiber=max_fiber, min_folate=min_folate, max_folate=max_folate, min_folic_acid=min_folic_acid, max_folic_acid=max_folic_acid, min_iodine=min_iodine, max_iodine=max_iodine, min_iron=min_iron, max_iron=max_iron, min_magnesium=min_magnesium, max_magnesium=max_magnesium, min_manganese=min_manganese, max_manganese=max_manganese, min_phosphorus=min_phosphorus, max_phosphorus=max_phosphorus, min_potassium=min_potassium, max_potassium=max_potassium, min_selenium=min_selenium, max_selenium=max_selenium, min_sodium=min_sodium, max_sodium=max_sodium, min_sugar=min_sugar, max_sugar=max_sugar, min_zinc=min_zinc, max_zinc=max_zinc, offset=offset, number=number, limit_license=limit_license)

Search Recipes Complex

Search through hundreds of thousands of recipes using advanced filtering and ranking. NOTE: Since this method combines searching by query, by ingredients, and by nutrients in one endpoint.

### Example

```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = spoonacular.DefaultApi()
query = 'pasta' # str | The (natural language) recipe search query.
cuisine = 'italian' # str | The cuisine(s) of the recipes. One or more comma separated (will be iterpreted as 'OR'). See a full list of supported cuisines. (optional)
exclude_cuisine = 'greek' # str | The cuisine(s) the recipes must not match. One or more comma separated (will be iterpreted as 'AND'). See a full list of supported cuisines. (optional)
diet = 'vegetarian' # str | The diet to which the recipes must be compliant. See a full list of supported diets. (optional)
intolerances = 'gluten' # str | A comma-separated list of intolerances. All found recipes must not have ingredients that could cause problems for people with one of the given tolerances. See a full list of supported intolerances. (optional)
equipment = 'pan' # str | The equipment required. Multiple values will be interpreted as 'or'. For example, value could be \"blender, frying pan, bowl\". (optional)
include_ingredients = 'tomato,cheese' # str | A comma-separated list of ingredients that should/must be contained in the recipe. (optional)
exclude_ingredients = 'eggs' # str | A comma-separated list of ingredients or ingredient types that must not be contained in the recipes. (optional)
type = 'main course' # str | The type of the recipes. See a full list of supported meal types. (optional)
instructions_required = true # bool | Whether the recipes must have instructions. (optional)
fill_ingredients = false # bool | Add information about the used and missing ingredients in each recipe. (optional)
add_recipe_information = false # bool | If set to true, you get more information about the recipes returned. This saves the calls to get recipe information. (optional)
author = 'coffeebean' # str | The username of the recipe author. (optional)
tags = 'myCustomTag' # str | User defined tags that have to match. (optional)
title_match = 'Crock Pot' # str | A text that has to match in the title of the recipes. (optional)
sort = 'calories' # str | The strategy to sort recipes by. See a full list of supported sorting options. (optional)
sort_direction = 'asc' # str | The direction in which to sort. Must be either 'asc' (ascending) or 'desc' (descending). (optional)
min_carbs = 10 # float | The minimum number of carbohydrates in grams the recipe must have. (optional)
max_carbs = 100 # float | The maximum number of carbohydrates in grams the recipe can have. (optional)
min_protein = 10 # float | The minimum number of protein in grams the recipe must have. (optional)
max_protein = 100 # float | The maximum number of protein in grams the recipe can have. (optional)
min_calories = 50 # float | The minimum number of calories the recipe must have. (optional)
max_calories = 800 # float | The maximum number of calories the recipe can have. (optional)
min_fat = 1 # float | The minimum number of fat in grams the recipe must have. (optional)
max_fat = 100 # float | The maximum number of fat in grams the recipe can have. (optional)
min_alcohol = 0 # float | The minimum number of alcohol in grams the recipe must have. (optional)
max_alcohol = 100 # float | The maximum number of alcohol in grams the recipe must have. (optional)
min_caffeine = 0 # float | The minimum number of milligrams of caffeine the recipe must have. (optional)
max_caffeine = 100 # float | The maximum number of alcohol in grams the recipe must have. (optional)
min_copper = 0 # float | The minimum number of copper in milligrams the recipe must have. (optional)
max_copper = 100 # float | The maximum number of copper in milligrams the recipe must have. (optional)
min_calcium = 0 # float | The minimum number of calcium in milligrams the recipe must have. (optional)
max_calcium = 100 # float | The maximum number of calcium in milligrams the recipe must have. (optional)
min_choline = 0 # float | The minimum number of choline in milligrams the recipe must have. (optional)
max_choline = 100 # float | The maximum number of choline in milligrams the recipe can have. (optional)
min_cholesterol = 0 # float | The minimum number of cholesterol in milligrams the recipe must have. (optional)
max_cholesterol = 100 # float | The maximum number of cholesterol in milligrams the recipe must have. (optional)
min_fluoride = 0 # float | The minimum number of fluoride in milligrams the recipe must have. (optional)
max_fluoride = 100 # float | The maximum number of fluoride in milligrams the recipe can have. (optional)
min_saturated_fat = 0 # float | The minimum number of saturated fat in grams the recipe must have. (optional)
max_saturated_fat = 100 # float | The maximum number of saturated fat in grams the recipe must have. (optional)
min_vitamin_a = 0 # float | The minimum number of Vitamin A in IU the recipe must have. (optional)
max_vitamin_a = 100 # float | The maximum number of Vitamin A in IU the recipe must have. (optional)
min_vitamin_c = 0 # float | The minimum number of Vitamin C milligrams the recipe must have. (optional)
max_vitamin_c = 100 # float | The maximum number of Vitamin C in milligrams the recipe can have. (optional)
min_vitamin_d = 0 # float | The minimum number of Vitamin D in micrograms the recipe must have. (optional)
max_vitamin_d = 100 # float | The maximum number of Vitamin D in micrograms the recipe must have. (optional)
min_vitamin_e = 0 # float | The minimum number of Vitamin E in milligrams the recipe must have. (optional)
max_vitamin_e = 100 # float | The maximum number of Vitamin E in milligrams the recipe must have. (optional)
min_vitamin_k = 0 # float | The minimum number of Vitamin K in micrograms the recipe must have. (optional)
max_vitamin_k = 100 # float | The maximum number of Vitamin K in micrograms the recipe must have. (optional)
min_vitamin_b1 = 0 # float | The minimum number of Vitamin B1 in milligrams the recipe must have. (optional)
max_vitamin_b1 = 100 # float | The maximum number of Vitamin B1 in milligrams the recipe must have. (optional)
min_vitamin_b2 = 0 # float | The minimum number of Vitamin B2 in milligrams the recipe must have. (optional)
max_vitamin_b2 = 100 # float | The maximum number of Vitamin B2 in milligrams the recipe must have. (optional)
min_vitamin_b5 = 0 # float | The minimum number of Vitamin B5 in milligrams the recipe must have. (optional)
max_vitamin_b5 = 100 # float | The maximum number of Vitamin B5 in milligrams the recipe can have. (optional)
min_vitamin_b3 = 0 # float | The minimum number of Vitamin B3 in milligrams the recipe must have. (optional)
max_vitamin_b3 = 100 # float | The maximum number of Vitamin B3 in milligrams the recipe can have. (optional)
min_vitamin_b6 = 0 # float | The minimum number of Vitamin B6 in milligrams the recipe must have. (optional)
max_vitamin_b6 = 100 # float | The maximum number of Vitamin B6 in milligrams the recipe can have. (optional)
min_vitamin_b12 = 0 # float | The minimum number of Vitamin B12 in micrograms the recipe must have. (optional)
max_vitamin_b12 = 100 # float | The maximum number of Vitamin B12 in micrograms the recipe must have. (optional)
min_fiber = 0 # float | The minimum number of fiber in grams the recipe must have. (optional)
max_fiber = 100 # float | The maximum number of fiber in grams the recipe must have. (optional)
min_folate = 0 # float | The minimum number of folate in grams the recipe must have. (optional)
max_folate = 100 # float | The maximum number of folate in grams the recipe must have. (optional)
min_folic_acid = 0 # float | The minimum number of folic acid in grams the recipe must have. (optional)
max_folic_acid = 100 # float | The maximum number of folic acid in grams the recipe must have. (optional)
min_iodine = 0 # float | The minimum number of Iodine in grams the recipe must have. (optional)
max_iodine = 100 # float | The maximum number of iodine in grams the recipe must have. (optional)
min_iron = 0 # float | The minimum number of iron in milligrams the recipe must have. (optional)
max_iron = 100 # float | The maximum number of iron in milligrams the recipe can have. (optional)
min_magnesium = 0 # float | The minimum number of magnesium in milligrams the recipe must have. (optional)
max_magnesium = 100 # float | The maximum number of magnesium in milligrams the recipe can have. (optional)
min_manganese = 0 # float | The minimum number of manganese in milligrams the recipe must have. (optional)
max_manganese = 100 # float | The maximum number of manganese in milligrams the recipe can have. (optional)
min_phosphorus = 0 # float | The minimum number of phosphorus in milligrams the recipe must have. (optional)
max_phosphorus = 100 # float | The maximum number of phosphorus in milligrams the recipe can have. (optional)
min_potassium = 0 # float | The minimum number of potassium in milligrams the recipe must have. (optional)
max_potassium = 100 # float | The maximum number of potassium in milligrams the recipe can have. (optional)
min_selenium = 0 # float | The minimum number of selenium in grams the recipe must have. (optional)
max_selenium = 100 # float | The maximum number of selenium in grams the recipe must have. (optional)
min_sodium = 0 # float | The minimum number of sodium in milligrams the recipe must have. (optional)
max_sodium = 100 # float | The maximum number of sodium in milligrams the recipe must have. (optional)
min_sugar = 0 # float | The minimum number of sugar in grams the recipe must have. (optional)
max_sugar = 100 # float | The maximum number of sugar in grams the recipe must have. (optional)
min_zinc = 0 # float | The minimum number of zinc in milligrams the recipe must have. (optional)
max_zinc = 100 # float | The maximum number of zinc in milligrams the recipe can have. (optional)
offset = 0 # float | The offset number for paging (between 0 and 990). (optional)
number = 5 # float | The number of expected results (between 1 and 10). (optional)
limit_license = true # bool | Whether the recipes should have an open license that allows for displaying with proper attribution. (optional)

try:
    # Search Recipes Complex
    api_response = api_instance.search_recipes_complex(query, cuisine=cuisine, exclude_cuisine=exclude_cuisine, diet=diet, intolerances=intolerances, equipment=equipment, include_ingredients=include_ingredients, exclude_ingredients=exclude_ingredients, type=type, instructions_required=instructions_required, fill_ingredients=fill_ingredients, add_recipe_information=add_recipe_information, author=author, tags=tags, title_match=title_match, sort=sort, sort_direction=sort_direction, min_carbs=min_carbs, max_carbs=max_carbs, min_protein=min_protein, max_protein=max_protein, min_calories=min_calories, max_calories=max_calories, min_fat=min_fat, max_fat=max_fat, min_alcohol=min_alcohol, max_alcohol=max_alcohol, min_caffeine=min_caffeine, max_caffeine=max_caffeine, min_copper=min_copper, max_copper=max_copper, min_calcium=min_calcium, max_calcium=max_calcium, min_choline=min_choline, max_choline=max_choline, min_cholesterol=min_cholesterol, max_cholesterol=max_cholesterol, min_fluoride=min_fluoride, max_fluoride=max_fluoride, min_saturated_fat=min_saturated_fat, max_saturated_fat=max_saturated_fat, min_vitamin_a=min_vitamin_a, max_vitamin_a=max_vitamin_a, min_vitamin_c=min_vitamin_c, max_vitamin_c=max_vitamin_c, min_vitamin_d=min_vitamin_d, max_vitamin_d=max_vitamin_d, min_vitamin_e=min_vitamin_e, max_vitamin_e=max_vitamin_e, min_vitamin_k=min_vitamin_k, max_vitamin_k=max_vitamin_k, min_vitamin_b1=min_vitamin_b1, max_vitamin_b1=max_vitamin_b1, min_vitamin_b2=min_vitamin_b2, max_vitamin_b2=max_vitamin_b2, min_vitamin_b5=min_vitamin_b5, max_vitamin_b5=max_vitamin_b5, min_vitamin_b3=min_vitamin_b3, max_vitamin_b3=max_vitamin_b3, min_vitamin_b6=min_vitamin_b6, max_vitamin_b6=max_vitamin_b6, min_vitamin_b12=min_vitamin_b12, max_vitamin_b12=max_vitamin_b12, min_fiber=min_fiber, max_fiber=max_fiber, min_folate=min_folate, max_folate=max_folate, min_folic_acid=min_folic_acid, max_folic_acid=max_folic_acid, min_iodine=min_iodine, max_iodine=max_iodine, min_iron=min_iron, max_iron=max_iron, min_magnesium=min_magnesium, max_magnesium=max_magnesium, min_manganese=min_manganese, max_manganese=max_manganese, min_phosphorus=min_phosphorus, max_phosphorus=max_phosphorus, min_potassium=min_potassium, max_potassium=max_potassium, min_selenium=min_selenium, max_selenium=max_selenium, min_sodium=min_sodium, max_sodium=max_sodium, min_sugar=min_sugar, max_sugar=max_sugar, min_zinc=min_zinc, max_zinc=max_zinc, offset=offset, number=number, limit_license=limit_license)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->search_recipes_complex: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **str**| The (natural language) recipe search query. | 
 **cuisine** | **str**| The cuisine(s) of the recipes. One or more comma separated (will be iterpreted as &#39;OR&#39;). See a full list of supported cuisines. | [optional] 
 **exclude_cuisine** | **str**| The cuisine(s) the recipes must not match. One or more comma separated (will be iterpreted as &#39;AND&#39;). See a full list of supported cuisines. | [optional] 
 **diet** | **str**| The diet to which the recipes must be compliant. See a full list of supported diets. | [optional] 
 **intolerances** | **str**| A comma-separated list of intolerances. All found recipes must not have ingredients that could cause problems for people with one of the given tolerances. See a full list of supported intolerances. | [optional] 
 **equipment** | **str**| The equipment required. Multiple values will be interpreted as &#39;or&#39;. For example, value could be \&quot;blender, frying pan, bowl\&quot;. | [optional] 
 **include_ingredients** | **str**| A comma-separated list of ingredients that should/must be contained in the recipe. | [optional] 
 **exclude_ingredients** | **str**| A comma-separated list of ingredients or ingredient types that must not be contained in the recipes. | [optional] 
 **type** | **str**| The type of the recipes. See a full list of supported meal types. | [optional] 
 **instructions_required** | **bool**| Whether the recipes must have instructions. | [optional] 
 **fill_ingredients** | **bool**| Add information about the used and missing ingredients in each recipe. | [optional] 
 **add_recipe_information** | **bool**| If set to true, you get more information about the recipes returned. This saves the calls to get recipe information. | [optional] 
 **author** | **str**| The username of the recipe author. | [optional] 
 **tags** | **str**| User defined tags that have to match. | [optional] 
 **title_match** | **str**| A text that has to match in the title of the recipes. | [optional] 
 **sort** | **str**| The strategy to sort recipes by. See a full list of supported sorting options. | [optional] 
 **sort_direction** | **str**| The direction in which to sort. Must be either &#39;asc&#39; (ascending) or &#39;desc&#39; (descending). | [optional] 
 **min_carbs** | **float**| The minimum number of carbohydrates in grams the recipe must have. | [optional] 
 **max_carbs** | **float**| The maximum number of carbohydrates in grams the recipe can have. | [optional] 
 **min_protein** | **float**| The minimum number of protein in grams the recipe must have. | [optional] 
 **max_protein** | **float**| The maximum number of protein in grams the recipe can have. | [optional] 
 **min_calories** | **float**| The minimum number of calories the recipe must have. | [optional] 
 **max_calories** | **float**| The maximum number of calories the recipe can have. | [optional] 
 **min_fat** | **float**| The minimum number of fat in grams the recipe must have. | [optional] 
 **max_fat** | **float**| The maximum number of fat in grams the recipe can have. | [optional] 
 **min_alcohol** | **float**| The minimum number of alcohol in grams the recipe must have. | [optional] 
 **max_alcohol** | **float**| The maximum number of alcohol in grams the recipe must have. | [optional] 
 **min_caffeine** | **float**| The minimum number of milligrams of caffeine the recipe must have. | [optional] 
 **max_caffeine** | **float**| The maximum number of alcohol in grams the recipe must have. | [optional] 
 **min_copper** | **float**| The minimum number of copper in milligrams the recipe must have. | [optional] 
 **max_copper** | **float**| The maximum number of copper in milligrams the recipe must have. | [optional] 
 **min_calcium** | **float**| The minimum number of calcium in milligrams the recipe must have. | [optional] 
 **max_calcium** | **float**| The maximum number of calcium in milligrams the recipe must have. | [optional] 
 **min_choline** | **float**| The minimum number of choline in milligrams the recipe must have. | [optional] 
 **max_choline** | **float**| The maximum number of choline in milligrams the recipe can have. | [optional] 
 **min_cholesterol** | **float**| The minimum number of cholesterol in milligrams the recipe must have. | [optional] 
 **max_cholesterol** | **float**| The maximum number of cholesterol in milligrams the recipe must have. | [optional] 
 **min_fluoride** | **float**| The minimum number of fluoride in milligrams the recipe must have. | [optional] 
 **max_fluoride** | **float**| The maximum number of fluoride in milligrams the recipe can have. | [optional] 
 **min_saturated_fat** | **float**| The minimum number of saturated fat in grams the recipe must have. | [optional] 
 **max_saturated_fat** | **float**| The maximum number of saturated fat in grams the recipe must have. | [optional] 
 **min_vitamin_a** | **float**| The minimum number of Vitamin A in IU the recipe must have. | [optional] 
 **max_vitamin_a** | **float**| The maximum number of Vitamin A in IU the recipe must have. | [optional] 
 **min_vitamin_c** | **float**| The minimum number of Vitamin C milligrams the recipe must have. | [optional] 
 **max_vitamin_c** | **float**| The maximum number of Vitamin C in milligrams the recipe can have. | [optional] 
 **min_vitamin_d** | **float**| The minimum number of Vitamin D in micrograms the recipe must have. | [optional] 
 **max_vitamin_d** | **float**| The maximum number of Vitamin D in micrograms the recipe must have. | [optional] 
 **min_vitamin_e** | **float**| The minimum number of Vitamin E in milligrams the recipe must have. | [optional] 
 **max_vitamin_e** | **float**| The maximum number of Vitamin E in milligrams the recipe must have. | [optional] 
 **min_vitamin_k** | **float**| The minimum number of Vitamin K in micrograms the recipe must have. | [optional] 
 **max_vitamin_k** | **float**| The maximum number of Vitamin K in micrograms the recipe must have. | [optional] 
 **min_vitamin_b1** | **float**| The minimum number of Vitamin B1 in milligrams the recipe must have. | [optional] 
 **max_vitamin_b1** | **float**| The maximum number of Vitamin B1 in milligrams the recipe must have. | [optional] 
 **min_vitamin_b2** | **float**| The minimum number of Vitamin B2 in milligrams the recipe must have. | [optional] 
 **max_vitamin_b2** | **float**| The maximum number of Vitamin B2 in milligrams the recipe must have. | [optional] 
 **min_vitamin_b5** | **float**| The minimum number of Vitamin B5 in milligrams the recipe must have. | [optional] 
 **max_vitamin_b5** | **float**| The maximum number of Vitamin B5 in milligrams the recipe can have. | [optional] 
 **min_vitamin_b3** | **float**| The minimum number of Vitamin B3 in milligrams the recipe must have. | [optional] 
 **max_vitamin_b3** | **float**| The maximum number of Vitamin B3 in milligrams the recipe can have. | [optional] 
 **min_vitamin_b6** | **float**| The minimum number of Vitamin B6 in milligrams the recipe must have. | [optional] 
 **max_vitamin_b6** | **float**| The maximum number of Vitamin B6 in milligrams the recipe can have. | [optional] 
 **min_vitamin_b12** | **float**| The minimum number of Vitamin B12 in micrograms the recipe must have. | [optional] 
 **max_vitamin_b12** | **float**| The maximum number of Vitamin B12 in micrograms the recipe must have. | [optional] 
 **min_fiber** | **float**| The minimum number of fiber in grams the recipe must have. | [optional] 
 **max_fiber** | **float**| The maximum number of fiber in grams the recipe must have. | [optional] 
 **min_folate** | **float**| The minimum number of folate in grams the recipe must have. | [optional] 
 **max_folate** | **float**| The maximum number of folate in grams the recipe must have. | [optional] 
 **min_folic_acid** | **float**| The minimum number of folic acid in grams the recipe must have. | [optional] 
 **max_folic_acid** | **float**| The maximum number of folic acid in grams the recipe must have. | [optional] 
 **min_iodine** | **float**| The minimum number of Iodine in grams the recipe must have. | [optional] 
 **max_iodine** | **float**| The maximum number of iodine in grams the recipe must have. | [optional] 
 **min_iron** | **float**| The minimum number of iron in milligrams the recipe must have. | [optional] 
 **max_iron** | **float**| The maximum number of iron in milligrams the recipe can have. | [optional] 
 **min_magnesium** | **float**| The minimum number of magnesium in milligrams the recipe must have. | [optional] 
 **max_magnesium** | **float**| The maximum number of magnesium in milligrams the recipe can have. | [optional] 
 **min_manganese** | **float**| The minimum number of manganese in milligrams the recipe must have. | [optional] 
 **max_manganese** | **float**| The maximum number of manganese in milligrams the recipe can have. | [optional] 
 **min_phosphorus** | **float**| The minimum number of phosphorus in milligrams the recipe must have. | [optional] 
 **max_phosphorus** | **float**| The maximum number of phosphorus in milligrams the recipe can have. | [optional] 
 **min_potassium** | **float**| The minimum number of potassium in milligrams the recipe must have. | [optional] 
 **max_potassium** | **float**| The maximum number of potassium in milligrams the recipe can have. | [optional] 
 **min_selenium** | **float**| The minimum number of selenium in grams the recipe must have. | [optional] 
 **max_selenium** | **float**| The maximum number of selenium in grams the recipe must have. | [optional] 
 **min_sodium** | **float**| The minimum number of sodium in milligrams the recipe must have. | [optional] 
 **max_sodium** | **float**| The maximum number of sodium in milligrams the recipe must have. | [optional] 
 **min_sugar** | **float**| The minimum number of sugar in grams the recipe must have. | [optional] 
 **max_sugar** | **float**| The maximum number of sugar in grams the recipe must have. | [optional] 
 **min_zinc** | **float**| The minimum number of zinc in milligrams the recipe must have. | [optional] 
 **max_zinc** | **float**| The maximum number of zinc in milligrams the recipe can have. | [optional] 
 **offset** | **float**| The offset number for paging (between 0 and 990). | [optional] 
 **number** | **float**| The number of expected results (between 1 and 10). | [optional] 
 **limit_license** | **bool**| Whether the recipes should have an open license that allows for displaying with proper attribution. | [optional] 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_site_content**
> object search_site_content(query)

Search Site Content

Search spoonacular's site content. You'll be able to find everything that you could also find using the search suggests on spoonacular.com. This is a suggest API so you can send partial strings as queries.

### Example

```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = spoonacular.DefaultApi()
query = 'past' # str | The query to search for. You can also use partial queries such as \"spagh\" to already find spaghetti recipes, articles, grocery products, and other content.

try:
    # Search Site Content
    api_response = api_instance.search_site_content(query)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->search_site_content: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **str**| The query to search for. You can also use partial queries such as \&quot;spagh\&quot; to already find spaghetti recipes, articles, grocery products, and other content. | 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **summarize_recipe**
> object summarize_recipe(id)

Summarize Recipe

Summarize the recipe in a short text.

### Example

```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = spoonacular.DefaultApi()
id = 4632 # float | The recipe id.

try:
    # Summarize Recipe
    api_response = api_instance.summarize_recipe(id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->summarize_recipe: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **float**| The recipe id. | 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **talk_to_chatbot**
> object talk_to_chatbot(text, context_id=context_id)

Talk to Chatbot

This endpoint can be used to have a conversation about food with the spoonacular chat bot. Use the \"Get Conversation Suggests\" endpoint to show your user what he or she can say.

### Example

```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = spoonacular.DefaultApi()
text = 'donut recipes' # str | The request / question / answer from the user to the chat bot.
context_id = '342938' # str | An arbitrary globally unique id for your conversation. The conversation can contain states so you should pass your context id if you want the bot to be able to remember the conversation. (optional)

try:
    # Talk to Chatbot
    api_response = api_instance.talk_to_chatbot(text, context_id=context_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->talk_to_chatbot: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **str**| The request / question / answer from the user to the chat bot. | 
 **context_id** | **str**| An arbitrary globally unique id for your conversation. The conversation can contain states so you should pass your context id if you want the bot to be able to remember the conversation. | [optional] 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualize_equipment**
> str visualize_equipment(ingredient_list, servings, view=view, default_css=default_css, show_backlink=show_backlink)

Visualize Equipment

Visualize the equipment used to make a recipe.

### Example

```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = spoonacular.DefaultApi()
ingredient_list = 'ingredient_list_example' # str | The ingredient list of the recipe, one ingredient per line.
servings = 3.4 # float | The number of servings.
view = 'view_example' # str | Either \\\"grid\\\" or \\\"list\\\" as visualization of the equipment. (optional)
default_css = True # bool | Whether the default CSS should be added to the response. (optional)
show_backlink = True # bool | Whether to show a backlink to spoonacular. If set false, this call counts against your quota. (optional)

try:
    # Visualize Equipment
    api_response = api_instance.visualize_equipment(ingredient_list, servings, view=view, default_css=default_css, show_backlink=show_backlink)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->visualize_equipment: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredient_list** | **str**| The ingredient list of the recipe, one ingredient per line. | 
 **servings** | **float**| The number of servings. | 
 **view** | **str**| Either \\\&quot;grid\\\&quot; or \\\&quot;list\\\&quot; as visualization of the equipment. | [optional] 
 **default_css** | **bool**| Whether the default CSS should be added to the response. | [optional] 
 **show_backlink** | **bool**| Whether to show a backlink to spoonacular. If set false, this call counts against your quota. | [optional] 

### Return type

**str**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualize_ingredients**
> str visualize_ingredients(ingredient_list, servings, measure=measure, view=view, default_css=default_css, show_backlink=show_backlink)

Visualize Ingredients

Visualize ingredients of a recipe.

### Example

```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = spoonacular.DefaultApi()
ingredient_list = 'ingredient_list_example' # str | The ingredient list of the recipe, one ingredient per line.
servings = 3.4 # float | The number of servings.
measure = 'measure_example' # str | The initial measure, either \\\"metric\\\" or \\\"us\\\". (optional)
view = 'view_example' # str | Either \\\"grid\\\" or \\\"list\\\" as visualization of the equipment. (optional)
default_css = True # bool | Whether the default CSS should be added to the response. (optional)
show_backlink = True # bool | Whether to show a backlink to spoonacular. If set false, this call counts against your quota. (optional)

try:
    # Visualize Ingredients
    api_response = api_instance.visualize_ingredients(ingredient_list, servings, measure=measure, view=view, default_css=default_css, show_backlink=show_backlink)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->visualize_ingredients: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredient_list** | **str**| The ingredient list of the recipe, one ingredient per line. | 
 **servings** | **float**| The number of servings. | 
 **measure** | **str**| The initial measure, either \\\&quot;metric\\\&quot; or \\\&quot;us\\\&quot;. | [optional] 
 **view** | **str**| Either \\\&quot;grid\\\&quot; or \\\&quot;list\\\&quot; as visualization of the equipment. | [optional] 
 **default_css** | **bool**| Whether the default CSS should be added to the response. | [optional] 
 **show_backlink** | **bool**| Whether to show a backlink to spoonacular. If set false, this call counts against your quota. | [optional] 

### Return type

**str**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualize_menu_item_nutrition_by_id**
> str visualize_menu_item_nutrition_by_id(id, default_css=default_css)

Visualize Menu Item Nutrition by ID

Visualize a menu items' nutrition data.

### Example

```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = spoonacular.DefaultApi()
id = 1003464 # float | The menu item id.
default_css = true # bool | Whether the default CSS should be added to the response. (optional)

try:
    # Visualize Menu Item Nutrition by ID
    api_response = api_instance.visualize_menu_item_nutrition_by_id(id, default_css=default_css)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->visualize_menu_item_nutrition_by_id: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **float**| The menu item id. | 
 **default_css** | **bool**| Whether the default CSS should be added to the response. | [optional] 

### Return type

**str**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualize_price_breakdown**
> str visualize_price_breakdown(ingredient_list, servings, mode=mode, default_css=default_css, show_backlink=show_backlink)

Visualize Price Breakdown

Visualize the price breakdown of a recipe.

### Example

```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = spoonacular.DefaultApi()
ingredient_list = 'ingredient_list_example' # str | The ingredient list of the recipe, one ingredient per line.
servings = 3.4 # float | The number of servings.
mode = 3.4 # float | The mode in which the widget should be delivered. 1 = separate views (compact), 2 = all in one view (full). (optional)
default_css = True # bool | Whether the default CSS should be added to the response. (optional)
show_backlink = True # bool | Whether to show a backlink to spoonacular. If set false, this call counts against your quota. (optional)

try:
    # Visualize Price Breakdown
    api_response = api_instance.visualize_price_breakdown(ingredient_list, servings, mode=mode, default_css=default_css, show_backlink=show_backlink)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->visualize_price_breakdown: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredient_list** | **str**| The ingredient list of the recipe, one ingredient per line. | 
 **servings** | **float**| The number of servings. | 
 **mode** | **float**| The mode in which the widget should be delivered. 1 &#x3D; separate views (compact), 2 &#x3D; all in one view (full). | [optional] 
 **default_css** | **bool**| Whether the default CSS should be added to the response. | [optional] 
 **show_backlink** | **bool**| Whether to show a backlink to spoonacular. If set false, this call counts against your quota. | [optional] 

### Return type

**str**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualize_product_nutrition_by_id**
> str visualize_product_nutrition_by_id(id, default_css=default_css)

Visualize Product Nutrition by ID

Visualize a grocery product's nutritional information.

### Example

```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = spoonacular.DefaultApi()
id = 7657 # float | The id of the product.
default_css = true # bool | Whether the default CSS should be added to the response. (optional)

try:
    # Visualize Product Nutrition by ID
    api_response = api_instance.visualize_product_nutrition_by_id(id, default_css=default_css)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->visualize_product_nutrition_by_id: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **float**| The id of the product. | 
 **default_css** | **bool**| Whether the default CSS should be added to the response. | [optional] 

### Return type

**str**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualize_recipe_equipment_by_id**
> str visualize_recipe_equipment_by_id(id, default_css=default_css)

Visualize Recipe Equipment by ID

Visualize a recipe's equipment list.

### Example

```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = spoonacular.DefaultApi()
id = 44860 # float | The recipe id.
default_css = true # bool | Whether the default CSS should be added to the response. (optional)

try:
    # Visualize Recipe Equipment by ID
    api_response = api_instance.visualize_recipe_equipment_by_id(id, default_css=default_css)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->visualize_recipe_equipment_by_id: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **float**| The recipe id. | 
 **default_css** | **bool**| Whether the default CSS should be added to the response. | [optional] 

### Return type

**str**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualize_recipe_ingredients_by_id**
> str visualize_recipe_ingredients_by_id(id, default_css=default_css)

Visualize Recipe Ingredients by ID

Visualize a recipe's ingredient list.

### Example

```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = spoonacular.DefaultApi()
id = 1082038 # float | The recipe id.
default_css = true # bool | Whether the default CSS should be added to the response. (optional)

try:
    # Visualize Recipe Ingredients by ID
    api_response = api_instance.visualize_recipe_ingredients_by_id(id, default_css=default_css)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->visualize_recipe_ingredients_by_id: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **float**| The recipe id. | 
 **default_css** | **bool**| Whether the default CSS should be added to the response. | [optional] 

### Return type

**str**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualize_recipe_nutrition**
> str visualize_recipe_nutrition(ingredient_list, servings, default_css=default_css, show_backlink=show_backlink)

Visualize Recipe Nutrition

Visualize a recipe's nutrition data.

### Example

```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = spoonacular.DefaultApi()
ingredient_list = 'ingredient_list_example' # str | The ingredient list of the recipe, one ingredient per line.
servings = 3.4 # float | The number of servings.
default_css = True # bool | Whether the default CSS should be added to the response. (optional)
show_backlink = True # bool | Whether to show a backlink to spoonacular. If set false, this call counts against your quota. (optional)

try:
    # Visualize Recipe Nutrition
    api_response = api_instance.visualize_recipe_nutrition(ingredient_list, servings, default_css=default_css, show_backlink=show_backlink)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->visualize_recipe_nutrition: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredient_list** | **str**| The ingredient list of the recipe, one ingredient per line. | 
 **servings** | **float**| The number of servings. | 
 **default_css** | **bool**| Whether the default CSS should be added to the response. | [optional] 
 **show_backlink** | **bool**| Whether to show a backlink to spoonacular. If set false, this call counts against your quota. | [optional] 

### Return type

**str**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualize_recipe_nutrition_by_id**
> str visualize_recipe_nutrition_by_id(id, default_css=default_css)

Visualize Recipe Nutrition by ID

Visualize a recipe's nutritional information.

### Example

```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = spoonacular.DefaultApi()
id = 1082038 # float | The id of the product.
default_css = true # bool | Whether the default CSS should be added to the response. (optional)

try:
    # Visualize Recipe Nutrition by ID
    api_response = api_instance.visualize_recipe_nutrition_by_id(id, default_css=default_css)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->visualize_recipe_nutrition_by_id: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **float**| The id of the product. | 
 **default_css** | **bool**| Whether the default CSS should be added to the response. | [optional] 

### Return type

**str**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualize_recipe_price_breakdown_by_id**
> str visualize_recipe_price_breakdown_by_id(id, default_css=default_css)

Visualize Recipe Price Breakdown by ID

Visualize a recipe's price breakdown.

### Example

```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = spoonacular.DefaultApi()
id = 1082038 # float | The recipe id.
default_css = true # bool | Whether the default CSS should be added to the response. (optional)

try:
    # Visualize Recipe Price Breakdown by ID
    api_response = api_instance.visualize_recipe_price_breakdown_by_id(id, default_css=default_css)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->visualize_recipe_price_breakdown_by_id: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **float**| The recipe id. | 
 **default_css** | **bool**| Whether the default CSS should be added to the response. | [optional] 

### Return type

**str**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

