# openapi.api.IngredientsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**autocompleteIngredientSearch**](IngredientsApi.md#autocompleteIngredientSearch) | **GET** /food/ingredients/autocomplete | Autocomplete Ingredient Search
[**computeIngredientAmount**](IngredientsApi.md#computeIngredientAmount) | **GET** /food/ingredients/{id}/amount | Compute Ingredient Amount
[**getIngredientInformation**](IngredientsApi.md#getIngredientInformation) | **GET** /food/ingredients/{id}/information | Get Ingredient Information
[**getIngredientSubstitutes**](IngredientsApi.md#getIngredientSubstitutes) | **GET** /food/ingredients/substitutes | Get Ingredient Substitutes
[**getIngredientSubstitutesByID**](IngredientsApi.md#getIngredientSubstitutesByID) | **GET** /food/ingredients/{id}/substitutes | Get Ingredient Substitutes by ID
[**ingredientSearch**](IngredientsApi.md#ingredientSearch) | **GET** /food/ingredients/search | Ingredient Search
[**ingredientsByIDImage**](IngredientsApi.md#ingredientsByIDImage) | **GET** /recipes/{id}/ingredientWidget.png | Ingredients by ID Image
[**mapIngredientsToGroceryProducts**](IngredientsApi.md#mapIngredientsToGroceryProducts) | **POST** /food/ingredients/map | Map Ingredients to Grocery Products
[**visualizeIngredients**](IngredientsApi.md#visualizeIngredients) | **POST** /recipes/visualizeIngredients | Ingredients Widget


# **autocompleteIngredientSearch**
> List<InlineResponse20024> autocompleteIngredientSearch(query, number, metaInformation, intolerances)

Autocomplete Ingredient Search

Autocomplete the entry of an ingredient.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new IngredientsApi();
var query = burger; // String | The (natural language) search query.
var number = 10; // int | The maximum number of items to return (between 1 and 100). Defaults to 10.
var metaInformation = false; // bool | Whether to return more meta information about the ingredients.
var intolerances = egg; // String | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.

try { 
    var result = api_instance.autocompleteIngredientSearch(query, number, metaInformation, intolerances);
    print(result);
} catch (e) {
    print("Exception when calling IngredientsApi->autocompleteIngredientSearch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The (natural language) search query. | [optional] [default to null]
 **number** | **int**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]
 **metaInformation** | **bool**| Whether to return more meta information about the ingredients. | [optional] [default to null]
 **intolerances** | **String**| A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. | [optional] [default to null]

### Return type

[**List<InlineResponse20024>**](InlineResponse20024.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **computeIngredientAmount**
> RecipesParseIngredientsNutritionWeightPerServing computeIngredientAmount(id, nutrient, target, unit)

Compute Ingredient Amount

Compute the amount you need of a certain ingredient for a certain nutritional goal. For example, how much pineapple do you have to eat to get 10 grams of protein?

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new IngredientsApi();
var id = 9266; // num | The id of the ingredient you want the amount for.
var nutrient = protein; // String | The target nutrient. See a list of supported nutrients.
var target = 2; // num | The target number of the given nutrient.
var unit = oz; // String | The target unit.

try { 
    var result = api_instance.computeIngredientAmount(id, nutrient, target, unit);
    print(result);
} catch (e) {
    print("Exception when calling IngredientsApi->computeIngredientAmount: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **num**| The id of the ingredient you want the amount for. | [default to null]
 **nutrient** | **String**| The target nutrient. See a list of supported nutrients. | [default to null]
 **target** | **num**| The target number of the given nutrient. | [default to null]
 **unit** | **String**| The target unit. | [optional] [default to null]

### Return type

[**RecipesParseIngredientsNutritionWeightPerServing**](RecipesParseIngredientsNutritionWeightPerServing.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIngredientInformation**
> InlineResponse20022 getIngredientInformation(id, amount, unit)

Get Ingredient Information

Use an ingredient id to get all available information about an ingredient, such as its image and supermarket aisle.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new IngredientsApi();
var id = 1; // int | The item's id.
var amount = 150; // num | The amount of this ingredient.
var unit = grams; // String | The unit for the given amount.

try { 
    var result = api_instance.getIngredientInformation(id, amount, unit);
    print(result);
} catch (e) {
    print("Exception when calling IngredientsApi->getIngredientInformation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The item&#39;s id. | [default to null]
 **amount** | **num**| The amount of this ingredient. | [optional] [default to null]
 **unit** | **String**| The unit for the given amount. | [optional] [default to null]

### Return type

[**InlineResponse20022**](InlineResponse20022.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIngredientSubstitutes**
> InlineResponse20026 getIngredientSubstitutes(ingredientName)

Get Ingredient Substitutes

Search for substitutes for a given ingredient.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new IngredientsApi();
var ingredientName = butter; // String | The name of the ingredient you want to replace.

try { 
    var result = api_instance.getIngredientSubstitutes(ingredientName);
    print(result);
} catch (e) {
    print("Exception when calling IngredientsApi->getIngredientSubstitutes: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredientName** | **String**| The name of the ingredient you want to replace. | [default to null]

### Return type

[**InlineResponse20026**](InlineResponse20026.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIngredientSubstitutesByID**
> InlineResponse20026 getIngredientSubstitutesByID(id)

Get Ingredient Substitutes by ID

Search for substitutes for a given ingredient.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new IngredientsApi();
var id = 1; // int | The item's id.

try { 
    var result = api_instance.getIngredientSubstitutesByID(id);
    print(result);
} catch (e) {
    print("Exception when calling IngredientsApi->getIngredientSubstitutesByID: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The item&#39;s id. | [default to null]

### Return type

[**InlineResponse20026**](InlineResponse20026.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ingredientSearch**
> InlineResponse20025 ingredientSearch(query, addChildren, minProteinPercent, maxProteinPercent, minFatPercent, maxFatPercent, minCarbsPercent, maxCarbsPercent, metaInformation, intolerances, sort, sortDirection, offset, number)

Ingredient Search

Search for simple whole foods (e.g. fruits, vegetables, nuts, grains, meat, fish, dairy etc.).

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new IngredientsApi();
var query = burger; // String | The (natural language) search query.
var addChildren = true; // bool | Whether to add children of found foods.
var minProteinPercent = 10; // num | The minimum percentage of protein the food must have (between 0 and 100).
var maxProteinPercent = 90; // num | The maximum percentage of protein the food can have (between 0 and 100).
var minFatPercent = 10; // num | The minimum percentage of fat the food must have (between 0 and 100).
var maxFatPercent = 90; // num | The maximum percentage of fat the food can have (between 0 and 100).
var minCarbsPercent = 10; // num | The minimum percentage of carbs the food must have (between 0 and 100).
var maxCarbsPercent = 90; // num | The maximum percentage of carbs the food can have (between 0 and 100).
var metaInformation = false; // bool | Whether to return more meta information about the ingredients.
var intolerances = egg; // String | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.
var sort = calories; // String | The strategy to sort recipes by. See a full list of supported sorting options.
var sortDirection = asc; // String | The direction in which to sort. Must be either 'asc' (ascending) or 'desc' (descending).
var offset = 56; // int | The number of results to skip (between 0 and 900).
var number = 10; // int | The maximum number of items to return (between 1 and 100). Defaults to 10.

try { 
    var result = api_instance.ingredientSearch(query, addChildren, minProteinPercent, maxProteinPercent, minFatPercent, maxFatPercent, minCarbsPercent, maxCarbsPercent, metaInformation, intolerances, sort, sortDirection, offset, number);
    print(result);
} catch (e) {
    print("Exception when calling IngredientsApi->ingredientSearch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The (natural language) search query. | [optional] [default to null]
 **addChildren** | **bool**| Whether to add children of found foods. | [optional] [default to null]
 **minProteinPercent** | **num**| The minimum percentage of protein the food must have (between 0 and 100). | [optional] [default to null]
 **maxProteinPercent** | **num**| The maximum percentage of protein the food can have (between 0 and 100). | [optional] [default to null]
 **minFatPercent** | **num**| The minimum percentage of fat the food must have (between 0 and 100). | [optional] [default to null]
 **maxFatPercent** | **num**| The maximum percentage of fat the food can have (between 0 and 100). | [optional] [default to null]
 **minCarbsPercent** | **num**| The minimum percentage of carbs the food must have (between 0 and 100). | [optional] [default to null]
 **maxCarbsPercent** | **num**| The maximum percentage of carbs the food can have (between 0 and 100). | [optional] [default to null]
 **metaInformation** | **bool**| Whether to return more meta information about the ingredients. | [optional] [default to null]
 **intolerances** | **String**| A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. | [optional] [default to null]
 **sort** | **String**| The strategy to sort recipes by. See a full list of supported sorting options. | [optional] [default to null]
 **sortDirection** | **String**| The direction in which to sort. Must be either &#39;asc&#39; (ascending) or &#39;desc&#39; (descending). | [optional] [default to null]
 **offset** | **int**| The number of results to skip (between 0 and 900). | [optional] [default to null]
 **number** | **int**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]

### Return type

[**InlineResponse20025**](InlineResponse20025.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ingredientsByIDImage**
> Object ingredientsByIDImage(id, measure)

Ingredients by ID Image

Visualize a recipe's ingredient list.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new IngredientsApi();
var id = 1082038; // num | The recipe id.
var measure = metric; // String | Whether the the measures should be 'us' or 'metric'.

try { 
    var result = api_instance.ingredientsByIDImage(id, measure);
    print(result);
} catch (e) {
    print("Exception when calling IngredientsApi->ingredientsByIDImage: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **num**| The recipe id. | [default to null]
 **measure** | **String**| Whether the the measures should be &#39;us&#39; or &#39;metric&#39;. | [optional] [default to null]

### Return type

[**Object**](Object.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mapIngredientsToGroceryProducts**
> List<InlineResponse20034> mapIngredientsToGroceryProducts(inlineObject2)

Map Ingredients to Grocery Products

Map a set of ingredients to products you can buy in the grocery store.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new IngredientsApi();
var inlineObject2 = new InlineObject2(); // InlineObject2 | 

try { 
    var result = api_instance.mapIngredientsToGroceryProducts(inlineObject2);
    print(result);
} catch (e) {
    print("Exception when calling IngredientsApi->mapIngredientsToGroceryProducts: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inlineObject2** | [**InlineObject2**](InlineObject2.md)|  | 

### Return type

[**List<InlineResponse20034>**](InlineResponse20034.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualizeIngredients**
> String visualizeIngredients(contentType, language, accept)

Ingredients Widget

Visualize ingredients of a recipe. You can play around with that endpoint!

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyScheme
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyScheme').apiKeyPrefix = 'Bearer';

var api_instance = new IngredientsApi();
var contentType = application/json; // String | The content type.
var language = en; // String | The language of the input. Either 'en' or 'de'.
var accept = application/json; // String | Accept header.

try { 
    var result = api_instance.visualizeIngredients(contentType, language, accept);
    print(result);
} catch (e) {
    print("Exception when calling IngredientsApi->visualizeIngredients: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentType** | **String**| The content type. | [optional] [default to null]
 **language** | **String**| The language of the input. Either &#39;en&#39; or &#39;de&#39;. | [optional] [default to null]
 **accept** | **String**| Accept header. | [optional] [default to null]

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

