# com.spoonacular.client\MenuItemsApi

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**autocomplete_menu_item_search**](MenuItemsApi.md#autocomplete_menu_item_search) | **Get** /food/menuItems/suggest | Autocomplete Menu Item Search
[**get_menu_item_information**](MenuItemsApi.md#get_menu_item_information) | **Get** /food/menuItems/{id} | Get Menu Item Information
[**menu_item_nutrition_by_id_image**](MenuItemsApi.md#menu_item_nutrition_by_id_image) | **Get** /food/menuItems/{id}/nutritionWidget.png | Menu Item Nutrition by ID Image
[**menu_item_nutrition_label_image**](MenuItemsApi.md#menu_item_nutrition_label_image) | **Get** /food/menuItems/{id}/nutritionLabel.png | Menu Item Nutrition Label Image
[**menu_item_nutrition_label_widget**](MenuItemsApi.md#menu_item_nutrition_label_widget) | **Get** /food/menuItems/{id}/nutritionLabel | Menu Item Nutrition Label Widget
[**search_menu_items**](MenuItemsApi.md#search_menu_items) | **Get** /food/menuItems/search | Search Menu Items
[**visualize_menu_item_nutrition_by_id**](MenuItemsApi.md#visualize_menu_item_nutrition_by_id) | **Get** /food/menuItems/{id}/nutritionWidget | Menu Item Nutrition by ID Widget



## autocomplete_menu_item_search

> ::models::InlineResponse20032 autocomplete_menu_item_search(ctx, query, optional)
Autocomplete Menu Item Search

Generate suggestions for menu items based on a (partial) query. The matches will be found by looking in the title only.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **query** | **String**| The (partial) search query. | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The (partial) search query. | 
 **number** | **f32**| The number of results to return (between 1 and 25). | 

### Return type

[**::models::InlineResponse20032**](inline_response_200_32.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_menu_item_information

> ::models::InlineResponse20036 get_menu_item_information(ctx, id)
Get Menu Item Information

Use a menu item id to get all available information about a menu item, such as nutrition.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **id** | **i32**| The item's id. | 

### Return type

[**::models::InlineResponse20036**](inline_response_200_36.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## menu_item_nutrition_by_id_image

> Value menu_item_nutrition_by_id_image(ctx, id)
Menu Item Nutrition by ID Image

Visualize a menu item's nutritional information as HTML including CSS.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **id** | **f32**| The menu item id. | 

### Return type

[**Value**](Value.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## menu_item_nutrition_label_image

> Value menu_item_nutrition_label_image(ctx, id, optional)
Menu Item Nutrition Label Image

Visualize a menu item's nutritional label information as an image.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **id** | **f32**| The menu item id. | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **f32**| The menu item id. | 
 **show_optional_nutrients** | **bool**| Whether to show optional nutrients. | 
 **show_zero_values** | **bool**| Whether to show zero values. | 
 **show_ingredients** | **bool**| Whether to show a list of ingredients. | 

### Return type

[**Value**](Value.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## menu_item_nutrition_label_widget

> String menu_item_nutrition_label_widget(ctx, id, optional)
Menu Item Nutrition Label Widget

Visualize a menu item's nutritional label information as HTML including CSS.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **id** | **f32**| The menu item id. | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **f32**| The menu item id. | 
 **default_css** | **bool**| Whether the default CSS should be added to the response. | [default to true]
 **show_optional_nutrients** | **bool**| Whether to show optional nutrients. | 
 **show_zero_values** | **bool**| Whether to show zero values. | 
 **show_ingredients** | **bool**| Whether to show a list of ingredients. | 

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## search_menu_items

> ::models::InlineResponse20035 search_menu_items(ctx, optional)
Search Menu Items

Search over 115,000 menu items from over 800 fast food and chain restaurants. For example, McDonald's Big Mac or Starbucks Mocha.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The (natural language) search query. | 
 **min_calories** | **f32**| The minimum amount of calories the menu item must have. | 
 **max_calories** | **f32**| The maximum amount of calories the menu item can have. | 
 **min_carbs** | **f32**| The minimum amount of carbohydrates in grams the menu item must have. | 
 **max_carbs** | **f32**| The maximum amount of carbohydrates in grams the menu item can have. | 
 **min_protein** | **f32**| The minimum amount of protein in grams the menu item must have. | 
 **max_protein** | **f32**| The maximum amount of protein in grams the menu item can have. | 
 **min_fat** | **f32**| The minimum amount of fat in grams the menu item must have. | 
 **max_fat** | **f32**| The maximum amount of fat in grams the menu item can have. | 
 **offset** | **i32**| The number of results to skip (between 0 and 900). | 
 **number** | **i32**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [default to 10]

### Return type

[**::models::InlineResponse20035**](inline_response_200_35.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## visualize_menu_item_nutrition_by_id

> String visualize_menu_item_nutrition_by_id(ctx, id, optional)
Menu Item Nutrition by ID Widget

Visualize a menu item's nutritional information as HTML including CSS.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **id** | **i32**| The item's id. | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **i32**| The item's id. | 
 **default_css** | **bool**| Whether the default CSS should be added to the response. | [default to true]
 **accept** | **String**| Accept header. | 

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

