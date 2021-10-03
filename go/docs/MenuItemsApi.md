# com.spoonacular.client\MenuItemsApi

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AutocompleteMenuItemSearch**](MenuItemsApi.md#AutocompleteMenuItemSearch) | **Get** /food/menuItems/suggest | Autocomplete Menu Item Search
[**GetMenuItemInformation**](MenuItemsApi.md#GetMenuItemInformation) | **Get** /food/menuItems/{id} | Get Menu Item Information
[**MenuItemNutritionByIDImage**](MenuItemsApi.md#MenuItemNutritionByIDImage) | **Get** /food/menuItems/{id}/nutritionWidget.png | Menu Item Nutrition by ID Image
[**MenuItemNutritionLabelImage**](MenuItemsApi.md#MenuItemNutritionLabelImage) | **Get** /food/menuItems/{id}/nutritionLabel.png | Menu Item Nutrition Label Image
[**MenuItemNutritionLabelWidget**](MenuItemsApi.md#MenuItemNutritionLabelWidget) | **Get** /food/menuItems/{id}/nutritionLabel | Menu Item Nutrition Label Widget
[**SearchMenuItems**](MenuItemsApi.md#SearchMenuItems) | **Get** /food/menuItems/search | Search Menu Items
[**VisualizeMenuItemNutritionByID**](MenuItemsApi.md#VisualizeMenuItemNutritionByID) | **Get** /food/menuItems/{id}/nutritionWidget | Menu Item Nutrition by ID Widget



## AutocompleteMenuItemSearch

> InlineResponse20032 AutocompleteMenuItemSearch(ctx, query, optional)
Autocomplete Menu Item Search

Generate suggestions for menu items based on a (partial) query. The matches will be found by looking in the title only.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**query** | **string**| The (partial) search query. | 
 **optional** | ***AutocompleteMenuItemSearchOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a AutocompleteMenuItemSearchOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **number** | **optional.Float32**| The number of results to return (between 1 and 25). | 

### Return type

[**InlineResponse20032**](inline_response_200_32.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetMenuItemInformation

> InlineResponse20036 GetMenuItemInformation(ctx, id)
Get Menu Item Information

Use a menu item id to get all available information about a menu item, such as nutrition.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32**| The item&#39;s id. | 

### Return type

[**InlineResponse20036**](inline_response_200_36.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MenuItemNutritionByIDImage

> map[string]interface{} MenuItemNutritionByIDImage(ctx, id)
Menu Item Nutrition by ID Image

Visualize a menu item's nutritional information as HTML including CSS.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **float32**| The menu item id. | 

### Return type

[**map[string]interface{}**](map[string]interface{}.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MenuItemNutritionLabelImage

> map[string]interface{} MenuItemNutritionLabelImage(ctx, id, optional)
Menu Item Nutrition Label Image

Visualize a menu item's nutritional label information as an image.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **float32**| The menu item id. | 
 **optional** | ***MenuItemNutritionLabelImageOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a MenuItemNutritionLabelImageOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **showOptionalNutrients** | **optional.Bool**| Whether to show optional nutrients. | 
 **showZeroValues** | **optional.Bool**| Whether to show zero values. | 
 **showIngredients** | **optional.Bool**| Whether to show a list of ingredients. | 

### Return type

[**map[string]interface{}**](map[string]interface{}.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MenuItemNutritionLabelWidget

> string MenuItemNutritionLabelWidget(ctx, id, optional)
Menu Item Nutrition Label Widget

Visualize a menu item's nutritional label information as HTML including CSS.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **float32**| The menu item id. | 
 **optional** | ***MenuItemNutritionLabelWidgetOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a MenuItemNutritionLabelWidgetOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **defaultCss** | **optional.Bool**| Whether the default CSS should be added to the response. | [default to true]
 **showOptionalNutrients** | **optional.Bool**| Whether to show optional nutrients. | 
 **showZeroValues** | **optional.Bool**| Whether to show zero values. | 
 **showIngredients** | **optional.Bool**| Whether to show a list of ingredients. | 

### Return type

**string**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SearchMenuItems

> InlineResponse20035 SearchMenuItems(ctx, optional)
Search Menu Items

Search over 115,000 menu items from over 800 fast food and chain restaurants. For example, McDonald's Big Mac or Starbucks Mocha.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***SearchMenuItemsOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a SearchMenuItemsOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **optional.String**| The (natural language) search query. | 
 **minCalories** | **optional.Float32**| The minimum amount of calories the menu item must have. | 
 **maxCalories** | **optional.Float32**| The maximum amount of calories the menu item can have. | 
 **minCarbs** | **optional.Float32**| The minimum amount of carbohydrates in grams the menu item must have. | 
 **maxCarbs** | **optional.Float32**| The maximum amount of carbohydrates in grams the menu item can have. | 
 **minProtein** | **optional.Float32**| The minimum amount of protein in grams the menu item must have. | 
 **maxProtein** | **optional.Float32**| The maximum amount of protein in grams the menu item can have. | 
 **minFat** | **optional.Float32**| The minimum amount of fat in grams the menu item must have. | 
 **maxFat** | **optional.Float32**| The maximum amount of fat in grams the menu item can have. | 
 **addMenuItemInformation** | **optional.Bool**| If set to true, you get more information about the menu items returned. | 
 **offset** | **optional.Int32**| The number of results to skip (between 0 and 900). | 
 **number** | **optional.Int32**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [default to 10]

### Return type

[**InlineResponse20035**](inline_response_200_35.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## VisualizeMenuItemNutritionByID

> string VisualizeMenuItemNutritionByID(ctx, id, optional)
Menu Item Nutrition by ID Widget

Visualize a menu item's nutritional information as HTML including CSS.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32**| The item&#39;s id. | 
 **optional** | ***VisualizeMenuItemNutritionByIDOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a VisualizeMenuItemNutritionByIDOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **defaultCss** | **optional.Bool**| Whether the default CSS should be added to the response. | [default to true]
 **accept** | **optional.String**| Accept header. | 

### Return type

**string**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

