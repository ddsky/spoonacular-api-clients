# \ProductsApi

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

> models::AutocompleteProductSearch200Response autocomplete_product_search(query, number)
Autocomplete Product Search

Generate suggestions for grocery products based on a (partial) query. The matches will be found by looking in the title only.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**query** | **String** | The (partial) search query. | [required] |
**number** | Option<**i32**> | The number of results to return (between 1 and 25). |  |

### Return type

[**models::AutocompleteProductSearch200Response**](autocompleteProductSearch_200_response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## classify_grocery_product

> models::ClassifyGroceryProduct200Response classify_grocery_product(classify_grocery_product_request, locale)
Classify Grocery Product

This endpoint allows you to match a packaged food to a basic category, e.g. a specific brand of milk to the category milk.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**classify_grocery_product_request** | [**ClassifyGroceryProductRequest**](ClassifyGroceryProductRequest.md) |  | [required] |
**locale** | Option<**String**> | The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). |  |

### Return type

[**models::ClassifyGroceryProduct200Response**](classifyGroceryProduct_200_response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## classify_grocery_product_bulk

> Vec<models::ClassifyGroceryProductBulk200ResponseInner> classify_grocery_product_bulk(classify_grocery_product_bulk_request_inner, locale)
Classify Grocery Product Bulk

Provide a set of product jsons, get back classified products.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**classify_grocery_product_bulk_request_inner** | [**Vec<models::ClassifyGroceryProductBulkRequestInner>**](classifyGroceryProductBulk_request_inner.md) |  | [required] |
**locale** | Option<**String**> | The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). |  |

### Return type

[**Vec<models::ClassifyGroceryProductBulk200ResponseInner>**](classifyGroceryProductBulk_200_response_inner.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_comparable_products

> models::GetComparableProducts200Response get_comparable_products(upc)
Get Comparable Products

Find comparable products to the given one.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**upc** | **String** | The UPC of the product for which you want to find comparable products. | [required] |

### Return type

[**models::GetComparableProducts200Response**](getComparableProducts_200_response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_product_information

> models::ProductInformation get_product_information(id)
Get Product Information

Use a product id to get full information about a product, such as ingredients, nutrition, etc. The nutritional information is per serving.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | The id of the packaged food. | [required] |

### Return type

[**models::ProductInformation**](ProductInformation.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## product_nutrition_by_id_image

> std::path::PathBuf product_nutrition_by_id_image(id)
Product Nutrition by ID Image

Visualize a product's nutritional information as an image.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | The id of the product. | [required] |

### Return type

[**std::path::PathBuf**](std::path::PathBuf.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## product_nutrition_label_image

> std::path::PathBuf product_nutrition_label_image(id, show_optional_nutrients, show_zero_values, show_ingredients)
Product Nutrition Label Image

Get a product's nutrition label as an image.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | The product id. | [required] |
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


## product_nutrition_label_widget

> String product_nutrition_label_widget(id, default_css, show_optional_nutrients, show_zero_values, show_ingredients)
Product Nutrition Label Widget

Get a product's nutrition label as an HTML widget.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | The product id. | [required] |
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


## search_grocery_products

> models::SearchGroceryProducts200Response search_grocery_products(query, min_calories, max_calories, min_carbs, max_carbs, min_protein, max_protein, min_fat, max_fat, add_product_information, offset, number)
Search Grocery Products

Search packaged food products, such as frozen pizza or Greek yogurt.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**query** | **String** | The (natural language) search query. | [required] |
**min_calories** | Option<**f64**> | The minimum amount of calories the product must have. |  |
**max_calories** | Option<**f64**> | The maximum amount of calories the product can have. |  |
**min_carbs** | Option<**f64**> | The minimum amount of carbohydrates in grams the product must have. |  |
**max_carbs** | Option<**f64**> | The maximum amount of carbohydrates in grams the product can have. |  |
**min_protein** | Option<**f64**> | The minimum amount of protein in grams the product must have. |  |
**max_protein** | Option<**f64**> | The maximum amount of protein in grams the product can have. |  |
**min_fat** | Option<**f64**> | The minimum amount of fat in grams the product must have. |  |
**max_fat** | Option<**f64**> | The maximum amount of fat in grams the product can have. |  |
**add_product_information** | Option<**bool**> | If set to true, you get more information about the products returned. |  |
**offset** | Option<**i32**> | The number of results to skip (between 0 and 900). |  |
**number** | Option<**i32**> | The maximum number of items to return (between 1 and 100). Defaults to 10. |  |[default to 10]

### Return type

[**models::SearchGroceryProducts200Response**](searchGroceryProducts_200_response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## search_grocery_products_by_upc

> models::SearchGroceryProductsByUpc200Response search_grocery_products_by_upc(upc)
Search Grocery Products by UPC

Get information about a packaged food using its UPC.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**upc** | **String** | The product's UPC. | [required] |

### Return type

[**models::SearchGroceryProductsByUpc200Response**](searchGroceryProductsByUPC_200_response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## visualize_product_nutrition_by_id

> String visualize_product_nutrition_by_id(id, default_css)
Product Nutrition by ID Widget

Visualize a product's nutritional information as HTML including CSS.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | The id of the product. | [required] |
**default_css** | Option<**bool**> | Whether the default CSS should be added to the response. |  |[default to true]

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

