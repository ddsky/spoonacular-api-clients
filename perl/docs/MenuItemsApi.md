# WWW::OpenAPIClient::MenuItemsApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::MenuItemsApi;
```

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**autocomplete_menu_item_search**](MenuItemsApi.md#autocomplete_menu_item_search) | **GET** /food/menuItems/suggest | Autocomplete Menu Item Search
[**get_menu_item_information**](MenuItemsApi.md#get_menu_item_information) | **GET** /food/menuItems/{id} | Get Menu Item Information
[**menu_item_nutrition_by_id_image**](MenuItemsApi.md#menu_item_nutrition_by_id_image) | **GET** /food/menuItems/{id}/nutritionWidget.png | Menu Item Nutrition by ID Image
[**menu_item_nutrition_label_image**](MenuItemsApi.md#menu_item_nutrition_label_image) | **GET** /food/menuItems/{id}/nutritionLabel.png | Menu Item Nutrition Label Image
[**menu_item_nutrition_label_widget**](MenuItemsApi.md#menu_item_nutrition_label_widget) | **GET** /food/menuItems/{id}/nutritionLabel | Menu Item Nutrition Label Widget
[**search_menu_items**](MenuItemsApi.md#search_menu_items) | **GET** /food/menuItems/search | Search Menu Items
[**visualize_menu_item_nutrition_by_id**](MenuItemsApi.md#visualize_menu_item_nutrition_by_id) | **GET** /food/menuItems/{id}/nutritionWidget | Menu Item Nutrition by ID Widget


# **autocomplete_menu_item_search**
> InlineResponse20032 autocomplete_menu_item_search(query => $query, number => $number)

Autocomplete Menu Item Search

Generate suggestions for menu items based on a (partial) query. The matches will be found by looking in the title only.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MenuItemsApi;
my $api_instance = WWW::OpenAPIClient::MenuItemsApi->new(

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
    warn "Exception when calling MenuItemsApi->autocomplete_menu_item_search: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The (partial) search query. | 
 **number** | **double**| The number of results to return (between 1 and 25). | [optional] 

### Return type

[**InlineResponse20032**](InlineResponse20032.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_menu_item_information**
> InlineResponse20036 get_menu_item_information(id => $id)

Get Menu Item Information

Use a menu item id to get all available information about a menu item, such as nutrition.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MenuItemsApi;
my $api_instance = WWW::OpenAPIClient::MenuItemsApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $id = 1; # int | The item's id.

eval { 
    my $result = $api_instance->get_menu_item_information(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MenuItemsApi->get_menu_item_information: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The item&#39;s id. | 

### Return type

[**InlineResponse20036**](InlineResponse20036.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **menu_item_nutrition_by_id_image**
> object menu_item_nutrition_by_id_image(id => $id)

Menu Item Nutrition by ID Image

Visualize a menu item's nutritional information as HTML including CSS.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MenuItemsApi;
my $api_instance = WWW::OpenAPIClient::MenuItemsApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $id = 424571; # double | The menu item id.

eval { 
    my $result = $api_instance->menu_item_nutrition_by_id_image(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MenuItemsApi->menu_item_nutrition_by_id_image: $@\n";
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
 - **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **menu_item_nutrition_label_image**
> object menu_item_nutrition_label_image(id => $id, show_optional_nutrients => $show_optional_nutrients, show_zero_values => $show_zero_values, show_ingredients => $show_ingredients)

Menu Item Nutrition Label Image

Visualize a menu item's nutritional label information as an image.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MenuItemsApi;
my $api_instance = WWW::OpenAPIClient::MenuItemsApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $id = 342313; # double | The menu item id.
my $show_optional_nutrients = false; # boolean | Whether to show optional nutrients.
my $show_zero_values = false; # boolean | Whether to show zero values.
my $show_ingredients = false; # boolean | Whether to show a list of ingredients.

eval { 
    my $result = $api_instance->menu_item_nutrition_label_image(id => $id, show_optional_nutrients => $show_optional_nutrients, show_zero_values => $show_zero_values, show_ingredients => $show_ingredients);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MenuItemsApi->menu_item_nutrition_label_image: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **double**| The menu item id. | 
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

# **menu_item_nutrition_label_widget**
> string menu_item_nutrition_label_widget(id => $id, default_css => $default_css, show_optional_nutrients => $show_optional_nutrients, show_zero_values => $show_zero_values, show_ingredients => $show_ingredients)

Menu Item Nutrition Label Widget

Visualize a menu item's nutritional label information as HTML including CSS.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MenuItemsApi;
my $api_instance = WWW::OpenAPIClient::MenuItemsApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $id = 342313; # double | The menu item id.
my $default_css = false; # boolean | Whether the default CSS should be added to the response.
my $show_optional_nutrients = false; # boolean | Whether to show optional nutrients.
my $show_zero_values = false; # boolean | Whether to show zero values.
my $show_ingredients = false; # boolean | Whether to show a list of ingredients.

eval { 
    my $result = $api_instance->menu_item_nutrition_label_widget(id => $id, default_css => $default_css, show_optional_nutrients => $show_optional_nutrients, show_zero_values => $show_zero_values, show_ingredients => $show_ingredients);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MenuItemsApi->menu_item_nutrition_label_widget: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **double**| The menu item id. | 
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

# **search_menu_items**
> InlineResponse20035 search_menu_items(query => $query, min_calories => $min_calories, max_calories => $max_calories, min_carbs => $min_carbs, max_carbs => $max_carbs, min_protein => $min_protein, max_protein => $max_protein, min_fat => $min_fat, max_fat => $max_fat, add_menu_item_information => $add_menu_item_information, offset => $offset, number => $number)

Search Menu Items

Search over 115,000 menu items from over 800 fast food and chain restaurants. For example, McDonald's Big Mac or Starbucks Mocha.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MenuItemsApi;
my $api_instance = WWW::OpenAPIClient::MenuItemsApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $query = burger; # string | The (natural language) search query.
my $min_calories = 50; # double | The minimum amount of calories the menu item must have.
my $max_calories = 800; # double | The maximum amount of calories the menu item can have.
my $min_carbs = 10; # double | The minimum amount of carbohydrates in grams the menu item must have.
my $max_carbs = 100; # double | The maximum amount of carbohydrates in grams the menu item can have.
my $min_protein = 10; # double | The minimum amount of protein in grams the menu item must have.
my $max_protein = 100; # double | The maximum amount of protein in grams the menu item can have.
my $min_fat = 1; # double | The minimum amount of fat in grams the menu item must have.
my $max_fat = 100; # double | The maximum amount of fat in grams the menu item can have.
my $add_menu_item_information = true; # boolean | If set to true, you get more information about the menu items returned.
my $offset = 56; # int | The number of results to skip (between 0 and 900).
my $number = 10; # int | The maximum number of items to return (between 1 and 100). Defaults to 10.

eval { 
    my $result = $api_instance->search_menu_items(query => $query, min_calories => $min_calories, max_calories => $max_calories, min_carbs => $min_carbs, max_carbs => $max_carbs, min_protein => $min_protein, max_protein => $max_protein, min_fat => $min_fat, max_fat => $max_fat, add_menu_item_information => $add_menu_item_information, offset => $offset, number => $number);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MenuItemsApi->search_menu_items: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The (natural language) search query. | [optional] 
 **min_calories** | **double**| The minimum amount of calories the menu item must have. | [optional] 
 **max_calories** | **double**| The maximum amount of calories the menu item can have. | [optional] 
 **min_carbs** | **double**| The minimum amount of carbohydrates in grams the menu item must have. | [optional] 
 **max_carbs** | **double**| The maximum amount of carbohydrates in grams the menu item can have. | [optional] 
 **min_protein** | **double**| The minimum amount of protein in grams the menu item must have. | [optional] 
 **max_protein** | **double**| The maximum amount of protein in grams the menu item can have. | [optional] 
 **min_fat** | **double**| The minimum amount of fat in grams the menu item must have. | [optional] 
 **max_fat** | **double**| The maximum amount of fat in grams the menu item can have. | [optional] 
 **add_menu_item_information** | **boolean**| If set to true, you get more information about the menu items returned. | [optional] 
 **offset** | **int**| The number of results to skip (between 0 and 900). | [optional] 
 **number** | **int**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]

### Return type

[**InlineResponse20035**](InlineResponse20035.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualize_menu_item_nutrition_by_id**
> string visualize_menu_item_nutrition_by_id(id => $id, default_css => $default_css, accept => $accept)

Menu Item Nutrition by ID Widget

Visualize a menu item's nutritional information as HTML including CSS.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MenuItemsApi;
my $api_instance = WWW::OpenAPIClient::MenuItemsApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $id = 1; # int | The item's id.
my $default_css = false; # boolean | Whether the default CSS should be added to the response.
my $accept = application/json; # string | Accept header.

eval { 
    my $result = $api_instance->visualize_menu_item_nutrition_by_id(id => $id, default_css => $default_css, accept => $accept);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MenuItemsApi->visualize_menu_item_nutrition_by_id: $@\n";
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

