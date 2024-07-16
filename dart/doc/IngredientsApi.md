# openapi.api.IngredientsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**autocompleteIngredientSearch**](IngredientsApi.md#autocompleteingredientsearch) | **GET** /food/ingredients/autocomplete | Autocomplete Ingredient Search
[**computeIngredientAmount**](IngredientsApi.md#computeingredientamount) | **GET** /food/ingredients/{id}/amount | Compute Ingredient Amount
[**getIngredientInformation**](IngredientsApi.md#getingredientinformation) | **GET** /food/ingredients/{id}/information | Get Ingredient Information
[**getIngredientSubstitutes**](IngredientsApi.md#getingredientsubstitutes) | **GET** /food/ingredients/substitutes | Get Ingredient Substitutes
[**getIngredientSubstitutesByID**](IngredientsApi.md#getingredientsubstitutesbyid) | **GET** /food/ingredients/{id}/substitutes | Get Ingredient Substitutes by ID
[**ingredientSearch**](IngredientsApi.md#ingredientsearch) | **GET** /food/ingredients/search | Ingredient Search
[**ingredientsByIDImage**](IngredientsApi.md#ingredientsbyidimage) | **GET** /recipes/{id}/ingredientWidget.png | Ingredients by ID Image
[**mapIngredientsToGroceryProducts**](IngredientsApi.md#mapingredientstogroceryproducts) | **POST** /food/ingredients/map | Map Ingredients to Grocery Products
[**visualizeIngredients**](IngredientsApi.md#visualizeingredients) | **POST** /recipes/visualizeIngredients | Ingredients Widget


# **autocompleteIngredientSearch**
> Set<AutocompleteIngredientSearch200ResponseInner> autocompleteIngredientSearch(query, number, metaInformation, intolerances, language)

Autocomplete Ingredient Search

Autocomplete the entry of an ingredient.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = IngredientsApi();
final query = burger; // String | The (natural language) search query.
final number = 10; // int | The maximum number of items to return (between 1 and 100). Defaults to 10.
final metaInformation = false; // bool | Whether to return more meta information about the ingredients.
final intolerances = egg; // String | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.
final language = en; // String | The language of the input. Either 'en' or 'de'.

try {
    final result = api_instance.autocompleteIngredientSearch(query, number, metaInformation, intolerances, language);
    print(result);
} catch (e) {
    print('Exception when calling IngredientsApi->autocompleteIngredientSearch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The (natural language) search query. | 
 **number** | **int**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]
 **metaInformation** | **bool**| Whether to return more meta information about the ingredients. | [optional] 
 **intolerances** | **String**| A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. | [optional] 
 **language** | **String**| The language of the input. Either 'en' or 'de'. | [optional] 

### Return type

[**Set<AutocompleteIngredientSearch200ResponseInner>**](AutocompleteIngredientSearch200ResponseInner.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **computeIngredientAmount**
> ComputeIngredientAmount200Response computeIngredientAmount(id, nutrient, target, unit)

Compute Ingredient Amount

Compute the amount you need of a certain ingredient for a certain nutritional goal. For example, how much pineapple do you have to eat to get 10 grams of protein?

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = IngredientsApi();
final id = 9266; // int | The id of the ingredient you want the amount for.
final nutrient = protein; // String | The target nutrient. See a list of supported nutrients.
final target = 2; // int | The target number of the given nutrient.
final unit = oz; // String | The target unit.

try {
    final result = api_instance.computeIngredientAmount(id, nutrient, target, unit);
    print(result);
} catch (e) {
    print('Exception when calling IngredientsApi->computeIngredientAmount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the ingredient you want the amount for. | 
 **nutrient** | **String**| The target nutrient. See a list of supported nutrients. | 
 **target** | **int**| The target number of the given nutrient. | 
 **unit** | **String**| The target unit. | [optional] 

### Return type

[**ComputeIngredientAmount200Response**](ComputeIngredientAmount200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIngredientInformation**
> IngredientInformation getIngredientInformation(id, amount, unit)

Get Ingredient Information

Use an ingredient id to get all available information about an ingredient, such as its image and supermarket aisle.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = IngredientsApi();
final id = 9266; // int | The ingredient id.
final amount = 150; // num | The amount of this ingredient.
final unit = grams; // String | The unit for the given amount.

try {
    final result = api_instance.getIngredientInformation(id, amount, unit);
    print(result);
} catch (e) {
    print('Exception when calling IngredientsApi->getIngredientInformation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The ingredient id. | 
 **amount** | **num**| The amount of this ingredient. | [optional] 
 **unit** | **String**| The unit for the given amount. | [optional] 

### Return type

[**IngredientInformation**](IngredientInformation.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIngredientSubstitutes**
> GetIngredientSubstitutes200Response getIngredientSubstitutes(ingredientName)

Get Ingredient Substitutes

Search for substitutes for a given ingredient.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = IngredientsApi();
final ingredientName = butter; // String | The name of the ingredient you want to replace.

try {
    final result = api_instance.getIngredientSubstitutes(ingredientName);
    print(result);
} catch (e) {
    print('Exception when calling IngredientsApi->getIngredientSubstitutes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredientName** | **String**| The name of the ingredient you want to replace. | 

### Return type

[**GetIngredientSubstitutes200Response**](GetIngredientSubstitutes200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIngredientSubstitutesByID**
> GetIngredientSubstitutes200Response getIngredientSubstitutesByID(id)

Get Ingredient Substitutes by ID

Search for substitutes for a given ingredient.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = IngredientsApi();
final id = 1001; // int | The id of the ingredient you want substitutes for.

try {
    final result = api_instance.getIngredientSubstitutesByID(id);
    print(result);
} catch (e) {
    print('Exception when calling IngredientsApi->getIngredientSubstitutesByID: $e\n');
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

# **ingredientSearch**
> IngredientSearch200Response ingredientSearch(query, addChildren, minProteinPercent, maxProteinPercent, minFatPercent, maxFatPercent, minCarbsPercent, maxCarbsPercent, metaInformation, intolerances, sort, sortDirection, offset, number, language)

Ingredient Search

Search for simple whole foods (e.g. fruits, vegetables, nuts, grains, meat, fish, dairy etc.).

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = IngredientsApi();
final query = burger; // String | The (natural language) search query.
final addChildren = true; // bool | Whether to add children of found foods.
final minProteinPercent = 10; // num | The minimum percentage of protein the food must have (between 0 and 100).
final maxProteinPercent = 90; // num | The maximum percentage of protein the food can have (between 0 and 100).
final minFatPercent = 10; // num | The minimum percentage of fat the food must have (between 0 and 100).
final maxFatPercent = 90; // num | The maximum percentage of fat the food can have (between 0 and 100).
final minCarbsPercent = 10; // num | The minimum percentage of carbs the food must have (between 0 and 100).
final maxCarbsPercent = 90; // num | The maximum percentage of carbs the food can have (between 0 and 100).
final metaInformation = false; // bool | Whether to return more meta information about the ingredients.
final intolerances = egg; // String | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.
final sort = calories; // String | The strategy to sort recipes by. See a full list of supported sorting options.
final sortDirection = asc; // String | The direction in which to sort. Must be either 'asc' (ascending) or 'desc' (descending).
final offset = 56; // int | The number of results to skip (between 0 and 900).
final number = 10; // int | The maximum number of items to return (between 1 and 100). Defaults to 10.
final language = en; // String | The language of the input. Either 'en' or 'de'.

try {
    final result = api_instance.ingredientSearch(query, addChildren, minProteinPercent, maxProteinPercent, minFatPercent, maxFatPercent, minCarbsPercent, maxCarbsPercent, metaInformation, intolerances, sort, sortDirection, offset, number, language);
    print(result);
} catch (e) {
    print('Exception when calling IngredientsApi->ingredientSearch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The (natural language) search query. | 
 **addChildren** | **bool**| Whether to add children of found foods. | [optional] 
 **minProteinPercent** | **num**| The minimum percentage of protein the food must have (between 0 and 100). | [optional] 
 **maxProteinPercent** | **num**| The maximum percentage of protein the food can have (between 0 and 100). | [optional] 
 **minFatPercent** | **num**| The minimum percentage of fat the food must have (between 0 and 100). | [optional] 
 **maxFatPercent** | **num**| The maximum percentage of fat the food can have (between 0 and 100). | [optional] 
 **minCarbsPercent** | **num**| The minimum percentage of carbs the food must have (between 0 and 100). | [optional] 
 **maxCarbsPercent** | **num**| The maximum percentage of carbs the food can have (between 0 and 100). | [optional] 
 **metaInformation** | **bool**| Whether to return more meta information about the ingredients. | [optional] 
 **intolerances** | **String**| A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. | [optional] 
 **sort** | **String**| The strategy to sort recipes by. See a full list of supported sorting options. | [optional] 
 **sortDirection** | **String**| The direction in which to sort. Must be either 'asc' (ascending) or 'desc' (descending). | [optional] 
 **offset** | **int**| The number of results to skip (between 0 and 900). | [optional] 
 **number** | **int**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]
 **language** | **String**| The language of the input. Either 'en' or 'de'. | [optional] 

### Return type

[**IngredientSearch200Response**](IngredientSearch200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ingredientsByIDImage**
> MultipartFile ingredientsByIDImage(id, measure)

Ingredients by ID Image

Visualize a recipe's ingredient list.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = IngredientsApi();
final id = 1082038; // int | The recipe id.
final measure = metric; // String | Whether the the measures should be 'us' or 'metric'.

try {
    final result = api_instance.ingredientsByIDImage(id, measure);
    print(result);
} catch (e) {
    print('Exception when calling IngredientsApi->ingredientsByIDImage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The recipe id. | 
 **measure** | **String**| Whether the the measures should be 'us' or 'metric'. | [optional] 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mapIngredientsToGroceryProducts**
> Set<MapIngredientsToGroceryProducts200ResponseInner> mapIngredientsToGroceryProducts(mapIngredientsToGroceryProductsRequest)

Map Ingredients to Grocery Products

Map a set of ingredients to products you can buy in the grocery store.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = IngredientsApi();
final mapIngredientsToGroceryProductsRequest = MapIngredientsToGroceryProductsRequest(); // MapIngredientsToGroceryProductsRequest | 

try {
    final result = api_instance.mapIngredientsToGroceryProducts(mapIngredientsToGroceryProductsRequest);
    print(result);
} catch (e) {
    print('Exception when calling IngredientsApi->mapIngredientsToGroceryProducts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mapIngredientsToGroceryProductsRequest** | [**MapIngredientsToGroceryProductsRequest**](MapIngredientsToGroceryProductsRequest.md)|  | 

### Return type

[**Set<MapIngredientsToGroceryProducts200ResponseInner>**](MapIngredientsToGroceryProducts200ResponseInner.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualizeIngredients**
> String visualizeIngredients(ingredientList, servings, language, measure, view, defaultCss, showBacklink)

Ingredients Widget

Visualize ingredients of a recipe. You can play around with that endpoint!

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

final api_instance = IngredientsApi();
final ingredientList = ingredientList_example; // String | The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n).
final servings = 8.14; // num | The number of servings.
final language = en; // String | The language of the input. Either 'en' or 'de'.
final measure = measure_example; // String | The original system of measurement, either 'metric' or 'us'.
final view = view_example; // String | How to visualize the ingredients, either 'grid' or 'list'.
final defaultCss = true; // bool | Whether the default CSS should be added to the response.
final showBacklink = true; // bool | Whether to show a backlink to spoonacular. If set false, this call counts against your quota.

try {
    final result = api_instance.visualizeIngredients(ingredientList, servings, language, measure, view, defaultCss, showBacklink);
    print(result);
} catch (e) {
    print('Exception when calling IngredientsApi->visualizeIngredients: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredientList** | **String**| The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n). | 
 **servings** | **num**| The number of servings. | 
 **language** | **String**| The language of the input. Either 'en' or 'de'. | [optional] 
 **measure** | **String**| The original system of measurement, either 'metric' or 'us'. | [optional] 
 **view** | **String**| How to visualize the ingredients, either 'grid' or 'list'. | [optional] 
 **defaultCss** | **bool**| Whether the default CSS should be added to the response. | [optional] 
 **showBacklink** | **bool**| Whether to show a backlink to spoonacular. If set false, this call counts against your quota. | [optional] 

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

