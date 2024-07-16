# WWW::OpenAPIClient::IngredientsApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::IngredientsApi;
```

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**autocomplete_ingredient_search**](IngredientsApi.md#autocomplete_ingredient_search) | **GET** /food/ingredients/autocomplete | Autocomplete Ingredient Search
[**compute_ingredient_amount**](IngredientsApi.md#compute_ingredient_amount) | **GET** /food/ingredients/{id}/amount | Compute Ingredient Amount
[**get_ingredient_information**](IngredientsApi.md#get_ingredient_information) | **GET** /food/ingredients/{id}/information | Get Ingredient Information
[**get_ingredient_substitutes**](IngredientsApi.md#get_ingredient_substitutes) | **GET** /food/ingredients/substitutes | Get Ingredient Substitutes
[**get_ingredient_substitutes_by_id**](IngredientsApi.md#get_ingredient_substitutes_by_id) | **GET** /food/ingredients/{id}/substitutes | Get Ingredient Substitutes by ID
[**ingredient_search**](IngredientsApi.md#ingredient_search) | **GET** /food/ingredients/search | Ingredient Search
[**ingredients_by_id_image**](IngredientsApi.md#ingredients_by_id_image) | **GET** /recipes/{id}/ingredientWidget.png | Ingredients by ID Image
[**map_ingredients_to_grocery_products**](IngredientsApi.md#map_ingredients_to_grocery_products) | **POST** /food/ingredients/map | Map Ingredients to Grocery Products
[**visualize_ingredients**](IngredientsApi.md#visualize_ingredients) | **POST** /recipes/visualizeIngredients | Ingredients Widget


# **autocomplete_ingredient_search**
> ARRAY[AutocompleteIngredientSearch200ResponseInner] autocomplete_ingredient_search(query => $query, number => $number, meta_information => $meta_information, intolerances => $intolerances, language => $language)

Autocomplete Ingredient Search

Autocomplete the entry of an ingredient.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::IngredientsApi;
my $api_instance = WWW::OpenAPIClient::IngredientsApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $query = burger; # string | The (natural language) search query.
my $number = 10; # int | The maximum number of items to return (between 1 and 100). Defaults to 10.
my $meta_information = false; # boolean | Whether to return more meta information about the ingredients.
my $intolerances = egg; # string | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.
my $language = en; # string | The language of the input. Either 'en' or 'de'.

eval {
    my $result = $api_instance->autocomplete_ingredient_search(query => $query, number => $number, meta_information => $meta_information, intolerances => $intolerances, language => $language);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling IngredientsApi->autocomplete_ingredient_search: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The (natural language) search query. | 
 **number** | **int**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]
 **meta_information** | **boolean**| Whether to return more meta information about the ingredients. | [optional] 
 **intolerances** | **string**| A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. | [optional] 
 **language** | **string**| The language of the input. Either &#39;en&#39; or &#39;de&#39;. | [optional] 

### Return type

[**ARRAY[AutocompleteIngredientSearch200ResponseInner]**](AutocompleteIngredientSearch200ResponseInner.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **compute_ingredient_amount**
> ComputeIngredientAmount200Response compute_ingredient_amount(id => $id, nutrient => $nutrient, target => $target, unit => $unit)

Compute Ingredient Amount

Compute the amount you need of a certain ingredient for a certain nutritional goal. For example, how much pineapple do you have to eat to get 10 grams of protein?

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::IngredientsApi;
my $api_instance = WWW::OpenAPIClient::IngredientsApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = 9266; # int | The id of the ingredient you want the amount for.
my $nutrient = protein; # string | The target nutrient. See a list of supported nutrients.
my $target = 2; # int | The target number of the given nutrient.
my $unit = oz; # string | The target unit.

eval {
    my $result = $api_instance->compute_ingredient_amount(id => $id, nutrient => $nutrient, target => $target, unit => $unit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling IngredientsApi->compute_ingredient_amount: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the ingredient you want the amount for. | 
 **nutrient** | **string**| The target nutrient. See a list of supported nutrients. | 
 **target** | **int**| The target number of the given nutrient. | 
 **unit** | **string**| The target unit. | [optional] 

### Return type

[**ComputeIngredientAmount200Response**](ComputeIngredientAmount200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_ingredient_information**
> IngredientInformation get_ingredient_information(id => $id, amount => $amount, unit => $unit)

Get Ingredient Information

Use an ingredient id to get all available information about an ingredient, such as its image and supermarket aisle.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::IngredientsApi;
my $api_instance = WWW::OpenAPIClient::IngredientsApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = 9266; # int | The ingredient id.
my $amount = 150; # double | The amount of this ingredient.
my $unit = grams; # string | The unit for the given amount.

eval {
    my $result = $api_instance->get_ingredient_information(id => $id, amount => $amount, unit => $unit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling IngredientsApi->get_ingredient_information: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The ingredient id. | 
 **amount** | **double**| The amount of this ingredient. | [optional] 
 **unit** | **string**| The unit for the given amount. | [optional] 

### Return type

[**IngredientInformation**](IngredientInformation.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_ingredient_substitutes**
> GetIngredientSubstitutes200Response get_ingredient_substitutes(ingredient_name => $ingredient_name)

Get Ingredient Substitutes

Search for substitutes for a given ingredient.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::IngredientsApi;
my $api_instance = WWW::OpenAPIClient::IngredientsApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $ingredient_name = butter; # string | The name of the ingredient you want to replace.

eval {
    my $result = $api_instance->get_ingredient_substitutes(ingredient_name => $ingredient_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling IngredientsApi->get_ingredient_substitutes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredient_name** | **string**| The name of the ingredient you want to replace. | 

### Return type

[**GetIngredientSubstitutes200Response**](GetIngredientSubstitutes200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_ingredient_substitutes_by_id**
> GetIngredientSubstitutes200Response get_ingredient_substitutes_by_id(id => $id)

Get Ingredient Substitutes by ID

Search for substitutes for a given ingredient.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::IngredientsApi;
my $api_instance = WWW::OpenAPIClient::IngredientsApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = 1001; # int | The id of the ingredient you want substitutes for.

eval {
    my $result = $api_instance->get_ingredient_substitutes_by_id(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling IngredientsApi->get_ingredient_substitutes_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the ingredient you want substitutes for. | 

### Return type

[**GetIngredientSubstitutes200Response**](GetIngredientSubstitutes200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ingredient_search**
> IngredientSearch200Response ingredient_search(query => $query, add_children => $add_children, min_protein_percent => $min_protein_percent, max_protein_percent => $max_protein_percent, min_fat_percent => $min_fat_percent, max_fat_percent => $max_fat_percent, min_carbs_percent => $min_carbs_percent, max_carbs_percent => $max_carbs_percent, meta_information => $meta_information, intolerances => $intolerances, sort => $sort, sort_direction => $sort_direction, offset => $offset, number => $number, language => $language)

Ingredient Search

Search for simple whole foods (e.g. fruits, vegetables, nuts, grains, meat, fish, dairy etc.).

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::IngredientsApi;
my $api_instance = WWW::OpenAPIClient::IngredientsApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $query = burger; # string | The (natural language) search query.
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
my $offset = 56; # int | The number of results to skip (between 0 and 900).
my $number = 10; # int | The maximum number of items to return (between 1 and 100). Defaults to 10.
my $language = en; # string | The language of the input. Either 'en' or 'de'.

eval {
    my $result = $api_instance->ingredient_search(query => $query, add_children => $add_children, min_protein_percent => $min_protein_percent, max_protein_percent => $max_protein_percent, min_fat_percent => $min_fat_percent, max_fat_percent => $max_fat_percent, min_carbs_percent => $min_carbs_percent, max_carbs_percent => $max_carbs_percent, meta_information => $meta_information, intolerances => $intolerances, sort => $sort, sort_direction => $sort_direction, offset => $offset, number => $number, language => $language);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling IngredientsApi->ingredient_search: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The (natural language) search query. | 
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
 **offset** | **int**| The number of results to skip (between 0 and 900). | [optional] 
 **number** | **int**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]
 **language** | **string**| The language of the input. Either &#39;en&#39; or &#39;de&#39;. | [optional] 

### Return type

[**IngredientSearch200Response**](IngredientSearch200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ingredients_by_id_image**
> string ingredients_by_id_image(id => $id, measure => $measure)

Ingredients by ID Image

Visualize a recipe's ingredient list.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::IngredientsApi;
my $api_instance = WWW::OpenAPIClient::IngredientsApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = 1082038; # int | The recipe id.
my $measure = metric; # string | Whether the the measures should be 'us' or 'metric'.

eval {
    my $result = $api_instance->ingredients_by_id_image(id => $id, measure => $measure);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling IngredientsApi->ingredients_by_id_image: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The recipe id. | 
 **measure** | **string**| Whether the the measures should be &#39;us&#39; or &#39;metric&#39;. | [optional] 

### Return type

**string**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **map_ingredients_to_grocery_products**
> ARRAY[MapIngredientsToGroceryProducts200ResponseInner] map_ingredients_to_grocery_products(map_ingredients_to_grocery_products_request => $map_ingredients_to_grocery_products_request)

Map Ingredients to Grocery Products

Map a set of ingredients to products you can buy in the grocery store.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::IngredientsApi;
my $api_instance = WWW::OpenAPIClient::IngredientsApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $map_ingredients_to_grocery_products_request = WWW::OpenAPIClient::Object::MapIngredientsToGroceryProductsRequest->new(); # MapIngredientsToGroceryProductsRequest | 

eval {
    my $result = $api_instance->map_ingredients_to_grocery_products(map_ingredients_to_grocery_products_request => $map_ingredients_to_grocery_products_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling IngredientsApi->map_ingredients_to_grocery_products: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **map_ingredients_to_grocery_products_request** | [**MapIngredientsToGroceryProductsRequest**](MapIngredientsToGroceryProductsRequest.md)|  | 

### Return type

[**ARRAY[MapIngredientsToGroceryProducts200ResponseInner]**](MapIngredientsToGroceryProducts200ResponseInner.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualize_ingredients**
> string visualize_ingredients(ingredient_list => $ingredient_list, servings => $servings, language => $language, measure => $measure, view => $view, default_css => $default_css, show_backlink => $show_backlink)

Ingredients Widget

Visualize ingredients of a recipe. You can play around with that endpoint!

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::IngredientsApi;
my $api_instance = WWW::OpenAPIClient::IngredientsApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $ingredient_list = "ingredient_list_example"; # string | The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n).
my $servings = 3.4; # double | The number of servings.
my $language = en; # string | The language of the input. Either 'en' or 'de'.
my $measure = "measure_example"; # string | The original system of measurement, either 'metric' or 'us'.
my $view = "view_example"; # string | How to visualize the ingredients, either 'grid' or 'list'.
my $default_css = null; # boolean | Whether the default CSS should be added to the response.
my $show_backlink = null; # boolean | Whether to show a backlink to spoonacular. If set false, this call counts against your quota.

eval {
    my $result = $api_instance->visualize_ingredients(ingredient_list => $ingredient_list, servings => $servings, language => $language, measure => $measure, view => $view, default_css => $default_css, show_backlink => $show_backlink);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling IngredientsApi->visualize_ingredients: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredient_list** | **string**| The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n). | 
 **servings** | **double**| The number of servings. | 
 **language** | **string**| The language of the input. Either &#39;en&#39; or &#39;de&#39;. | [optional] 
 **measure** | **string**| The original system of measurement, either &#39;metric&#39; or &#39;us&#39;. | [optional] 
 **view** | **string**| How to visualize the ingredients, either &#39;grid&#39; or &#39;list&#39;. | [optional] 
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

