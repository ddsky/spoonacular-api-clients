# OpenapiClient::ProductsApi

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



## autocomplete_product_search

> InlineResponse20032 autocomplete_product_search(query, opts)

Autocomplete Product Search

Generate suggestions for grocery products based on a (partial) query. The matches will be found by looking in the title only.

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKeyScheme
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKey'] = 'Bearer'
end

api_instance = OpenapiClient::ProductsApi.new
query = 'chicke' # String | The (partial) search query.
opts = {
  number: 10 # Integer | The number of results to return (between 1 and 25).
}

begin
  #Autocomplete Product Search
  result = api_instance.autocomplete_product_search(query, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling ProductsApi->autocomplete_product_search: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The (partial) search query. | 
 **number** | **Integer**| The number of results to return (between 1 and 25). | [optional] 

### Return type

[**InlineResponse20032**](InlineResponse20032.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## classify_grocery_product

> InlineResponse20033 classify_grocery_product(inline_object1, opts)

Classify Grocery Product

This endpoint allows you to match a packaged food to a basic category, e.g. a specific brand of milk to the category milk.

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKeyScheme
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKey'] = 'Bearer'
end

api_instance = OpenapiClient::ProductsApi.new
inline_object1 = OpenapiClient::InlineObject1.new # InlineObject1 | 
opts = {
  locale: 'en_US' # String | The display name of the returned category, supported is en_US (for American English) and en_GB (for British English).
}

begin
  #Classify Grocery Product
  result = api_instance.classify_grocery_product(inline_object1, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling ProductsApi->classify_grocery_product: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inline_object1** | [**InlineObject1**](InlineObject1.md)|  | 
 **locale** | **String**| The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). | [optional] 

### Return type

[**InlineResponse20033**](InlineResponse20033.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## classify_grocery_product_bulk

> Array&lt;InlineResponse20033&gt; classify_grocery_product_bulk(inline_object, opts)

Classify Grocery Product Bulk

Provide a set of product jsons, get back classified products.

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKeyScheme
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKey'] = 'Bearer'
end

api_instance = OpenapiClient::ProductsApi.new
inline_object = [{"title":"Kroger Vitamin A & D Reduced Fat 2% Milk","upc":"","plu_code":""}] # Array<InlineObject> | 
opts = {
  locale: 'en_US' # String | The display name of the returned category, supported is en_US (for American English) and en_GB (for British English).
}

begin
  #Classify Grocery Product Bulk
  result = api_instance.classify_grocery_product_bulk(inline_object, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling ProductsApi->classify_grocery_product_bulk: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inline_object** | [**Array&lt;InlineObject&gt;**](Array.md)|  | 
 **locale** | **String**| The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). | [optional] 

### Return type

[**Array&lt;InlineResponse20033&gt;**](InlineResponse20033.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_comparable_products

> InlineResponse20031 get_comparable_products(upc)

Get Comparable Products

Find comparable products to the given one.

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKeyScheme
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKey'] = 'Bearer'
end

api_instance = OpenapiClient::ProductsApi.new
upc = 33698816271 # Float | The UPC of the product for which you want to find comparable products.

begin
  #Get Comparable Products
  result = api_instance.get_comparable_products(upc)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling ProductsApi->get_comparable_products: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **upc** | **Float**| The UPC of the product for which you want to find comparable products. | 

### Return type

[**InlineResponse20031**](InlineResponse20031.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_product_information

> InlineResponse20030 get_product_information(id)

Get Product Information

Use a product id to get full information about a product, such as ingredients, nutrition, etc. The nutritional information is per serving.

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKeyScheme
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKey'] = 'Bearer'
end

api_instance = OpenapiClient::ProductsApi.new
id = 1 # Integer | The item's id.

begin
  #Get Product Information
  result = api_instance.get_product_information(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling ProductsApi->get_product_information: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The item&#39;s id. | 

### Return type

[**InlineResponse20030**](InlineResponse20030.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## product_nutrition_by_id_image

> Object product_nutrition_by_id_image(id)

Product Nutrition by ID Image

Visualize a product's nutritional information as an image.

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKeyScheme
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKey'] = 'Bearer'
end

api_instance = OpenapiClient::ProductsApi.new
id = 7657 # Float | The id of the product.

begin
  #Product Nutrition by ID Image
  result = api_instance.product_nutrition_by_id_image(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling ProductsApi->product_nutrition_by_id_image: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| The id of the product. | 

### Return type

**Object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/png


## product_nutrition_label_image

> Object product_nutrition_label_image(id, opts)

Product Nutrition Label Image

Get a product's nutrition label as an image.

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKeyScheme
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKey'] = 'Bearer'
end

api_instance = OpenapiClient::ProductsApi.new
id = 22347 # Float | The product id.
opts = {
  show_optional_nutrients: false, # Boolean | Whether to show optional nutrients.
  show_zero_values: false, # Boolean | Whether to show zero values.
  show_ingredients: false # Boolean | Whether to show a list of ingredients.
}

begin
  #Product Nutrition Label Image
  result = api_instance.product_nutrition_label_image(id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling ProductsApi->product_nutrition_label_image: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| The product id. | 
 **show_optional_nutrients** | **Boolean**| Whether to show optional nutrients. | [optional] 
 **show_zero_values** | **Boolean**| Whether to show zero values. | [optional] 
 **show_ingredients** | **Boolean**| Whether to show a list of ingredients. | [optional] 

### Return type

**Object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/png


## product_nutrition_label_widget

> String product_nutrition_label_widget(id, opts)

Product Nutrition Label Widget

Get a product's nutrition label as an HTML widget.

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKeyScheme
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKey'] = 'Bearer'
end

api_instance = OpenapiClient::ProductsApi.new
id = 22347 # Float | The product id.
opts = {
  default_css: true, # Boolean | Whether the default CSS should be added to the response.
  show_optional_nutrients: false, # Boolean | Whether to show optional nutrients.
  show_zero_values: false, # Boolean | Whether to show zero values.
  show_ingredients: false # Boolean | Whether to show a list of ingredients.
}

begin
  #Product Nutrition Label Widget
  result = api_instance.product_nutrition_label_widget(id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling ProductsApi->product_nutrition_label_widget: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| The product id. | 
 **default_css** | **Boolean**| Whether the default CSS should be added to the response. | [optional] [default to true]
 **show_optional_nutrients** | **Boolean**| Whether to show optional nutrients. | [optional] 
 **show_zero_values** | **Boolean**| Whether to show zero values. | [optional] 
 **show_ingredients** | **Boolean**| Whether to show a list of ingredients. | [optional] 

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html


## search_grocery_products

> InlineResponse20027 search_grocery_products(opts)

Search Grocery Products

Search packaged food products, such as frozen pizza or Greek yogurt.

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKeyScheme
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKey'] = 'Bearer'
end

api_instance = OpenapiClient::ProductsApi.new
opts = {
  query: 'burger', # String | The (natural language) search query.
  min_calories: 50, # Float | The minimum amount of calories the product must have.
  max_calories: 800, # Float | The maximum amount of calories the product can have.
  min_carbs: 10, # Float | The minimum amount of carbohydrates in grams the product must have.
  max_carbs: 100, # Float | The maximum amount of carbohydrates in grams the product can have.
  min_protein: 10, # Float | The minimum amount of protein in grams the product must have.
  max_protein: 100, # Float | The maximum amount of protein in grams the product can have.
  min_fat: 1, # Float | The minimum amount of fat in grams the product must have.
  max_fat: 100, # Float | The maximum amount of fat in grams the product can have.
  offset: 56, # Integer | The number of results to skip (between 0 and 900).
  number: 10 # Integer | The maximum number of items to return (between 1 and 100). Defaults to 10.
}

begin
  #Search Grocery Products
  result = api_instance.search_grocery_products(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling ProductsApi->search_grocery_products: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The (natural language) search query. | [optional] 
 **min_calories** | **Float**| The minimum amount of calories the product must have. | [optional] 
 **max_calories** | **Float**| The maximum amount of calories the product can have. | [optional] 
 **min_carbs** | **Float**| The minimum amount of carbohydrates in grams the product must have. | [optional] 
 **max_carbs** | **Float**| The maximum amount of carbohydrates in grams the product can have. | [optional] 
 **min_protein** | **Float**| The minimum amount of protein in grams the product must have. | [optional] 
 **max_protein** | **Float**| The maximum amount of protein in grams the product can have. | [optional] 
 **min_fat** | **Float**| The minimum amount of fat in grams the product must have. | [optional] 
 **max_fat** | **Float**| The maximum amount of fat in grams the product can have. | [optional] 
 **offset** | **Integer**| The number of results to skip (between 0 and 900). | [optional] 
 **number** | **Integer**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]

### Return type

[**InlineResponse20027**](InlineResponse20027.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_grocery_products_by_upc

> InlineResponse20028 search_grocery_products_by_upc(upc)

Search Grocery Products by UPC

Get information about a packaged food using its UPC.

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKeyScheme
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKey'] = 'Bearer'
end

api_instance = OpenapiClient::ProductsApi.new
upc = 41631000564 # Float | The product's UPC.

begin
  #Search Grocery Products by UPC
  result = api_instance.search_grocery_products_by_upc(upc)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling ProductsApi->search_grocery_products_by_upc: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **upc** | **Float**| The product&#39;s UPC. | 

### Return type

[**InlineResponse20028**](InlineResponse20028.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## visualize_product_nutrition_by_id

> String visualize_product_nutrition_by_id(id, opts)

Product Nutrition by ID Widget

Visualize a product's nutritional information as HTML including CSS.

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKeyScheme
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKey'] = 'Bearer'
end

api_instance = OpenapiClient::ProductsApi.new
id = 1 # Integer | The item's id.
opts = {
  default_css: true, # Boolean | Whether the default CSS should be added to the response.
  accept: 'application/json' # String | Accept header.
}

begin
  #Product Nutrition by ID Widget
  result = api_instance.visualize_product_nutrition_by_id(id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling ProductsApi->visualize_product_nutrition_by_id: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The item&#39;s id. | 
 **default_css** | **Boolean**| Whether the default CSS should be added to the response. | [optional] [default to true]
 **accept** | **String**| Accept header. | [optional] 

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

