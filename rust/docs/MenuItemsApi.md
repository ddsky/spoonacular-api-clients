# \MenuItemsApi

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

> crate::models::AutocompleteMenuItemSearch200Response autocomplete_menu_item_search(query, number)
Autocomplete Menu Item Search

Generate suggestions for menu items based on a (partial) query. The matches will be found by looking in the title only.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**query** | **String** | The (partial) search query. | [required] |
**number** | Option<**f32**> | The number of results to return (between 1 and 25). |  |

### Return type

[**crate::models::AutocompleteMenuItemSearch200Response**](autocompleteMenuItemSearch_200_response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_menu_item_information

> crate::models::GetMenuItemInformation200Response get_menu_item_information(id)
Get Menu Item Information

Use a menu item id to get all available information about a menu item, such as nutrition.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | The item's id. | [required] |

### Return type

[**crate::models::GetMenuItemInformation200Response**](getMenuItemInformation_200_response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## menu_item_nutrition_by_id_image

> std::path::PathBuf menu_item_nutrition_by_id_image(id)
Menu Item Nutrition by ID Image

Visualize a menu item's nutritional information as HTML including CSS.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **f32** | The menu item id. | [required] |

### Return type

[**std::path::PathBuf**](std::path::PathBuf.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## menu_item_nutrition_label_image

> std::path::PathBuf menu_item_nutrition_label_image(id, show_optional_nutrients, show_zero_values, show_ingredients)
Menu Item Nutrition Label Image

Visualize a menu item's nutritional label information as an image.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **f32** | The menu item id. | [required] |
**show_optional_nutrients** | Option<**bool**> | Whether to show optional nutrients. |  |
**show_zero_values** | Option<**bool**> | Whether to show zero values. |  |
**show_ingredients** | Option<**bool**> | Whether to show a list of ingredients. |  |

### Return type

[**std::path::PathBuf**](std::path::PathBuf.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## menu_item_nutrition_label_widget

> String menu_item_nutrition_label_widget(id, default_css, show_optional_nutrients, show_zero_values, show_ingredients)
Menu Item Nutrition Label Widget

Visualize a menu item's nutritional label information as HTML including CSS.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **f32** | The menu item id. | [required] |
**default_css** | Option<**bool**> | Whether the default CSS should be added to the response. |  |[default to true]
**show_optional_nutrients** | Option<**bool**> | Whether to show optional nutrients. |  |
**show_zero_values** | Option<**bool**> | Whether to show zero values. |  |
**show_ingredients** | Option<**bool**> | Whether to show a list of ingredients. |  |

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## search_menu_items

> crate::models::SearchMenuItems200Response search_menu_items(query, min_calories, max_calories, min_carbs, max_carbs, min_protein, max_protein, min_fat, max_fat, add_menu_item_information, offset, number)
Search Menu Items

Search over 115,000 menu items from over 800 fast food and chain restaurants. For example, McDonald's Big Mac or Starbucks Mocha.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**query** | Option<**String**> | The (natural language) search query. |  |
**min_calories** | Option<**f32**> | The minimum amount of calories the menu item must have. |  |
**max_calories** | Option<**f32**> | The maximum amount of calories the menu item can have. |  |
**min_carbs** | Option<**f32**> | The minimum amount of carbohydrates in grams the menu item must have. |  |
**max_carbs** | Option<**f32**> | The maximum amount of carbohydrates in grams the menu item can have. |  |
**min_protein** | Option<**f32**> | The minimum amount of protein in grams the menu item must have. |  |
**max_protein** | Option<**f32**> | The maximum amount of protein in grams the menu item can have. |  |
**min_fat** | Option<**f32**> | The minimum amount of fat in grams the menu item must have. |  |
**max_fat** | Option<**f32**> | The maximum amount of fat in grams the menu item can have. |  |
**add_menu_item_information** | Option<**bool**> | If set to true, you get more information about the menu items returned. |  |
**offset** | Option<**i32**> | The number of results to skip (between 0 and 900). |  |
**number** | Option<**i32**> | The maximum number of items to return (between 1 and 100). Defaults to 10. |  |[default to 10]

### Return type

[**crate::models::SearchMenuItems200Response**](searchMenuItems_200_response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## visualize_menu_item_nutrition_by_id

> String visualize_menu_item_nutrition_by_id(id, default_css)
Menu Item Nutrition by ID Widget

Visualize a menu item's nutritional information as HTML including CSS.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | The item's id. | [required] |
**default_css** | Option<**bool**> | Whether the default CSS should be added to the response. |  |[default to true]

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

