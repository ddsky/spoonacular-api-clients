# WWW::OpenAPIClient::DefaultApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::DefaultApi;
```

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_to_meal_plan**](DefaultApi.md#add_to_meal_plan) | **POST** /mealplanner/{username}/items | Add to Meal Plan
[**add_to_shopping_list**](DefaultApi.md#add_to_shopping_list) | **POST** /mealplanner/{username}/shopping-list/items | Add to Shopping List
[**analyze_a_recipe_search_query**](DefaultApi.md#analyze_a_recipe_search_query) | **GET** /recipes/queries/analyze | Analyze a Recipe Search Query
[**analyze_recipe_instructions**](DefaultApi.md#analyze_recipe_instructions) | **POST** /recipes/analyzeInstructions | Analyze Recipe Instructions
[**autocomplete_ingredient_search**](DefaultApi.md#autocomplete_ingredient_search) | **GET** /food/ingredients/autocomplete | Autocomplete Ingredient Search
[**autocomplete_menu_item_search**](DefaultApi.md#autocomplete_menu_item_search) | **GET** /food/menuItems/suggest | Autocomplete Menu Item Search
[**autocomplete_product_search**](DefaultApi.md#autocomplete_product_search) | **GET** /food/products/suggest | Autocomplete Product Search
[**autocomplete_recipe_search**](DefaultApi.md#autocomplete_recipe_search) | **GET** /recipes/autocomplete | Autocomplete Recipe Search
[**classify_cuisine**](DefaultApi.md#classify_cuisine) | **POST** /recipes/cuisine | Classify Cuisine
[**classify_grocery_product**](DefaultApi.md#classify_grocery_product) | **POST** /food/products/classify | Classify Grocery Product
[**classify_grocery_product_bulk**](DefaultApi.md#classify_grocery_product_bulk) | **POST** /food/products/classifyBatch | Classify Grocery Product Bulk
[**clear_meal_plan_day**](DefaultApi.md#clear_meal_plan_day) | **DELETE** /mealplanner/{username}/day/{date} | Clear Meal Plan Day
[**compute_glycemic_load**](DefaultApi.md#compute_glycemic_load) | **POST** /food/ingredients/glycemicLoad | Compute Glycemic Load
[**connect_user**](DefaultApi.md#connect_user) | **POST** /users/connect | Connect User
[**convert_amounts**](DefaultApi.md#convert_amounts) | **GET** /recipes/convert | Convert Amounts
[**create_recipe_card**](DefaultApi.md#create_recipe_card) | **POST** /recipes/visualizeRecipe | Create Recipe Card
[**delete_from_meal_plan**](DefaultApi.md#delete_from_meal_plan) | **DELETE** /mealplanner/{username}/items/{id} | Delete from Meal Plan
[**delete_from_shopping_list**](DefaultApi.md#delete_from_shopping_list) | **DELETE** /mealplanner/{username}/shopping-list/items/{id} | Delete from Shopping List
[**detect_food_in_text**](DefaultApi.md#detect_food_in_text) | **POST** /food/detect | Detect Food in Text
[**extract_recipe_from_website**](DefaultApi.md#extract_recipe_from_website) | **GET** /recipes/extract | Extract Recipe from Website
[**generate_meal_plan**](DefaultApi.md#generate_meal_plan) | **GET** /mealplanner/generate | Generate Meal Plan
[**generate_shopping_list**](DefaultApi.md#generate_shopping_list) | **POST** /mealplanner/{username}/shopping-list/{start-date}/{end-date} | Generate Shopping List
[**get_a_random_food_joke**](DefaultApi.md#get_a_random_food_joke) | **GET** /food/jokes/random | Get a Random Food Joke
[**get_analyzed_recipe_instructions**](DefaultApi.md#get_analyzed_recipe_instructions) | **GET** /recipes/{id}/analyzedInstructions | Get Analyzed Recipe Instructions
[**get_comparable_products**](DefaultApi.md#get_comparable_products) | **GET** /food/products/upc/{upc}/comparable | Get Comparable Products
[**get_conversation_suggests**](DefaultApi.md#get_conversation_suggests) | **GET** /food/converse/suggest | Get Conversation Suggests
[**get_dish_pairing_for_wine**](DefaultApi.md#get_dish_pairing_for_wine) | **GET** /food/wine/dishes | Get Dish Pairing for Wine
[**get_ingredient_information**](DefaultApi.md#get_ingredient_information) | **GET** /food/ingredients/{id}/information | Get Ingredient Information
[**get_ingredient_substitutes**](DefaultApi.md#get_ingredient_substitutes) | **GET** /food/ingredients/substitutes | Get Ingredient Substitutes
[**get_ingredient_substitutes_by_id**](DefaultApi.md#get_ingredient_substitutes_by_id) | **GET** /food/ingredients/{id}/substitutes | Get Ingredient Substitutes by ID
[**get_meal_plan_template**](DefaultApi.md#get_meal_plan_template) | **GET** /mealplanner/{username}/templates/{id} | Get Meal Plan Template
[**get_meal_plan_templates**](DefaultApi.md#get_meal_plan_templates) | **GET** /mealplanner/{username}/templates | Get Meal Plan Templates
[**get_meal_plan_week**](DefaultApi.md#get_meal_plan_week) | **GET** /mealplanner/{username}/week/{start-date} | Get Meal Plan Week
[**get_menu_item_information**](DefaultApi.md#get_menu_item_information) | **GET** /food/menuItems/{id} | Get Menu Item Information
[**get_product_information**](DefaultApi.md#get_product_information) | **GET** /food/products/{id} | Get Product Information
[**get_random_food_trivia**](DefaultApi.md#get_random_food_trivia) | **GET** /food/trivia/random | Get Random Food Trivia
[**get_random_recipes**](DefaultApi.md#get_random_recipes) | **GET** /recipes/random | Get Random Recipes
[**get_recipe_equipment_by_id**](DefaultApi.md#get_recipe_equipment_by_id) | **GET** /recipes/{id}/equipmentWidget.json | Get Recipe Equipment by ID
[**get_recipe_information**](DefaultApi.md#get_recipe_information) | **GET** /recipes/{id}/information | Get Recipe Information
[**get_recipe_information_bulk**](DefaultApi.md#get_recipe_information_bulk) | **GET** /recipes/informationBulk | Get Recipe Information Bulk
[**get_recipe_ingredients_by_id**](DefaultApi.md#get_recipe_ingredients_by_id) | **GET** /recipes/{id}/ingredientWidget.json | Get Recipe Ingredients by ID
[**get_recipe_nutrition_widget_by_id**](DefaultApi.md#get_recipe_nutrition_widget_by_id) | **GET** /recipes/{id}/nutritionWidget.json | Get Recipe Nutrition Widget by ID
[**get_recipe_price_breakdown_by_id**](DefaultApi.md#get_recipe_price_breakdown_by_id) | **GET** /recipes/{id}/priceBreakdownWidget.json | Get Recipe Price Breakdown by ID
[**get_recipe_taste_by_id**](DefaultApi.md#get_recipe_taste_by_id) | **GET** /recipes/{id}/tasteWidget.json | Get Recipe Taste by ID
[**get_shopping_list**](DefaultApi.md#get_shopping_list) | **GET** /mealplanner/{username}/shopping-list | Get Shopping List
[**get_similar_recipes**](DefaultApi.md#get_similar_recipes) | **GET** /recipes/{id}/similar | Get Similar Recipes
[**get_wine_description**](DefaultApi.md#get_wine_description) | **GET** /food/wine/description | Get Wine Description
[**get_wine_pairing**](DefaultApi.md#get_wine_pairing) | **GET** /food/wine/pairing | Get Wine Pairing
[**get_wine_recommendation**](DefaultApi.md#get_wine_recommendation) | **GET** /food/wine/recommendation | Get Wine Recommendation
[**guess_nutrition_by_dish_name**](DefaultApi.md#guess_nutrition_by_dish_name) | **GET** /recipes/guessNutrition | Guess Nutrition by Dish Name
[**image_analysis_by_url**](DefaultApi.md#image_analysis_by_url) | **GET** /food/images/analyze | Image Analysis by URL
[**image_classification_by_url**](DefaultApi.md#image_classification_by_url) | **GET** /food/images/classify | Image Classification by URL
[**ingredient_search**](DefaultApi.md#ingredient_search) | **GET** /food/ingredients/search | Ingredient Search
[**map_ingredients_to_grocery_products**](DefaultApi.md#map_ingredients_to_grocery_products) | **POST** /food/ingredients/map | Map Ingredients to Grocery Products
[**parse_ingredients**](DefaultApi.md#parse_ingredients) | **POST** /recipes/parseIngredients | Parse Ingredients
[**quick_answer**](DefaultApi.md#quick_answer) | **GET** /recipes/quickAnswer | Quick Answer
[**search_all_food**](DefaultApi.md#search_all_food) | **GET** /food/search | Search All Food
[**search_custom_foods**](DefaultApi.md#search_custom_foods) | **GET** /food/customFoods/search | Search Custom Foods
[**search_food_videos**](DefaultApi.md#search_food_videos) | **GET** /food/videos/search | Search Food Videos
[**search_grocery_products**](DefaultApi.md#search_grocery_products) | **GET** /food/products/search | Search Grocery Products
[**search_grocery_products_by_upc**](DefaultApi.md#search_grocery_products_by_upc) | **GET** /food/products/upc/{upc} | Search Grocery Products by UPC
[**search_menu_items**](DefaultApi.md#search_menu_items) | **GET** /food/menuItems/search | Search Menu Items
[**search_recipes**](DefaultApi.md#search_recipes) | **GET** /recipes/complexSearch | Search Recipes
[**search_recipes_by_ingredients**](DefaultApi.md#search_recipes_by_ingredients) | **GET** /recipes/findByIngredients | Search Recipes by Ingredients
[**search_recipes_by_nutrients**](DefaultApi.md#search_recipes_by_nutrients) | **GET** /recipes/findByNutrients | Search Recipes by Nutrients
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
[**visualize_recipe_taste**](DefaultApi.md#visualize_recipe_taste) | **POST** /recipes/visualizeTaste | Visualize Recipe Taste
[**visualize_recipe_taste_by_id**](DefaultApi.md#visualize_recipe_taste_by_id) | **GET** /recipes/{id}/tasteWidget | Visualize Recipe Taste by ID


# **add_to_meal_plan**
> object add_to_meal_plan(username => $username, hash => $hash, inline_object11 => $inline_object11)

Add to Meal Plan

Add an item to the user's meal plan.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $username = dsky; # string | The username.
my $hash = 4b5v4398573406; # string | The private hash for the username.
my $inline_object11 = WWW::OpenAPIClient::Object::InlineObject11->new(); # InlineObject11 | 

eval { 
    my $result = $api_instance->add_to_meal_plan(username => $username, hash => $hash, inline_object11 => $inline_object11);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->add_to_meal_plan: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username. | 
 **hash** | **string**| The private hash for the username. | 
 **inline_object11** | [**InlineObject11**](InlineObject11.md)|  | 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **add_to_shopping_list**
> object add_to_shopping_list(username => $username, hash => $hash, inline_object14 => $inline_object14)

Add to Shopping List

Add an item to the current shopping list of a user.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $username = dsky; # string | The username.
my $hash = 4b5v4398573406; # string | The private hash for the username.
my $inline_object14 = WWW::OpenAPIClient::Object::InlineObject14->new(); # InlineObject14 | 

eval { 
    my $result = $api_instance->add_to_shopping_list(username => $username, hash => $hash, inline_object14 => $inline_object14);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->add_to_shopping_list: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username. | 
 **hash** | **string**| The private hash for the username. | 
 **inline_object14** | [**InlineObject14**](InlineObject14.md)|  | 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **analyze_a_recipe_search_query**
> object analyze_a_recipe_search_query(q => $q)

Analyze a Recipe Search Query

Parse a recipe search query to find out its intention.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $q = salmon with fusilli and no nuts; # string | The recipe search query.

eval { 
    my $result = $api_instance->analyze_a_recipe_search_query(q => $q);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->analyze_a_recipe_search_query: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **string**| The recipe search query. | 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **analyze_recipe_instructions**
> object analyze_recipe_instructions(instructions => $instructions)

Analyze Recipe Instructions

This endpoint allows you to break down instructions into atomic steps. Furthermore, each step will contain the ingredients and equipment required. Additionally, all ingredients and equipment from the recipe's instructions will be extracted independently of the step they're used in.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $instructions = "instructions_example"; # string | The instructions to be analyzed.

eval { 
    my $result = $api_instance->analyze_recipe_instructions(instructions => $instructions);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->analyze_recipe_instructions: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instructions** | **string**| The instructions to be analyzed. | 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **autocomplete_ingredient_search**
> object autocomplete_ingredient_search(query => $query, number => $number, meta_information => $meta_information, intolerances => $intolerances)

Autocomplete Ingredient Search

Autocomplete the entry of an ingredient.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $query = appl; # string | The partial or full ingredient name.
my $number = 10; # double | The number of results to return (between 1 and 100).
my $meta_information = false; # boolean | Whether to return more meta information about the ingredients.
my $intolerances = egg; # string | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.

eval { 
    my $result = $api_instance->autocomplete_ingredient_search(query => $query, number => $number, meta_information => $meta_information, intolerances => $intolerances);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->autocomplete_ingredient_search: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The partial or full ingredient name. | 
 **number** | **double**| The number of results to return (between 1 and 100). | [optional] 
 **meta_information** | **boolean**| Whether to return more meta information about the ingredients. | [optional] 
 **intolerances** | **string**| A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. | [optional] 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **autocomplete_menu_item_search**
> object autocomplete_menu_item_search(query => $query, number => $number)

Autocomplete Menu Item Search

Generate suggestions for menu items based on a (partial) query. The matches will be found by looking in the title only.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $query = chicke; # string | The (partial) search query.
my $number = 10; # double | The number of results to return (between 1 and 25).

eval { 
    my $result = $api_instance->autocomplete_menu_item_search(query => $query, number => $number);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->autocomplete_menu_item_search: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The (partial) search query. | 
 **number** | **double**| The number of results to return (between 1 and 25). | [optional] 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **autocomplete_product_search**
> object autocomplete_product_search(query => $query, number => $number)

Autocomplete Product Search

Generate suggestions for grocery products based on a (partial) query. The matches will be found by looking in the title only.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $query = chicke; # string | The (partial) search query.
my $number = 10; # double | The number of results to return (between 1 and 25).

eval { 
    my $result = $api_instance->autocomplete_product_search(query => $query, number => $number);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->autocomplete_product_search: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The (partial) search query. | 
 **number** | **double**| The number of results to return (between 1 and 25). | [optional] 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **autocomplete_recipe_search**
> object autocomplete_recipe_search(query => $query, number => $number)

Autocomplete Recipe Search

Autocomplete a partial input to suggest possible recipe names.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $query = burger; # string | The query to be autocompleted.
my $number = 10; # double | The number of results to return (between 1 and 25).

eval { 
    my $result = $api_instance->autocomplete_recipe_search(query => $query, number => $number);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->autocomplete_recipe_search: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The query to be autocompleted. | 
 **number** | **double**| The number of results to return (between 1 and 25). | [optional] 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **classify_cuisine**
> object classify_cuisine(title => $title, ingredient_list => $ingredient_list)

Classify Cuisine

Classify the recipe's cuisine.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $title = "title_example"; # string | The title of the recipe.
my $ingredient_list = "ingredient_list_example"; # string | The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n).

eval { 
    my $result = $api_instance->classify_cuisine(title => $title, ingredient_list => $ingredient_list);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->classify_cuisine: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **string**| The title of the recipe. | 
 **ingredient_list** | **string**| The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n). | 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **classify_grocery_product**
> object classify_grocery_product(inline_object9 => $inline_object9, locale => $locale)

Classify Grocery Product

This endpoint allows you to match a packaged food to a basic category, e.g. a specific brand of milk to the category milk.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $inline_object9 = WWW::OpenAPIClient::Object::InlineObject9->new(); # InlineObject9 | 
my $locale = en_US; # string | The display name of the returned category, supported is en_US (for American English) and en_GB (for British English).

eval { 
    my $result = $api_instance->classify_grocery_product(inline_object9 => $inline_object9, locale => $locale);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->classify_grocery_product: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inline_object9** | [**InlineObject9**](InlineObject9.md)|  | 
 **locale** | **string**| The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). | [optional] 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **classify_grocery_product_bulk**
> object classify_grocery_product_bulk(request_body => $request_body, locale => $locale)

Classify Grocery Product Bulk

Provide a set of product jsons, get back classified products.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $request_body = [WWW::OpenAPIClient::Object::ARRAY[object]->new()]; # ARRAY[object] | 
my $locale = en_US; # string | The display name of the returned category, supported is en_US (for American English) and en_GB (for British English).

eval { 
    my $result = $api_instance->classify_grocery_product_bulk(request_body => $request_body, locale => $locale);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->classify_grocery_product_bulk: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ARRAY[object]**](ARRAY.md)|  | 
 **locale** | **string**| The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). | [optional] 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **clear_meal_plan_day**
> object clear_meal_plan_day(username => $username, date => $date, hash => $hash, inline_object10 => $inline_object10)

Clear Meal Plan Day

Delete all planned items from the user's meal plan for a specific day.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $username = dsky; # string | The username.
my $date = 2020-06-01; # string | The date in the format yyyy-mm-dd.
my $hash = 4b5v4398573406; # string | The private hash for the username.
my $inline_object10 = WWW::OpenAPIClient::Object::InlineObject10->new(); # InlineObject10 | 

eval { 
    my $result = $api_instance->clear_meal_plan_day(username => $username, date => $date, hash => $hash, inline_object10 => $inline_object10);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->clear_meal_plan_day: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username. | 
 **date** | **string**| The date in the format yyyy-mm-dd. | 
 **hash** | **string**| The private hash for the username. | 
 **inline_object10** | [**InlineObject10**](InlineObject10.md)|  | 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **compute_glycemic_load**
> object compute_glycemic_load(body => $body)

Compute Glycemic Load

Retrieve the glycemic index for a list of ingredients and compute the individual and total glycemic load.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $body = WWW::OpenAPIClient::Object::object->new(); # object | 

eval { 
    my $result = $api_instance->compute_glycemic_load(body => $body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->compute_glycemic_load: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **object**|  | 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **connect_user**
> object connect_user(body => $body)

Connect User

In order to call user-specific endpoints, you need to connect your app's users to spoonacular users.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $body = WWW::OpenAPIClient::Object::object->new(); # object | 

eval { 
    my $result = $api_instance->connect_user(body => $body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->connect_user: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **object**|  | 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **convert_amounts**
> object convert_amounts(ingredient_name => $ingredient_name, source_amount => $source_amount, source_unit => $source_unit, target_unit => $target_unit)

Convert Amounts

Convert amounts like \"2 cups of flour to grams\".

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $ingredient_name = flour; # string | The ingredient which you want to convert.
my $source_amount = 2.5; # double | The amount from which you want to convert, e.g. the 2.5 in \"2.5 cups of flour to grams\".
my $source_unit = cups; # string | The unit from which you want to convert, e.g. the grams in \"2.5 cups of flour to grams\". You can also use \"piece\", e.g. \"3.4 oz tomatoes to piece\"
my $target_unit = grams; # string | The unit to which you want to convert, e.g. the grams in \"2.5 cups of flour to grams\". You can also use \"piece\", e.g. \"3.4 oz tomatoes to piece\"

eval { 
    my $result = $api_instance->convert_amounts(ingredient_name => $ingredient_name, source_amount => $source_amount, source_unit => $source_unit, target_unit => $target_unit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->convert_amounts: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredient_name** | **string**| The ingredient which you want to convert. | 
 **source_amount** | **double**| The amount from which you want to convert, e.g. the 2.5 in \&quot;2.5 cups of flour to grams\&quot;. | 
 **source_unit** | **string**| The unit from which you want to convert, e.g. the grams in \&quot;2.5 cups of flour to grams\&quot;. You can also use \&quot;piece\&quot;, e.g. \&quot;3.4 oz tomatoes to piece\&quot; | 
 **target_unit** | **string**| The unit to which you want to convert, e.g. the grams in \&quot;2.5 cups of flour to grams\&quot;. You can also use \&quot;piece\&quot;, e.g. \&quot;3.4 oz tomatoes to piece\&quot; | 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_recipe_card**
> object create_recipe_card(title => $title, image => $image, ingredients => $ingredients, instructions => $instructions, ready_in_minutes => $ready_in_minutes, servings => $servings, mask => $mask, background_image => $background_image, author => $author, background_color => $background_color, font_color => $font_color, source => $source)

Create Recipe Card

Generate a recipe card for a recipe.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $title = "title_example"; # string | The title of the recipe.
my $image = "/path/to/file"; # string | The binary image of the recipe as jpg.
my $ingredients = "ingredients_example"; # string | The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n).
my $instructions = "instructions_example"; # string | The instructions to make the recipe. One step per line (separate lines with \\\\n).
my $ready_in_minutes = 3.4; # double | The number of minutes it takes to get the recipe on the table.
my $servings = 3.4; # double | The number of servings the recipe makes.
my $mask = "mask_example"; # string | The mask to put over the recipe image (\\\"ellipseMask\\\", \\\"diamondMask\\\", \\\"starMask\\\", \\\"heartMask\\\", \\\"potMask\\\", \\\"fishMask\\\").
my $background_image = "background_image_example"; # string | The background image (\\\"none\\\",\\\"background1\\\", or \\\"background2\\\").
my $author = "author_example"; # string | The author of the recipe.
my $background_color = "background_color_example"; # string | The background color for the recipe card as a hex-string.
my $font_color = "font_color_example"; # string | The font color for the recipe card as a hex-string.
my $source = "source_example"; # string | The source of the recipe.

eval { 
    my $result = $api_instance->create_recipe_card(title => $title, image => $image, ingredients => $ingredients, instructions => $instructions, ready_in_minutes => $ready_in_minutes, servings => $servings, mask => $mask, background_image => $background_image, author => $author, background_color => $background_color, font_color => $font_color, source => $source);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->create_recipe_card: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **string**| The title of the recipe. | 
 **image** | **string****string**| The binary image of the recipe as jpg. | 
 **ingredients** | **string**| The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n). | 
 **instructions** | **string**| The instructions to make the recipe. One step per line (separate lines with \\\\n). | 
 **ready_in_minutes** | **double**| The number of minutes it takes to get the recipe on the table. | 
 **servings** | **double**| The number of servings the recipe makes. | 
 **mask** | **string**| The mask to put over the recipe image (\\\&quot;ellipseMask\\\&quot;, \\\&quot;diamondMask\\\&quot;, \\\&quot;starMask\\\&quot;, \\\&quot;heartMask\\\&quot;, \\\&quot;potMask\\\&quot;, \\\&quot;fishMask\\\&quot;). | 
 **background_image** | **string**| The background image (\\\&quot;none\\\&quot;,\\\&quot;background1\\\&quot;, or \\\&quot;background2\\\&quot;). | 
 **author** | **string**| The author of the recipe. | [optional] 
 **background_color** | **string**| The background color for the recipe card as a hex-string. | [optional] 
 **font_color** | **string**| The font color for the recipe card as a hex-string. | [optional] 
 **source** | **string**| The source of the recipe. | [optional] 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_from_meal_plan**
> object delete_from_meal_plan(username => $username, id => $id, hash => $hash, inline_object12 => $inline_object12)

Delete from Meal Plan

Delete an item from the user's meal plan.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $username = dsky; # string | The username.
my $id = 15678; # double | The shopping list item id.
my $hash = 4b5v4398573406; # string | The private hash for the username.
my $inline_object12 = WWW::OpenAPIClient::Object::InlineObject12->new(); # InlineObject12 | 

eval { 
    my $result = $api_instance->delete_from_meal_plan(username => $username, id => $id, hash => $hash, inline_object12 => $inline_object12);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->delete_from_meal_plan: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username. | 
 **id** | **double**| The shopping list item id. | 
 **hash** | **string**| The private hash for the username. | 
 **inline_object12** | [**InlineObject12**](InlineObject12.md)|  | 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_from_shopping_list**
> object delete_from_shopping_list(username => $username, id => $id, hash => $hash, inline_object15 => $inline_object15)

Delete from Shopping List

Delete an item from the current shopping list of the user.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $username = dsky; # string | The username.
my $id = 15678; # double | The shopping list item id.
my $hash = 4b5v4398573406; # string | The private hash for the username.
my $inline_object15 = WWW::OpenAPIClient::Object::InlineObject15->new(); # InlineObject15 | 

eval { 
    my $result = $api_instance->delete_from_shopping_list(username => $username, id => $id, hash => $hash, inline_object15 => $inline_object15);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->delete_from_shopping_list: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username. | 
 **id** | **double**| The shopping list item id. | 
 **hash** | **string**| The private hash for the username. | 
 **inline_object15** | [**InlineObject15**](InlineObject15.md)|  | 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **detect_food_in_text**
> object detect_food_in_text(text => $text)

Detect Food in Text

Take any text and find all mentions of food contained within it. This task is also called Named Entity Recognition (NER). In this case, the entities are foods. Either dishes, such as pizza or cheeseburger, or ingredients, such as cucumber or almonds.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $text = "text_example"; # string | The text in which food items, such as dish names and ingredients, should be detected in.

eval { 
    my $result = $api_instance->detect_food_in_text(text => $text);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->detect_food_in_text: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **string**| The text in which food items, such as dish names and ingredients, should be detected in. | 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **extract_recipe_from_website**
> object extract_recipe_from_website(url => $url, force_extraction => $force_extraction, analyze => $analyze)

Extract Recipe from Website

This endpoint lets you extract recipe data such as title, ingredients, and instructions from any properly formatted Website.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $url = https://foodista.com/recipe/ZHK4KPB6/chocolate-crinkle-cookies; # string | The URL of the recipe page.
my $force_extraction = true; # boolean | If true, the extraction will be triggered whether we already know the recipe or not. Use this only if information is missing as this operation is slower.
my $analyze = false; # boolean | If true, the recipe will be analyzed and classified resolving in more data such as cuisines, dish types, and more.

eval { 
    my $result = $api_instance->extract_recipe_from_website(url => $url, force_extraction => $force_extraction, analyze => $analyze);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->extract_recipe_from_website: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **string**| The URL of the recipe page. | 
 **force_extraction** | **boolean**| If true, the extraction will be triggered whether we already know the recipe or not. Use this only if information is missing as this operation is slower. | [optional] 
 **analyze** | **boolean**| If true, the recipe will be analyzed and classified resolving in more data such as cuisines, dish types, and more. | [optional] 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generate_meal_plan**
> object generate_meal_plan(time_frame => $time_frame, target_calories => $target_calories, diet => $diet, exclude => $exclude)

Generate Meal Plan

Generate a meal plan with three meals per day (breakfast, lunch, and dinner).

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $time_frame = day; # string | Either for one \"day\" or an entire \"week\".
my $target_calories = 2000; # double | What is the caloric target for one day? The meal plan generator will try to get as close as possible to that goal.
my $diet = vegetarian; # string | Enter a diet that the meal plan has to adhere to. See a full list of supported diets.
my $exclude = shellfish, olives; # string | A comma-separated list of allergens or ingredients that must be excluded.

eval { 
    my $result = $api_instance->generate_meal_plan(time_frame => $time_frame, target_calories => $target_calories, diet => $diet, exclude => $exclude);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->generate_meal_plan: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **time_frame** | **string**| Either for one \&quot;day\&quot; or an entire \&quot;week\&quot;. | [optional] 
 **target_calories** | **double**| What is the caloric target for one day? The meal plan generator will try to get as close as possible to that goal. | [optional] 
 **diet** | **string**| Enter a diet that the meal plan has to adhere to. See a full list of supported diets. | [optional] 
 **exclude** | **string**| A comma-separated list of allergens or ingredients that must be excluded. | [optional] 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generate_shopping_list**
> object generate_shopping_list(username => $username, start_date => $start_date, end_date => $end_date, hash => $hash, inline_object13 => $inline_object13)

Generate Shopping List

Generate the shopping list for a user from the meal planner in a given time frame.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $username = dsky; # string | The username.
my $start_date = 2020-06-01; # string | The start date in the format yyyy-mm-dd.
my $end_date = 2020-06-07; # string | The end date in the format yyyy-mm-dd.
my $hash = 4b5v4398573406; # string | The private hash for the username.
my $inline_object13 = WWW::OpenAPIClient::Object::InlineObject13->new(); # InlineObject13 | 

eval { 
    my $result = $api_instance->generate_shopping_list(username => $username, start_date => $start_date, end_date => $end_date, hash => $hash, inline_object13 => $inline_object13);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->generate_shopping_list: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username. | 
 **start_date** | **string**| The start date in the format yyyy-mm-dd. | 
 **end_date** | **string**| The end date in the format yyyy-mm-dd. | 
 **hash** | **string**| The private hash for the username. | 
 **inline_object13** | [**InlineObject13**](InlineObject13.md)|  | 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_a_random_food_joke**
> object get_a_random_food_joke()

Get a Random Food Joke

Get a random joke that is related to food. Caution: this is an endpoint for adults!

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);


eval { 
    my $result = $api_instance->get_a_random_food_joke();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->get_a_random_food_joke: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_analyzed_recipe_instructions**
> object get_analyzed_recipe_instructions(id => $id, step_breakdown => $step_breakdown)

Get Analyzed Recipe Instructions

Get an analyzed breakdown of a recipe's instructions. Each step is enriched with the ingredients and equipment required.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $id = 324694; # double | The recipe id.
my $step_breakdown = true; # boolean | Whether to break down the recipe steps even more.

eval { 
    my $result = $api_instance->get_analyzed_recipe_instructions(id => $id, step_breakdown => $step_breakdown);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->get_analyzed_recipe_instructions: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **double**| The recipe id. | 
 **step_breakdown** | **boolean**| Whether to break down the recipe steps even more. | [optional] 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_comparable_products**
> object get_comparable_products(upc => $upc)

Get Comparable Products

Find comparable products to the given one.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $upc = 33698816271; # double | The UPC of the product for which you want to find comparable products.

eval { 
    my $result = $api_instance->get_comparable_products(upc => $upc);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->get_comparable_products: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **upc** | **double**| The UPC of the product for which you want to find comparable products. | 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_conversation_suggests**
> object get_conversation_suggests(query => $query, number => $number)

Get Conversation Suggests

This endpoint returns suggestions for things the user can say or ask the chatbot.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $query = tell; # string | A (partial) query from the user. The endpoint will return if it matches topics it can talk about.
my $number = 5; # double | The number of suggestions to return (between 1 and 25).

eval { 
    my $result = $api_instance->get_conversation_suggests(query => $query, number => $number);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->get_conversation_suggests: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| A (partial) query from the user. The endpoint will return if it matches topics it can talk about. | 
 **number** | **double**| The number of suggestions to return (between 1 and 25). | [optional] 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_dish_pairing_for_wine**
> object get_dish_pairing_for_wine(wine => $wine)

Get Dish Pairing for Wine

Find a dish that goes well with a given wine.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $wine = malbec; # string | The type of wine that should be paired, e.g. \"merlot\", \"riesling\", or \"malbec\".

eval { 
    my $result = $api_instance->get_dish_pairing_for_wine(wine => $wine);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->get_dish_pairing_for_wine: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wine** | **string**| The type of wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;. | 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_ingredient_information**
> object get_ingredient_information(id => $id, amount => $amount, unit => $unit)

Get Ingredient Information

Use an ingredient id to get all available information about an ingredient, such as its image and supermarket aisle.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $id = 9266; # double | The ingredient id.
my $amount = 150; # double | The amount of this ingredient.
my $unit = grams; # string | The unit for the given amount.

eval { 
    my $result = $api_instance->get_ingredient_information(id => $id, amount => $amount, unit => $unit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->get_ingredient_information: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **double**| The ingredient id. | 
 **amount** | **double**| The amount of this ingredient. | [optional] 
 **unit** | **string**| The unit for the given amount. | [optional] 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_ingredient_substitutes**
> object get_ingredient_substitutes(ingredient_name => $ingredient_name)

Get Ingredient Substitutes

Search for substitutes for a given ingredient.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $ingredient_name = butter; # string | The name of the ingredient you want to replace.

eval { 
    my $result = $api_instance->get_ingredient_substitutes(ingredient_name => $ingredient_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->get_ingredient_substitutes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredient_name** | **string**| The name of the ingredient you want to replace. | 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_ingredient_substitutes_by_id**
> object get_ingredient_substitutes_by_id(id => $id)

Get Ingredient Substitutes by ID

Search for substitutes for a given ingredient.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $id = 1001; # double | The id of the ingredient you want substitutes for.

eval { 
    my $result = $api_instance->get_ingredient_substitutes_by_id(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->get_ingredient_substitutes_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **double**| The id of the ingredient you want substitutes for. | 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_meal_plan_template**
> object get_meal_plan_template(username => $username, id => $id, hash => $hash)

Get Meal Plan Template

Get information about a meal plan template.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $username = dsky; # string | The username.
my $id = 15678; # double | The shopping list item id.
my $hash = 4b5v4398573406; # string | The private hash for the username.

eval { 
    my $result = $api_instance->get_meal_plan_template(username => $username, id => $id, hash => $hash);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->get_meal_plan_template: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username. | 
 **id** | **double**| The shopping list item id. | 
 **hash** | **string**| The private hash for the username. | 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_meal_plan_templates**
> object get_meal_plan_templates(username => $username, hash => $hash)

Get Meal Plan Templates

Get meal plan templates from user or public ones.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $username = dsky; # string | The username.
my $hash = 4b5v4398573406; # string | The private hash for the username.

eval { 
    my $result = $api_instance->get_meal_plan_templates(username => $username, hash => $hash);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->get_meal_plan_templates: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username. | 
 **hash** | **string**| The private hash for the username. | 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_meal_plan_week**
> object get_meal_plan_week(username => $username, start_date => $start_date, hash => $hash)

Get Meal Plan Week

Retrieve a meal planned week for the given user. The username must be a spoonacular user and the hash must the the user's hash that can be found in his/her account.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $username = dsky; # string | The username.
my $start_date = 2020-06-01; # string | The start date of the meal planned week in the format yyyy-mm-dd.
my $hash = 4b5v4398573406; # string | The private hash for the username.

eval { 
    my $result = $api_instance->get_meal_plan_week(username => $username, start_date => $start_date, hash => $hash);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->get_meal_plan_week: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username. | 
 **start_date** | **string**| The start date of the meal planned week in the format yyyy-mm-dd. | 
 **hash** | **string**| The private hash for the username. | 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_menu_item_information**
> object get_menu_item_information(id => $id)

Get Menu Item Information

Use a menu item id to get all available information about a menu item, such as nutrition.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $id = 424571; # double | The menu item id.

eval { 
    my $result = $api_instance->get_menu_item_information(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->get_menu_item_information: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **double**| The menu item id. | 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_product_information**
> object get_product_information(id => $id)

Get Product Information

Use a product id to get full information about a product, such as ingredients, nutrition, etc. The nutritional information is per serving.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $id = 22347; # double | The id of the packaged food.

eval { 
    my $result = $api_instance->get_product_information(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->get_product_information: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **double**| The id of the packaged food. | 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_random_food_trivia**
> object get_random_food_trivia()

Get Random Food Trivia

Returns random food trivia.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);


eval { 
    my $result = $api_instance->get_random_food_trivia();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->get_random_food_trivia: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_random_recipes**
> object get_random_recipes(limit_license => $limit_license, tags => $tags, number => $number)

Get Random Recipes

Find random (popular) recipes. If you need to filter recipes by diet, nutrition etc. you might want to consider using the complex recipe search endpoint and set the sort request parameter to random.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $limit_license = true; # boolean | Whether the recipes should have an open license that allows display with proper attribution.
my $tags = vegetarian, dessert; # string | The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have.
my $number = 1; # double | The number of random recipes to be returned (between 1 and 100).

eval { 
    my $result = $api_instance->get_random_recipes(limit_license => $limit_license, tags => $tags, number => $number);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->get_random_recipes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit_license** | **boolean**| Whether the recipes should have an open license that allows display with proper attribution. | [optional] 
 **tags** | **string**| The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have. | [optional] 
 **number** | **double**| The number of random recipes to be returned (between 1 and 100). | [optional] 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_recipe_equipment_by_id**
> object get_recipe_equipment_by_id(id => $id)

Get Recipe Equipment by ID

Get a recipe's equipment list.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $id = 1003464; # double | The recipe id.

eval { 
    my $result = $api_instance->get_recipe_equipment_by_id(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->get_recipe_equipment_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **double**| The recipe id. | 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_recipe_information**
> object get_recipe_information(id => $id, include_nutrition => $include_nutrition)

Get Recipe Information

Use a recipe id to get full information about a recipe, such as ingredients, nutrition, diet and allergen information, etc.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $id = 716429; # double | The id of the recipe.
my $include_nutrition = false; # boolean | Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings.

eval { 
    my $result = $api_instance->get_recipe_information(id => $id, include_nutrition => $include_nutrition);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->get_recipe_information: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **double**| The id of the recipe. | 
 **include_nutrition** | **boolean**| Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. | [optional] 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_recipe_information_bulk**
> object get_recipe_information_bulk(ids => $ids, include_nutrition => $include_nutrition)

Get Recipe Information Bulk

Get information about multiple recipes at once. This is equivalent to calling the Get Recipe Information endpoint multiple times, but faster.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $ids = 715538,716429; # string | A comma-separated list of recipe ids.
my $include_nutrition = false; # boolean | Include nutrition data to the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings.

eval { 
    my $result = $api_instance->get_recipe_information_bulk(ids => $ids, include_nutrition => $include_nutrition);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->get_recipe_information_bulk: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | **string**| A comma-separated list of recipe ids. | 
 **include_nutrition** | **boolean**| Include nutrition data to the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. | [optional] 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_recipe_ingredients_by_id**
> object get_recipe_ingredients_by_id(id => $id)

Get Recipe Ingredients by ID

Get a recipe's ingredient list.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $id = 1003464; # double | The recipe id.

eval { 
    my $result = $api_instance->get_recipe_ingredients_by_id(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->get_recipe_ingredients_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **double**| The recipe id. | 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_recipe_nutrition_widget_by_id**
> object get_recipe_nutrition_widget_by_id(id => $id)

Get Recipe Nutrition Widget by ID

Get a recipe's nutrition widget data.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $id = 1003464; # double | The recipe id.

eval { 
    my $result = $api_instance->get_recipe_nutrition_widget_by_id(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->get_recipe_nutrition_widget_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **double**| The recipe id. | 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_recipe_price_breakdown_by_id**
> object get_recipe_price_breakdown_by_id(id => $id)

Get Recipe Price Breakdown by ID

Get a recipe's price breakdown data.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $id = 1003464; # double | The recipe id.

eval { 
    my $result = $api_instance->get_recipe_price_breakdown_by_id(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->get_recipe_price_breakdown_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **double**| The recipe id. | 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_recipe_taste_by_id**
> object get_recipe_taste_by_id(id => $id)

Get Recipe Taste by ID

Get a recipe's taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $id = 69095; # double | The recipe id.

eval { 
    my $result = $api_instance->get_recipe_taste_by_id(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->get_recipe_taste_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **double**| The recipe id. | 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_shopping_list**
> object get_shopping_list(username => $username, hash => $hash)

Get Shopping List

Get the current shopping list for the given user.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $username = dsky; # string | The username.
my $hash = 4b5v4398573406; # string | The private hash for the username.

eval { 
    my $result = $api_instance->get_shopping_list(username => $username, hash => $hash);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->get_shopping_list: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username. | 
 **hash** | **string**| The private hash for the username. | 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_similar_recipes**
> object get_similar_recipes(id => $id, number => $number, limit_license => $limit_license)

Get Similar Recipes

Find recipes which are similar to the given one.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $id = 715538; # double | The id of the source recipe for which similar recipes should be found.
my $number = 1; # double | The number of random recipes to be returned (between 1 and 100).
my $limit_license = true; # boolean | Whether the recipes should have an open license that allows display with proper attribution.

eval { 
    my $result = $api_instance->get_similar_recipes(id => $id, number => $number, limit_license => $limit_license);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->get_similar_recipes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **double**| The id of the source recipe for which similar recipes should be found. | 
 **number** | **double**| The number of random recipes to be returned (between 1 and 100). | [optional] 
 **limit_license** | **boolean**| Whether the recipes should have an open license that allows display with proper attribution. | [optional] 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_wine_description**
> object get_wine_description(wine => $wine)

Get Wine Description

Get a simple description of a certain wine, e.g. \"malbec\", \"riesling\", or \"merlot\".

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $wine = merlot; # string | The name of the wine that should be paired, e.g. \"merlot\", \"riesling\", or \"malbec\".

eval { 
    my $result = $api_instance->get_wine_description(wine => $wine);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->get_wine_description: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wine** | **string**| The name of the wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;. | 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_wine_pairing**
> object get_wine_pairing(food => $food, max_price => $max_price)

Get Wine Pairing

Find a wine that goes well with a food. Food can be a dish name (\"steak\"), an ingredient name (\"salmon\"), or a cuisine (\"italian\").

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $food = steak; # string | The food to get a pairing for. This can be a dish (\"steak\"), an ingredient (\"salmon\"), or a cuisine (\"italian\").
my $max_price = 50; # double | The maximum price for the specific wine recommendation in USD.

eval { 
    my $result = $api_instance->get_wine_pairing(food => $food, max_price => $max_price);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->get_wine_pairing: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **food** | **string**| The food to get a pairing for. This can be a dish (\&quot;steak\&quot;), an ingredient (\&quot;salmon\&quot;), or a cuisine (\&quot;italian\&quot;). | 
 **max_price** | **double**| The maximum price for the specific wine recommendation in USD. | [optional] 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_wine_recommendation**
> object get_wine_recommendation(wine => $wine, max_price => $max_price, min_rating => $min_rating, number => $number)

Get Wine Recommendation

Get a specific wine recommendation (concrete product) for a given wine type, e.g. \"merlot\".

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $wine = merlot; # string | The type of wine to get a specific product recommendation for.
my $max_price = 50; # double | The maximum price for the specific wine recommendation in USD.
my $min_rating = 0.7; # double | The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars.
my $number = 3; # double | The number of wine recommendations expected (between 1 and 100).

eval { 
    my $result = $api_instance->get_wine_recommendation(wine => $wine, max_price => $max_price, min_rating => $min_rating, number => $number);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->get_wine_recommendation: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wine** | **string**| The type of wine to get a specific product recommendation for. | 
 **max_price** | **double**| The maximum price for the specific wine recommendation in USD. | [optional] 
 **min_rating** | **double**| The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars. | [optional] 
 **number** | **double**| The number of wine recommendations expected (between 1 and 100). | [optional] 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **guess_nutrition_by_dish_name**
> object guess_nutrition_by_dish_name(title => $title)

Guess Nutrition by Dish Name

Estimate the macronutrients of a dish based on its title.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $title = Spaghetti Aglio et Olio; # string | The title of the dish.

eval { 
    my $result = $api_instance->guess_nutrition_by_dish_name(title => $title);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->guess_nutrition_by_dish_name: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **string**| The title of the dish. | 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **image_analysis_by_url**
> object image_analysis_by_url(image_url => $image_url)

Image Analysis by URL

Analyze a food image. The API tries to classify the image, guess the nutrition, and find a matching recipes. You can play around with that endpoint!

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $image_url = https://spoonacular.com/recipeImages/635350-240x150.jpg; # string | The URL of the image to be analyzed.

eval { 
    my $result = $api_instance->image_analysis_by_url(image_url => $image_url);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->image_analysis_by_url: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_url** | **string**| The URL of the image to be analyzed. | 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **image_classification_by_url**
> object image_classification_by_url(image_url => $image_url)

Image Classification by URL

Classify a food image. You can play around with that endpoint!

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $image_url = https://spoonacular.com/recipeImages/635350-240x150.jpg; # string | The URL of the image to be classified.

eval { 
    my $result = $api_instance->image_classification_by_url(image_url => $image_url);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->image_classification_by_url: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_url** | **string**| The URL of the image to be classified. | 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ingredient_search**
> object ingredient_search(query => $query, add_children => $add_children, min_protein_percent => $min_protein_percent, max_protein_percent => $max_protein_percent, min_fat_percent => $min_fat_percent, max_fat_percent => $max_fat_percent, min_carbs_percent => $min_carbs_percent, max_carbs_percent => $max_carbs_percent, meta_information => $meta_information, intolerances => $intolerances, sort => $sort, sort_direction => $sort_direction, offset => $offset, number => $number)

Ingredient Search

Search for simple whole foods (e.g. fruits, vegetables, nuts, grains, meat, fish, dairy etc.).

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $query = apple; # string | The partial or full ingredient name.
my $add_children = true; # boolean | Whether to add children of found foods.
my $min_protein_percent = 10; # double | The minimum percentage of protein the food must have (between 0 and 100).
my $max_protein_percent = 90; # double | The maximum percentage of protein the food can have (between 0 and 100).
my $min_fat_percent = 10; # double | The minimum percentage of fat the food must have (between 0 and 100).
my $max_fat_percent = 90; # double | The maximum percentage of fat the food can have (between 0 and 100).
my $min_carbs_percent = 10; # double | The minimum percentage of carbs the food must have (between 0 and 100).
my $max_carbs_percent = 90; # double | The maximum percentage of carbs the food can have (between 0 and 100).
my $meta_information = false; # boolean | Whether to return more meta information about the ingredients.
my $intolerances = egg; # string | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.
my $sort = calories; # string | The strategy to sort recipes by. See a full list of supported sorting options.
my $sort_direction = asc; # string | The direction in which to sort. Must be either 'asc' (ascending) or 'desc' (descending).
my $offset = 0; # double | The number of results to skip (between 0 and 990).
my $number = 10; # double | The number of expected results (between 1 and 100).

eval { 
    my $result = $api_instance->ingredient_search(query => $query, add_children => $add_children, min_protein_percent => $min_protein_percent, max_protein_percent => $max_protein_percent, min_fat_percent => $min_fat_percent, max_fat_percent => $max_fat_percent, min_carbs_percent => $min_carbs_percent, max_carbs_percent => $max_carbs_percent, meta_information => $meta_information, intolerances => $intolerances, sort => $sort, sort_direction => $sort_direction, offset => $offset, number => $number);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->ingredient_search: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The partial or full ingredient name. | 
 **add_children** | **boolean**| Whether to add children of found foods. | [optional] 
 **min_protein_percent** | **double**| The minimum percentage of protein the food must have (between 0 and 100). | [optional] 
 **max_protein_percent** | **double**| The maximum percentage of protein the food can have (between 0 and 100). | [optional] 
 **min_fat_percent** | **double**| The minimum percentage of fat the food must have (between 0 and 100). | [optional] 
 **max_fat_percent** | **double**| The maximum percentage of fat the food can have (between 0 and 100). | [optional] 
 **min_carbs_percent** | **double**| The minimum percentage of carbs the food must have (between 0 and 100). | [optional] 
 **max_carbs_percent** | **double**| The maximum percentage of carbs the food can have (between 0 and 100). | [optional] 
 **meta_information** | **boolean**| Whether to return more meta information about the ingredients. | [optional] 
 **intolerances** | **string**| A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. | [optional] 
 **sort** | **string**| The strategy to sort recipes by. See a full list of supported sorting options. | [optional] 
 **sort_direction** | **string**| The direction in which to sort. Must be either &#39;asc&#39; (ascending) or &#39;desc&#39; (descending). | [optional] 
 **offset** | **double**| The number of results to skip (between 0 and 990). | [optional] 
 **number** | **double**| The number of expected results (between 1 and 100). | [optional] 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **map_ingredients_to_grocery_products**
> object map_ingredients_to_grocery_products(body => $body)

Map Ingredients to Grocery Products

Map a set of ingredients to products you can buy in the grocery store.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $body = WWW::OpenAPIClient::Object::object->new(); # object | 

eval { 
    my $result = $api_instance->map_ingredients_to_grocery_products(body => $body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->map_ingredients_to_grocery_products: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **object**|  | 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **parse_ingredients**
> object parse_ingredients(ingredient_list => $ingredient_list, servings => $servings, include_nutrition => $include_nutrition)

Parse Ingredients

Extract an ingredient from plain text.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $ingredient_list = "ingredient_list_example"; # string | The ingredient list of the recipe, one ingredient per line.
my $servings = 3.4; # double | The number of servings that you can make from the ingredients.
my $include_nutrition = null; # boolean | Whether nutrition data should be added to correctly parsed ingredients.

eval { 
    my $result = $api_instance->parse_ingredients(ingredient_list => $ingredient_list, servings => $servings, include_nutrition => $include_nutrition);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->parse_ingredients: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredient_list** | **string**| The ingredient list of the recipe, one ingredient per line. | 
 **servings** | **double**| The number of servings that you can make from the ingredients. | 
 **include_nutrition** | **boolean**| Whether nutrition data should be added to correctly parsed ingredients. | [optional] 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **quick_answer**
> object quick_answer(q => $q)

Quick Answer

Answer a nutrition related natural language question.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $q = How much vitamin c is in 2 apples?; # string | The nutrition related question.

eval { 
    my $result = $api_instance->quick_answer(q => $q);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->quick_answer: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **string**| The nutrition related question. | 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_all_food**
> object search_all_food(query => $query, offset => $offset, number => $number)

Search All Food

Search all food content with one call. That includes recipes, grocery products, menu items, simple foods (ingredients), and food videos.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $query = apple; # string | The search query.
my $offset = 0; # double | The number of results to skip (between 0 and 990).
my $number = 10; # double | The number of expected results (between 1 and 100).

eval { 
    my $result = $api_instance->search_all_food(query => $query, offset => $offset, number => $number);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->search_all_food: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The search query. | 
 **offset** | **double**| The number of results to skip (between 0 and 990). | [optional] 
 **number** | **double**| The number of expected results (between 1 and 100). | [optional] 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_custom_foods**
> object search_custom_foods(query => $query, username => $username, hash => $hash, offset => $offset, number => $number)

Search Custom Foods

Search custom foods in a user's account.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $query = brat; # string | The search query.
my $username = dsky; # string | The username.
my $hash = 4b5v4398573406; # string | The private hash for the username.
my $offset = 0; # double | The number of results to skip (between 0 and 990).
my $number = 10; # double | The number of expected results (between 1 and 100).

eval { 
    my $result = $api_instance->search_custom_foods(query => $query, username => $username, hash => $hash, offset => $offset, number => $number);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->search_custom_foods: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The search query. | 
 **username** | **string**| The username. | 
 **hash** | **string**| The private hash for the username. | 
 **offset** | **double**| The number of results to skip (between 0 and 990). | [optional] 
 **number** | **double**| The number of expected results (between 1 and 100). | [optional] 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_food_videos**
> object search_food_videos(query => $query, type => $type, cuisine => $cuisine, diet => $diet, include_ingredients => $include_ingredients, exclude_ingredients => $exclude_ingredients, min_length => $min_length, max_length => $max_length, offset => $offset, number => $number)

Search Food Videos

Find recipe and other food related videos.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $query = chicken soup; # string | The search query.
my $type = main course; # string | The type of the recipes. See a full list of supported meal types.
my $cuisine = italian; # string | The cuisine(s) of the recipes. One or more, comma separated. See a full list of supported cuisines.
my $diet = vegetarian; # string | The diet for which the recipes must be suitable. See a full list of supported diets.
my $include_ingredients = tomato,cheese; # string | A comma-separated list of ingredients that the recipes should contain.
my $exclude_ingredients = eggs; # string | A comma-separated list of ingredients or ingredient types that the recipes must not contain.
my $min_length = 0; # double | Minimum video length in seconds.
my $max_length = 999; # double | Maximum video length in seconds.
my $offset = 0; # double | The number of results to skip (between 0 and 900).
my $number = 10; # double | The number of results to return (between 1 and 100).

eval { 
    my $result = $api_instance->search_food_videos(query => $query, type => $type, cuisine => $cuisine, diet => $diet, include_ingredients => $include_ingredients, exclude_ingredients => $exclude_ingredients, min_length => $min_length, max_length => $max_length, offset => $offset, number => $number);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->search_food_videos: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The search query. | 
 **type** | **string**| The type of the recipes. See a full list of supported meal types. | [optional] 
 **cuisine** | **string**| The cuisine(s) of the recipes. One or more, comma separated. See a full list of supported cuisines. | [optional] 
 **diet** | **string**| The diet for which the recipes must be suitable. See a full list of supported diets. | [optional] 
 **include_ingredients** | **string**| A comma-separated list of ingredients that the recipes should contain. | [optional] 
 **exclude_ingredients** | **string**| A comma-separated list of ingredients or ingredient types that the recipes must not contain. | [optional] 
 **min_length** | **double**| Minimum video length in seconds. | [optional] 
 **max_length** | **double**| Maximum video length in seconds. | [optional] 
 **offset** | **double**| The number of results to skip (between 0 and 900). | [optional] 
 **number** | **double**| The number of results to return (between 1 and 100). | [optional] 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_grocery_products**
> object search_grocery_products(query => $query, min_calories => $min_calories, max_calories => $max_calories, min_carbs => $min_carbs, max_carbs => $max_carbs, min_protein => $min_protein, max_protein => $max_protein, min_fat => $min_fat, max_fat => $max_fat, offset => $offset, number => $number)

Search Grocery Products

Search packaged food products, such as frozen pizza or Greek yogurt.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $query = greek yogurt; # string | The search query.
my $min_calories = 50; # double | The minimum amount of calories the product must have.
my $max_calories = 800; # double | The maximum amount of calories the product can have.
my $min_carbs = 10; # double | The minimum amount of carbohydrates in grams the product must have.
my $max_carbs = 100; # double | The maximum amount of carbohydrates in grams the product can have.
my $min_protein = 10; # double | The minimum amount of protein in grams the product must have.
my $max_protein = 100; # double | The maximum amount of protein in grams the product can have.
my $min_fat = 1; # double | The minimum amount of fat in grams the product must have.
my $max_fat = 100; # double | The maximum amount of fat in grams the product can have.
my $offset = 0; # double | The number of results to skip (between 0 and 990).
my $number = 10; # double | The number of expected results (between 1 and 100).

eval { 
    my $result = $api_instance->search_grocery_products(query => $query, min_calories => $min_calories, max_calories => $max_calories, min_carbs => $min_carbs, max_carbs => $max_carbs, min_protein => $min_protein, max_protein => $max_protein, min_fat => $min_fat, max_fat => $max_fat, offset => $offset, number => $number);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->search_grocery_products: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The search query. | 
 **min_calories** | **double**| The minimum amount of calories the product must have. | [optional] 
 **max_calories** | **double**| The maximum amount of calories the product can have. | [optional] 
 **min_carbs** | **double**| The minimum amount of carbohydrates in grams the product must have. | [optional] 
 **max_carbs** | **double**| The maximum amount of carbohydrates in grams the product can have. | [optional] 
 **min_protein** | **double**| The minimum amount of protein in grams the product must have. | [optional] 
 **max_protein** | **double**| The maximum amount of protein in grams the product can have. | [optional] 
 **min_fat** | **double**| The minimum amount of fat in grams the product must have. | [optional] 
 **max_fat** | **double**| The maximum amount of fat in grams the product can have. | [optional] 
 **offset** | **double**| The number of results to skip (between 0 and 990). | [optional] 
 **number** | **double**| The number of expected results (between 1 and 100). | [optional] 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_grocery_products_by_upc**
> object search_grocery_products_by_upc(upc => $upc)

Search Grocery Products by UPC

Get information about a packaged food using its UPC.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $upc = 41631000564; # double | The product's UPC.

eval { 
    my $result = $api_instance->search_grocery_products_by_upc(upc => $upc);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->search_grocery_products_by_upc: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **upc** | **double**| The product&#39;s UPC. | 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_menu_items**
> object search_menu_items(query => $query, min_calories => $min_calories, max_calories => $max_calories, min_carbs => $min_carbs, max_carbs => $max_carbs, min_protein => $min_protein, max_protein => $max_protein, min_fat => $min_fat, max_fat => $max_fat, offset => $offset, number => $number)

Search Menu Items

Search over 115,000 menu items from over 800 fast food and chain restaurants. For example, McDonald's Big Mac or Starbucks Mocha.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $query = snickers; # string | The search query.
my $min_calories = 50; # double | The minimum amount of calories the menu item must have.
my $max_calories = 800; # double | The maximum amount of calories the menu item can have.
my $min_carbs = 10; # double | The minimum amount of carbohydrates in grams the menu item must have.
my $max_carbs = 100; # double | The maximum amount of carbohydrates in grams the menu item can have.
my $min_protein = 10; # double | The minimum amount of protein in grams the menu item must have.
my $max_protein = 100; # double | The maximum amount of protein in grams the menu item can have.
my $min_fat = 1; # double | The minimum amount of fat in grams the menu item must have.
my $max_fat = 100; # double | The maximum amount of fat in grams the menu item can have.
my $offset = 0; # double | The offset number for paging (between 0 and 990).
my $number = 100; # double | The number of expected results (between 1 and 10).

eval { 
    my $result = $api_instance->search_menu_items(query => $query, min_calories => $min_calories, max_calories => $max_calories, min_carbs => $min_carbs, max_carbs => $max_carbs, min_protein => $min_protein, max_protein => $max_protein, min_fat => $min_fat, max_fat => $max_fat, offset => $offset, number => $number);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->search_menu_items: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The search query. | 
 **min_calories** | **double**| The minimum amount of calories the menu item must have. | [optional] 
 **max_calories** | **double**| The maximum amount of calories the menu item can have. | [optional] 
 **min_carbs** | **double**| The minimum amount of carbohydrates in grams the menu item must have. | [optional] 
 **max_carbs** | **double**| The maximum amount of carbohydrates in grams the menu item can have. | [optional] 
 **min_protein** | **double**| The minimum amount of protein in grams the menu item must have. | [optional] 
 **max_protein** | **double**| The maximum amount of protein in grams the menu item can have. | [optional] 
 **min_fat** | **double**| The minimum amount of fat in grams the menu item must have. | [optional] 
 **max_fat** | **double**| The maximum amount of fat in grams the menu item can have. | [optional] 
 **offset** | **double**| The offset number for paging (between 0 and 990). | [optional] 
 **number** | **double**| The number of expected results (between 1 and 10). | [optional] 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_recipes**
> object search_recipes(query => $query, cuisine => $cuisine, exclude_cuisine => $exclude_cuisine, diet => $diet, intolerances => $intolerances, equipment => $equipment, include_ingredients => $include_ingredients, exclude_ingredients => $exclude_ingredients, type => $type, instructions_required => $instructions_required, fill_ingredients => $fill_ingredients, add_recipe_information => $add_recipe_information, add_recipe_nutrition => $add_recipe_nutrition, author => $author, tags => $tags, recipe_box_id => $recipe_box_id, title_match => $title_match, max_ready_time => $max_ready_time, ignore_pantry => $ignore_pantry, sort => $sort, sort_direction => $sort_direction, min_carbs => $min_carbs, max_carbs => $max_carbs, min_protein => $min_protein, max_protein => $max_protein, min_calories => $min_calories, max_calories => $max_calories, min_fat => $min_fat, max_fat => $max_fat, min_alcohol => $min_alcohol, max_alcohol => $max_alcohol, min_caffeine => $min_caffeine, max_caffeine => $max_caffeine, min_copper => $min_copper, max_copper => $max_copper, min_calcium => $min_calcium, max_calcium => $max_calcium, min_choline => $min_choline, max_choline => $max_choline, min_cholesterol => $min_cholesterol, max_cholesterol => $max_cholesterol, min_fluoride => $min_fluoride, max_fluoride => $max_fluoride, min_saturated_fat => $min_saturated_fat, max_saturated_fat => $max_saturated_fat, min_vitamin_a => $min_vitamin_a, max_vitamin_a => $max_vitamin_a, min_vitamin_c => $min_vitamin_c, max_vitamin_c => $max_vitamin_c, min_vitamin_d => $min_vitamin_d, max_vitamin_d => $max_vitamin_d, min_vitamin_e => $min_vitamin_e, max_vitamin_e => $max_vitamin_e, min_vitamin_k => $min_vitamin_k, max_vitamin_k => $max_vitamin_k, min_vitamin_b1 => $min_vitamin_b1, max_vitamin_b1 => $max_vitamin_b1, min_vitamin_b2 => $min_vitamin_b2, max_vitamin_b2 => $max_vitamin_b2, min_vitamin_b5 => $min_vitamin_b5, max_vitamin_b5 => $max_vitamin_b5, min_vitamin_b3 => $min_vitamin_b3, max_vitamin_b3 => $max_vitamin_b3, min_vitamin_b6 => $min_vitamin_b6, max_vitamin_b6 => $max_vitamin_b6, min_vitamin_b12 => $min_vitamin_b12, max_vitamin_b12 => $max_vitamin_b12, min_fiber => $min_fiber, max_fiber => $max_fiber, min_folate => $min_folate, max_folate => $max_folate, min_folic_acid => $min_folic_acid, max_folic_acid => $max_folic_acid, min_iodine => $min_iodine, max_iodine => $max_iodine, min_iron => $min_iron, max_iron => $max_iron, min_magnesium => $min_magnesium, max_magnesium => $max_magnesium, min_manganese => $min_manganese, max_manganese => $max_manganese, min_phosphorus => $min_phosphorus, max_phosphorus => $max_phosphorus, min_potassium => $min_potassium, max_potassium => $max_potassium, min_selenium => $min_selenium, max_selenium => $max_selenium, min_sodium => $min_sodium, max_sodium => $max_sodium, min_sugar => $min_sugar, max_sugar => $max_sugar, min_zinc => $min_zinc, max_zinc => $max_zinc, offset => $offset, number => $number, limit_license => $limit_license)

Search Recipes

Search through hundreds of thousands of recipes using advanced filtering and ranking. NOTE: This method combines searching by query, by ingredients, and by nutrients into one endpoint.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $query = pasta; # string | The (natural language) recipe search query.
my $cuisine = italian; # string | The cuisine(s) of the recipes. One or more, comma separated (will be interpreted as 'OR'). See a full list of supported cuisines.
my $exclude_cuisine = greek; # string | The cuisine(s) the recipes must not match. One or more, comma separated (will be interpreted as 'AND'). See a full list of supported cuisines.
my $diet = vegetarian; # string | The diet for which the recipes must be suitable. See a full list of supported diets.
my $intolerances = gluten; # string | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.
my $equipment = pan; # string | The equipment required. Multiple values will be interpreted as 'or'. For example, value could be \"blender, frying pan, bowl\".
my $include_ingredients = tomato,cheese; # string | A comma-separated list of ingredients that should/must be used in the recipes.
my $exclude_ingredients = eggs; # string | A comma-separated list of ingredients or ingredient types that the recipes must not contain.
my $type = main course; # string | The type of recipe. See a full list of supported meal types.
my $instructions_required = true; # boolean | Whether the recipes must have instructions.
my $fill_ingredients = false; # boolean | Add information about the ingredients and whether they are used or missing in relation to the query.
my $add_recipe_information = false; # boolean | If set to true, you get more information about the recipes returned.
my $add_recipe_nutrition = false; # boolean | If set to true, you get nutritional information about each recipes returned.
my $author = coffeebean; # string | The username of the recipe author.
my $tags = myCustomTag; # string | User defined tags that have to match. The author param has to be set.
my $recipe_box_id = 2468; # double | The id of the recipe box to which the search should be limited to.
my $title_match = Crock Pot; # string | Enter text that must be found in the title of the recipes.
my $max_ready_time = 20; # double | The maximum time in minutes it should take to prepare and cook the recipe.
my $ignore_pantry = true; # boolean | Whether to ignore typical pantry items, such as water, salt, flour, etc.
my $sort = calories; # string | The strategy to sort recipes by. See a full list of supported sorting options.
my $sort_direction = asc; # string | The direction in which to sort. Must be either 'asc' (ascending) or 'desc' (descending).
my $min_carbs = 10; # double | The minimum amount of carbohydrates in grams the recipe must have.
my $max_carbs = 100; # double | The maximum amount of carbohydrates in grams the recipe can have.
my $min_protein = 10; # double | The minimum amount of protein in grams the recipe must have.
my $max_protein = 100; # double | The maximum amount of protein in grams the recipe can have.
my $min_calories = 50; # double | The minimum amount of calories the recipe must have.
my $max_calories = 800; # double | The maximum amount of calories the recipe can have.
my $min_fat = 1; # double | The minimum amount of fat in grams the recipe must have.
my $max_fat = 100; # double | The maximum amount of fat in grams the recipe can have.
my $min_alcohol = 0; # double | The minimum amount of alcohol in grams the recipe must have.
my $max_alcohol = 100; # double | The maximum amount of alcohol in grams the recipe can have.
my $min_caffeine = 0; # double | The minimum amount of caffeine in milligrams the recipe must have.
my $max_caffeine = 100; # double | The maximum amount of caffeine in milligrams the recipe can have.
my $min_copper = 0; # double | The minimum amount of copper in milligrams the recipe must have.
my $max_copper = 100; # double | The maximum amount of copper in milligrams the recipe can have.
my $min_calcium = 0; # double | The minimum amount of calcium in milligrams the recipe must have.
my $max_calcium = 100; # double | The maximum amount of calcium in milligrams the recipe can have.
my $min_choline = 0; # double | The minimum amount of choline in milligrams the recipe must have.
my $max_choline = 100; # double | The maximum amount of choline in milligrams the recipe can have.
my $min_cholesterol = 0; # double | The minimum amount of cholesterol in milligrams the recipe must have.
my $max_cholesterol = 100; # double | The maximum amount of cholesterol in milligrams the recipe can have.
my $min_fluoride = 0; # double | The minimum amount of fluoride in milligrams the recipe must have.
my $max_fluoride = 100; # double | The maximum amount of fluoride in milligrams the recipe can have.
my $min_saturated_fat = 0; # double | The minimum amount of saturated fat in grams the recipe must have.
my $max_saturated_fat = 100; # double | The maximum amount of saturated fat in grams the recipe can have.
my $min_vitamin_a = 0; # double | The minimum amount of Vitamin A in IU the recipe must have.
my $max_vitamin_a = 100; # double | The maximum amount of Vitamin A in IU the recipe can have.
my $min_vitamin_c = 0; # double | The minimum amount of Vitamin C milligrams the recipe must have.
my $max_vitamin_c = 100; # double | The maximum amount of Vitamin C in milligrams the recipe can have.
my $min_vitamin_d = 0; # double | The minimum amount of Vitamin D in micrograms the recipe must have.
my $max_vitamin_d = 100; # double | The maximum amount of Vitamin D in micrograms the recipe can have.
my $min_vitamin_e = 0; # double | The minimum amount of Vitamin E in milligrams the recipe must have.
my $max_vitamin_e = 100; # double | The maximum amount of Vitamin E in milligrams the recipe can have.
my $min_vitamin_k = 0; # double | The minimum amount of Vitamin K in micrograms the recipe must have.
my $max_vitamin_k = 100; # double | The maximum amount of Vitamin K in micrograms the recipe can have.
my $min_vitamin_b1 = 0; # double | The minimum amount of Vitamin B1 in milligrams the recipe must have.
my $max_vitamin_b1 = 100; # double | The maximum amount of Vitamin B1 in milligrams the recipe can have.
my $min_vitamin_b2 = 0; # double | The minimum amount of Vitamin B2 in milligrams the recipe must have.
my $max_vitamin_b2 = 100; # double | The maximum amount of Vitamin B2 in milligrams the recipe can have.
my $min_vitamin_b5 = 0; # double | The minimum amount of Vitamin B5 in milligrams the recipe must have.
my $max_vitamin_b5 = 100; # double | The maximum amount of Vitamin B5 in milligrams the recipe can have.
my $min_vitamin_b3 = 0; # double | The minimum amount of Vitamin B3 in milligrams the recipe must have.
my $max_vitamin_b3 = 100; # double | The maximum amount of Vitamin B3 in milligrams the recipe can have.
my $min_vitamin_b6 = 0; # double | The minimum amount of Vitamin B6 in milligrams the recipe must have.
my $max_vitamin_b6 = 100; # double | The maximum amount of Vitamin B6 in milligrams the recipe can have.
my $min_vitamin_b12 = 0; # double | The minimum amount of Vitamin B12 in micrograms the recipe must have.
my $max_vitamin_b12 = 100; # double | The maximum amount of Vitamin B12 in micrograms the recipe can have.
my $min_fiber = 0; # double | The minimum amount of fiber in grams the recipe must have.
my $max_fiber = 100; # double | The maximum amount of fiber in grams the recipe can have.
my $min_folate = 0; # double | The minimum amount of folate in micrograms the recipe must have.
my $max_folate = 100; # double | The maximum amount of folate in micrograms the recipe can have.
my $min_folic_acid = 0; # double | The minimum amount of folic acid in micrograms the recipe must have.
my $max_folic_acid = 100; # double | The maximum amount of folic acid in micrograms the recipe can have.
my $min_iodine = 0; # double | The minimum amount of iodine in micrograms the recipe must have.
my $max_iodine = 100; # double | The maximum amount of iodine in micrograms the recipe can have.
my $min_iron = 0; # double | The minimum amount of iron in milligrams the recipe must have.
my $max_iron = 100; # double | The maximum amount of iron in milligrams the recipe can have.
my $min_magnesium = 0; # double | The minimum amount of magnesium in milligrams the recipe must have.
my $max_magnesium = 100; # double | The maximum amount of magnesium in milligrams the recipe can have.
my $min_manganese = 0; # double | The minimum amount of manganese in milligrams the recipe must have.
my $max_manganese = 100; # double | The maximum amount of manganese in milligrams the recipe can have.
my $min_phosphorus = 0; # double | The minimum amount of phosphorus in milligrams the recipe must have.
my $max_phosphorus = 100; # double | The maximum amount of phosphorus in milligrams the recipe can have.
my $min_potassium = 0; # double | The minimum amount of potassium in milligrams the recipe must have.
my $max_potassium = 100; # double | The maximum amount of potassium in milligrams the recipe can have.
my $min_selenium = 0; # double | The minimum amount of selenium in micrograms the recipe must have.
my $max_selenium = 100; # double | The maximum amount of selenium in micrograms the recipe can have.
my $min_sodium = 0; # double | The minimum amount of sodium in milligrams the recipe must have.
my $max_sodium = 100; # double | The maximum amount of sodium in milligrams the recipe can have.
my $min_sugar = 0; # double | The minimum amount of sugar in grams the recipe must have.
my $max_sugar = 100; # double | The maximum amount of sugar in grams the recipe can have.
my $min_zinc = 0; # double | The minimum amount of zinc in milligrams the recipe must have.
my $max_zinc = 100; # double | The maximum amount of zinc in milligrams the recipe can have.
my $offset = 0; # double | The number of results to skip (between 0 and 900).
my $number = 10; # double | The number of expected results (between 1 and 100).
my $limit_license = true; # boolean | Whether the recipes should have an open license that allows display with proper attribution.

eval { 
    my $result = $api_instance->search_recipes(query => $query, cuisine => $cuisine, exclude_cuisine => $exclude_cuisine, diet => $diet, intolerances => $intolerances, equipment => $equipment, include_ingredients => $include_ingredients, exclude_ingredients => $exclude_ingredients, type => $type, instructions_required => $instructions_required, fill_ingredients => $fill_ingredients, add_recipe_information => $add_recipe_information, add_recipe_nutrition => $add_recipe_nutrition, author => $author, tags => $tags, recipe_box_id => $recipe_box_id, title_match => $title_match, max_ready_time => $max_ready_time, ignore_pantry => $ignore_pantry, sort => $sort, sort_direction => $sort_direction, min_carbs => $min_carbs, max_carbs => $max_carbs, min_protein => $min_protein, max_protein => $max_protein, min_calories => $min_calories, max_calories => $max_calories, min_fat => $min_fat, max_fat => $max_fat, min_alcohol => $min_alcohol, max_alcohol => $max_alcohol, min_caffeine => $min_caffeine, max_caffeine => $max_caffeine, min_copper => $min_copper, max_copper => $max_copper, min_calcium => $min_calcium, max_calcium => $max_calcium, min_choline => $min_choline, max_choline => $max_choline, min_cholesterol => $min_cholesterol, max_cholesterol => $max_cholesterol, min_fluoride => $min_fluoride, max_fluoride => $max_fluoride, min_saturated_fat => $min_saturated_fat, max_saturated_fat => $max_saturated_fat, min_vitamin_a => $min_vitamin_a, max_vitamin_a => $max_vitamin_a, min_vitamin_c => $min_vitamin_c, max_vitamin_c => $max_vitamin_c, min_vitamin_d => $min_vitamin_d, max_vitamin_d => $max_vitamin_d, min_vitamin_e => $min_vitamin_e, max_vitamin_e => $max_vitamin_e, min_vitamin_k => $min_vitamin_k, max_vitamin_k => $max_vitamin_k, min_vitamin_b1 => $min_vitamin_b1, max_vitamin_b1 => $max_vitamin_b1, min_vitamin_b2 => $min_vitamin_b2, max_vitamin_b2 => $max_vitamin_b2, min_vitamin_b5 => $min_vitamin_b5, max_vitamin_b5 => $max_vitamin_b5, min_vitamin_b3 => $min_vitamin_b3, max_vitamin_b3 => $max_vitamin_b3, min_vitamin_b6 => $min_vitamin_b6, max_vitamin_b6 => $max_vitamin_b6, min_vitamin_b12 => $min_vitamin_b12, max_vitamin_b12 => $max_vitamin_b12, min_fiber => $min_fiber, max_fiber => $max_fiber, min_folate => $min_folate, max_folate => $max_folate, min_folic_acid => $min_folic_acid, max_folic_acid => $max_folic_acid, min_iodine => $min_iodine, max_iodine => $max_iodine, min_iron => $min_iron, max_iron => $max_iron, min_magnesium => $min_magnesium, max_magnesium => $max_magnesium, min_manganese => $min_manganese, max_manganese => $max_manganese, min_phosphorus => $min_phosphorus, max_phosphorus => $max_phosphorus, min_potassium => $min_potassium, max_potassium => $max_potassium, min_selenium => $min_selenium, max_selenium => $max_selenium, min_sodium => $min_sodium, max_sodium => $max_sodium, min_sugar => $min_sugar, max_sugar => $max_sugar, min_zinc => $min_zinc, max_zinc => $max_zinc, offset => $offset, number => $number, limit_license => $limit_license);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->search_recipes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The (natural language) recipe search query. | 
 **cuisine** | **string**| The cuisine(s) of the recipes. One or more, comma separated (will be interpreted as &#39;OR&#39;). See a full list of supported cuisines. | [optional] 
 **exclude_cuisine** | **string**| The cuisine(s) the recipes must not match. One or more, comma separated (will be interpreted as &#39;AND&#39;). See a full list of supported cuisines. | [optional] 
 **diet** | **string**| The diet for which the recipes must be suitable. See a full list of supported diets. | [optional] 
 **intolerances** | **string**| A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. | [optional] 
 **equipment** | **string**| The equipment required. Multiple values will be interpreted as &#39;or&#39;. For example, value could be \&quot;blender, frying pan, bowl\&quot;. | [optional] 
 **include_ingredients** | **string**| A comma-separated list of ingredients that should/must be used in the recipes. | [optional] 
 **exclude_ingredients** | **string**| A comma-separated list of ingredients or ingredient types that the recipes must not contain. | [optional] 
 **type** | **string**| The type of recipe. See a full list of supported meal types. | [optional] 
 **instructions_required** | **boolean**| Whether the recipes must have instructions. | [optional] 
 **fill_ingredients** | **boolean**| Add information about the ingredients and whether they are used or missing in relation to the query. | [optional] 
 **add_recipe_information** | **boolean**| If set to true, you get more information about the recipes returned. | [optional] 
 **add_recipe_nutrition** | **boolean**| If set to true, you get nutritional information about each recipes returned. | [optional] 
 **author** | **string**| The username of the recipe author. | [optional] 
 **tags** | **string**| User defined tags that have to match. The author param has to be set. | [optional] 
 **recipe_box_id** | **double**| The id of the recipe box to which the search should be limited to. | [optional] 
 **title_match** | **string**| Enter text that must be found in the title of the recipes. | [optional] 
 **max_ready_time** | **double**| The maximum time in minutes it should take to prepare and cook the recipe. | [optional] 
 **ignore_pantry** | **boolean**| Whether to ignore typical pantry items, such as water, salt, flour, etc. | [optional] 
 **sort** | **string**| The strategy to sort recipes by. See a full list of supported sorting options. | [optional] 
 **sort_direction** | **string**| The direction in which to sort. Must be either &#39;asc&#39; (ascending) or &#39;desc&#39; (descending). | [optional] 
 **min_carbs** | **double**| The minimum amount of carbohydrates in grams the recipe must have. | [optional] 
 **max_carbs** | **double**| The maximum amount of carbohydrates in grams the recipe can have. | [optional] 
 **min_protein** | **double**| The minimum amount of protein in grams the recipe must have. | [optional] 
 **max_protein** | **double**| The maximum amount of protein in grams the recipe can have. | [optional] 
 **min_calories** | **double**| The minimum amount of calories the recipe must have. | [optional] 
 **max_calories** | **double**| The maximum amount of calories the recipe can have. | [optional] 
 **min_fat** | **double**| The minimum amount of fat in grams the recipe must have. | [optional] 
 **max_fat** | **double**| The maximum amount of fat in grams the recipe can have. | [optional] 
 **min_alcohol** | **double**| The minimum amount of alcohol in grams the recipe must have. | [optional] 
 **max_alcohol** | **double**| The maximum amount of alcohol in grams the recipe can have. | [optional] 
 **min_caffeine** | **double**| The minimum amount of caffeine in milligrams the recipe must have. | [optional] 
 **max_caffeine** | **double**| The maximum amount of caffeine in milligrams the recipe can have. | [optional] 
 **min_copper** | **double**| The minimum amount of copper in milligrams the recipe must have. | [optional] 
 **max_copper** | **double**| The maximum amount of copper in milligrams the recipe can have. | [optional] 
 **min_calcium** | **double**| The minimum amount of calcium in milligrams the recipe must have. | [optional] 
 **max_calcium** | **double**| The maximum amount of calcium in milligrams the recipe can have. | [optional] 
 **min_choline** | **double**| The minimum amount of choline in milligrams the recipe must have. | [optional] 
 **max_choline** | **double**| The maximum amount of choline in milligrams the recipe can have. | [optional] 
 **min_cholesterol** | **double**| The minimum amount of cholesterol in milligrams the recipe must have. | [optional] 
 **max_cholesterol** | **double**| The maximum amount of cholesterol in milligrams the recipe can have. | [optional] 
 **min_fluoride** | **double**| The minimum amount of fluoride in milligrams the recipe must have. | [optional] 
 **max_fluoride** | **double**| The maximum amount of fluoride in milligrams the recipe can have. | [optional] 
 **min_saturated_fat** | **double**| The minimum amount of saturated fat in grams the recipe must have. | [optional] 
 **max_saturated_fat** | **double**| The maximum amount of saturated fat in grams the recipe can have. | [optional] 
 **min_vitamin_a** | **double**| The minimum amount of Vitamin A in IU the recipe must have. | [optional] 
 **max_vitamin_a** | **double**| The maximum amount of Vitamin A in IU the recipe can have. | [optional] 
 **min_vitamin_c** | **double**| The minimum amount of Vitamin C milligrams the recipe must have. | [optional] 
 **max_vitamin_c** | **double**| The maximum amount of Vitamin C in milligrams the recipe can have. | [optional] 
 **min_vitamin_d** | **double**| The minimum amount of Vitamin D in micrograms the recipe must have. | [optional] 
 **max_vitamin_d** | **double**| The maximum amount of Vitamin D in micrograms the recipe can have. | [optional] 
 **min_vitamin_e** | **double**| The minimum amount of Vitamin E in milligrams the recipe must have. | [optional] 
 **max_vitamin_e** | **double**| The maximum amount of Vitamin E in milligrams the recipe can have. | [optional] 
 **min_vitamin_k** | **double**| The minimum amount of Vitamin K in micrograms the recipe must have. | [optional] 
 **max_vitamin_k** | **double**| The maximum amount of Vitamin K in micrograms the recipe can have. | [optional] 
 **min_vitamin_b1** | **double**| The minimum amount of Vitamin B1 in milligrams the recipe must have. | [optional] 
 **max_vitamin_b1** | **double**| The maximum amount of Vitamin B1 in milligrams the recipe can have. | [optional] 
 **min_vitamin_b2** | **double**| The minimum amount of Vitamin B2 in milligrams the recipe must have. | [optional] 
 **max_vitamin_b2** | **double**| The maximum amount of Vitamin B2 in milligrams the recipe can have. | [optional] 
 **min_vitamin_b5** | **double**| The minimum amount of Vitamin B5 in milligrams the recipe must have. | [optional] 
 **max_vitamin_b5** | **double**| The maximum amount of Vitamin B5 in milligrams the recipe can have. | [optional] 
 **min_vitamin_b3** | **double**| The minimum amount of Vitamin B3 in milligrams the recipe must have. | [optional] 
 **max_vitamin_b3** | **double**| The maximum amount of Vitamin B3 in milligrams the recipe can have. | [optional] 
 **min_vitamin_b6** | **double**| The minimum amount of Vitamin B6 in milligrams the recipe must have. | [optional] 
 **max_vitamin_b6** | **double**| The maximum amount of Vitamin B6 in milligrams the recipe can have. | [optional] 
 **min_vitamin_b12** | **double**| The minimum amount of Vitamin B12 in micrograms the recipe must have. | [optional] 
 **max_vitamin_b12** | **double**| The maximum amount of Vitamin B12 in micrograms the recipe can have. | [optional] 
 **min_fiber** | **double**| The minimum amount of fiber in grams the recipe must have. | [optional] 
 **max_fiber** | **double**| The maximum amount of fiber in grams the recipe can have. | [optional] 
 **min_folate** | **double**| The minimum amount of folate in micrograms the recipe must have. | [optional] 
 **max_folate** | **double**| The maximum amount of folate in micrograms the recipe can have. | [optional] 
 **min_folic_acid** | **double**| The minimum amount of folic acid in micrograms the recipe must have. | [optional] 
 **max_folic_acid** | **double**| The maximum amount of folic acid in micrograms the recipe can have. | [optional] 
 **min_iodine** | **double**| The minimum amount of iodine in micrograms the recipe must have. | [optional] 
 **max_iodine** | **double**| The maximum amount of iodine in micrograms the recipe can have. | [optional] 
 **min_iron** | **double**| The minimum amount of iron in milligrams the recipe must have. | [optional] 
 **max_iron** | **double**| The maximum amount of iron in milligrams the recipe can have. | [optional] 
 **min_magnesium** | **double**| The minimum amount of magnesium in milligrams the recipe must have. | [optional] 
 **max_magnesium** | **double**| The maximum amount of magnesium in milligrams the recipe can have. | [optional] 
 **min_manganese** | **double**| The minimum amount of manganese in milligrams the recipe must have. | [optional] 
 **max_manganese** | **double**| The maximum amount of manganese in milligrams the recipe can have. | [optional] 
 **min_phosphorus** | **double**| The minimum amount of phosphorus in milligrams the recipe must have. | [optional] 
 **max_phosphorus** | **double**| The maximum amount of phosphorus in milligrams the recipe can have. | [optional] 
 **min_potassium** | **double**| The minimum amount of potassium in milligrams the recipe must have. | [optional] 
 **max_potassium** | **double**| The maximum amount of potassium in milligrams the recipe can have. | [optional] 
 **min_selenium** | **double**| The minimum amount of selenium in micrograms the recipe must have. | [optional] 
 **max_selenium** | **double**| The maximum amount of selenium in micrograms the recipe can have. | [optional] 
 **min_sodium** | **double**| The minimum amount of sodium in milligrams the recipe must have. | [optional] 
 **max_sodium** | **double**| The maximum amount of sodium in milligrams the recipe can have. | [optional] 
 **min_sugar** | **double**| The minimum amount of sugar in grams the recipe must have. | [optional] 
 **max_sugar** | **double**| The maximum amount of sugar in grams the recipe can have. | [optional] 
 **min_zinc** | **double**| The minimum amount of zinc in milligrams the recipe must have. | [optional] 
 **max_zinc** | **double**| The maximum amount of zinc in milligrams the recipe can have. | [optional] 
 **offset** | **double**| The number of results to skip (between 0 and 900). | [optional] 
 **number** | **double**| The number of expected results (between 1 and 100). | [optional] 
 **limit_license** | **boolean**| Whether the recipes should have an open license that allows display with proper attribution. | [optional] 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_recipes_by_ingredients**
> object search_recipes_by_ingredients(ingredients => $ingredients, number => $number, limit_license => $limit_license, ranking => $ranking, ignore_pantry => $ignore_pantry)

Search Recipes by Ingredients

             Ever wondered what recipes you can cook with the ingredients you have in your fridge or pantry? This endpoint lets you find recipes that either maximize the usage of ingredients you have at hand (pre shopping) or minimize the ingredients that you don't currently have (post shopping).         

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $ingredients = apples,flour,sugar; # string | A comma-separated list of ingredients that the recipes should contain.
my $number = 10; # double | The maximum number of recipes to return (between 1 and 100). Defaults to 10.
my $limit_license = true; # boolean | Whether the recipes should have an open license that allows display with proper attribution.
my $ranking = 1; # double | Whether to maximize used ingredients (1) or minimize missing ingredients (2) first.
my $ignore_pantry = true; # boolean | Whether to ignore typical pantry items, such as water, salt, flour, etc.

eval { 
    my $result = $api_instance->search_recipes_by_ingredients(ingredients => $ingredients, number => $number, limit_license => $limit_license, ranking => $ranking, ignore_pantry => $ignore_pantry);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->search_recipes_by_ingredients: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredients** | **string**| A comma-separated list of ingredients that the recipes should contain. | 
 **number** | **double**| The maximum number of recipes to return (between 1 and 100). Defaults to 10. | [optional] 
 **limit_license** | **boolean**| Whether the recipes should have an open license that allows display with proper attribution. | [optional] 
 **ranking** | **double**| Whether to maximize used ingredients (1) or minimize missing ingredients (2) first. | [optional] 
 **ignore_pantry** | **boolean**| Whether to ignore typical pantry items, such as water, salt, flour, etc. | [optional] 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_recipes_by_nutrients**
> object search_recipes_by_nutrients(min_carbs => $min_carbs, max_carbs => $max_carbs, min_protein => $min_protein, max_protein => $max_protein, min_calories => $min_calories, max_calories => $max_calories, min_fat => $min_fat, max_fat => $max_fat, min_alcohol => $min_alcohol, max_alcohol => $max_alcohol, min_caffeine => $min_caffeine, max_caffeine => $max_caffeine, min_copper => $min_copper, max_copper => $max_copper, min_calcium => $min_calcium, max_calcium => $max_calcium, min_choline => $min_choline, max_choline => $max_choline, min_cholesterol => $min_cholesterol, max_cholesterol => $max_cholesterol, min_fluoride => $min_fluoride, max_fluoride => $max_fluoride, min_saturated_fat => $min_saturated_fat, max_saturated_fat => $max_saturated_fat, min_vitamin_a => $min_vitamin_a, max_vitamin_a => $max_vitamin_a, min_vitamin_c => $min_vitamin_c, max_vitamin_c => $max_vitamin_c, min_vitamin_d => $min_vitamin_d, max_vitamin_d => $max_vitamin_d, min_vitamin_e => $min_vitamin_e, max_vitamin_e => $max_vitamin_e, min_vitamin_k => $min_vitamin_k, max_vitamin_k => $max_vitamin_k, min_vitamin_b1 => $min_vitamin_b1, max_vitamin_b1 => $max_vitamin_b1, min_vitamin_b2 => $min_vitamin_b2, max_vitamin_b2 => $max_vitamin_b2, min_vitamin_b5 => $min_vitamin_b5, max_vitamin_b5 => $max_vitamin_b5, min_vitamin_b3 => $min_vitamin_b3, max_vitamin_b3 => $max_vitamin_b3, min_vitamin_b6 => $min_vitamin_b6, max_vitamin_b6 => $max_vitamin_b6, min_vitamin_b12 => $min_vitamin_b12, max_vitamin_b12 => $max_vitamin_b12, min_fiber => $min_fiber, max_fiber => $max_fiber, min_folate => $min_folate, max_folate => $max_folate, min_folic_acid => $min_folic_acid, max_folic_acid => $max_folic_acid, min_iodine => $min_iodine, max_iodine => $max_iodine, min_iron => $min_iron, max_iron => $max_iron, min_magnesium => $min_magnesium, max_magnesium => $max_magnesium, min_manganese => $min_manganese, max_manganese => $max_manganese, min_phosphorus => $min_phosphorus, max_phosphorus => $max_phosphorus, min_potassium => $min_potassium, max_potassium => $max_potassium, min_selenium => $min_selenium, max_selenium => $max_selenium, min_sodium => $min_sodium, max_sodium => $max_sodium, min_sugar => $min_sugar, max_sugar => $max_sugar, min_zinc => $min_zinc, max_zinc => $max_zinc, offset => $offset, number => $number, random => $random, limit_license => $limit_license)

Search Recipes by Nutrients

Find a set of recipes that adhere to the given nutritional limits. You may set limits for macronutrients (calories, protein, fat, and carbohydrate) and/or many micronutrients.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $min_carbs = 10; # double | The minimum amount of carbohydrates in grams the recipe must have.
my $max_carbs = 100; # double | The maximum amount of carbohydrates in grams the recipe can have.
my $min_protein = 10; # double | The minimum amount of protein in grams the recipe must have.
my $max_protein = 100; # double | The maximum amount of protein in grams the recipe can have.
my $min_calories = 50; # double | The minimum amount of calories the recipe must have.
my $max_calories = 800; # double | The maximum amount of calories the recipe can have.
my $min_fat = 1; # double | The minimum amount of fat in grams the recipe must have.
my $max_fat = 100; # double | The maximum amount of fat in grams the recipe can have.
my $min_alcohol = 0; # double | The minimum amount of alcohol in grams the recipe must have.
my $max_alcohol = 100; # double | The maximum amount of alcohol in grams the recipe can have.
my $min_caffeine = 0; # double | The minimum amount of caffeine in milligrams the recipe must have.
my $max_caffeine = 100; # double | The maximum amount of caffeine in milligrams the recipe can have.
my $min_copper = 0; # double | The minimum amount of copper in milligrams the recipe must have.
my $max_copper = 100; # double | The maximum amount of copper in milligrams the recipe can have.
my $min_calcium = 0; # double | The minimum amount of calcium in milligrams the recipe must have.
my $max_calcium = 100; # double | The maximum amount of calcium in milligrams the recipe can have.
my $min_choline = 0; # double | The minimum amount of choline in milligrams the recipe must have.
my $max_choline = 100; # double | The maximum amount of choline in milligrams the recipe can have.
my $min_cholesterol = 0; # double | The minimum amount of cholesterol in milligrams the recipe must have.
my $max_cholesterol = 100; # double | The maximum amount of cholesterol in milligrams the recipe can have.
my $min_fluoride = 0; # double | The minimum amount of fluoride in milligrams the recipe must have.
my $max_fluoride = 100; # double | The maximum amount of fluoride in milligrams the recipe can have.
my $min_saturated_fat = 0; # double | The minimum amount of saturated fat in grams the recipe must have.
my $max_saturated_fat = 100; # double | The maximum amount of saturated fat in grams the recipe can have.
my $min_vitamin_a = 0; # double | The minimum amount of Vitamin A in IU the recipe must have.
my $max_vitamin_a = 100; # double | The maximum amount of Vitamin A in IU the recipe can have.
my $min_vitamin_c = 0; # double | The minimum amount of Vitamin C in milligrams the recipe must have.
my $max_vitamin_c = 100; # double | The maximum amount of Vitamin C in milligrams the recipe can have.
my $min_vitamin_d = 0; # double | The minimum amount of Vitamin D in micrograms the recipe must have.
my $max_vitamin_d = 100; # double | The maximum amount of Vitamin D in micrograms the recipe can have.
my $min_vitamin_e = 0; # double | The minimum amount of Vitamin E in milligrams the recipe must have.
my $max_vitamin_e = 100; # double | The maximum amount of Vitamin E in milligrams the recipe can have.
my $min_vitamin_k = 0; # double | The minimum amount of Vitamin K in micrograms the recipe must have.
my $max_vitamin_k = 100; # double | The maximum amount of Vitamin K in micrograms the recipe can have.
my $min_vitamin_b1 = 0; # double | The minimum amount of Vitamin B1 in milligrams the recipe must have.
my $max_vitamin_b1 = 100; # double | The maximum amount of Vitamin B1 in milligrams the recipe can have.
my $min_vitamin_b2 = 0; # double | The minimum amount of Vitamin B2 in milligrams the recipe must have.
my $max_vitamin_b2 = 100; # double | The maximum amount of Vitamin B2 in milligrams the recipe can have.
my $min_vitamin_b5 = 0; # double | The minimum amount of Vitamin B5 in milligrams the recipe must have.
my $max_vitamin_b5 = 100; # double | The maximum amount of Vitamin B5 in milligrams the recipe can have.
my $min_vitamin_b3 = 0; # double | The minimum amount of Vitamin B3 in milligrams the recipe must have.
my $max_vitamin_b3 = 100; # double | The maximum amount of Vitamin B3 in milligrams the recipe can have.
my $min_vitamin_b6 = 0; # double | The minimum amount of Vitamin B6 in milligrams the recipe must have.
my $max_vitamin_b6 = 100; # double | The maximum amount of Vitamin B6 in milligrams the recipe can have.
my $min_vitamin_b12 = 0; # double | The minimum amount of Vitamin B12 in micrograms the recipe must have.
my $max_vitamin_b12 = 100; # double | The maximum amount of Vitamin B12 in micrograms the recipe can have.
my $min_fiber = 0; # double | The minimum amount of fiber in grams the recipe must have.
my $max_fiber = 100; # double | The maximum amount of fiber in grams the recipe can have.
my $min_folate = 0; # double | The minimum amount of folate in micrograms the recipe must have.
my $max_folate = 100; # double | The maximum amount of folate in micrograms the recipe can have.
my $min_folic_acid = 0; # double | The minimum amount of folic acid in micrograms the recipe must have.
my $max_folic_acid = 100; # double | The maximum amount of folic acid in micrograms the recipe can have.
my $min_iodine = 0; # double | The minimum amount of iodine in micrograms the recipe must have.
my $max_iodine = 100; # double | The maximum amount of iodine in micrograms the recipe can have.
my $min_iron = 0; # double | The minimum amount of iron in milligrams the recipe must have.
my $max_iron = 100; # double | The maximum amount of iron in milligrams the recipe can have.
my $min_magnesium = 0; # double | The minimum amount of magnesium in milligrams the recipe must have.
my $max_magnesium = 100; # double | The maximum amount of magnesium in milligrams the recipe can have.
my $min_manganese = 0; # double | The minimum amount of manganese in milligrams the recipe must have.
my $max_manganese = 100; # double | The maximum amount of manganese in milligrams the recipe can have.
my $min_phosphorus = 0; # double | The minimum amount of phosphorus in milligrams the recipe must have.
my $max_phosphorus = 100; # double | The maximum amount of phosphorus in milligrams the recipe can have.
my $min_potassium = 0; # double | The minimum amount of potassium in milligrams the recipe must have.
my $max_potassium = 100; # double | The maximum amount of potassium in milligrams the recipe can have.
my $min_selenium = 0; # double | The minimum amount of selenium in micrograms the recipe must have.
my $max_selenium = 100; # double | The maximum amount of selenium in micrograms the recipe can have.
my $min_sodium = 0; # double | The minimum amount of sodium in milligrams the recipe must have.
my $max_sodium = 100; # double | The maximum amount of sodium in milligrams the recipe can have.
my $min_sugar = 0; # double | The minimum amount of sugar in grams the recipe must have.
my $max_sugar = 100; # double | The maximum amount of sugar in grams the recipe can have.
my $min_zinc = 0; # double | The minimum amount of zinc in milligrams the recipe must have.
my $max_zinc = 100; # double | The maximum amount of zinc in milligrams the recipe can have.
my $offset = 0; # double | The number of results to skip (between 0 and 900).
my $number = 10; # double | The number of expected results (between 1 and 100).
my $random = false; # boolean | If true, every request will give you a random set of recipes within the requested limits.
my $limit_license = true; # boolean | Whether the recipes should have an open license that allows display with proper attribution.

eval { 
    my $result = $api_instance->search_recipes_by_nutrients(min_carbs => $min_carbs, max_carbs => $max_carbs, min_protein => $min_protein, max_protein => $max_protein, min_calories => $min_calories, max_calories => $max_calories, min_fat => $min_fat, max_fat => $max_fat, min_alcohol => $min_alcohol, max_alcohol => $max_alcohol, min_caffeine => $min_caffeine, max_caffeine => $max_caffeine, min_copper => $min_copper, max_copper => $max_copper, min_calcium => $min_calcium, max_calcium => $max_calcium, min_choline => $min_choline, max_choline => $max_choline, min_cholesterol => $min_cholesterol, max_cholesterol => $max_cholesterol, min_fluoride => $min_fluoride, max_fluoride => $max_fluoride, min_saturated_fat => $min_saturated_fat, max_saturated_fat => $max_saturated_fat, min_vitamin_a => $min_vitamin_a, max_vitamin_a => $max_vitamin_a, min_vitamin_c => $min_vitamin_c, max_vitamin_c => $max_vitamin_c, min_vitamin_d => $min_vitamin_d, max_vitamin_d => $max_vitamin_d, min_vitamin_e => $min_vitamin_e, max_vitamin_e => $max_vitamin_e, min_vitamin_k => $min_vitamin_k, max_vitamin_k => $max_vitamin_k, min_vitamin_b1 => $min_vitamin_b1, max_vitamin_b1 => $max_vitamin_b1, min_vitamin_b2 => $min_vitamin_b2, max_vitamin_b2 => $max_vitamin_b2, min_vitamin_b5 => $min_vitamin_b5, max_vitamin_b5 => $max_vitamin_b5, min_vitamin_b3 => $min_vitamin_b3, max_vitamin_b3 => $max_vitamin_b3, min_vitamin_b6 => $min_vitamin_b6, max_vitamin_b6 => $max_vitamin_b6, min_vitamin_b12 => $min_vitamin_b12, max_vitamin_b12 => $max_vitamin_b12, min_fiber => $min_fiber, max_fiber => $max_fiber, min_folate => $min_folate, max_folate => $max_folate, min_folic_acid => $min_folic_acid, max_folic_acid => $max_folic_acid, min_iodine => $min_iodine, max_iodine => $max_iodine, min_iron => $min_iron, max_iron => $max_iron, min_magnesium => $min_magnesium, max_magnesium => $max_magnesium, min_manganese => $min_manganese, max_manganese => $max_manganese, min_phosphorus => $min_phosphorus, max_phosphorus => $max_phosphorus, min_potassium => $min_potassium, max_potassium => $max_potassium, min_selenium => $min_selenium, max_selenium => $max_selenium, min_sodium => $min_sodium, max_sodium => $max_sodium, min_sugar => $min_sugar, max_sugar => $max_sugar, min_zinc => $min_zinc, max_zinc => $max_zinc, offset => $offset, number => $number, random => $random, limit_license => $limit_license);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->search_recipes_by_nutrients: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **min_carbs** | **double**| The minimum amount of carbohydrates in grams the recipe must have. | [optional] 
 **max_carbs** | **double**| The maximum amount of carbohydrates in grams the recipe can have. | [optional] 
 **min_protein** | **double**| The minimum amount of protein in grams the recipe must have. | [optional] 
 **max_protein** | **double**| The maximum amount of protein in grams the recipe can have. | [optional] 
 **min_calories** | **double**| The minimum amount of calories the recipe must have. | [optional] 
 **max_calories** | **double**| The maximum amount of calories the recipe can have. | [optional] 
 **min_fat** | **double**| The minimum amount of fat in grams the recipe must have. | [optional] 
 **max_fat** | **double**| The maximum amount of fat in grams the recipe can have. | [optional] 
 **min_alcohol** | **double**| The minimum amount of alcohol in grams the recipe must have. | [optional] 
 **max_alcohol** | **double**| The maximum amount of alcohol in grams the recipe can have. | [optional] 
 **min_caffeine** | **double**| The minimum amount of caffeine in milligrams the recipe must have. | [optional] 
 **max_caffeine** | **double**| The maximum amount of caffeine in milligrams the recipe can have. | [optional] 
 **min_copper** | **double**| The minimum amount of copper in milligrams the recipe must have. | [optional] 
 **max_copper** | **double**| The maximum amount of copper in milligrams the recipe can have. | [optional] 
 **min_calcium** | **double**| The minimum amount of calcium in milligrams the recipe must have. | [optional] 
 **max_calcium** | **double**| The maximum amount of calcium in milligrams the recipe can have. | [optional] 
 **min_choline** | **double**| The minimum amount of choline in milligrams the recipe must have. | [optional] 
 **max_choline** | **double**| The maximum amount of choline in milligrams the recipe can have. | [optional] 
 **min_cholesterol** | **double**| The minimum amount of cholesterol in milligrams the recipe must have. | [optional] 
 **max_cholesterol** | **double**| The maximum amount of cholesterol in milligrams the recipe can have. | [optional] 
 **min_fluoride** | **double**| The minimum amount of fluoride in milligrams the recipe must have. | [optional] 
 **max_fluoride** | **double**| The maximum amount of fluoride in milligrams the recipe can have. | [optional] 
 **min_saturated_fat** | **double**| The minimum amount of saturated fat in grams the recipe must have. | [optional] 
 **max_saturated_fat** | **double**| The maximum amount of saturated fat in grams the recipe can have. | [optional] 
 **min_vitamin_a** | **double**| The minimum amount of Vitamin A in IU the recipe must have. | [optional] 
 **max_vitamin_a** | **double**| The maximum amount of Vitamin A in IU the recipe can have. | [optional] 
 **min_vitamin_c** | **double**| The minimum amount of Vitamin C in milligrams the recipe must have. | [optional] 
 **max_vitamin_c** | **double**| The maximum amount of Vitamin C in milligrams the recipe can have. | [optional] 
 **min_vitamin_d** | **double**| The minimum amount of Vitamin D in micrograms the recipe must have. | [optional] 
 **max_vitamin_d** | **double**| The maximum amount of Vitamin D in micrograms the recipe can have. | [optional] 
 **min_vitamin_e** | **double**| The minimum amount of Vitamin E in milligrams the recipe must have. | [optional] 
 **max_vitamin_e** | **double**| The maximum amount of Vitamin E in milligrams the recipe can have. | [optional] 
 **min_vitamin_k** | **double**| The minimum amount of Vitamin K in micrograms the recipe must have. | [optional] 
 **max_vitamin_k** | **double**| The maximum amount of Vitamin K in micrograms the recipe can have. | [optional] 
 **min_vitamin_b1** | **double**| The minimum amount of Vitamin B1 in milligrams the recipe must have. | [optional] 
 **max_vitamin_b1** | **double**| The maximum amount of Vitamin B1 in milligrams the recipe can have. | [optional] 
 **min_vitamin_b2** | **double**| The minimum amount of Vitamin B2 in milligrams the recipe must have. | [optional] 
 **max_vitamin_b2** | **double**| The maximum amount of Vitamin B2 in milligrams the recipe can have. | [optional] 
 **min_vitamin_b5** | **double**| The minimum amount of Vitamin B5 in milligrams the recipe must have. | [optional] 
 **max_vitamin_b5** | **double**| The maximum amount of Vitamin B5 in milligrams the recipe can have. | [optional] 
 **min_vitamin_b3** | **double**| The minimum amount of Vitamin B3 in milligrams the recipe must have. | [optional] 
 **max_vitamin_b3** | **double**| The maximum amount of Vitamin B3 in milligrams the recipe can have. | [optional] 
 **min_vitamin_b6** | **double**| The minimum amount of Vitamin B6 in milligrams the recipe must have. | [optional] 
 **max_vitamin_b6** | **double**| The maximum amount of Vitamin B6 in milligrams the recipe can have. | [optional] 
 **min_vitamin_b12** | **double**| The minimum amount of Vitamin B12 in micrograms the recipe must have. | [optional] 
 **max_vitamin_b12** | **double**| The maximum amount of Vitamin B12 in micrograms the recipe can have. | [optional] 
 **min_fiber** | **double**| The minimum amount of fiber in grams the recipe must have. | [optional] 
 **max_fiber** | **double**| The maximum amount of fiber in grams the recipe can have. | [optional] 
 **min_folate** | **double**| The minimum amount of folate in micrograms the recipe must have. | [optional] 
 **max_folate** | **double**| The maximum amount of folate in micrograms the recipe can have. | [optional] 
 **min_folic_acid** | **double**| The minimum amount of folic acid in micrograms the recipe must have. | [optional] 
 **max_folic_acid** | **double**| The maximum amount of folic acid in micrograms the recipe can have. | [optional] 
 **min_iodine** | **double**| The minimum amount of iodine in micrograms the recipe must have. | [optional] 
 **max_iodine** | **double**| The maximum amount of iodine in micrograms the recipe can have. | [optional] 
 **min_iron** | **double**| The minimum amount of iron in milligrams the recipe must have. | [optional] 
 **max_iron** | **double**| The maximum amount of iron in milligrams the recipe can have. | [optional] 
 **min_magnesium** | **double**| The minimum amount of magnesium in milligrams the recipe must have. | [optional] 
 **max_magnesium** | **double**| The maximum amount of magnesium in milligrams the recipe can have. | [optional] 
 **min_manganese** | **double**| The minimum amount of manganese in milligrams the recipe must have. | [optional] 
 **max_manganese** | **double**| The maximum amount of manganese in milligrams the recipe can have. | [optional] 
 **min_phosphorus** | **double**| The minimum amount of phosphorus in milligrams the recipe must have. | [optional] 
 **max_phosphorus** | **double**| The maximum amount of phosphorus in milligrams the recipe can have. | [optional] 
 **min_potassium** | **double**| The minimum amount of potassium in milligrams the recipe must have. | [optional] 
 **max_potassium** | **double**| The maximum amount of potassium in milligrams the recipe can have. | [optional] 
 **min_selenium** | **double**| The minimum amount of selenium in micrograms the recipe must have. | [optional] 
 **max_selenium** | **double**| The maximum amount of selenium in micrograms the recipe can have. | [optional] 
 **min_sodium** | **double**| The minimum amount of sodium in milligrams the recipe must have. | [optional] 
 **max_sodium** | **double**| The maximum amount of sodium in milligrams the recipe can have. | [optional] 
 **min_sugar** | **double**| The minimum amount of sugar in grams the recipe must have. | [optional] 
 **max_sugar** | **double**| The maximum amount of sugar in grams the recipe can have. | [optional] 
 **min_zinc** | **double**| The minimum amount of zinc in milligrams the recipe must have. | [optional] 
 **max_zinc** | **double**| The maximum amount of zinc in milligrams the recipe can have. | [optional] 
 **offset** | **double**| The number of results to skip (between 0 and 900). | [optional] 
 **number** | **double**| The number of expected results (between 1 and 100). | [optional] 
 **random** | **boolean**| If true, every request will give you a random set of recipes within the requested limits. | [optional] 
 **limit_license** | **boolean**| Whether the recipes should have an open license that allows display with proper attribution. | [optional] 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_site_content**
> object search_site_content(query => $query)

Search Site Content

Search spoonacular's site content. You'll be able to find everything that you could also find using the search suggestions on spoonacular.com. This is a suggest API so you can send partial strings as queries.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $query = past; # string | The query to search for. You can also use partial queries such as \"spagh\" to already find spaghetti recipes, articles, grocery products, and other content.

eval { 
    my $result = $api_instance->search_site_content(query => $query);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->search_site_content: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The query to search for. You can also use partial queries such as \&quot;spagh\&quot; to already find spaghetti recipes, articles, grocery products, and other content. | 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **summarize_recipe**
> object summarize_recipe(id => $id)

Summarize Recipe

Automatically generate a short description that summarizes key information about the recipe.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $id = 4632; # double | The recipe id.

eval { 
    my $result = $api_instance->summarize_recipe(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->summarize_recipe: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **double**| The recipe id. | 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **talk_to_chatbot**
> object talk_to_chatbot(text => $text, context_id => $context_id)

Talk to Chatbot

This endpoint can be used to have a conversation about food with the spoonacular chatbot. Use the \"Get Conversation Suggests\" endpoint to show your user what he or she can say.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $text = donut recipes; # string | The request / question / answer from the user to the chatbot.
my $context_id = 342938; # string | An arbitrary globally unique id for your conversation. The conversation can contain states so you should pass your context id if you want the bot to be able to remember the conversation.

eval { 
    my $result = $api_instance->talk_to_chatbot(text => $text, context_id => $context_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->talk_to_chatbot: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **string**| The request / question / answer from the user to the chatbot. | 
 **context_id** | **string**| An arbitrary globally unique id for your conversation. The conversation can contain states so you should pass your context id if you want the bot to be able to remember the conversation. | [optional] 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualize_equipment**
> string visualize_equipment(instructions => $instructions, view => $view, default_css => $default_css, show_backlink => $show_backlink)

Visualize Equipment

Visualize the equipment used to make a recipe. You can play around with that endpoint!

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $instructions = "instructions_example"; # string | The recipe's instructions.
my $view = "view_example"; # string | How to visualize the equipment, either \\\"grid\\\" or \\\"list\\\".
my $default_css = null; # boolean | Whether the default CSS should be added to the response.
my $show_backlink = null; # boolean | Whether to show a backlink to spoonacular. If set false, this call counts against your quota.

eval { 
    my $result = $api_instance->visualize_equipment(instructions => $instructions, view => $view, default_css => $default_css, show_backlink => $show_backlink);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->visualize_equipment: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instructions** | **string**| The recipe&#39;s instructions. | 
 **view** | **string**| How to visualize the equipment, either \\\&quot;grid\\\&quot; or \\\&quot;list\\\&quot;. | [optional] 
 **default_css** | **boolean**| Whether the default CSS should be added to the response. | [optional] 
 **show_backlink** | **boolean**| Whether to show a backlink to spoonacular. If set false, this call counts against your quota. | [optional] 

### Return type

**string**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualize_ingredients**
> string visualize_ingredients(ingredient_list => $ingredient_list, servings => $servings, measure => $measure, view => $view, default_css => $default_css, show_backlink => $show_backlink)

Visualize Ingredients

Visualize ingredients of a recipe. You can play around with that endpoint!

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $ingredient_list = "ingredient_list_example"; # string | The ingredient list of the recipe, one ingredient per line.
my $servings = 3.4; # double | The number of servings.
my $measure = "measure_example"; # string | The original system of measurement, either \\\"metric\\\" or \\\"us\\\".
my $view = "view_example"; # string | How to visualize the ingredients, either \\\"grid\\\" or \\\"list\\\".
my $default_css = null; # boolean | Whether the default CSS should be added to the response.
my $show_backlink = null; # boolean | Whether to show a backlink to spoonacular. If set false, this call counts against your quota.

eval { 
    my $result = $api_instance->visualize_ingredients(ingredient_list => $ingredient_list, servings => $servings, measure => $measure, view => $view, default_css => $default_css, show_backlink => $show_backlink);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->visualize_ingredients: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredient_list** | **string**| The ingredient list of the recipe, one ingredient per line. | 
 **servings** | **double**| The number of servings. | 
 **measure** | **string**| The original system of measurement, either \\\&quot;metric\\\&quot; or \\\&quot;us\\\&quot;. | [optional] 
 **view** | **string**| How to visualize the ingredients, either \\\&quot;grid\\\&quot; or \\\&quot;list\\\&quot;. | [optional] 
 **default_css** | **boolean**| Whether the default CSS should be added to the response. | [optional] 
 **show_backlink** | **boolean**| Whether to show a backlink to spoonacular. If set false, this call counts against your quota. | [optional] 

### Return type

**string**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualize_menu_item_nutrition_by_id**
> string visualize_menu_item_nutrition_by_id(id => $id, default_css => $default_css)

Visualize Menu Item Nutrition by ID

Visualize a menu item's nutritional information as HTML including CSS.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $id = 1003464; # double | The menu item id.
my $default_css = true; # boolean | Whether the default CSS should be added to the response.

eval { 
    my $result = $api_instance->visualize_menu_item_nutrition_by_id(id => $id, default_css => $default_css);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->visualize_menu_item_nutrition_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **double**| The menu item id. | 
 **default_css** | **boolean**| Whether the default CSS should be added to the response. | [optional] 

### Return type

**string**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualize_price_breakdown**
> string visualize_price_breakdown(ingredient_list => $ingredient_list, servings => $servings, mode => $mode, default_css => $default_css, show_backlink => $show_backlink)

Visualize Price Breakdown

Visualize the price breakdown of a recipe. You can play around with that endpoint!

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $ingredient_list = "ingredient_list_example"; # string | The ingredient list of the recipe, one ingredient per line.
my $servings = 3.4; # double | The number of servings.
my $mode = 3.4; # double | The mode in which the widget should be delivered. 1 = separate views (compact), 2 = all in one view (full).
my $default_css = null; # boolean | Whether the default CSS should be added to the response.
my $show_backlink = null; # boolean | Whether to show a backlink to spoonacular. If set false, this call counts against your quota.

eval { 
    my $result = $api_instance->visualize_price_breakdown(ingredient_list => $ingredient_list, servings => $servings, mode => $mode, default_css => $default_css, show_backlink => $show_backlink);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->visualize_price_breakdown: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredient_list** | **string**| The ingredient list of the recipe, one ingredient per line. | 
 **servings** | **double**| The number of servings. | 
 **mode** | **double**| The mode in which the widget should be delivered. 1 &#x3D; separate views (compact), 2 &#x3D; all in one view (full). | [optional] 
 **default_css** | **boolean**| Whether the default CSS should be added to the response. | [optional] 
 **show_backlink** | **boolean**| Whether to show a backlink to spoonacular. If set false, this call counts against your quota. | [optional] 

### Return type

**string**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualize_product_nutrition_by_id**
> string visualize_product_nutrition_by_id(id => $id, default_css => $default_css)

Visualize Product Nutrition by ID

Visualize a product's nutritional information as HTML including CSS.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $id = 7657; # double | The id of the product.
my $default_css = true; # boolean | Whether the default CSS should be added to the response.

eval { 
    my $result = $api_instance->visualize_product_nutrition_by_id(id => $id, default_css => $default_css);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->visualize_product_nutrition_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **double**| The id of the product. | 
 **default_css** | **boolean**| Whether the default CSS should be added to the response. | [optional] 

### Return type

**string**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualize_recipe_equipment_by_id**
> string visualize_recipe_equipment_by_id(id => $id, default_css => $default_css)

Visualize Recipe Equipment by ID

Visualize a recipe's equipment list.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $id = 44860; # double | The recipe id.
my $default_css = true; # boolean | Whether the default CSS should be added to the response.

eval { 
    my $result = $api_instance->visualize_recipe_equipment_by_id(id => $id, default_css => $default_css);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->visualize_recipe_equipment_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **double**| The recipe id. | 
 **default_css** | **boolean**| Whether the default CSS should be added to the response. | [optional] 

### Return type

**string**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualize_recipe_ingredients_by_id**
> string visualize_recipe_ingredients_by_id(id => $id, default_css => $default_css)

Visualize Recipe Ingredients by ID

Visualize a recipe's ingredient list.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $id = 1082038; # double | The recipe id.
my $default_css = true; # boolean | Whether the default CSS should be added to the response.

eval { 
    my $result = $api_instance->visualize_recipe_ingredients_by_id(id => $id, default_css => $default_css);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->visualize_recipe_ingredients_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **double**| The recipe id. | 
 **default_css** | **boolean**| Whether the default CSS should be added to the response. | [optional] 

### Return type

**string**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualize_recipe_nutrition**
> string visualize_recipe_nutrition(ingredient_list => $ingredient_list, servings => $servings, default_css => $default_css, show_backlink => $show_backlink)

Visualize Recipe Nutrition

Visualize a recipe's nutritional information as HTML including CSS. You can play around with that endpoint!

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $ingredient_list = "ingredient_list_example"; # string | The ingredient list of the recipe, one ingredient per line.
my $servings = 3.4; # double | The number of servings.
my $default_css = null; # boolean | Whether the default CSS should be added to the response.
my $show_backlink = null; # boolean | Whether to show a backlink to spoonacular. If set false, this call counts against your quota.

eval { 
    my $result = $api_instance->visualize_recipe_nutrition(ingredient_list => $ingredient_list, servings => $servings, default_css => $default_css, show_backlink => $show_backlink);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->visualize_recipe_nutrition: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredient_list** | **string**| The ingredient list of the recipe, one ingredient per line. | 
 **servings** | **double**| The number of servings. | 
 **default_css** | **boolean**| Whether the default CSS should be added to the response. | [optional] 
 **show_backlink** | **boolean**| Whether to show a backlink to spoonacular. If set false, this call counts against your quota. | [optional] 

### Return type

**string**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualize_recipe_nutrition_by_id**
> string visualize_recipe_nutrition_by_id(id => $id, default_css => $default_css)

Visualize Recipe Nutrition by ID

Visualize a recipe's nutritional information as HTML including CSS.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $id = 1082038; # double | The recipe id.
my $default_css = true; # boolean | Whether the default CSS should be added to the response.

eval { 
    my $result = $api_instance->visualize_recipe_nutrition_by_id(id => $id, default_css => $default_css);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->visualize_recipe_nutrition_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **double**| The recipe id. | 
 **default_css** | **boolean**| Whether the default CSS should be added to the response. | [optional] 

### Return type

**string**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualize_recipe_price_breakdown_by_id**
> string visualize_recipe_price_breakdown_by_id(id => $id, default_css => $default_css)

Visualize Recipe Price Breakdown by ID

Visualize a recipe's price breakdown.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $id = 1082038; # double | The recipe id.
my $default_css = true; # boolean | Whether the default CSS should be added to the response.

eval { 
    my $result = $api_instance->visualize_recipe_price_breakdown_by_id(id => $id, default_css => $default_css);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->visualize_recipe_price_breakdown_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **double**| The recipe id. | 
 **default_css** | **boolean**| Whether the default CSS should be added to the response. | [optional] 

### Return type

**string**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualize_recipe_taste**
> string visualize_recipe_taste(ingredient_list => $ingredient_list)

Visualize Recipe Taste

Visualize a recipe's taste information as HTML including CSS. You can play around with that endpoint!

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $ingredient_list = "ingredient_list_example"; # string | The ingredient list of the recipe, one ingredient per line.

eval { 
    my $result = $api_instance->visualize_recipe_taste(ingredient_list => $ingredient_list);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->visualize_recipe_taste: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredient_list** | **string**| The ingredient list of the recipe, one ingredient per line. | 

### Return type

**string**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualize_recipe_taste_by_id**
> string visualize_recipe_taste_by_id(id => $id)

Visualize Recipe Taste by ID

Get a recipe's taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $id = 69095; # double | The recipe id.

eval { 
    my $result = $api_instance->visualize_recipe_taste_by_id(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->visualize_recipe_taste_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **double**| The recipe id. | 

### Return type

**string**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

