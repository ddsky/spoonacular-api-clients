# SpoonacularApi.IngredientsApi

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



## autocompleteIngredientSearch

> [AutocompleteIngredientSearch200ResponseInner] autocompleteIngredientSearch(opts)

Autocomplete Ingredient Search

Autocomplete the entry of an ingredient.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.IngredientsApi();
let opts = {
  'query': burger, // String | The (natural language) search query.
  'number': 10, // Number | The maximum number of items to return (between 1 and 100). Defaults to 10.
  'metaInformation': false, // Boolean | Whether to return more meta information about the ingredients.
  'intolerances': egg, // String | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.
  'language': en // String | The language of the input. Either 'en' or 'de'.
};
apiInstance.autocompleteIngredientSearch(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The (natural language) search query. | [optional] 
 **number** | **Number**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]
 **metaInformation** | **Boolean**| Whether to return more meta information about the ingredients. | [optional] 
 **intolerances** | **String**| A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. | [optional] 
 **language** | **String**| The language of the input. Either &#39;en&#39; or &#39;de&#39;. | [optional] 

### Return type

[**[AutocompleteIngredientSearch200ResponseInner]**](AutocompleteIngredientSearch200ResponseInner.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## computeIngredientAmount

> ComputeIngredientAmount200Response computeIngredientAmount(id, nutrient, target, opts)

Compute Ingredient Amount

Compute the amount you need of a certain ingredient for a certain nutritional goal. For example, how much pineapple do you have to eat to get 10 grams of protein?

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.IngredientsApi();
let id = 9266; // Number | The id of the ingredient you want the amount for.
let nutrient = protein; // String | The target nutrient. See a list of supported nutrients.
let target = 2; // Number | The target number of the given nutrient.
let opts = {
  'unit': oz // String | The target unit.
};
apiInstance.computeIngredientAmount(id, nutrient, target, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Number**| The id of the ingredient you want the amount for. | 
 **nutrient** | **String**| The target nutrient. See a list of supported nutrients. | 
 **target** | **Number**| The target number of the given nutrient. | 
 **unit** | **String**| The target unit. | [optional] 

### Return type

[**ComputeIngredientAmount200Response**](ComputeIngredientAmount200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getIngredientInformation

> GetIngredientInformation200Response getIngredientInformation(id, opts)

Get Ingredient Information

Use an ingredient id to get all available information about an ingredient, such as its image and supermarket aisle.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.IngredientsApi();
let id = 1; // Number | The item's id.
let opts = {
  'amount': 150, // Number | The amount of this ingredient.
  'unit': grams // String | The unit for the given amount.
};
apiInstance.getIngredientInformation(id, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Number**| The item&#39;s id. | 
 **amount** | **Number**| The amount of this ingredient. | [optional] 
 **unit** | **String**| The unit for the given amount. | [optional] 

### Return type

[**GetIngredientInformation200Response**](GetIngredientInformation200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getIngredientSubstitutes

> GetIngredientSubstitutes200Response getIngredientSubstitutes(ingredientName)

Get Ingredient Substitutes

Search for substitutes for a given ingredient.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.IngredientsApi();
let ingredientName = butter; // String | The name of the ingredient you want to replace.
apiInstance.getIngredientSubstitutes(ingredientName, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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


## getIngredientSubstitutesByID

> GetIngredientSubstitutes200Response getIngredientSubstitutesByID(id)

Get Ingredient Substitutes by ID

Search for substitutes for a given ingredient.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.IngredientsApi();
let id = 1; // Number | The item's id.
apiInstance.getIngredientSubstitutesByID(id, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Number**| The item&#39;s id. | 

### Return type

[**GetIngredientSubstitutes200Response**](GetIngredientSubstitutes200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ingredientSearch

> IngredientSearch200Response ingredientSearch(opts)

Ingredient Search

Search for simple whole foods (e.g. fruits, vegetables, nuts, grains, meat, fish, dairy etc.).

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.IngredientsApi();
let opts = {
  'query': burger, // String | The (natural language) search query.
  'addChildren': true, // Boolean | Whether to add children of found foods.
  'minProteinPercent': 10, // Number | The minimum percentage of protein the food must have (between 0 and 100).
  'maxProteinPercent': 90, // Number | The maximum percentage of protein the food can have (between 0 and 100).
  'minFatPercent': 10, // Number | The minimum percentage of fat the food must have (between 0 and 100).
  'maxFatPercent': 90, // Number | The maximum percentage of fat the food can have (between 0 and 100).
  'minCarbsPercent': 10, // Number | The minimum percentage of carbs the food must have (between 0 and 100).
  'maxCarbsPercent': 90, // Number | The maximum percentage of carbs the food can have (between 0 and 100).
  'metaInformation': false, // Boolean | Whether to return more meta information about the ingredients.
  'intolerances': egg, // String | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.
  'sort': calories, // String | The strategy to sort recipes by. See a full list of supported sorting options.
  'sortDirection': asc, // String | The direction in which to sort. Must be either 'asc' (ascending) or 'desc' (descending).
  'offset': 56, // Number | The number of results to skip (between 0 and 900).
  'number': 10, // Number | The maximum number of items to return (between 1 and 100). Defaults to 10.
  'language': en // String | The language of the input. Either 'en' or 'de'.
};
apiInstance.ingredientSearch(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The (natural language) search query. | [optional] 
 **addChildren** | **Boolean**| Whether to add children of found foods. | [optional] 
 **minProteinPercent** | **Number**| The minimum percentage of protein the food must have (between 0 and 100). | [optional] 
 **maxProteinPercent** | **Number**| The maximum percentage of protein the food can have (between 0 and 100). | [optional] 
 **minFatPercent** | **Number**| The minimum percentage of fat the food must have (between 0 and 100). | [optional] 
 **maxFatPercent** | **Number**| The maximum percentage of fat the food can have (between 0 and 100). | [optional] 
 **minCarbsPercent** | **Number**| The minimum percentage of carbs the food must have (between 0 and 100). | [optional] 
 **maxCarbsPercent** | **Number**| The maximum percentage of carbs the food can have (between 0 and 100). | [optional] 
 **metaInformation** | **Boolean**| Whether to return more meta information about the ingredients. | [optional] 
 **intolerances** | **String**| A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. | [optional] 
 **sort** | **String**| The strategy to sort recipes by. See a full list of supported sorting options. | [optional] 
 **sortDirection** | **String**| The direction in which to sort. Must be either &#39;asc&#39; (ascending) or &#39;desc&#39; (descending). | [optional] 
 **offset** | **Number**| The number of results to skip (between 0 and 900). | [optional] 
 **number** | **Number**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]
 **language** | **String**| The language of the input. Either &#39;en&#39; or &#39;de&#39;. | [optional] 

### Return type

[**IngredientSearch200Response**](IngredientSearch200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ingredientsByIDImage

> Object ingredientsByIDImage(id, opts)

Ingredients by ID Image

Visualize a recipe&#39;s ingredient list.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.IngredientsApi();
let id = 1082038; // Number | The recipe id.
let opts = {
  'measure': metric // String | Whether the the measures should be 'us' or 'metric'.
};
apiInstance.ingredientsByIDImage(id, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Number**| The recipe id. | 
 **measure** | **String**| Whether the the measures should be &#39;us&#39; or &#39;metric&#39;. | [optional] 

### Return type

**Object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/png


## mapIngredientsToGroceryProducts

> [MapIngredientsToGroceryProducts200ResponseInner] mapIngredientsToGroceryProducts(mapIngredientsToGroceryProductsRequest)

Map Ingredients to Grocery Products

Map a set of ingredients to products you can buy in the grocery store.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.IngredientsApi();
let mapIngredientsToGroceryProductsRequest = {"ingredients":["eggs","bacon"],"servings":2}; // MapIngredientsToGroceryProductsRequest | 
apiInstance.mapIngredientsToGroceryProducts(mapIngredientsToGroceryProductsRequest, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mapIngredientsToGroceryProductsRequest** | [**MapIngredientsToGroceryProductsRequest**](MapIngredientsToGroceryProductsRequest.md)|  | 

### Return type

[**[MapIngredientsToGroceryProducts200ResponseInner]**](MapIngredientsToGroceryProducts200ResponseInner.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## visualizeIngredients

> String visualizeIngredients(opts)

Ingredients Widget

Visualize ingredients of a recipe. You can play around with that endpoint!

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.IngredientsApi();
let opts = {
  'contentType': application/json, // String | The content type.
  'language': en, // String | The language of the input. Either 'en' or 'de'.
  'accept': application/json // String | Accept header.
};
apiInstance.visualizeIngredients(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentType** | **String**| The content type. | [optional] 
 **language** | **String**| The language of the input. Either &#39;en&#39; or &#39;de&#39;. | [optional] 
 **accept** | **String**| Accept header. | [optional] 

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: text/html

