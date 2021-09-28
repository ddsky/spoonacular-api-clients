# WWW::OpenAPIClient::RecipesApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::RecipesApi;
```

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
[**ingredients_by_id_image**](RecipesApi.md#ingredients_by_id_image) | **GET** /recipes/{id}/ingredientWidget.png | Ingredients by ID Image
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


# **analyze_a_recipe_search_query**
> InlineResponse20018 analyze_a_recipe_search_query(q => $q)

Analyze a Recipe Search Query

Parse a recipe search query to find out its intention.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RecipesApi;
my $api_instance = WWW::OpenAPIClient::RecipesApi->new(

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
    warn "Exception when calling RecipesApi->analyze_a_recipe_search_query: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **string**| The recipe search query. | 

### Return type

[**InlineResponse20018**](InlineResponse20018.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **analyze_recipe_instructions**
> InlineResponse20016 analyze_recipe_instructions(content_type => $content_type)

Analyze Recipe Instructions

This endpoint allows you to break down instructions into atomic steps. Furthermore, each step will contain the ingredients and equipment required. Additionally, all ingredients and equipment from the recipe's instructions will be extracted independently of the step they're used in.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RecipesApi;
my $api_instance = WWW::OpenAPIClient::RecipesApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $content_type = application/json; # string | The content type.

eval { 
    my $result = $api_instance->analyze_recipe_instructions(content_type => $content_type);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RecipesApi->analyze_recipe_instructions: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content_type** | **string**| The content type. | [optional] 

### Return type

[**InlineResponse20016**](InlineResponse20016.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **autocomplete_recipe_search**
> ARRAY[InlineResponse2007] autocomplete_recipe_search(query => $query, number => $number)

Autocomplete Recipe Search

Autocomplete a partial input to suggest possible recipe names.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RecipesApi;
my $api_instance = WWW::OpenAPIClient::RecipesApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $query = burger; # string | The (natural language) search query.
my $number = 10; # int | The maximum number of items to return (between 1 and 100). Defaults to 10.

eval { 
    my $result = $api_instance->autocomplete_recipe_search(query => $query, number => $number);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RecipesApi->autocomplete_recipe_search: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The (natural language) search query. | [optional] 
 **number** | **int**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]

### Return type

[**ARRAY[InlineResponse2007]**](InlineResponse2007.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **classify_cuisine**
> InlineResponse20017 classify_cuisine(content_type => $content_type)

Classify Cuisine

Classify the recipe's cuisine.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RecipesApi;
my $api_instance = WWW::OpenAPIClient::RecipesApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $content_type = application/json; # string | The content type.

eval { 
    my $result = $api_instance->classify_cuisine(content_type => $content_type);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RecipesApi->classify_cuisine: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content_type** | **string**| The content type. | [optional] 

### Return type

[**InlineResponse20017**](InlineResponse20017.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **compute_glycemic_load**
> InlineResponse20023 compute_glycemic_load(inline_object => $inline_object, language => $language)

Compute Glycemic Load

Retrieve the glycemic index for a list of ingredients and compute the individual and total glycemic load.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RecipesApi;
my $api_instance = WWW::OpenAPIClient::RecipesApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $inline_object = WWW::OpenAPIClient::Object::InlineObject->new(); # InlineObject | 
my $language = en; # string | The language of the input. Either 'en' or 'de'.

eval { 
    my $result = $api_instance->compute_glycemic_load(inline_object => $inline_object, language => $language);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RecipesApi->compute_glycemic_load: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inline_object** | [**InlineObject**](InlineObject.md)|  | 
 **language** | **string**| The language of the input. Either &#39;en&#39; or &#39;de&#39;. | [optional] 

### Return type

[**InlineResponse20023**](InlineResponse20023.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **convert_amounts**
> InlineResponse20019 convert_amounts(ingredient_name => $ingredient_name, source_amount => $source_amount, source_unit => $source_unit, target_unit => $target_unit)

Convert Amounts

Convert amounts like \"2 cups of flour to grams\".

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RecipesApi;
my $api_instance = WWW::OpenAPIClient::RecipesApi->new(

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
    warn "Exception when calling RecipesApi->convert_amounts: $@\n";
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

[**InlineResponse20019**](InlineResponse20019.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_recipe_card**
> InlineResponse20015 create_recipe_card(content_type => $content_type)

Create Recipe Card

Generate a recipe card for a recipe.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RecipesApi;
my $api_instance = WWW::OpenAPIClient::RecipesApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $content_type = application/json; # string | The content type.

eval { 
    my $result = $api_instance->create_recipe_card(content_type => $content_type);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RecipesApi->create_recipe_card: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content_type** | **string**| The content type. | [optional] 

### Return type

[**InlineResponse20015**](InlineResponse20015.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **equipment_by_id_image**
> object equipment_by_id_image(id => $id)

Equipment by ID Image

Visualize a recipe's equipment list as an image.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RecipesApi;
my $api_instance = WWW::OpenAPIClient::RecipesApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $id = 44860; # double | The recipe id.

eval { 
    my $result = $api_instance->equipment_by_id_image(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RecipesApi->equipment_by_id_image: $@\n";
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
 - **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **extract_recipe_from_website**
> InlineResponse2003 extract_recipe_from_website(url => $url, force_extraction => $force_extraction, analyze => $analyze, include_nutrition => $include_nutrition, include_taste => $include_taste)

Extract Recipe from Website

This endpoint lets you extract recipe data such as title, ingredients, and instructions from any properly formatted Website.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RecipesApi;
my $api_instance = WWW::OpenAPIClient::RecipesApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $url = https://foodista.com/recipe/ZHK4KPB6/chocolate-crinkle-cookies; # string | The URL of the recipe page.
my $force_extraction = true; # boolean | If true, the extraction will be triggered whether we already know the recipe or not. Use this only if information is missing as this operation is slower.
my $analyze = false; # boolean | If true, the recipe will be analyzed and classified resolving in more data such as cuisines, dish types, and more.
my $include_nutrition = false; # boolean | Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings.
my $include_taste = false; # boolean | Whether taste data should be added to correctly parsed ingredients.

eval { 
    my $result = $api_instance->extract_recipe_from_website(url => $url, force_extraction => $force_extraction, analyze => $analyze, include_nutrition => $include_nutrition, include_taste => $include_taste);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RecipesApi->extract_recipe_from_website: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **string**| The URL of the recipe page. | 
 **force_extraction** | **boolean**| If true, the extraction will be triggered whether we already know the recipe or not. Use this only if information is missing as this operation is slower. | [optional] 
 **analyze** | **boolean**| If true, the recipe will be analyzed and classified resolving in more data such as cuisines, dish types, and more. | [optional] 
 **include_nutrition** | **boolean**| Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. | [optional] [default to false]
 **include_taste** | **boolean**| Whether taste data should be added to correctly parsed ingredients. | [optional] [default to false]

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_analyzed_recipe_instructions**
> InlineResponse20013 get_analyzed_recipe_instructions(id => $id, step_breakdown => $step_breakdown)

Get Analyzed Recipe Instructions

Get an analyzed breakdown of a recipe's instructions. Each step is enriched with the ingredients and equipment required.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RecipesApi;
my $api_instance = WWW::OpenAPIClient::RecipesApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $id = 1; # int | The item's id.
my $step_breakdown = true; # boolean | Whether to break down the recipe steps even more.

eval { 
    my $result = $api_instance->get_analyzed_recipe_instructions(id => $id, step_breakdown => $step_breakdown);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RecipesApi->get_analyzed_recipe_instructions: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The item&#39;s id. | 
 **step_breakdown** | **boolean**| Whether to break down the recipe steps even more. | [optional] 

### Return type

[**InlineResponse20013**](InlineResponse20013.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_random_recipes**
> InlineResponse2006 get_random_recipes(limit_license => $limit_license, tags => $tags, number => $number)

Get Random Recipes

Find random (popular) recipes. If you need to filter recipes by diet, nutrition etc. you might want to consider using the complex recipe search endpoint and set the sort request parameter to random.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RecipesApi;
my $api_instance = WWW::OpenAPIClient::RecipesApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $limit_license = true; # boolean | Whether the recipes should have an open license that allows display with proper attribution.
my $tags = "tags_example"; # string | The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have.
my $number = 10; # int | The maximum number of items to return (between 1 and 100). Defaults to 10.

eval { 
    my $result = $api_instance->get_random_recipes(limit_license => $limit_license, tags => $tags, number => $number);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RecipesApi->get_random_recipes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit_license** | **boolean**| Whether the recipes should have an open license that allows display with proper attribution. | [optional] [default to true]
 **tags** | **string**| The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have. | [optional] 
 **number** | **int**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_recipe_equipment_by_id**
> InlineResponse2009 get_recipe_equipment_by_id(id => $id)

Equipment by ID

Get a recipe's equipment list.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RecipesApi;
my $api_instance = WWW::OpenAPIClient::RecipesApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $id = 1; # int | The item's id.

eval { 
    my $result = $api_instance->get_recipe_equipment_by_id(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RecipesApi->get_recipe_equipment_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The item&#39;s id. | 

### Return type

[**InlineResponse2009**](InlineResponse2009.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_recipe_information**
> InlineResponse2003 get_recipe_information(id => $id, include_nutrition => $include_nutrition)

Get Recipe Information

Use a recipe id to get full information about a recipe, such as ingredients, nutrition, diet and allergen information, etc.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RecipesApi;
my $api_instance = WWW::OpenAPIClient::RecipesApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $id = 1; # int | The item's id.
my $include_nutrition = false; # boolean | Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings.

eval { 
    my $result = $api_instance->get_recipe_information(id => $id, include_nutrition => $include_nutrition);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RecipesApi->get_recipe_information: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The item&#39;s id. | 
 **include_nutrition** | **boolean**| Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. | [optional] [default to false]

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_recipe_information_bulk**
> ARRAY[InlineResponse2004] get_recipe_information_bulk(ids => $ids, include_nutrition => $include_nutrition)

Get Recipe Information Bulk

Get information about multiple recipes at once. This is equivalent to calling the Get Recipe Information endpoint multiple times, but faster.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RecipesApi;
my $api_instance = WWW::OpenAPIClient::RecipesApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $ids = 715538,716429; # string | A comma-separated list of recipe ids.
my $include_nutrition = false; # boolean | Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings.

eval { 
    my $result = $api_instance->get_recipe_information_bulk(ids => $ids, include_nutrition => $include_nutrition);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RecipesApi->get_recipe_information_bulk: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | **string**| A comma-separated list of recipe ids. | 
 **include_nutrition** | **boolean**| Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. | [optional] [default to false]

### Return type

[**ARRAY[InlineResponse2004]**](InlineResponse2004.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_recipe_ingredients_by_id**
> InlineResponse20011 get_recipe_ingredients_by_id(id => $id)

Ingredients by ID

Get a recipe's ingredient list.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RecipesApi;
my $api_instance = WWW::OpenAPIClient::RecipesApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $id = 1; # int | The item's id.

eval { 
    my $result = $api_instance->get_recipe_ingredients_by_id(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RecipesApi->get_recipe_ingredients_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The item&#39;s id. | 

### Return type

[**InlineResponse20011**](InlineResponse20011.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_recipe_nutrition_widget_by_id**
> InlineResponse20012 get_recipe_nutrition_widget_by_id(id => $id)

Nutrition by ID

Get a recipe's nutrition data.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RecipesApi;
my $api_instance = WWW::OpenAPIClient::RecipesApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $id = 1; # int | The item's id.

eval { 
    my $result = $api_instance->get_recipe_nutrition_widget_by_id(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RecipesApi->get_recipe_nutrition_widget_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The item&#39;s id. | 

### Return type

[**InlineResponse20012**](InlineResponse20012.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_recipe_price_breakdown_by_id**
> InlineResponse20010 get_recipe_price_breakdown_by_id(id => $id)

Price Breakdown by ID

Get a recipe's price breakdown data.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RecipesApi;
my $api_instance = WWW::OpenAPIClient::RecipesApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $id = 1; # int | The item's id.

eval { 
    my $result = $api_instance->get_recipe_price_breakdown_by_id(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RecipesApi->get_recipe_price_breakdown_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The item&#39;s id. | 

### Return type

[**InlineResponse20010**](InlineResponse20010.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_recipe_taste_by_id**
> InlineResponse2008 get_recipe_taste_by_id(id => $id, normalize => $normalize)

Taste by ID

Get a recipe's taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RecipesApi;
my $api_instance = WWW::OpenAPIClient::RecipesApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $id = 1; # int | The item's id.
my $normalize = true; # boolean | Normalize to the strongest taste.

eval { 
    my $result = $api_instance->get_recipe_taste_by_id(id => $id, normalize => $normalize);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RecipesApi->get_recipe_taste_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The item&#39;s id. | 
 **normalize** | **boolean**| Normalize to the strongest taste. | [optional] [default to true]

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_similar_recipes**
> ARRAY[InlineResponse2005] get_similar_recipes(id => $id, number => $number, limit_license => $limit_license)

Get Similar Recipes

Find recipes which are similar to the given one.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RecipesApi;
my $api_instance = WWW::OpenAPIClient::RecipesApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $id = 1; # int | The item's id.
my $number = 10; # int | The maximum number of items to return (between 1 and 100). Defaults to 10.
my $limit_license = true; # boolean | Whether the recipes should have an open license that allows display with proper attribution.

eval { 
    my $result = $api_instance->get_similar_recipes(id => $id, number => $number, limit_license => $limit_license);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RecipesApi->get_similar_recipes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The item&#39;s id. | 
 **number** | **int**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]
 **limit_license** | **boolean**| Whether the recipes should have an open license that allows display with proper attribution. | [optional] [default to true]

### Return type

[**ARRAY[InlineResponse2005]**](InlineResponse2005.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **guess_nutrition_by_dish_name**
> InlineResponse20021 guess_nutrition_by_dish_name(title => $title)

Guess Nutrition by Dish Name

Estimate the macronutrients of a dish based on its title.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RecipesApi;
my $api_instance = WWW::OpenAPIClient::RecipesApi->new(

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
    warn "Exception when calling RecipesApi->guess_nutrition_by_dish_name: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **string**| The title of the dish. | 

### Return type

[**InlineResponse20021**](InlineResponse20021.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ingredients_by_id_image**
> object ingredients_by_id_image(id => $id, measure => $measure)

Ingredients by ID Image

Visualize a recipe's ingredient list.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RecipesApi;
my $api_instance = WWW::OpenAPIClient::RecipesApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $id = 1082038; # double | The recipe id.
my $measure = metric; # string | Whether the the measures should be 'us' or 'metric'.

eval { 
    my $result = $api_instance->ingredients_by_id_image(id => $id, measure => $measure);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RecipesApi->ingredients_by_id_image: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **double**| The recipe id. | 
 **measure** | **string**| Whether the the measures should be &#39;us&#39; or &#39;metric&#39;. | [optional] 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **parse_ingredients**
> ARRAY[InlineResponse20020] parse_ingredients(content_type => $content_type, language => $language)

Parse Ingredients

Extract an ingredient from plain text.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RecipesApi;
my $api_instance = WWW::OpenAPIClient::RecipesApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $content_type = application/json; # string | The content type.
my $language = en; # string | The language of the input. Either 'en' or 'de'.

eval { 
    my $result = $api_instance->parse_ingredients(content_type => $content_type, language => $language);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RecipesApi->parse_ingredients: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content_type** | **string**| The content type. | [optional] 
 **language** | **string**| The language of the input. Either &#39;en&#39; or &#39;de&#39;. | [optional] 

### Return type

[**ARRAY[InlineResponse20020]**](InlineResponse20020.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **price_breakdown_by_id_image**
> object price_breakdown_by_id_image(id => $id)

Price Breakdown by ID Image

Visualize a recipe's price breakdown.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RecipesApi;
my $api_instance = WWW::OpenAPIClient::RecipesApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $id = 1082038; # double | The recipe id.

eval { 
    my $result = $api_instance->price_breakdown_by_id_image(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RecipesApi->price_breakdown_by_id_image: $@\n";
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
 - **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **quick_answer**
> InlineResponse20049 quick_answer(q => $q)

Quick Answer

Answer a nutrition related natural language question.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RecipesApi;
my $api_instance = WWW::OpenAPIClient::RecipesApi->new(

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
    warn "Exception when calling RecipesApi->quick_answer: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **string**| The nutrition related question. | 

### Return type

[**InlineResponse20049**](InlineResponse20049.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recipe_nutrition_by_id_image**
> object recipe_nutrition_by_id_image(id => $id)

Recipe Nutrition by ID Image

Visualize a recipe's nutritional information as an image.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RecipesApi;
my $api_instance = WWW::OpenAPIClient::RecipesApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $id = 1082038; # double | The recipe id.

eval { 
    my $result = $api_instance->recipe_nutrition_by_id_image(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RecipesApi->recipe_nutrition_by_id_image: $@\n";
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
 - **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recipe_nutrition_label_image**
> object recipe_nutrition_label_image(id => $id, show_optional_nutrients => $show_optional_nutrients, show_zero_values => $show_zero_values, show_ingredients => $show_ingredients)

Recipe Nutrition Label Image

Get a recipe's nutrition label as an image.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RecipesApi;
my $api_instance = WWW::OpenAPIClient::RecipesApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $id = 641166; # double | The recipe id.
my $show_optional_nutrients = false; # boolean | Whether to show optional nutrients.
my $show_zero_values = false; # boolean | Whether to show zero values.
my $show_ingredients = false; # boolean | Whether to show a list of ingredients.

eval { 
    my $result = $api_instance->recipe_nutrition_label_image(id => $id, show_optional_nutrients => $show_optional_nutrients, show_zero_values => $show_zero_values, show_ingredients => $show_ingredients);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RecipesApi->recipe_nutrition_label_image: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **double**| The recipe id. | 
 **show_optional_nutrients** | **boolean**| Whether to show optional nutrients. | [optional] 
 **show_zero_values** | **boolean**| Whether to show zero values. | [optional] 
 **show_ingredients** | **boolean**| Whether to show a list of ingredients. | [optional] 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recipe_nutrition_label_widget**
> string recipe_nutrition_label_widget(id => $id, default_css => $default_css, show_optional_nutrients => $show_optional_nutrients, show_zero_values => $show_zero_values, show_ingredients => $show_ingredients)

Recipe Nutrition Label Widget

Get a recipe's nutrition label as an HTML widget.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RecipesApi;
my $api_instance = WWW::OpenAPIClient::RecipesApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $id = 641166; # double | The recipe id.
my $default_css = false; # boolean | Whether the default CSS should be added to the response.
my $show_optional_nutrients = false; # boolean | Whether to show optional nutrients.
my $show_zero_values = false; # boolean | Whether to show zero values.
my $show_ingredients = false; # boolean | Whether to show a list of ingredients.

eval { 
    my $result = $api_instance->recipe_nutrition_label_widget(id => $id, default_css => $default_css, show_optional_nutrients => $show_optional_nutrients, show_zero_values => $show_zero_values, show_ingredients => $show_ingredients);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RecipesApi->recipe_nutrition_label_widget: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **double**| The recipe id. | 
 **default_css** | **boolean**| Whether the default CSS should be added to the response. | [optional] [default to true]
 **show_optional_nutrients** | **boolean**| Whether to show optional nutrients. | [optional] 
 **show_zero_values** | **boolean**| Whether to show zero values. | [optional] 
 **show_ingredients** | **boolean**| Whether to show a list of ingredients. | [optional] 

### Return type

**string**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recipe_taste_by_id_image**
> object recipe_taste_by_id_image(id => $id, normalize => $normalize, rgb => $rgb)

Recipe Taste by ID Image

Get a recipe's taste as an image. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RecipesApi;
my $api_instance = WWW::OpenAPIClient::RecipesApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $id = 69095; # double | The recipe id.
my $normalize = false; # boolean | Normalize to the strongest taste.
my $rgb = 75,192,192; # string | Red, green, blue values for the chart color.

eval { 
    my $result = $api_instance->recipe_taste_by_id_image(id => $id, normalize => $normalize, rgb => $rgb);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RecipesApi->recipe_taste_by_id_image: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **double**| The recipe id. | 
 **normalize** | **boolean**| Normalize to the strongest taste. | [optional] 
 **rgb** | **string**| Red, green, blue values for the chart color. | [optional] 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_recipes**
> InlineResponse200 search_recipes(query => $query, cuisine => $cuisine, exclude_cuisine => $exclude_cuisine, diet => $diet, intolerances => $intolerances, equipment => $equipment, include_ingredients => $include_ingredients, exclude_ingredients => $exclude_ingredients, type => $type, instructions_required => $instructions_required, fill_ingredients => $fill_ingredients, add_recipe_information => $add_recipe_information, add_recipe_nutrition => $add_recipe_nutrition, author => $author, tags => $tags, recipe_box_id => $recipe_box_id, title_match => $title_match, max_ready_time => $max_ready_time, ignore_pantry => $ignore_pantry, sort => $sort, sort_direction => $sort_direction, min_carbs => $min_carbs, max_carbs => $max_carbs, min_protein => $min_protein, max_protein => $max_protein, min_calories => $min_calories, max_calories => $max_calories, min_fat => $min_fat, max_fat => $max_fat, min_alcohol => $min_alcohol, max_alcohol => $max_alcohol, min_caffeine => $min_caffeine, max_caffeine => $max_caffeine, min_copper => $min_copper, max_copper => $max_copper, min_calcium => $min_calcium, max_calcium => $max_calcium, min_choline => $min_choline, max_choline => $max_choline, min_cholesterol => $min_cholesterol, max_cholesterol => $max_cholesterol, min_fluoride => $min_fluoride, max_fluoride => $max_fluoride, min_saturated_fat => $min_saturated_fat, max_saturated_fat => $max_saturated_fat, min_vitamin_a => $min_vitamin_a, max_vitamin_a => $max_vitamin_a, min_vitamin_c => $min_vitamin_c, max_vitamin_c => $max_vitamin_c, min_vitamin_d => $min_vitamin_d, max_vitamin_d => $max_vitamin_d, min_vitamin_e => $min_vitamin_e, max_vitamin_e => $max_vitamin_e, min_vitamin_k => $min_vitamin_k, max_vitamin_k => $max_vitamin_k, min_vitamin_b1 => $min_vitamin_b1, max_vitamin_b1 => $max_vitamin_b1, min_vitamin_b2 => $min_vitamin_b2, max_vitamin_b2 => $max_vitamin_b2, min_vitamin_b5 => $min_vitamin_b5, max_vitamin_b5 => $max_vitamin_b5, min_vitamin_b3 => $min_vitamin_b3, max_vitamin_b3 => $max_vitamin_b3, min_vitamin_b6 => $min_vitamin_b6, max_vitamin_b6 => $max_vitamin_b6, min_vitamin_b12 => $min_vitamin_b12, max_vitamin_b12 => $max_vitamin_b12, min_fiber => $min_fiber, max_fiber => $max_fiber, min_folate => $min_folate, max_folate => $max_folate, min_folic_acid => $min_folic_acid, max_folic_acid => $max_folic_acid, min_iodine => $min_iodine, max_iodine => $max_iodine, min_iron => $min_iron, max_iron => $max_iron, min_magnesium => $min_magnesium, max_magnesium => $max_magnesium, min_manganese => $min_manganese, max_manganese => $max_manganese, min_phosphorus => $min_phosphorus, max_phosphorus => $max_phosphorus, min_potassium => $min_potassium, max_potassium => $max_potassium, min_selenium => $min_selenium, max_selenium => $max_selenium, min_sodium => $min_sodium, max_sodium => $max_sodium, min_sugar => $min_sugar, max_sugar => $max_sugar, min_zinc => $min_zinc, max_zinc => $max_zinc, offset => $offset, number => $number, limit_license => $limit_license)

Search Recipes

Search through hundreds of thousands of recipes using advanced filtering and ranking. NOTE: This method combines searching by query, by ingredients, and by nutrients into one endpoint.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RecipesApi;
my $api_instance = WWW::OpenAPIClient::RecipesApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $query = burger; # string | The (natural language) search query.
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
my $tags = "tags_example"; # string | The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have.
my $recipe_box_id = 2468; # double | The id of the recipe box to which the search should be limited to.
my $title_match = Crock Pot; # string | Enter text that must be found in the title of the recipes.
my $max_ready_time = 20; # double | The maximum time in minutes it should take to prepare and cook the recipe.
my $ignore_pantry = false; # boolean | Whether to ignore typical pantry items, such as water, salt, flour, etc.
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
my $offset = 56; # int | The number of results to skip (between 0 and 900).
my $number = 10; # int | The maximum number of items to return (between 1 and 100). Defaults to 10.
my $limit_license = true; # boolean | Whether the recipes should have an open license that allows display with proper attribution.

eval { 
    my $result = $api_instance->search_recipes(query => $query, cuisine => $cuisine, exclude_cuisine => $exclude_cuisine, diet => $diet, intolerances => $intolerances, equipment => $equipment, include_ingredients => $include_ingredients, exclude_ingredients => $exclude_ingredients, type => $type, instructions_required => $instructions_required, fill_ingredients => $fill_ingredients, add_recipe_information => $add_recipe_information, add_recipe_nutrition => $add_recipe_nutrition, author => $author, tags => $tags, recipe_box_id => $recipe_box_id, title_match => $title_match, max_ready_time => $max_ready_time, ignore_pantry => $ignore_pantry, sort => $sort, sort_direction => $sort_direction, min_carbs => $min_carbs, max_carbs => $max_carbs, min_protein => $min_protein, max_protein => $max_protein, min_calories => $min_calories, max_calories => $max_calories, min_fat => $min_fat, max_fat => $max_fat, min_alcohol => $min_alcohol, max_alcohol => $max_alcohol, min_caffeine => $min_caffeine, max_caffeine => $max_caffeine, min_copper => $min_copper, max_copper => $max_copper, min_calcium => $min_calcium, max_calcium => $max_calcium, min_choline => $min_choline, max_choline => $max_choline, min_cholesterol => $min_cholesterol, max_cholesterol => $max_cholesterol, min_fluoride => $min_fluoride, max_fluoride => $max_fluoride, min_saturated_fat => $min_saturated_fat, max_saturated_fat => $max_saturated_fat, min_vitamin_a => $min_vitamin_a, max_vitamin_a => $max_vitamin_a, min_vitamin_c => $min_vitamin_c, max_vitamin_c => $max_vitamin_c, min_vitamin_d => $min_vitamin_d, max_vitamin_d => $max_vitamin_d, min_vitamin_e => $min_vitamin_e, max_vitamin_e => $max_vitamin_e, min_vitamin_k => $min_vitamin_k, max_vitamin_k => $max_vitamin_k, min_vitamin_b1 => $min_vitamin_b1, max_vitamin_b1 => $max_vitamin_b1, min_vitamin_b2 => $min_vitamin_b2, max_vitamin_b2 => $max_vitamin_b2, min_vitamin_b5 => $min_vitamin_b5, max_vitamin_b5 => $max_vitamin_b5, min_vitamin_b3 => $min_vitamin_b3, max_vitamin_b3 => $max_vitamin_b3, min_vitamin_b6 => $min_vitamin_b6, max_vitamin_b6 => $max_vitamin_b6, min_vitamin_b12 => $min_vitamin_b12, max_vitamin_b12 => $max_vitamin_b12, min_fiber => $min_fiber, max_fiber => $max_fiber, min_folate => $min_folate, max_folate => $max_folate, min_folic_acid => $min_folic_acid, max_folic_acid => $max_folic_acid, min_iodine => $min_iodine, max_iodine => $max_iodine, min_iron => $min_iron, max_iron => $max_iron, min_magnesium => $min_magnesium, max_magnesium => $max_magnesium, min_manganese => $min_manganese, max_manganese => $max_manganese, min_phosphorus => $min_phosphorus, max_phosphorus => $max_phosphorus, min_potassium => $min_potassium, max_potassium => $max_potassium, min_selenium => $min_selenium, max_selenium => $max_selenium, min_sodium => $min_sodium, max_sodium => $max_sodium, min_sugar => $min_sugar, max_sugar => $max_sugar, min_zinc => $min_zinc, max_zinc => $max_zinc, offset => $offset, number => $number, limit_license => $limit_license);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RecipesApi->search_recipes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The (natural language) search query. | [optional] 
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
 **tags** | **string**| The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have. | [optional] 
 **recipe_box_id** | **double**| The id of the recipe box to which the search should be limited to. | [optional] 
 **title_match** | **string**| Enter text that must be found in the title of the recipes. | [optional] 
 **max_ready_time** | **double**| The maximum time in minutes it should take to prepare and cook the recipe. | [optional] 
 **ignore_pantry** | **boolean**| Whether to ignore typical pantry items, such as water, salt, flour, etc. | [optional] [default to false]
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
 **offset** | **int**| The number of results to skip (between 0 and 900). | [optional] 
 **number** | **int**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]
 **limit_license** | **boolean**| Whether the recipes should have an open license that allows display with proper attribution. | [optional] [default to true]

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_recipes_by_ingredients**
> ARRAY[InlineResponse2001] search_recipes_by_ingredients(ingredients => $ingredients, number => $number, limit_license => $limit_license, ranking => $ranking, ignore_pantry => $ignore_pantry)

Search Recipes by Ingredients

 Ever wondered what recipes you can cook with the ingredients you have in your fridge or pantry? This endpoint lets you find recipes that either maximize the usage of ingredients you have at hand (pre shopping) or minimize the ingredients that you don't currently have (post shopping).         

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RecipesApi;
my $api_instance = WWW::OpenAPIClient::RecipesApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $ingredients = carrots,tomatoes; # string | A comma-separated list of ingredients that the recipes should contain.
my $number = 10; # int | The maximum number of items to return (between 1 and 100). Defaults to 10.
my $limit_license = true; # boolean | Whether the recipes should have an open license that allows display with proper attribution.
my $ranking = 1; # double | Whether to maximize used ingredients (1) or minimize missing ingredients (2) first.
my $ignore_pantry = false; # boolean | Whether to ignore typical pantry items, such as water, salt, flour, etc.

eval { 
    my $result = $api_instance->search_recipes_by_ingredients(ingredients => $ingredients, number => $number, limit_license => $limit_license, ranking => $ranking, ignore_pantry => $ignore_pantry);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RecipesApi->search_recipes_by_ingredients: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredients** | **string**| A comma-separated list of ingredients that the recipes should contain. | [optional] 
 **number** | **int**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]
 **limit_license** | **boolean**| Whether the recipes should have an open license that allows display with proper attribution. | [optional] [default to true]
 **ranking** | **double**| Whether to maximize used ingredients (1) or minimize missing ingredients (2) first. | [optional] 
 **ignore_pantry** | **boolean**| Whether to ignore typical pantry items, such as water, salt, flour, etc. | [optional] [default to false]

### Return type

[**ARRAY[InlineResponse2001]**](InlineResponse2001.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_recipes_by_nutrients**
> ARRAY[InlineResponse2002] search_recipes_by_nutrients(min_carbs => $min_carbs, max_carbs => $max_carbs, min_protein => $min_protein, max_protein => $max_protein, min_calories => $min_calories, max_calories => $max_calories, min_fat => $min_fat, max_fat => $max_fat, min_alcohol => $min_alcohol, max_alcohol => $max_alcohol, min_caffeine => $min_caffeine, max_caffeine => $max_caffeine, min_copper => $min_copper, max_copper => $max_copper, min_calcium => $min_calcium, max_calcium => $max_calcium, min_choline => $min_choline, max_choline => $max_choline, min_cholesterol => $min_cholesterol, max_cholesterol => $max_cholesterol, min_fluoride => $min_fluoride, max_fluoride => $max_fluoride, min_saturated_fat => $min_saturated_fat, max_saturated_fat => $max_saturated_fat, min_vitamin_a => $min_vitamin_a, max_vitamin_a => $max_vitamin_a, min_vitamin_c => $min_vitamin_c, max_vitamin_c => $max_vitamin_c, min_vitamin_d => $min_vitamin_d, max_vitamin_d => $max_vitamin_d, min_vitamin_e => $min_vitamin_e, max_vitamin_e => $max_vitamin_e, min_vitamin_k => $min_vitamin_k, max_vitamin_k => $max_vitamin_k, min_vitamin_b1 => $min_vitamin_b1, max_vitamin_b1 => $max_vitamin_b1, min_vitamin_b2 => $min_vitamin_b2, max_vitamin_b2 => $max_vitamin_b2, min_vitamin_b5 => $min_vitamin_b5, max_vitamin_b5 => $max_vitamin_b5, min_vitamin_b3 => $min_vitamin_b3, max_vitamin_b3 => $max_vitamin_b3, min_vitamin_b6 => $min_vitamin_b6, max_vitamin_b6 => $max_vitamin_b6, min_vitamin_b12 => $min_vitamin_b12, max_vitamin_b12 => $max_vitamin_b12, min_fiber => $min_fiber, max_fiber => $max_fiber, min_folate => $min_folate, max_folate => $max_folate, min_folic_acid => $min_folic_acid, max_folic_acid => $max_folic_acid, min_iodine => $min_iodine, max_iodine => $max_iodine, min_iron => $min_iron, max_iron => $max_iron, min_magnesium => $min_magnesium, max_magnesium => $max_magnesium, min_manganese => $min_manganese, max_manganese => $max_manganese, min_phosphorus => $min_phosphorus, max_phosphorus => $max_phosphorus, min_potassium => $min_potassium, max_potassium => $max_potassium, min_selenium => $min_selenium, max_selenium => $max_selenium, min_sodium => $min_sodium, max_sodium => $max_sodium, min_sugar => $min_sugar, max_sugar => $max_sugar, min_zinc => $min_zinc, max_zinc => $max_zinc, offset => $offset, number => $number, random => $random, limit_license => $limit_license)

Search Recipes by Nutrients

Find a set of recipes that adhere to the given nutritional limits. You may set limits for macronutrients (calories, protein, fat, and carbohydrate) and/or many micronutrients.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RecipesApi;
my $api_instance = WWW::OpenAPIClient::RecipesApi->new(

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
my $offset = 56; # int | The number of results to skip (between 0 and 900).
my $number = 10; # int | The maximum number of items to return (between 1 and 100). Defaults to 10.
my $random = false; # boolean | If true, every request will give you a random set of recipes within the requested limits.
my $limit_license = true; # boolean | Whether the recipes should have an open license that allows display with proper attribution.

eval { 
    my $result = $api_instance->search_recipes_by_nutrients(min_carbs => $min_carbs, max_carbs => $max_carbs, min_protein => $min_protein, max_protein => $max_protein, min_calories => $min_calories, max_calories => $max_calories, min_fat => $min_fat, max_fat => $max_fat, min_alcohol => $min_alcohol, max_alcohol => $max_alcohol, min_caffeine => $min_caffeine, max_caffeine => $max_caffeine, min_copper => $min_copper, max_copper => $max_copper, min_calcium => $min_calcium, max_calcium => $max_calcium, min_choline => $min_choline, max_choline => $max_choline, min_cholesterol => $min_cholesterol, max_cholesterol => $max_cholesterol, min_fluoride => $min_fluoride, max_fluoride => $max_fluoride, min_saturated_fat => $min_saturated_fat, max_saturated_fat => $max_saturated_fat, min_vitamin_a => $min_vitamin_a, max_vitamin_a => $max_vitamin_a, min_vitamin_c => $min_vitamin_c, max_vitamin_c => $max_vitamin_c, min_vitamin_d => $min_vitamin_d, max_vitamin_d => $max_vitamin_d, min_vitamin_e => $min_vitamin_e, max_vitamin_e => $max_vitamin_e, min_vitamin_k => $min_vitamin_k, max_vitamin_k => $max_vitamin_k, min_vitamin_b1 => $min_vitamin_b1, max_vitamin_b1 => $max_vitamin_b1, min_vitamin_b2 => $min_vitamin_b2, max_vitamin_b2 => $max_vitamin_b2, min_vitamin_b5 => $min_vitamin_b5, max_vitamin_b5 => $max_vitamin_b5, min_vitamin_b3 => $min_vitamin_b3, max_vitamin_b3 => $max_vitamin_b3, min_vitamin_b6 => $min_vitamin_b6, max_vitamin_b6 => $max_vitamin_b6, min_vitamin_b12 => $min_vitamin_b12, max_vitamin_b12 => $max_vitamin_b12, min_fiber => $min_fiber, max_fiber => $max_fiber, min_folate => $min_folate, max_folate => $max_folate, min_folic_acid => $min_folic_acid, max_folic_acid => $max_folic_acid, min_iodine => $min_iodine, max_iodine => $max_iodine, min_iron => $min_iron, max_iron => $max_iron, min_magnesium => $min_magnesium, max_magnesium => $max_magnesium, min_manganese => $min_manganese, max_manganese => $max_manganese, min_phosphorus => $min_phosphorus, max_phosphorus => $max_phosphorus, min_potassium => $min_potassium, max_potassium => $max_potassium, min_selenium => $min_selenium, max_selenium => $max_selenium, min_sodium => $min_sodium, max_sodium => $max_sodium, min_sugar => $min_sugar, max_sugar => $max_sugar, min_zinc => $min_zinc, max_zinc => $max_zinc, offset => $offset, number => $number, random => $random, limit_license => $limit_license);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RecipesApi->search_recipes_by_nutrients: $@\n";
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
 **offset** | **int**| The number of results to skip (between 0 and 900). | [optional] 
 **number** | **int**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]
 **random** | **boolean**| If true, every request will give you a random set of recipes within the requested limits. | [optional] 
 **limit_license** | **boolean**| Whether the recipes should have an open license that allows display with proper attribution. | [optional] [default to true]

### Return type

[**ARRAY[InlineResponse2002]**](InlineResponse2002.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **summarize_recipe**
> InlineResponse20014 summarize_recipe(id => $id)

Summarize Recipe

Automatically generate a short description that summarizes key information about the recipe.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RecipesApi;
my $api_instance = WWW::OpenAPIClient::RecipesApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $id = 1; # int | The item's id.

eval { 
    my $result = $api_instance->summarize_recipe(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RecipesApi->summarize_recipe: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The item&#39;s id. | 

### Return type

[**InlineResponse20014**](InlineResponse20014.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualize_equipment**
> string visualize_equipment(content_type => $content_type, accept => $accept)

Equipment Widget

Visualize the equipment used to make a recipe.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RecipesApi;
my $api_instance = WWW::OpenAPIClient::RecipesApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $content_type = application/json; # string | The content type.
my $accept = application/json; # string | Accept header.

eval { 
    my $result = $api_instance->visualize_equipment(content_type => $content_type, accept => $accept);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RecipesApi->visualize_equipment: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content_type** | **string**| The content type. | [optional] 
 **accept** | **string**| Accept header. | [optional] 

### Return type

**string**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualize_price_breakdown**
> string visualize_price_breakdown(content_type => $content_type, accept => $accept, language => $language)

Price Breakdown Widget

Visualize the price breakdown of a recipe.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RecipesApi;
my $api_instance = WWW::OpenAPIClient::RecipesApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $content_type = application/json; # string | The content type.
my $accept = application/json; # string | Accept header.
my $language = en; # string | The language of the input. Either 'en' or 'de'.

eval { 
    my $result = $api_instance->visualize_price_breakdown(content_type => $content_type, accept => $accept, language => $language);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RecipesApi->visualize_price_breakdown: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content_type** | **string**| The content type. | [optional] 
 **accept** | **string**| Accept header. | [optional] 
 **language** | **string**| The language of the input. Either &#39;en&#39; or &#39;de&#39;. | [optional] 

### Return type

**string**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualize_recipe_equipment_by_id**
> string visualize_recipe_equipment_by_id(id => $id, default_css => $default_css)

Equipment by ID Widget

Visualize a recipe's equipment list.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RecipesApi;
my $api_instance = WWW::OpenAPIClient::RecipesApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $id = 1; # int | The item's id.
my $default_css = false; # boolean | Whether the default CSS should be added to the response.

eval { 
    my $result = $api_instance->visualize_recipe_equipment_by_id(id => $id, default_css => $default_css);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RecipesApi->visualize_recipe_equipment_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The item&#39;s id. | 
 **default_css** | **boolean**| Whether the default CSS should be added to the response. | [optional] [default to true]

### Return type

**string**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualize_recipe_ingredients_by_id**
> string visualize_recipe_ingredients_by_id(id => $id, default_css => $default_css, measure => $measure)

Ingredients by ID Widget

Visualize a recipe's ingredient list.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RecipesApi;
my $api_instance = WWW::OpenAPIClient::RecipesApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $id = 1; # int | The item's id.
my $default_css = false; # boolean | Whether the default CSS should be added to the response.
my $measure = metric; # string | Whether the the measures should be 'us' or 'metric'.

eval { 
    my $result = $api_instance->visualize_recipe_ingredients_by_id(id => $id, default_css => $default_css, measure => $measure);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RecipesApi->visualize_recipe_ingredients_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The item&#39;s id. | 
 **default_css** | **boolean**| Whether the default CSS should be added to the response. | [optional] [default to true]
 **measure** | **string**| Whether the the measures should be &#39;us&#39; or &#39;metric&#39;. | [optional] 

### Return type

**string**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualize_recipe_nutrition**
> string visualize_recipe_nutrition(content_type => $content_type, accept => $accept, language => $language)

Recipe Nutrition Widget

Visualize a recipe's nutritional information as HTML including CSS.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RecipesApi;
my $api_instance = WWW::OpenAPIClient::RecipesApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $content_type = application/json; # string | The content type.
my $accept = application/json; # string | Accept header.
my $language = en; # string | The language of the input. Either 'en' or 'de'.

eval { 
    my $result = $api_instance->visualize_recipe_nutrition(content_type => $content_type, accept => $accept, language => $language);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RecipesApi->visualize_recipe_nutrition: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content_type** | **string**| The content type. | [optional] 
 **accept** | **string**| Accept header. | [optional] 
 **language** | **string**| The language of the input. Either &#39;en&#39; or &#39;de&#39;. | [optional] 

### Return type

**string**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualize_recipe_nutrition_by_id**
> string visualize_recipe_nutrition_by_id(id => $id, default_css => $default_css, accept => $accept)

Recipe Nutrition by ID Widget

Visualize a recipe's nutritional information as HTML including CSS.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RecipesApi;
my $api_instance = WWW::OpenAPIClient::RecipesApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $id = 1; # int | The item's id.
my $default_css = false; # boolean | Whether the default CSS should be added to the response.
my $accept = application/json; # string | Accept header.

eval { 
    my $result = $api_instance->visualize_recipe_nutrition_by_id(id => $id, default_css => $default_css, accept => $accept);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RecipesApi->visualize_recipe_nutrition_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The item&#39;s id. | 
 **default_css** | **boolean**| Whether the default CSS should be added to the response. | [optional] [default to true]
 **accept** | **string**| Accept header. | [optional] 

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

Price Breakdown by ID Widget

Visualize a recipe's price breakdown.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RecipesApi;
my $api_instance = WWW::OpenAPIClient::RecipesApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $id = 1; # int | The item's id.
my $default_css = false; # boolean | Whether the default CSS should be added to the response.

eval { 
    my $result = $api_instance->visualize_recipe_price_breakdown_by_id(id => $id, default_css => $default_css);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RecipesApi->visualize_recipe_price_breakdown_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The item&#39;s id. | 
 **default_css** | **boolean**| Whether the default CSS should be added to the response. | [optional] [default to true]

### Return type

**string**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualize_recipe_taste**
> string visualize_recipe_taste(language => $language, content_type => $content_type, accept => $accept, normalize => $normalize, rgb => $rgb)

Recipe Taste Widget

Visualize a recipe's taste information as HTML including CSS. You can play around with that endpoint!

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RecipesApi;
my $api_instance = WWW::OpenAPIClient::RecipesApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $language = en; # string | The language of the input. Either 'en' or 'de'.
my $content_type = application/json; # string | The content type.
my $accept = application/json; # string | Accept header.
my $normalize = null; # boolean | Whether to normalize to the strongest taste.
my $rgb = 75,192,192; # string | Red, green, blue values for the chart color.

eval { 
    my $result = $api_instance->visualize_recipe_taste(language => $language, content_type => $content_type, accept => $accept, normalize => $normalize, rgb => $rgb);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RecipesApi->visualize_recipe_taste: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **language** | **string**| The language of the input. Either &#39;en&#39; or &#39;de&#39;. | [optional] 
 **content_type** | **string**| The content type. | [optional] 
 **accept** | **string**| Accept header. | [optional] 
 **normalize** | **boolean**| Whether to normalize to the strongest taste. | [optional] 
 **rgb** | **string**| Red, green, blue values for the chart color. | [optional] 

### Return type

**string**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualize_recipe_taste_by_id**
> string visualize_recipe_taste_by_id(id => $id, normalize => $normalize, rgb => $rgb)

Recipe Taste by ID Widget

Get a recipe's taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RecipesApi;
my $api_instance = WWW::OpenAPIClient::RecipesApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $id = 1; # int | The item's id.
my $normalize = true; # boolean | Whether to normalize to the strongest taste.
my $rgb = 75,192,192; # string | Red, green, blue values for the chart color.

eval { 
    my $result = $api_instance->visualize_recipe_taste_by_id(id => $id, normalize => $normalize, rgb => $rgb);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RecipesApi->visualize_recipe_taste_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The item&#39;s id. | 
 **normalize** | **boolean**| Whether to normalize to the strongest taste. | [optional] [default to true]
 **rgb** | **string**| Red, green, blue values for the chart color. | [optional] 

### Return type

**string**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

