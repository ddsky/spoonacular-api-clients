# .IngredientsApi

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
> Set<AutocompleteIngredientSearch200ResponseInner> autocompleteIngredientSearch()

Autocomplete the entry of an ingredient.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .IngredientsApi(configuration);

let body:.IngredientsApiAutocompleteIngredientSearchRequest = {
  // string | The (natural language) search query. (optional)
  query: "burger",
  // number | The maximum number of items to return (between 1 and 100). Defaults to 10. (optional)
  number: 10,
  // boolean | Whether to return more meta information about the ingredients. (optional)
  metaInformation: false,
  // string | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. (optional)
  intolerances: "egg",
  // 'en' | 'de' | The language of the input. Either 'en' or 'de'. (optional)
  language: "en",
};

apiInstance.autocompleteIngredientSearch(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | [**string**] | The (natural language) search query. | (optional) defaults to undefined
 **number** | [**number**] | The maximum number of items to return (between 1 and 100). Defaults to 10. | (optional) defaults to 10
 **metaInformation** | [**boolean**] | Whether to return more meta information about the ingredients. | (optional) defaults to undefined
 **intolerances** | [**string**] | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. | (optional) defaults to undefined
 **language** | [**&#39;en&#39; | &#39;de&#39;**]**Array<&#39;en&#39; &#124; &#39;de&#39;>** | The language of the input. Either &#39;en&#39; or &#39;de&#39;. | (optional) defaults to undefined


### Return type

**Set<AutocompleteIngredientSearch200ResponseInner>**

### Authorization

[apiKeyScheme](README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **computeIngredientAmount**
> ComputeIngredientAmount200Response computeIngredientAmount()

Compute the amount you need of a certain ingredient for a certain nutritional goal. For example, how much pineapple do you have to eat to get 10 grams of protein?

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .IngredientsApi(configuration);

let body:.IngredientsApiComputeIngredientAmountRequest = {
  // number | The id of the ingredient you want the amount for.
  id: 9266,
  // string | The target nutrient. See a list of supported nutrients.
  nutrient: "protein",
  // number | The target number of the given nutrient.
  target: 2,
  // string | The target unit. (optional)
  unit: "oz",
};

apiInstance.computeIngredientAmount(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**number**] | The id of the ingredient you want the amount for. | defaults to undefined
 **nutrient** | [**string**] | The target nutrient. See a list of supported nutrients. | defaults to undefined
 **target** | [**number**] | The target number of the given nutrient. | defaults to undefined
 **unit** | [**string**] | The target unit. | (optional) defaults to undefined


### Return type

**ComputeIngredientAmount200Response**

### Authorization

[apiKeyScheme](README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **getIngredientInformation**
> GetIngredientInformation200Response getIngredientInformation()

Use an ingredient id to get all available information about an ingredient, such as its image and supermarket aisle.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .IngredientsApi(configuration);

let body:.IngredientsApiGetIngredientInformationRequest = {
  // number | The item's id.
  id: 1,
  // number | The amount of this ingredient. (optional)
  amount: 150,
  // string | The unit for the given amount. (optional)
  unit: "grams",
};

apiInstance.getIngredientInformation(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**number**] | The item&#39;s id. | defaults to undefined
 **amount** | [**number**] | The amount of this ingredient. | (optional) defaults to undefined
 **unit** | [**string**] | The unit for the given amount. | (optional) defaults to undefined


### Return type

**GetIngredientInformation200Response**

### Authorization

[apiKeyScheme](README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **getIngredientSubstitutes**
> GetIngredientSubstitutes200Response getIngredientSubstitutes()

Search for substitutes for a given ingredient.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .IngredientsApi(configuration);

let body:.IngredientsApiGetIngredientSubstitutesRequest = {
  // string | The name of the ingredient you want to replace.
  ingredientName: "butter",
};

apiInstance.getIngredientSubstitutes(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredientName** | [**string**] | The name of the ingredient you want to replace. | defaults to undefined


### Return type

**GetIngredientSubstitutes200Response**

### Authorization

[apiKeyScheme](README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **getIngredientSubstitutesByID**
> GetIngredientSubstitutes200Response getIngredientSubstitutesByID()

Search for substitutes for a given ingredient.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .IngredientsApi(configuration);

let body:.IngredientsApiGetIngredientSubstitutesByIDRequest = {
  // number | The item's id.
  id: 1,
};

apiInstance.getIngredientSubstitutesByID(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**number**] | The item&#39;s id. | defaults to undefined


### Return type

**GetIngredientSubstitutes200Response**

### Authorization

[apiKeyScheme](README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **ingredientSearch**
> IngredientSearch200Response ingredientSearch()

Search for simple whole foods (e.g. fruits, vegetables, nuts, grains, meat, fish, dairy etc.).

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .IngredientsApi(configuration);

let body:.IngredientsApiIngredientSearchRequest = {
  // string | The (natural language) search query. (optional)
  query: "burger",
  // boolean | Whether to add children of found foods. (optional)
  addChildren: true,
  // number | The minimum percentage of protein the food must have (between 0 and 100). (optional)
  minProteinPercent: 10,
  // number | The maximum percentage of protein the food can have (between 0 and 100). (optional)
  maxProteinPercent: 90,
  // number | The minimum percentage of fat the food must have (between 0 and 100). (optional)
  minFatPercent: 10,
  // number | The maximum percentage of fat the food can have (between 0 and 100). (optional)
  maxFatPercent: 90,
  // number | The minimum percentage of carbs the food must have (between 0 and 100). (optional)
  minCarbsPercent: 10,
  // number | The maximum percentage of carbs the food can have (between 0 and 100). (optional)
  maxCarbsPercent: 90,
  // boolean | Whether to return more meta information about the ingredients. (optional)
  metaInformation: false,
  // string | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. (optional)
  intolerances: "egg",
  // string | The strategy to sort recipes by. See a full list of supported sorting options. (optional)
  sort: "calories",
  // string | The direction in which to sort. Must be either 'asc' (ascending) or 'desc' (descending). (optional)
  sortDirection: "asc",
  // number | The number of results to skip (between 0 and 900). (optional)
  offset: 0,
  // number | The maximum number of items to return (between 1 and 100). Defaults to 10. (optional)
  number: 10,
  // 'en' | 'de' | The language of the input. Either 'en' or 'de'. (optional)
  language: "en",
};

apiInstance.ingredientSearch(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | [**string**] | The (natural language) search query. | (optional) defaults to undefined
 **addChildren** | [**boolean**] | Whether to add children of found foods. | (optional) defaults to undefined
 **minProteinPercent** | [**number**] | The minimum percentage of protein the food must have (between 0 and 100). | (optional) defaults to undefined
 **maxProteinPercent** | [**number**] | The maximum percentage of protein the food can have (between 0 and 100). | (optional) defaults to undefined
 **minFatPercent** | [**number**] | The minimum percentage of fat the food must have (between 0 and 100). | (optional) defaults to undefined
 **maxFatPercent** | [**number**] | The maximum percentage of fat the food can have (between 0 and 100). | (optional) defaults to undefined
 **minCarbsPercent** | [**number**] | The minimum percentage of carbs the food must have (between 0 and 100). | (optional) defaults to undefined
 **maxCarbsPercent** | [**number**] | The maximum percentage of carbs the food can have (between 0 and 100). | (optional) defaults to undefined
 **metaInformation** | [**boolean**] | Whether to return more meta information about the ingredients. | (optional) defaults to undefined
 **intolerances** | [**string**] | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. | (optional) defaults to undefined
 **sort** | [**string**] | The strategy to sort recipes by. See a full list of supported sorting options. | (optional) defaults to undefined
 **sortDirection** | [**string**] | The direction in which to sort. Must be either &#39;asc&#39; (ascending) or &#39;desc&#39; (descending). | (optional) defaults to undefined
 **offset** | [**number**] | The number of results to skip (between 0 and 900). | (optional) defaults to undefined
 **number** | [**number**] | The maximum number of items to return (between 1 and 100). Defaults to 10. | (optional) defaults to 10
 **language** | [**&#39;en&#39; | &#39;de&#39;**]**Array<&#39;en&#39; &#124; &#39;de&#39;>** | The language of the input. Either &#39;en&#39; or &#39;de&#39;. | (optional) defaults to undefined


### Return type

**IngredientSearch200Response**

### Authorization

[apiKeyScheme](README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **ingredientsByIDImage**
> any ingredientsByIDImage()

Visualize a recipe's ingredient list.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .IngredientsApi(configuration);

let body:.IngredientsApiIngredientsByIDImageRequest = {
  // number | The recipe id.
  id: 1082038,
  // 'us' | 'metric' | Whether the the measures should be 'us' or 'metric'. (optional)
  measure: "metric",
};

apiInstance.ingredientsByIDImage(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**number**] | The recipe id. | defaults to undefined
 **measure** | [**&#39;us&#39; | &#39;metric&#39;**]**Array<&#39;us&#39; &#124; &#39;metric&#39;>** | Whether the the measures should be &#39;us&#39; or &#39;metric&#39;. | (optional) defaults to undefined


### Return type

**any**

### Authorization

[apiKeyScheme](README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **mapIngredientsToGroceryProducts**
> Set<MapIngredientsToGroceryProducts200ResponseInner> mapIngredientsToGroceryProducts(mapIngredientsToGroceryProductsRequest)

Map a set of ingredients to products you can buy in the grocery store.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .IngredientsApi(configuration);

let body:.IngredientsApiMapIngredientsToGroceryProductsRequest = {
  // MapIngredientsToGroceryProductsRequest
  mapIngredientsToGroceryProductsRequest: {
    ingredients: [
      "ingredients_example",
    ],
    servings: 3.14,
  },
};

apiInstance.mapIngredientsToGroceryProducts(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mapIngredientsToGroceryProductsRequest** | **MapIngredientsToGroceryProductsRequest**|  |


### Return type

**Set<MapIngredientsToGroceryProducts200ResponseInner>**

### Authorization

[apiKeyScheme](README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **visualizeIngredients**
> string visualizeIngredients()

Visualize ingredients of a recipe. You can play around with that endpoint!

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .IngredientsApi(configuration);

let body:.IngredientsApiVisualizeIngredientsRequest = {
  // 'application/x-www-form-urlencoded' | 'application/json' | 'multipart/form-data' | The content type. (optional)
  contentType: "application/json",
  // 'en' | 'de' | The language of the input. Either 'en' or 'de'. (optional)
  language: "en",
  // 'application/json' | 'text/html' | 'media/_*' | Accept header. (optional)
  accept: "application/json",
};

apiInstance.visualizeIngredients(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentType** | [**&#39;application/x-www-form-urlencoded&#39; | &#39;application/json&#39; | &#39;multipart/form-data&#39;**]**Array<&#39;application/x-www-form-urlencoded&#39; &#124; &#39;application/json&#39; &#124; &#39;multipart/form-data&#39;>** | The content type. | (optional) defaults to undefined
 **language** | [**&#39;en&#39; | &#39;de&#39;**]**Array<&#39;en&#39; &#124; &#39;de&#39;>** | The language of the input. Either &#39;en&#39; or &#39;de&#39;. | (optional) defaults to undefined
 **accept** | [**&#39;application/json&#39; | &#39;text/html&#39; | &#39;media/_*&#39;**]**Array<&#39;application/json&#39; &#124; &#39;text/html&#39; &#124; &#39;media/_*&#39;>** | Accept header. | (optional) defaults to undefined


### Return type

**string**

### Authorization

[apiKeyScheme](README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/html


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)


