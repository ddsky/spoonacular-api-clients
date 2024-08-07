# IngredientsApi

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

> Set&lt;AutocompleteIngredientSearch200ResponseInner&gt; autocompleteIngredientSearch(query, number, metaInformation, intolerances, language)

Autocomplete Ingredient Search

Autocomplete the entry of an ingredient.

### Example

```java
// Import classes:
//import com.spoonacular.IngredientsApi;

IngredientsApi apiInstance = new IngredientsApi();
String query = burger; // String | The (natural language) search query.
Integer number = 10; // Integer | The maximum number of items to return (between 1 and 100). Defaults to 10.
Boolean metaInformation = false; // Boolean | Whether to return more meta information about the ingredients.
String intolerances = egg; // String | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.
String language = en; // String | The language of the input. Either 'en' or 'de'.
try {
    Set<AutocompleteIngredientSearch200ResponseInner> result = apiInstance.autocompleteIngredientSearch(query, number, metaInformation, intolerances, language);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling IngredientsApi#autocompleteIngredientSearch");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The (natural language) search query. | [default to null]
 **number** | **Integer**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]
 **metaInformation** | **Boolean**| Whether to return more meta information about the ingredients. | [optional] [default to null]
 **intolerances** | **String**| A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. | [optional] [default to null]
 **language** | **String**| The language of the input. Either &#39;en&#39; or &#39;de&#39;. | [optional] [default to null] [enum: en, de]

### Return type

[**Set&lt;AutocompleteIngredientSearch200ResponseInner&gt;**](AutocompleteIngredientSearch200ResponseInner.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## computeIngredientAmount

> ComputeIngredientAmount200Response computeIngredientAmount(id, nutrient, target, unit)

Compute Ingredient Amount

Compute the amount you need of a certain ingredient for a certain nutritional goal. For example, how much pineapple do you have to eat to get 10 grams of protein?

### Example

```java
// Import classes:
//import com.spoonacular.IngredientsApi;

IngredientsApi apiInstance = new IngredientsApi();
Integer id = 9266; // Integer | The id of the ingredient you want the amount for.
String nutrient = protein; // String | The target nutrient. See a list of supported nutrients.
Integer target = 2; // Integer | The target number of the given nutrient.
String unit = oz; // String | The target unit.
try {
    ComputeIngredientAmount200Response result = apiInstance.computeIngredientAmount(id, nutrient, target, unit);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling IngredientsApi#computeIngredientAmount");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the ingredient you want the amount for. | [default to null]
 **nutrient** | **String**| The target nutrient. See a list of supported nutrients. | [default to null]
 **target** | **Integer**| The target number of the given nutrient. | [default to null]
 **unit** | **String**| The target unit. | [optional] [default to null]

### Return type

[**ComputeIngredientAmount200Response**](ComputeIngredientAmount200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getIngredientInformation

> IngredientInformation getIngredientInformation(id, amount, unit)

Get Ingredient Information

Use an ingredient id to get all available information about an ingredient, such as its image and supermarket aisle.

### Example

```java
// Import classes:
//import com.spoonacular.IngredientsApi;

IngredientsApi apiInstance = new IngredientsApi();
Integer id = 9266; // Integer | The ingredient id.
BigDecimal amount = 150; // BigDecimal | The amount of this ingredient.
String unit = grams; // String | The unit for the given amount.
try {
    IngredientInformation result = apiInstance.getIngredientInformation(id, amount, unit);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling IngredientsApi#getIngredientInformation");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The ingredient id. | [default to null]
 **amount** | **BigDecimal**| The amount of this ingredient. | [optional] [default to null]
 **unit** | **String**| The unit for the given amount. | [optional] [default to null]

### Return type

[**IngredientInformation**](IngredientInformation.md)

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

```java
// Import classes:
//import com.spoonacular.IngredientsApi;

IngredientsApi apiInstance = new IngredientsApi();
String ingredientName = butter; // String | The name of the ingredient you want to replace.
try {
    GetIngredientSubstitutes200Response result = apiInstance.getIngredientSubstitutes(ingredientName);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling IngredientsApi#getIngredientSubstitutes");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredientName** | **String**| The name of the ingredient you want to replace. | [default to null]

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

```java
// Import classes:
//import com.spoonacular.IngredientsApi;

IngredientsApi apiInstance = new IngredientsApi();
Integer id = 1001; // Integer | The id of the ingredient you want substitutes for.
try {
    GetIngredientSubstitutes200Response result = apiInstance.getIngredientSubstitutesByID(id);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling IngredientsApi#getIngredientSubstitutesByID");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the ingredient you want substitutes for. | [default to null]

### Return type

[**GetIngredientSubstitutes200Response**](GetIngredientSubstitutes200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ingredientSearch

> IngredientSearch200Response ingredientSearch(query, addChildren, minProteinPercent, maxProteinPercent, minFatPercent, maxFatPercent, minCarbsPercent, maxCarbsPercent, metaInformation, intolerances, sort, sortDirection, offset, number, language)

Ingredient Search

Search for simple whole foods (e.g. fruits, vegetables, nuts, grains, meat, fish, dairy etc.).

### Example

```java
// Import classes:
//import com.spoonacular.IngredientsApi;

IngredientsApi apiInstance = new IngredientsApi();
String query = burger; // String | The (natural language) search query.
Boolean addChildren = true; // Boolean | Whether to add children of found foods.
BigDecimal minProteinPercent = 10; // BigDecimal | The minimum percentage of protein the food must have (between 0 and 100).
BigDecimal maxProteinPercent = 90; // BigDecimal | The maximum percentage of protein the food can have (between 0 and 100).
BigDecimal minFatPercent = 10; // BigDecimal | The minimum percentage of fat the food must have (between 0 and 100).
BigDecimal maxFatPercent = 90; // BigDecimal | The maximum percentage of fat the food can have (between 0 and 100).
BigDecimal minCarbsPercent = 10; // BigDecimal | The minimum percentage of carbs the food must have (between 0 and 100).
BigDecimal maxCarbsPercent = 90; // BigDecimal | The maximum percentage of carbs the food can have (between 0 and 100).
Boolean metaInformation = false; // Boolean | Whether to return more meta information about the ingredients.
String intolerances = egg; // String | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.
String sort = calories; // String | The strategy to sort recipes by. See a full list of supported sorting options.
String sortDirection = asc; // String | The direction in which to sort. Must be either 'asc' (ascending) or 'desc' (descending).
Integer offset = null; // Integer | The number of results to skip (between 0 and 900).
Integer number = 10; // Integer | The maximum number of items to return (between 1 and 100). Defaults to 10.
String language = en; // String | The language of the input. Either 'en' or 'de'.
try {
    IngredientSearch200Response result = apiInstance.ingredientSearch(query, addChildren, minProteinPercent, maxProteinPercent, minFatPercent, maxFatPercent, minCarbsPercent, maxCarbsPercent, metaInformation, intolerances, sort, sortDirection, offset, number, language);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling IngredientsApi#ingredientSearch");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The (natural language) search query. | [default to null]
 **addChildren** | **Boolean**| Whether to add children of found foods. | [optional] [default to null]
 **minProteinPercent** | **BigDecimal**| The minimum percentage of protein the food must have (between 0 and 100). | [optional] [default to null]
 **maxProteinPercent** | **BigDecimal**| The maximum percentage of protein the food can have (between 0 and 100). | [optional] [default to null]
 **minFatPercent** | **BigDecimal**| The minimum percentage of fat the food must have (between 0 and 100). | [optional] [default to null]
 **maxFatPercent** | **BigDecimal**| The maximum percentage of fat the food can have (between 0 and 100). | [optional] [default to null]
 **minCarbsPercent** | **BigDecimal**| The minimum percentage of carbs the food must have (between 0 and 100). | [optional] [default to null]
 **maxCarbsPercent** | **BigDecimal**| The maximum percentage of carbs the food can have (between 0 and 100). | [optional] [default to null]
 **metaInformation** | **Boolean**| Whether to return more meta information about the ingredients. | [optional] [default to null]
 **intolerances** | **String**| A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. | [optional] [default to null]
 **sort** | **String**| The strategy to sort recipes by. See a full list of supported sorting options. | [optional] [default to null]
 **sortDirection** | **String**| The direction in which to sort. Must be either &#39;asc&#39; (ascending) or &#39;desc&#39; (descending). | [optional] [default to null]
 **offset** | **Integer**| The number of results to skip (between 0 and 900). | [optional] [default to null]
 **number** | **Integer**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]
 **language** | **String**| The language of the input. Either &#39;en&#39; or &#39;de&#39;. | [optional] [default to null] [enum: en, de]

### Return type

[**IngredientSearch200Response**](IngredientSearch200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ingredientsByIDImage

> File ingredientsByIDImage(id, measure)

Ingredients by ID Image

Visualize a recipe&#39;s ingredient list.

### Example

```java
// Import classes:
//import com.spoonacular.IngredientsApi;

IngredientsApi apiInstance = new IngredientsApi();
Integer id = 1082038; // Integer | The recipe id.
String measure = metric; // String | Whether the the measures should be 'us' or 'metric'.
try {
    File result = apiInstance.ingredientsByIDImage(id, measure);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling IngredientsApi#ingredientsByIDImage");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The recipe id. | [default to null]
 **measure** | **String**| Whether the the measures should be &#39;us&#39; or &#39;metric&#39;. | [optional] [default to null] [enum: us, metric]

### Return type

[**File**](File.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/png


## mapIngredientsToGroceryProducts

> Set&lt;MapIngredientsToGroceryProducts200ResponseInner&gt; mapIngredientsToGroceryProducts(mapIngredientsToGroceryProductsRequest)

Map Ingredients to Grocery Products

Map a set of ingredients to products you can buy in the grocery store.

### Example

```java
// Import classes:
//import com.spoonacular.IngredientsApi;

IngredientsApi apiInstance = new IngredientsApi();
MapIngredientsToGroceryProductsRequest mapIngredientsToGroceryProductsRequest = {"ingredients":["eggs","bacon"],"servings":2}; // MapIngredientsToGroceryProductsRequest | 
try {
    Set<MapIngredientsToGroceryProducts200ResponseInner> result = apiInstance.mapIngredientsToGroceryProducts(mapIngredientsToGroceryProductsRequest);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling IngredientsApi#mapIngredientsToGroceryProducts");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mapIngredientsToGroceryProductsRequest** | [**MapIngredientsToGroceryProductsRequest**](MapIngredientsToGroceryProductsRequest.md)|  |

### Return type

[**Set&lt;MapIngredientsToGroceryProducts200ResponseInner&gt;**](MapIngredientsToGroceryProducts200ResponseInner.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## visualizeIngredients

> String visualizeIngredients(ingredientList, servings, language, measure, view, defaultCss, showBacklink)

Ingredients Widget

Visualize ingredients of a recipe. You can play around with that endpoint!

### Example

```java
// Import classes:
//import com.spoonacular.IngredientsApi;

IngredientsApi apiInstance = new IngredientsApi();
String ingredientList = null; // String | The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n).
BigDecimal servings = null; // BigDecimal | The number of servings.
String language = en; // String | The language of the input. Either 'en' or 'de'.
String measure = null; // String | The original system of measurement, either 'metric' or 'us'.
String view = null; // String | How to visualize the ingredients, either 'grid' or 'list'.
Boolean defaultCss = null; // Boolean | Whether the default CSS should be added to the response.
Boolean showBacklink = null; // Boolean | Whether to show a backlink to spoonacular. If set false, this call counts against your quota.
try {
    String result = apiInstance.visualizeIngredients(ingredientList, servings, language, measure, view, defaultCss, showBacklink);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling IngredientsApi#visualizeIngredients");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredientList** | **String**| The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n). | [default to null]
 **servings** | **BigDecimal**| The number of servings. | [default to null]
 **language** | **String**| The language of the input. Either &#39;en&#39; or &#39;de&#39;. | [optional] [default to null] [enum: en, de]
 **measure** | **String**| The original system of measurement, either &#39;metric&#39; or &#39;us&#39;. | [optional] [default to null] [enum: us, metric]
 **view** | **String**| How to visualize the ingredients, either &#39;grid&#39; or &#39;list&#39;. | [optional] [default to null] [enum: grid, list]
 **defaultCss** | **Boolean**| Whether the default CSS should be added to the response. | [optional] [default to null]
 **showBacklink** | **Boolean**| Whether to show a backlink to spoonacular. If set false, this call counts against your quota. | [optional] [default to null]

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: text/html

