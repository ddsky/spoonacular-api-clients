# com.spoonacular.client\IngredientsApi

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



## autocomplete_ingredient_search

> Vec<crate::models::AutocompleteIngredientSearch200ResponseInner> autocomplete_ingredient_search(query, number, meta_information, intolerances)
Autocomplete Ingredient Search

Autocomplete the entry of an ingredient.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**query** | Option<**String**> | The (natural language) search query. |  |
**number** | Option<**i32**> | The maximum number of items to return (between 1 and 100). Defaults to 10. |  |[default to 10]
**meta_information** | Option<**bool**> | Whether to return more meta information about the ingredients. |  |
**intolerances** | Option<**String**> | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. |  |

### Return type

[**Vec<crate::models::AutocompleteIngredientSearch200ResponseInner>**](autocompleteIngredientSearch_200_response_inner.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## compute_ingredient_amount

> crate::models::ComputeIngredientAmount200Response compute_ingredient_amount(id, nutrient, target, unit)
Compute Ingredient Amount

Compute the amount you need of a certain ingredient for a certain nutritional goal. For example, how much pineapple do you have to eat to get 10 grams of protein?

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **f32** | The id of the ingredient you want the amount for. | [required] |
**nutrient** | **String** | The target nutrient. See a list of supported nutrients. | [required] |
**target** | **f32** | The target number of the given nutrient. | [required] |
**unit** | Option<**String**> | The target unit. |  |

### Return type

[**crate::models::ComputeIngredientAmount200Response**](computeIngredientAmount_200_response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_ingredient_information

> crate::models::GetIngredientInformation200Response get_ingredient_information(id, amount, unit)
Get Ingredient Information

Use an ingredient id to get all available information about an ingredient, such as its image and supermarket aisle.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | The item's id. | [required] |
**amount** | Option<**f32**> | The amount of this ingredient. |  |
**unit** | Option<**String**> | The unit for the given amount. |  |

### Return type

[**crate::models::GetIngredientInformation200Response**](getIngredientInformation_200_response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_ingredient_substitutes

> crate::models::GetIngredientSubstitutes200Response get_ingredient_substitutes(ingredient_name)
Get Ingredient Substitutes

Search for substitutes for a given ingredient.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**ingredient_name** | **String** | The name of the ingredient you want to replace. | [required] |

### Return type

[**crate::models::GetIngredientSubstitutes200Response**](getIngredientSubstitutes_200_response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_ingredient_substitutes_by_id

> crate::models::GetIngredientSubstitutes200Response get_ingredient_substitutes_by_id(id)
Get Ingredient Substitutes by ID

Search for substitutes for a given ingredient.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | The item's id. | [required] |

### Return type

[**crate::models::GetIngredientSubstitutes200Response**](getIngredientSubstitutes_200_response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## ingredient_search

> crate::models::IngredientSearch200Response ingredient_search(query, add_children, min_protein_percent, max_protein_percent, min_fat_percent, max_fat_percent, min_carbs_percent, max_carbs_percent, meta_information, intolerances, sort, sort_direction, offset, number)
Ingredient Search

Search for simple whole foods (e.g. fruits, vegetables, nuts, grains, meat, fish, dairy etc.).

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**query** | Option<**String**> | The (natural language) search query. |  |
**add_children** | Option<**bool**> | Whether to add children of found foods. |  |
**min_protein_percent** | Option<**f32**> | The minimum percentage of protein the food must have (between 0 and 100). |  |
**max_protein_percent** | Option<**f32**> | The maximum percentage of protein the food can have (between 0 and 100). |  |
**min_fat_percent** | Option<**f32**> | The minimum percentage of fat the food must have (between 0 and 100). |  |
**max_fat_percent** | Option<**f32**> | The maximum percentage of fat the food can have (between 0 and 100). |  |
**min_carbs_percent** | Option<**f32**> | The minimum percentage of carbs the food must have (between 0 and 100). |  |
**max_carbs_percent** | Option<**f32**> | The maximum percentage of carbs the food can have (between 0 and 100). |  |
**meta_information** | Option<**bool**> | Whether to return more meta information about the ingredients. |  |
**intolerances** | Option<**String**> | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. |  |
**sort** | Option<**String**> | The strategy to sort recipes by. See a full list of supported sorting options. |  |
**sort_direction** | Option<**String**> | The direction in which to sort. Must be either 'asc' (ascending) or 'desc' (descending). |  |
**offset** | Option<**i32**> | The number of results to skip (between 0 and 900). |  |
**number** | Option<**i32**> | The maximum number of items to return (between 1 and 100). Defaults to 10. |  |[default to 10]

### Return type

[**crate::models::IngredientSearch200Response**](ingredientSearch_200_response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## ingredients_by_id_image

> serde_json::Value ingredients_by_id_image(id, measure)
Ingredients by ID Image

Visualize a recipe's ingredient list.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **f32** | The recipe id. | [required] |
**measure** | Option<**String**> | Whether the the measures should be 'us' or 'metric'. |  |

### Return type

[**serde_json::Value**](serde_json::Value.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## map_ingredients_to_grocery_products

> Vec<crate::models::MapIngredientsToGroceryProducts200ResponseInner> map_ingredients_to_grocery_products(map_ingredients_to_grocery_products_request)
Map Ingredients to Grocery Products

Map a set of ingredients to products you can buy in the grocery store.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**map_ingredients_to_grocery_products_request** | [**MapIngredientsToGroceryProductsRequest**](MapIngredientsToGroceryProductsRequest.md) |  | [required] |

### Return type

[**Vec<crate::models::MapIngredientsToGroceryProducts200ResponseInner>**](mapIngredientsToGroceryProducts_200_response_inner.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## visualize_ingredients

> String visualize_ingredients(content_type, language, accept)
Ingredients Widget

Visualize ingredients of a recipe. You can play around with that endpoint!

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**content_type** | Option<**String**> | The content type. |  |
**language** | Option<**String**> | The language of the input. Either 'en' or 'de'. |  |
**accept** | Option<**String**> | Accept header. |  |

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

