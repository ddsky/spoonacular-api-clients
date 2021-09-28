# OpenapiClient::MenuItemsApi

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



## autocomplete_menu_item_search

> InlineResponse20032 autocomplete_menu_item_search(query, opts)

Autocomplete Menu Item Search

Generate suggestions for menu items based on a (partial) query. The matches will be found by looking in the title only.

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

api_instance = OpenapiClient::MenuItemsApi.new
query = 'chicke' # String | The (partial) search query.
opts = {
  number: 10 # Float | The number of results to return (between 1 and 25).
}

begin
  #Autocomplete Menu Item Search
  result = api_instance.autocomplete_menu_item_search(query, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling MenuItemsApi->autocomplete_menu_item_search: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The (partial) search query. | 
 **number** | **Float**| The number of results to return (between 1 and 25). | [optional] 

### Return type

[**InlineResponse20032**](InlineResponse20032.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_menu_item_information

> InlineResponse20036 get_menu_item_information(id)

Get Menu Item Information

Use a menu item id to get all available information about a menu item, such as nutrition.

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

api_instance = OpenapiClient::MenuItemsApi.new
id = 1 # Integer | The item's id.

begin
  #Get Menu Item Information
  result = api_instance.get_menu_item_information(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling MenuItemsApi->get_menu_item_information: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The item&#39;s id. | 

### Return type

[**InlineResponse20036**](InlineResponse20036.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## menu_item_nutrition_by_id_image

> Object menu_item_nutrition_by_id_image(id)

Menu Item Nutrition by ID Image

Visualize a menu item's nutritional information as HTML including CSS.

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

api_instance = OpenapiClient::MenuItemsApi.new
id = 424571 # Float | The menu item id.

begin
  #Menu Item Nutrition by ID Image
  result = api_instance.menu_item_nutrition_by_id_image(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling MenuItemsApi->menu_item_nutrition_by_id_image: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| The menu item id. | 

### Return type

**Object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/png


## menu_item_nutrition_label_image

> Object menu_item_nutrition_label_image(id, opts)

Menu Item Nutrition Label Image

Visualize a menu item's nutritional label information as an image.

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

api_instance = OpenapiClient::MenuItemsApi.new
id = 342313 # Float | The menu item id.
opts = {
  show_optional_nutrients: false, # Boolean | Whether to show optional nutrients.
  show_zero_values: false, # Boolean | Whether to show zero values.
  show_ingredients: false # Boolean | Whether to show a list of ingredients.
}

begin
  #Menu Item Nutrition Label Image
  result = api_instance.menu_item_nutrition_label_image(id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling MenuItemsApi->menu_item_nutrition_label_image: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| The menu item id. | 
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


## menu_item_nutrition_label_widget

> String menu_item_nutrition_label_widget(id, opts)

Menu Item Nutrition Label Widget

Visualize a menu item's nutritional label information as HTML including CSS.

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

api_instance = OpenapiClient::MenuItemsApi.new
id = 342313 # Float | The menu item id.
opts = {
  default_css: true, # Boolean | Whether the default CSS should be added to the response.
  show_optional_nutrients: false, # Boolean | Whether to show optional nutrients.
  show_zero_values: false, # Boolean | Whether to show zero values.
  show_ingredients: false # Boolean | Whether to show a list of ingredients.
}

begin
  #Menu Item Nutrition Label Widget
  result = api_instance.menu_item_nutrition_label_widget(id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling MenuItemsApi->menu_item_nutrition_label_widget: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| The menu item id. | 
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


## search_menu_items

> InlineResponse20035 search_menu_items(opts)

Search Menu Items

Search over 115,000 menu items from over 800 fast food and chain restaurants. For example, McDonald's Big Mac or Starbucks Mocha.

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

api_instance = OpenapiClient::MenuItemsApi.new
opts = {
  query: 'burger', # String | The (natural language) search query.
  min_calories: 50, # Float | The minimum amount of calories the menu item must have.
  max_calories: 800, # Float | The maximum amount of calories the menu item can have.
  min_carbs: 10, # Float | The minimum amount of carbohydrates in grams the menu item must have.
  max_carbs: 100, # Float | The maximum amount of carbohydrates in grams the menu item can have.
  min_protein: 10, # Float | The minimum amount of protein in grams the menu item must have.
  max_protein: 100, # Float | The maximum amount of protein in grams the menu item can have.
  min_fat: 1, # Float | The minimum amount of fat in grams the menu item must have.
  max_fat: 100, # Float | The maximum amount of fat in grams the menu item can have.
  offset: 56, # Integer | The number of results to skip (between 0 and 900).
  number: 10 # Integer | The maximum number of items to return (between 1 and 100). Defaults to 10.
}

begin
  #Search Menu Items
  result = api_instance.search_menu_items(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling MenuItemsApi->search_menu_items: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The (natural language) search query. | [optional] 
 **min_calories** | **Float**| The minimum amount of calories the menu item must have. | [optional] 
 **max_calories** | **Float**| The maximum amount of calories the menu item can have. | [optional] 
 **min_carbs** | **Float**| The minimum amount of carbohydrates in grams the menu item must have. | [optional] 
 **max_carbs** | **Float**| The maximum amount of carbohydrates in grams the menu item can have. | [optional] 
 **min_protein** | **Float**| The minimum amount of protein in grams the menu item must have. | [optional] 
 **max_protein** | **Float**| The maximum amount of protein in grams the menu item can have. | [optional] 
 **min_fat** | **Float**| The minimum amount of fat in grams the menu item must have. | [optional] 
 **max_fat** | **Float**| The maximum amount of fat in grams the menu item can have. | [optional] 
 **offset** | **Integer**| The number of results to skip (between 0 and 900). | [optional] 
 **number** | **Integer**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]

### Return type

[**InlineResponse20035**](InlineResponse20035.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## visualize_menu_item_nutrition_by_id

> String visualize_menu_item_nutrition_by_id(id, opts)

Menu Item Nutrition by ID Widget

Visualize a menu item's nutritional information as HTML including CSS.

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

api_instance = OpenapiClient::MenuItemsApi.new
id = 1 # Integer | The item's id.
opts = {
  default_css: true, # Boolean | Whether the default CSS should be added to the response.
  accept: 'application/json' # String | Accept header.
}

begin
  #Menu Item Nutrition by ID Widget
  result = api_instance.visualize_menu_item_nutrition_by_id(id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling MenuItemsApi->visualize_menu_item_nutrition_by_id: #{e}"
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

