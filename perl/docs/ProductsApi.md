# WWW::OpenAPIClient::ProductsApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::ProductsApi;
```

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**autocomplete_product_search**](ProductsApi.md#autocomplete_product_search) | **GET** /food/products/suggest | Autocomplete Product Search
[**classify_grocery_product**](ProductsApi.md#classify_grocery_product) | **POST** /food/products/classify | Classify Grocery Product
[**classify_grocery_product_bulk**](ProductsApi.md#classify_grocery_product_bulk) | **POST** /food/products/classifyBatch | Classify Grocery Product Bulk
[**get_comparable_products**](ProductsApi.md#get_comparable_products) | **GET** /food/products/upc/{upc}/comparable | Get Comparable Products
[**get_product_information**](ProductsApi.md#get_product_information) | **GET** /food/products/{id} | Get Product Information
[**product_nutrition_by_id_image**](ProductsApi.md#product_nutrition_by_id_image) | **GET** /food/products/{id}/nutritionWidget.png | Product Nutrition by ID Image
[**product_nutrition_label_image**](ProductsApi.md#product_nutrition_label_image) | **GET** /food/products/{id}/nutritionLabel.png | Product Nutrition Label Image
[**product_nutrition_label_widget**](ProductsApi.md#product_nutrition_label_widget) | **GET** /food/products/{id}/nutritionLabel | Product Nutrition Label Widget
[**search_grocery_products**](ProductsApi.md#search_grocery_products) | **GET** /food/products/search | Search Grocery Products
[**search_grocery_products_by_upc**](ProductsApi.md#search_grocery_products_by_upc) | **GET** /food/products/upc/{upc} | Search Grocery Products by UPC
[**visualize_product_nutrition_by_id**](ProductsApi.md#visualize_product_nutrition_by_id) | **GET** /food/products/{id}/nutritionWidget | Product Nutrition by ID Widget


# **autocomplete_product_search**
> AutocompleteProductSearch200Response autocomplete_product_search(query => $query, number => $number)

Autocomplete Product Search

Generate suggestions for grocery products based on a (partial) query. The matches will be found by looking in the title only.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ProductsApi;
my $api_instance = WWW::OpenAPIClient::ProductsApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $query = chicke; # string | The (partial) search query.
my $number = 10; # int | The number of results to return (between 1 and 25).

eval {
    my $result = $api_instance->autocomplete_product_search(query => $query, number => $number);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductsApi->autocomplete_product_search: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The (partial) search query. | 
 **number** | **int**| The number of results to return (between 1 and 25). | [optional] 

### Return type

[**AutocompleteProductSearch200Response**](AutocompleteProductSearch200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **classify_grocery_product**
> ClassifyGroceryProduct200Response classify_grocery_product(classify_grocery_product_request => $classify_grocery_product_request, locale => $locale)

Classify Grocery Product

This endpoint allows you to match a packaged food to a basic category, e.g. a specific brand of milk to the category milk.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ProductsApi;
my $api_instance = WWW::OpenAPIClient::ProductsApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $classify_grocery_product_request = WWW::OpenAPIClient::Object::ClassifyGroceryProductRequest->new(); # ClassifyGroceryProductRequest | 
my $locale = en_US; # string | The display name of the returned category, supported is en_US (for American English) and en_GB (for British English).

eval {
    my $result = $api_instance->classify_grocery_product(classify_grocery_product_request => $classify_grocery_product_request, locale => $locale);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductsApi->classify_grocery_product: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **classify_grocery_product_request** | [**ClassifyGroceryProductRequest**](ClassifyGroceryProductRequest.md)|  | 
 **locale** | **string**| The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). | [optional] 

### Return type

[**ClassifyGroceryProduct200Response**](ClassifyGroceryProduct200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **classify_grocery_product_bulk**
> ARRAY[ClassifyGroceryProductBulk200ResponseInner] classify_grocery_product_bulk(classify_grocery_product_bulk_request_inner => $classify_grocery_product_bulk_request_inner, locale => $locale)

Classify Grocery Product Bulk

Provide a set of product jsons, get back classified products.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ProductsApi;
my $api_instance = WWW::OpenAPIClient::ProductsApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $classify_grocery_product_bulk_request_inner = [WWW::OpenAPIClient::Object::ARRAY[ClassifyGroceryProductBulkRequestInner]->new()]; # ARRAY[ClassifyGroceryProductBulkRequestInner] | 
my $locale = en_US; # string | The display name of the returned category, supported is en_US (for American English) and en_GB (for British English).

eval {
    my $result = $api_instance->classify_grocery_product_bulk(classify_grocery_product_bulk_request_inner => $classify_grocery_product_bulk_request_inner, locale => $locale);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductsApi->classify_grocery_product_bulk: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **classify_grocery_product_bulk_request_inner** | [**ARRAY[ClassifyGroceryProductBulkRequestInner]**](ClassifyGroceryProductBulkRequestInner.md)|  | 
 **locale** | **string**| The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). | [optional] 

### Return type

[**ARRAY[ClassifyGroceryProductBulk200ResponseInner]**](ClassifyGroceryProductBulk200ResponseInner.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_comparable_products**
> GetComparableProducts200Response get_comparable_products(upc => $upc)

Get Comparable Products

Find comparable products to the given one.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ProductsApi;
my $api_instance = WWW::OpenAPIClient::ProductsApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $upc = 33698816271; # double | The UPC of the product for which you want to find comparable products.

eval {
    my $result = $api_instance->get_comparable_products(upc => $upc);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductsApi->get_comparable_products: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **upc** | **double**| The UPC of the product for which you want to find comparable products. | 

### Return type

[**GetComparableProducts200Response**](GetComparableProducts200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_product_information**
> GetProductInformation200Response get_product_information(id => $id)

Get Product Information

Use a product id to get full information about a product, such as ingredients, nutrition, etc. The nutritional information is per serving.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ProductsApi;
my $api_instance = WWW::OpenAPIClient::ProductsApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = 1; # int | The item's id.

eval {
    my $result = $api_instance->get_product_information(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductsApi->get_product_information: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The item&#39;s id. | 

### Return type

[**GetProductInformation200Response**](GetProductInformation200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **product_nutrition_by_id_image**
> object product_nutrition_by_id_image(id => $id)

Product Nutrition by ID Image

Visualize a product's nutritional information as an image.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ProductsApi;
my $api_instance = WWW::OpenAPIClient::ProductsApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = 7657; # double | The id of the product.

eval {
    my $result = $api_instance->product_nutrition_by_id_image(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductsApi->product_nutrition_by_id_image: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **double**| The id of the product. | 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **product_nutrition_label_image**
> object product_nutrition_label_image(id => $id, show_optional_nutrients => $show_optional_nutrients, show_zero_values => $show_zero_values, show_ingredients => $show_ingredients)

Product Nutrition Label Image

Get a product's nutrition label as an image.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ProductsApi;
my $api_instance = WWW::OpenAPIClient::ProductsApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = 22347; # double | The product id.
my $show_optional_nutrients = false; # boolean | Whether to show optional nutrients.
my $show_zero_values = false; # boolean | Whether to show zero values.
my $show_ingredients = false; # boolean | Whether to show a list of ingredients.

eval {
    my $result = $api_instance->product_nutrition_label_image(id => $id, show_optional_nutrients => $show_optional_nutrients, show_zero_values => $show_zero_values, show_ingredients => $show_ingredients);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductsApi->product_nutrition_label_image: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **double**| The product id. | 
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

# **product_nutrition_label_widget**
> string product_nutrition_label_widget(id => $id, default_css => $default_css, show_optional_nutrients => $show_optional_nutrients, show_zero_values => $show_zero_values, show_ingredients => $show_ingredients)

Product Nutrition Label Widget

Get a product's nutrition label as an HTML widget.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ProductsApi;
my $api_instance = WWW::OpenAPIClient::ProductsApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = 22347; # double | The product id.
my $default_css = false; # boolean | Whether the default CSS should be added to the response.
my $show_optional_nutrients = false; # boolean | Whether to show optional nutrients.
my $show_zero_values = false; # boolean | Whether to show zero values.
my $show_ingredients = false; # boolean | Whether to show a list of ingredients.

eval {
    my $result = $api_instance->product_nutrition_label_widget(id => $id, default_css => $default_css, show_optional_nutrients => $show_optional_nutrients, show_zero_values => $show_zero_values, show_ingredients => $show_ingredients);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductsApi->product_nutrition_label_widget: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **double**| The product id. | 
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

# **search_grocery_products**
> SearchGroceryProducts200Response search_grocery_products(query => $query, min_calories => $min_calories, max_calories => $max_calories, min_carbs => $min_carbs, max_carbs => $max_carbs, min_protein => $min_protein, max_protein => $max_protein, min_fat => $min_fat, max_fat => $max_fat, add_product_information => $add_product_information, offset => $offset, number => $number)

Search Grocery Products

Search packaged food products, such as frozen pizza or Greek yogurt.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ProductsApi;
my $api_instance = WWW::OpenAPIClient::ProductsApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $query = burger; # string | The (natural language) search query.
my $min_calories = 50; # double | The minimum amount of calories the product must have.
my $max_calories = 800; # double | The maximum amount of calories the product can have.
my $min_carbs = 10; # double | The minimum amount of carbohydrates in grams the product must have.
my $max_carbs = 100; # double | The maximum amount of carbohydrates in grams the product can have.
my $min_protein = 10; # double | The minimum amount of protein in grams the product must have.
my $max_protein = 100; # double | The maximum amount of protein in grams the product can have.
my $min_fat = 1; # double | The minimum amount of fat in grams the product must have.
my $max_fat = 100; # double | The maximum amount of fat in grams the product can have.
my $add_product_information = true; # boolean | If set to true, you get more information about the products returned.
my $offset = 56; # int | The number of results to skip (between 0 and 900).
my $number = 10; # int | The maximum number of items to return (between 1 and 100). Defaults to 10.

eval {
    my $result = $api_instance->search_grocery_products(query => $query, min_calories => $min_calories, max_calories => $max_calories, min_carbs => $min_carbs, max_carbs => $max_carbs, min_protein => $min_protein, max_protein => $max_protein, min_fat => $min_fat, max_fat => $max_fat, add_product_information => $add_product_information, offset => $offset, number => $number);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductsApi->search_grocery_products: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The (natural language) search query. | [optional] 
 **min_calories** | **double**| The minimum amount of calories the product must have. | [optional] 
 **max_calories** | **double**| The maximum amount of calories the product can have. | [optional] 
 **min_carbs** | **double**| The minimum amount of carbohydrates in grams the product must have. | [optional] 
 **max_carbs** | **double**| The maximum amount of carbohydrates in grams the product can have. | [optional] 
 **min_protein** | **double**| The minimum amount of protein in grams the product must have. | [optional] 
 **max_protein** | **double**| The maximum amount of protein in grams the product can have. | [optional] 
 **min_fat** | **double**| The minimum amount of fat in grams the product must have. | [optional] 
 **max_fat** | **double**| The maximum amount of fat in grams the product can have. | [optional] 
 **add_product_information** | **boolean**| If set to true, you get more information about the products returned. | [optional] 
 **offset** | **int**| The number of results to skip (between 0 and 900). | [optional] 
 **number** | **int**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]

### Return type

[**SearchGroceryProducts200Response**](SearchGroceryProducts200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_grocery_products_by_upc**
> SearchGroceryProductsByUPC200Response search_grocery_products_by_upc(upc => $upc)

Search Grocery Products by UPC

Get information about a packaged food using its UPC.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ProductsApi;
my $api_instance = WWW::OpenAPIClient::ProductsApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $upc = 41631000564; # double | The product's UPC.

eval {
    my $result = $api_instance->search_grocery_products_by_upc(upc => $upc);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductsApi->search_grocery_products_by_upc: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **upc** | **double**| The product&#39;s UPC. | 

### Return type

[**SearchGroceryProductsByUPC200Response**](SearchGroceryProductsByUPC200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualize_product_nutrition_by_id**
> string visualize_product_nutrition_by_id(id => $id, default_css => $default_css, accept => $accept)

Product Nutrition by ID Widget

Visualize a product's nutritional information as HTML including CSS.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ProductsApi;
my $api_instance = WWW::OpenAPIClient::ProductsApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = 1; # int | The item's id.
my $default_css = false; # boolean | Whether the default CSS should be added to the response.
my $accept = application/json; # string | Accept header.

eval {
    my $result = $api_instance->visualize_product_nutrition_by_id(id => $id, default_css => $default_css, accept => $accept);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProductsApi->visualize_product_nutrition_by_id: $@\n";
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

