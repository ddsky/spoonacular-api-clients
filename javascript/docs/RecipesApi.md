# SpoonacularApi.RecipesApi

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**analyzeARecipeSearchQuery**](RecipesApi.md#analyzeARecipeSearchQuery) | **GET** /recipes/queries/analyze | Analyze a Recipe Search Query
[**analyzeRecipeInstructions**](RecipesApi.md#analyzeRecipeInstructions) | **POST** /recipes/analyzeInstructions | Analyze Recipe Instructions
[**autocompleteRecipeSearch**](RecipesApi.md#autocompleteRecipeSearch) | **GET** /recipes/autocomplete | Autocomplete Recipe Search
[**classifyCuisine**](RecipesApi.md#classifyCuisine) | **POST** /recipes/cuisine | Classify Cuisine
[**computeGlycemicLoad**](RecipesApi.md#computeGlycemicLoad) | **POST** /food/ingredients/glycemicLoad | Compute Glycemic Load
[**convertAmounts**](RecipesApi.md#convertAmounts) | **GET** /recipes/convert | Convert Amounts
[**createRecipeCard**](RecipesApi.md#createRecipeCard) | **POST** /recipes/visualizeRecipe | Create Recipe Card
[**equipmentByIDImage**](RecipesApi.md#equipmentByIDImage) | **GET** /recipes/{id}/equipmentWidget.png | Equipment by ID Image
[**extractRecipeFromWebsite**](RecipesApi.md#extractRecipeFromWebsite) | **GET** /recipes/extract | Extract Recipe from Website
[**getAnalyzedRecipeInstructions**](RecipesApi.md#getAnalyzedRecipeInstructions) | **GET** /recipes/{id}/analyzedInstructions | Get Analyzed Recipe Instructions
[**getRandomRecipes**](RecipesApi.md#getRandomRecipes) | **GET** /recipes/random | Get Random Recipes
[**getRecipeEquipmentByID**](RecipesApi.md#getRecipeEquipmentByID) | **GET** /recipes/{id}/equipmentWidget.json | Equipment by ID
[**getRecipeInformation**](RecipesApi.md#getRecipeInformation) | **GET** /recipes/{id}/information | Get Recipe Information
[**getRecipeInformationBulk**](RecipesApi.md#getRecipeInformationBulk) | **GET** /recipes/informationBulk | Get Recipe Information Bulk
[**getRecipeIngredientsByID**](RecipesApi.md#getRecipeIngredientsByID) | **GET** /recipes/{id}/ingredientWidget.json | Ingredients by ID
[**getRecipeNutritionWidgetByID**](RecipesApi.md#getRecipeNutritionWidgetByID) | **GET** /recipes/{id}/nutritionWidget.json | Nutrition by ID
[**getRecipePriceBreakdownByID**](RecipesApi.md#getRecipePriceBreakdownByID) | **GET** /recipes/{id}/priceBreakdownWidget.json | Price Breakdown by ID
[**getRecipeTasteByID**](RecipesApi.md#getRecipeTasteByID) | **GET** /recipes/{id}/tasteWidget.json | Taste by ID
[**getSimilarRecipes**](RecipesApi.md#getSimilarRecipes) | **GET** /recipes/{id}/similar | Get Similar Recipes
[**guessNutritionByDishName**](RecipesApi.md#guessNutritionByDishName) | **GET** /recipes/guessNutrition | Guess Nutrition by Dish Name
[**ingredientsByIDImage**](RecipesApi.md#ingredientsByIDImage) | **GET** /recipes/{id}/ingredientWidget.png | Ingredients by ID Image
[**parseIngredients**](RecipesApi.md#parseIngredients) | **POST** /recipes/parseIngredients | Parse Ingredients
[**priceBreakdownByIDImage**](RecipesApi.md#priceBreakdownByIDImage) | **GET** /recipes/{id}/priceBreakdownWidget.png | Price Breakdown by ID Image
[**quickAnswer**](RecipesApi.md#quickAnswer) | **GET** /recipes/quickAnswer | Quick Answer
[**recipeNutritionByIDImage**](RecipesApi.md#recipeNutritionByIDImage) | **GET** /recipes/{id}/nutritionWidget.png | Recipe Nutrition by ID Image
[**recipeNutritionLabelImage**](RecipesApi.md#recipeNutritionLabelImage) | **GET** /recipes/{id}/nutritionLabel.png | Recipe Nutrition Label Image
[**recipeNutritionLabelWidget**](RecipesApi.md#recipeNutritionLabelWidget) | **GET** /recipes/{id}/nutritionLabel | Recipe Nutrition Label Widget
[**recipeTasteByIDImage**](RecipesApi.md#recipeTasteByIDImage) | **GET** /recipes/{id}/tasteWidget.png | Recipe Taste by ID Image
[**searchRecipes**](RecipesApi.md#searchRecipes) | **GET** /recipes/complexSearch | Search Recipes
[**searchRecipesByIngredients**](RecipesApi.md#searchRecipesByIngredients) | **GET** /recipes/findByIngredients | Search Recipes by Ingredients
[**searchRecipesByNutrients**](RecipesApi.md#searchRecipesByNutrients) | **GET** /recipes/findByNutrients | Search Recipes by Nutrients
[**summarizeRecipe**](RecipesApi.md#summarizeRecipe) | **GET** /recipes/{id}/summary | Summarize Recipe
[**visualizeEquipment**](RecipesApi.md#visualizeEquipment) | **POST** /recipes/visualizeEquipment | Equipment Widget
[**visualizePriceBreakdown**](RecipesApi.md#visualizePriceBreakdown) | **POST** /recipes/visualizePriceEstimator | Price Breakdown Widget
[**visualizeRecipeEquipmentByID**](RecipesApi.md#visualizeRecipeEquipmentByID) | **GET** /recipes/{id}/equipmentWidget | Equipment by ID Widget
[**visualizeRecipeIngredientsByID**](RecipesApi.md#visualizeRecipeIngredientsByID) | **GET** /recipes/{id}/ingredientWidget | Ingredients by ID Widget
[**visualizeRecipeNutrition**](RecipesApi.md#visualizeRecipeNutrition) | **POST** /recipes/visualizeNutrition | Recipe Nutrition Widget
[**visualizeRecipeNutritionByID**](RecipesApi.md#visualizeRecipeNutritionByID) | **GET** /recipes/{id}/nutritionWidget | Recipe Nutrition by ID Widget
[**visualizeRecipePriceBreakdownByID**](RecipesApi.md#visualizeRecipePriceBreakdownByID) | **GET** /recipes/{id}/priceBreakdownWidget | Price Breakdown by ID Widget
[**visualizeRecipeTaste**](RecipesApi.md#visualizeRecipeTaste) | **POST** /recipes/visualizeTaste | Recipe Taste Widget
[**visualizeRecipeTasteByID**](RecipesApi.md#visualizeRecipeTasteByID) | **GET** /recipes/{id}/tasteWidget | Recipe Taste by ID Widget



## analyzeARecipeSearchQuery

> AnalyzeARecipeSearchQuery200Response analyzeARecipeSearchQuery(q)

Analyze a Recipe Search Query

Parse a recipe search query to find out its intention.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.RecipesApi();
let q = salmon with fusilli and no nuts; // String | The recipe search query.
apiInstance.analyzeARecipeSearchQuery(q, (error, data, response) => {
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
 **q** | **String**| The recipe search query. | 

### Return type

[**AnalyzeARecipeSearchQuery200Response**](AnalyzeARecipeSearchQuery200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## analyzeRecipeInstructions

> AnalyzeRecipeInstructions200Response analyzeRecipeInstructions(opts)

Analyze Recipe Instructions

This endpoint allows you to break down instructions into atomic steps. Furthermore, each step will contain the ingredients and equipment required. Additionally, all ingredients and equipment from the recipe&#39;s instructions will be extracted independently of the step they&#39;re used in.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.RecipesApi();
let opts = {
  'contentType': application/json // String | The content type.
};
apiInstance.analyzeRecipeInstructions(opts, (error, data, response) => {
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

### Return type

[**AnalyzeRecipeInstructions200Response**](AnalyzeRecipeInstructions200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## autocompleteRecipeSearch

> [AutocompleteRecipeSearch200ResponseInner] autocompleteRecipeSearch(opts)

Autocomplete Recipe Search

Autocomplete a partial input to suggest possible recipe names.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.RecipesApi();
let opts = {
  'query': burger, // String | The (natural language) search query.
  'number': 10 // Number | The maximum number of items to return (between 1 and 100). Defaults to 10.
};
apiInstance.autocompleteRecipeSearch(opts, (error, data, response) => {
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

### Return type

[**[AutocompleteRecipeSearch200ResponseInner]**](AutocompleteRecipeSearch200ResponseInner.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## classifyCuisine

> ClassifyCuisine200Response classifyCuisine(opts)

Classify Cuisine

Classify the recipe&#39;s cuisine.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.RecipesApi();
let opts = {
  'contentType': application/json // String | The content type.
};
apiInstance.classifyCuisine(opts, (error, data, response) => {
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

### Return type

[**ClassifyCuisine200Response**](ClassifyCuisine200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## computeGlycemicLoad

> ComputeGlycemicLoad200Response computeGlycemicLoad(computeGlycemicLoadRequest, opts)

Compute Glycemic Load

Retrieve the glycemic index for a list of ingredients and compute the individual and total glycemic load.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.RecipesApi();
let computeGlycemicLoadRequest = {"ingredients":["1 kiwi","2 cups rice","2 glasses of water"]}; // ComputeGlycemicLoadRequest | 
let opts = {
  'language': en // String | The language of the input. Either 'en' or 'de'.
};
apiInstance.computeGlycemicLoad(computeGlycemicLoadRequest, opts, (error, data, response) => {
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
 **computeGlycemicLoadRequest** | [**ComputeGlycemicLoadRequest**](ComputeGlycemicLoadRequest.md)|  | 
 **language** | **String**| The language of the input. Either &#39;en&#39; or &#39;de&#39;. | [optional] 

### Return type

[**ComputeGlycemicLoad200Response**](ComputeGlycemicLoad200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## convertAmounts

> ConvertAmounts200Response convertAmounts(ingredientName, sourceAmount, sourceUnit, targetUnit)

Convert Amounts

Convert amounts like \&quot;2 cups of flour to grams\&quot;.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.RecipesApi();
let ingredientName = flour; // String | The ingredient which you want to convert.
let sourceAmount = 2.5; // Number | The amount from which you want to convert, e.g. the 2.5 in \"2.5 cups of flour to grams\".
let sourceUnit = cups; // String | The unit from which you want to convert, e.g. the grams in \"2.5 cups of flour to grams\". You can also use \"piece\", e.g. \"3.4 oz tomatoes to piece\"
let targetUnit = grams; // String | The unit to which you want to convert, e.g. the grams in \"2.5 cups of flour to grams\". You can also use \"piece\", e.g. \"3.4 oz tomatoes to piece\"
apiInstance.convertAmounts(ingredientName, sourceAmount, sourceUnit, targetUnit, (error, data, response) => {
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
 **ingredientName** | **String**| The ingredient which you want to convert. | 
 **sourceAmount** | **Number**| The amount from which you want to convert, e.g. the 2.5 in \&quot;2.5 cups of flour to grams\&quot;. | 
 **sourceUnit** | **String**| The unit from which you want to convert, e.g. the grams in \&quot;2.5 cups of flour to grams\&quot;. You can also use \&quot;piece\&quot;, e.g. \&quot;3.4 oz tomatoes to piece\&quot; | 
 **targetUnit** | **String**| The unit to which you want to convert, e.g. the grams in \&quot;2.5 cups of flour to grams\&quot;. You can also use \&quot;piece\&quot;, e.g. \&quot;3.4 oz tomatoes to piece\&quot; | 

### Return type

[**ConvertAmounts200Response**](ConvertAmounts200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## createRecipeCard

> CreateRecipeCard200Response createRecipeCard(opts)

Create Recipe Card

Generate a recipe card for a recipe.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.RecipesApi();
let opts = {
  'contentType': application/json // String | The content type.
};
apiInstance.createRecipeCard(opts, (error, data, response) => {
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

### Return type

[**CreateRecipeCard200Response**](CreateRecipeCard200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## equipmentByIDImage

> Object equipmentByIDImage(id)

Equipment by ID Image

Visualize a recipe&#39;s equipment list as an image.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.RecipesApi();
let id = 44860; // Number | The recipe id.
apiInstance.equipmentByIDImage(id, (error, data, response) => {
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

### Return type

**Object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/png


## extractRecipeFromWebsite

> GetRecipeInformation200Response extractRecipeFromWebsite(url, opts)

Extract Recipe from Website

This endpoint lets you extract recipe data such as title, ingredients, and instructions from any properly formatted Website.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.RecipesApi();
let url = https://foodista.com/recipe/ZHK4KPB6/chocolate-crinkle-cookies; // String | The URL of the recipe page.
let opts = {
  'forceExtraction': true, // Boolean | If true, the extraction will be triggered whether we already know the recipe or not. Use this only if information is missing as this operation is slower.
  'analyze': false, // Boolean | If true, the recipe will be analyzed and classified resolving in more data such as cuisines, dish types, and more.
  'includeNutrition': false, // Boolean | Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings.
  'includeTaste': false // Boolean | Whether taste data should be added to correctly parsed ingredients.
};
apiInstance.extractRecipeFromWebsite(url, opts, (error, data, response) => {
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
 **url** | **String**| The URL of the recipe page. | 
 **forceExtraction** | **Boolean**| If true, the extraction will be triggered whether we already know the recipe or not. Use this only if information is missing as this operation is slower. | [optional] 
 **analyze** | **Boolean**| If true, the recipe will be analyzed and classified resolving in more data such as cuisines, dish types, and more. | [optional] 
 **includeNutrition** | **Boolean**| Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. | [optional] [default to false]
 **includeTaste** | **Boolean**| Whether taste data should be added to correctly parsed ingredients. | [optional] [default to false]

### Return type

[**GetRecipeInformation200Response**](GetRecipeInformation200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getAnalyzedRecipeInstructions

> GetAnalyzedRecipeInstructions200Response getAnalyzedRecipeInstructions(id, opts)

Get Analyzed Recipe Instructions

Get an analyzed breakdown of a recipe&#39;s instructions. Each step is enriched with the ingredients and equipment required.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.RecipesApi();
let id = 1; // Number | The item's id.
let opts = {
  'stepBreakdown': true // Boolean | Whether to break down the recipe steps even more.
};
apiInstance.getAnalyzedRecipeInstructions(id, opts, (error, data, response) => {
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
 **stepBreakdown** | **Boolean**| Whether to break down the recipe steps even more. | [optional] 

### Return type

[**GetAnalyzedRecipeInstructions200Response**](GetAnalyzedRecipeInstructions200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getRandomRecipes

> GetRandomRecipes200Response getRandomRecipes(opts)

Get Random Recipes

Find random (popular) recipes. If you need to filter recipes by diet, nutrition etc. you might want to consider using the complex recipe search endpoint and set the sort request parameter to random.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.RecipesApi();
let opts = {
  'limitLicense': true, // Boolean | Whether the recipes should have an open license that allows display with proper attribution.
  'tags': "tags_example", // String | The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have.
  'number': 10 // Number | The maximum number of items to return (between 1 and 100). Defaults to 10.
};
apiInstance.getRandomRecipes(opts, (error, data, response) => {
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
 **limitLicense** | **Boolean**| Whether the recipes should have an open license that allows display with proper attribution. | [optional] [default to true]
 **tags** | **String**| The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have. | [optional] 
 **number** | **Number**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]

### Return type

[**GetRandomRecipes200Response**](GetRandomRecipes200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getRecipeEquipmentByID

> GetRecipeEquipmentByID200Response getRecipeEquipmentByID(id)

Equipment by ID

Get a recipe&#39;s equipment list.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.RecipesApi();
let id = 1; // Number | The item's id.
apiInstance.getRecipeEquipmentByID(id, (error, data, response) => {
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

[**GetRecipeEquipmentByID200Response**](GetRecipeEquipmentByID200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getRecipeInformation

> GetRecipeInformation200Response getRecipeInformation(id, opts)

Get Recipe Information

Use a recipe id to get full information about a recipe, such as ingredients, nutrition, diet and allergen information, etc.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.RecipesApi();
let id = 1; // Number | The item's id.
let opts = {
  'includeNutrition': false // Boolean | Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings.
};
apiInstance.getRecipeInformation(id, opts, (error, data, response) => {
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
 **includeNutrition** | **Boolean**| Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. | [optional] [default to false]

### Return type

[**GetRecipeInformation200Response**](GetRecipeInformation200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getRecipeInformationBulk

> [GetRecipeInformationBulk200ResponseInner] getRecipeInformationBulk(ids, opts)

Get Recipe Information Bulk

Get information about multiple recipes at once. This is equivalent to calling the Get Recipe Information endpoint multiple times, but faster.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.RecipesApi();
let ids = 715538,716429; // String | A comma-separated list of recipe ids.
let opts = {
  'includeNutrition': false // Boolean | Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings.
};
apiInstance.getRecipeInformationBulk(ids, opts, (error, data, response) => {
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
 **ids** | **String**| A comma-separated list of recipe ids. | 
 **includeNutrition** | **Boolean**| Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. | [optional] [default to false]

### Return type

[**[GetRecipeInformationBulk200ResponseInner]**](GetRecipeInformationBulk200ResponseInner.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getRecipeIngredientsByID

> GetRecipeIngredientsByID200Response getRecipeIngredientsByID(id)

Ingredients by ID

Get a recipe&#39;s ingredient list.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.RecipesApi();
let id = 1; // Number | The item's id.
apiInstance.getRecipeIngredientsByID(id, (error, data, response) => {
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

[**GetRecipeIngredientsByID200Response**](GetRecipeIngredientsByID200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getRecipeNutritionWidgetByID

> GetRecipeNutritionWidgetByID200Response getRecipeNutritionWidgetByID(id)

Nutrition by ID

Get a recipe&#39;s nutrition data.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.RecipesApi();
let id = 1; // Number | The item's id.
apiInstance.getRecipeNutritionWidgetByID(id, (error, data, response) => {
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

[**GetRecipeNutritionWidgetByID200Response**](GetRecipeNutritionWidgetByID200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getRecipePriceBreakdownByID

> GetRecipePriceBreakdownByID200Response getRecipePriceBreakdownByID(id)

Price Breakdown by ID

Get a recipe&#39;s price breakdown data.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.RecipesApi();
let id = 1; // Number | The item's id.
apiInstance.getRecipePriceBreakdownByID(id, (error, data, response) => {
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

[**GetRecipePriceBreakdownByID200Response**](GetRecipePriceBreakdownByID200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getRecipeTasteByID

> GetRecipeTasteByID200Response getRecipeTasteByID(id, opts)

Taste by ID

Get a recipe&#39;s taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.RecipesApi();
let id = 1; // Number | The item's id.
let opts = {
  'normalize': true // Boolean | Normalize to the strongest taste.
};
apiInstance.getRecipeTasteByID(id, opts, (error, data, response) => {
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
 **normalize** | **Boolean**| Normalize to the strongest taste. | [optional] [default to true]

### Return type

[**GetRecipeTasteByID200Response**](GetRecipeTasteByID200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getSimilarRecipes

> [GetSimilarRecipes200ResponseInner] getSimilarRecipes(id, opts)

Get Similar Recipes

Find recipes which are similar to the given one.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.RecipesApi();
let id = 1; // Number | The item's id.
let opts = {
  'number': 10, // Number | The maximum number of items to return (between 1 and 100). Defaults to 10.
  'limitLicense': true // Boolean | Whether the recipes should have an open license that allows display with proper attribution.
};
apiInstance.getSimilarRecipes(id, opts, (error, data, response) => {
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
 **number** | **Number**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]
 **limitLicense** | **Boolean**| Whether the recipes should have an open license that allows display with proper attribution. | [optional] [default to true]

### Return type

[**[GetSimilarRecipes200ResponseInner]**](GetSimilarRecipes200ResponseInner.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## guessNutritionByDishName

> GuessNutritionByDishName200Response guessNutritionByDishName(title)

Guess Nutrition by Dish Name

Estimate the macronutrients of a dish based on its title.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.RecipesApi();
let title = Spaghetti Aglio et Olio; // String | The title of the dish.
apiInstance.guessNutritionByDishName(title, (error, data, response) => {
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
 **title** | **String**| The title of the dish. | 

### Return type

[**GuessNutritionByDishName200Response**](GuessNutritionByDishName200Response.md)

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

let apiInstance = new SpoonacularApi.RecipesApi();
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


## parseIngredients

> [ParseIngredients200ResponseInner] parseIngredients(opts)

Parse Ingredients

Extract an ingredient from plain text.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.RecipesApi();
let opts = {
  'contentType': application/json, // String | The content type.
  'language': en // String | The language of the input. Either 'en' or 'de'.
};
apiInstance.parseIngredients(opts, (error, data, response) => {
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

### Return type

[**[ParseIngredients200ResponseInner]**](ParseIngredients200ResponseInner.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## priceBreakdownByIDImage

> Object priceBreakdownByIDImage(id)

Price Breakdown by ID Image

Visualize a recipe&#39;s price breakdown.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.RecipesApi();
let id = 1082038; // Number | The recipe id.
apiInstance.priceBreakdownByIDImage(id, (error, data, response) => {
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

### Return type

**Object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/png


## quickAnswer

> QuickAnswer200Response quickAnswer(q)

Quick Answer

Answer a nutrition related natural language question.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.RecipesApi();
let q = How much vitamin c is in 2 apples?; // String | The nutrition related question.
apiInstance.quickAnswer(q, (error, data, response) => {
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
 **q** | **String**| The nutrition related question. | 

### Return type

[**QuickAnswer200Response**](QuickAnswer200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## recipeNutritionByIDImage

> Object recipeNutritionByIDImage(id)

Recipe Nutrition by ID Image

Visualize a recipe&#39;s nutritional information as an image.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.RecipesApi();
let id = 1082038; // Number | The recipe id.
apiInstance.recipeNutritionByIDImage(id, (error, data, response) => {
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

### Return type

**Object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/png


## recipeNutritionLabelImage

> Object recipeNutritionLabelImage(id, opts)

Recipe Nutrition Label Image

Get a recipe&#39;s nutrition label as an image.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.RecipesApi();
let id = 641166; // Number | The recipe id.
let opts = {
  'showOptionalNutrients': false, // Boolean | Whether to show optional nutrients.
  'showZeroValues': false, // Boolean | Whether to show zero values.
  'showIngredients': false // Boolean | Whether to show a list of ingredients.
};
apiInstance.recipeNutritionLabelImage(id, opts, (error, data, response) => {
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
 **showOptionalNutrients** | **Boolean**| Whether to show optional nutrients. | [optional] 
 **showZeroValues** | **Boolean**| Whether to show zero values. | [optional] 
 **showIngredients** | **Boolean**| Whether to show a list of ingredients. | [optional] 

### Return type

**Object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/png


## recipeNutritionLabelWidget

> String recipeNutritionLabelWidget(id, opts)

Recipe Nutrition Label Widget

Get a recipe&#39;s nutrition label as an HTML widget.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.RecipesApi();
let id = 641166; // Number | The recipe id.
let opts = {
  'defaultCss': false, // Boolean | Whether the default CSS should be added to the response.
  'showOptionalNutrients': false, // Boolean | Whether to show optional nutrients.
  'showZeroValues': false, // Boolean | Whether to show zero values.
  'showIngredients': false // Boolean | Whether to show a list of ingredients.
};
apiInstance.recipeNutritionLabelWidget(id, opts, (error, data, response) => {
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
 **defaultCss** | **Boolean**| Whether the default CSS should be added to the response. | [optional] [default to true]
 **showOptionalNutrients** | **Boolean**| Whether to show optional nutrients. | [optional] 
 **showZeroValues** | **Boolean**| Whether to show zero values. | [optional] 
 **showIngredients** | **Boolean**| Whether to show a list of ingredients. | [optional] 

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html


## recipeTasteByIDImage

> Object recipeTasteByIDImage(id, opts)

Recipe Taste by ID Image

Get a recipe&#39;s taste as an image. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.RecipesApi();
let id = 69095; // Number | The recipe id.
let opts = {
  'normalize': false, // Boolean | Normalize to the strongest taste.
  'rgb': 75,192,192 // String | Red, green, blue values for the chart color.
};
apiInstance.recipeTasteByIDImage(id, opts, (error, data, response) => {
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
 **normalize** | **Boolean**| Normalize to the strongest taste. | [optional] 
 **rgb** | **String**| Red, green, blue values for the chart color. | [optional] 

### Return type

**Object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/png


## searchRecipes

> SearchRecipes200Response searchRecipes(opts)

Search Recipes

Search through hundreds of thousands of recipes using advanced filtering and ranking. NOTE: This method combines searching by query, by ingredients, and by nutrients into one endpoint.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.RecipesApi();
let opts = {
  'query': burger, // String | The (natural language) search query.
  'cuisine': italian, // String | The cuisine(s) of the recipes. One or more, comma separated (will be interpreted as 'OR'). See a full list of supported cuisines.
  'excludeCuisine': greek, // String | The cuisine(s) the recipes must not match. One or more, comma separated (will be interpreted as 'AND'). See a full list of supported cuisines.
  'diet': vegetarian, // String | The diet for which the recipes must be suitable. See a full list of supported diets.
  'intolerances': gluten, // String | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.
  'equipment': pan, // String | The equipment required. Multiple values will be interpreted as 'or'. For example, value could be \"blender, frying pan, bowl\".
  'includeIngredients': tomato,cheese, // String | A comma-separated list of ingredients that should/must be used in the recipes.
  'excludeIngredients': eggs, // String | A comma-separated list of ingredients or ingredient types that the recipes must not contain.
  'type': main course, // String | The type of recipe. See a full list of supported meal types.
  'instructionsRequired': true, // Boolean | Whether the recipes must have instructions.
  'fillIngredients': false, // Boolean | Add information about the ingredients and whether they are used or missing in relation to the query.
  'addRecipeInformation': false, // Boolean | If set to true, you get more information about the recipes returned.
  'addRecipeNutrition': false, // Boolean | If set to true, you get nutritional information about each recipes returned.
  'author': coffeebean, // String | The username of the recipe author.
  'tags': "tags_example", // String | The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have.
  'recipeBoxId': 2468, // Number | The id of the recipe box to which the search should be limited to.
  'titleMatch': Crock Pot, // String | Enter text that must be found in the title of the recipes.
  'maxReadyTime': 20, // Number | The maximum time in minutes it should take to prepare and cook the recipe.
  'ignorePantry': false, // Boolean | Whether to ignore typical pantry items, such as water, salt, flour, etc.
  'sort': calories, // String | The strategy to sort recipes by. See a full list of supported sorting options.
  'sortDirection': asc, // String | The direction in which to sort. Must be either 'asc' (ascending) or 'desc' (descending).
  'minCarbs': 10, // Number | The minimum amount of carbohydrates in grams the recipe must have.
  'maxCarbs': 100, // Number | The maximum amount of carbohydrates in grams the recipe can have.
  'minProtein': 10, // Number | The minimum amount of protein in grams the recipe must have.
  'maxProtein': 100, // Number | The maximum amount of protein in grams the recipe can have.
  'minCalories': 50, // Number | The minimum amount of calories the recipe must have.
  'maxCalories': 800, // Number | The maximum amount of calories the recipe can have.
  'minFat': 1, // Number | The minimum amount of fat in grams the recipe must have.
  'maxFat': 100, // Number | The maximum amount of fat in grams the recipe can have.
  'minAlcohol': 0, // Number | The minimum amount of alcohol in grams the recipe must have.
  'maxAlcohol': 100, // Number | The maximum amount of alcohol in grams the recipe can have.
  'minCaffeine': 0, // Number | The minimum amount of caffeine in milligrams the recipe must have.
  'maxCaffeine': 100, // Number | The maximum amount of caffeine in milligrams the recipe can have.
  'minCopper': 0, // Number | The minimum amount of copper in milligrams the recipe must have.
  'maxCopper': 100, // Number | The maximum amount of copper in milligrams the recipe can have.
  'minCalcium': 0, // Number | The minimum amount of calcium in milligrams the recipe must have.
  'maxCalcium': 100, // Number | The maximum amount of calcium in milligrams the recipe can have.
  'minCholine': 0, // Number | The minimum amount of choline in milligrams the recipe must have.
  'maxCholine': 100, // Number | The maximum amount of choline in milligrams the recipe can have.
  'minCholesterol': 0, // Number | The minimum amount of cholesterol in milligrams the recipe must have.
  'maxCholesterol': 100, // Number | The maximum amount of cholesterol in milligrams the recipe can have.
  'minFluoride': 0, // Number | The minimum amount of fluoride in milligrams the recipe must have.
  'maxFluoride': 100, // Number | The maximum amount of fluoride in milligrams the recipe can have.
  'minSaturatedFat': 0, // Number | The minimum amount of saturated fat in grams the recipe must have.
  'maxSaturatedFat': 100, // Number | The maximum amount of saturated fat in grams the recipe can have.
  'minVitaminA': 0, // Number | The minimum amount of Vitamin A in IU the recipe must have.
  'maxVitaminA': 100, // Number | The maximum amount of Vitamin A in IU the recipe can have.
  'minVitaminC': 0, // Number | The minimum amount of Vitamin C milligrams the recipe must have.
  'maxVitaminC': 100, // Number | The maximum amount of Vitamin C in milligrams the recipe can have.
  'minVitaminD': 0, // Number | The minimum amount of Vitamin D in micrograms the recipe must have.
  'maxVitaminD': 100, // Number | The maximum amount of Vitamin D in micrograms the recipe can have.
  'minVitaminE': 0, // Number | The minimum amount of Vitamin E in milligrams the recipe must have.
  'maxVitaminE': 100, // Number | The maximum amount of Vitamin E in milligrams the recipe can have.
  'minVitaminK': 0, // Number | The minimum amount of Vitamin K in micrograms the recipe must have.
  'maxVitaminK': 100, // Number | The maximum amount of Vitamin K in micrograms the recipe can have.
  'minVitaminB1': 0, // Number | The minimum amount of Vitamin B1 in milligrams the recipe must have.
  'maxVitaminB1': 100, // Number | The maximum amount of Vitamin B1 in milligrams the recipe can have.
  'minVitaminB2': 0, // Number | The minimum amount of Vitamin B2 in milligrams the recipe must have.
  'maxVitaminB2': 100, // Number | The maximum amount of Vitamin B2 in milligrams the recipe can have.
  'minVitaminB5': 0, // Number | The minimum amount of Vitamin B5 in milligrams the recipe must have.
  'maxVitaminB5': 100, // Number | The maximum amount of Vitamin B5 in milligrams the recipe can have.
  'minVitaminB3': 0, // Number | The minimum amount of Vitamin B3 in milligrams the recipe must have.
  'maxVitaminB3': 100, // Number | The maximum amount of Vitamin B3 in milligrams the recipe can have.
  'minVitaminB6': 0, // Number | The minimum amount of Vitamin B6 in milligrams the recipe must have.
  'maxVitaminB6': 100, // Number | The maximum amount of Vitamin B6 in milligrams the recipe can have.
  'minVitaminB12': 0, // Number | The minimum amount of Vitamin B12 in micrograms the recipe must have.
  'maxVitaminB12': 100, // Number | The maximum amount of Vitamin B12 in micrograms the recipe can have.
  'minFiber': 0, // Number | The minimum amount of fiber in grams the recipe must have.
  'maxFiber': 100, // Number | The maximum amount of fiber in grams the recipe can have.
  'minFolate': 0, // Number | The minimum amount of folate in micrograms the recipe must have.
  'maxFolate': 100, // Number | The maximum amount of folate in micrograms the recipe can have.
  'minFolicAcid': 0, // Number | The minimum amount of folic acid in micrograms the recipe must have.
  'maxFolicAcid': 100, // Number | The maximum amount of folic acid in micrograms the recipe can have.
  'minIodine': 0, // Number | The minimum amount of iodine in micrograms the recipe must have.
  'maxIodine': 100, // Number | The maximum amount of iodine in micrograms the recipe can have.
  'minIron': 0, // Number | The minimum amount of iron in milligrams the recipe must have.
  'maxIron': 100, // Number | The maximum amount of iron in milligrams the recipe can have.
  'minMagnesium': 0, // Number | The minimum amount of magnesium in milligrams the recipe must have.
  'maxMagnesium': 100, // Number | The maximum amount of magnesium in milligrams the recipe can have.
  'minManganese': 0, // Number | The minimum amount of manganese in milligrams the recipe must have.
  'maxManganese': 100, // Number | The maximum amount of manganese in milligrams the recipe can have.
  'minPhosphorus': 0, // Number | The minimum amount of phosphorus in milligrams the recipe must have.
  'maxPhosphorus': 100, // Number | The maximum amount of phosphorus in milligrams the recipe can have.
  'minPotassium': 0, // Number | The minimum amount of potassium in milligrams the recipe must have.
  'maxPotassium': 100, // Number | The maximum amount of potassium in milligrams the recipe can have.
  'minSelenium': 0, // Number | The minimum amount of selenium in micrograms the recipe must have.
  'maxSelenium': 100, // Number | The maximum amount of selenium in micrograms the recipe can have.
  'minSodium': 0, // Number | The minimum amount of sodium in milligrams the recipe must have.
  'maxSodium': 100, // Number | The maximum amount of sodium in milligrams the recipe can have.
  'minSugar': 0, // Number | The minimum amount of sugar in grams the recipe must have.
  'maxSugar': 100, // Number | The maximum amount of sugar in grams the recipe can have.
  'minZinc': 0, // Number | The minimum amount of zinc in milligrams the recipe must have.
  'maxZinc': 100, // Number | The maximum amount of zinc in milligrams the recipe can have.
  'offset': 56, // Number | The number of results to skip (between 0 and 900).
  'number': 10, // Number | The maximum number of items to return (between 1 and 100). Defaults to 10.
  'limitLicense': true // Boolean | Whether the recipes should have an open license that allows display with proper attribution.
};
apiInstance.searchRecipes(opts, (error, data, response) => {
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
 **cuisine** | **String**| The cuisine(s) of the recipes. One or more, comma separated (will be interpreted as &#39;OR&#39;). See a full list of supported cuisines. | [optional] 
 **excludeCuisine** | **String**| The cuisine(s) the recipes must not match. One or more, comma separated (will be interpreted as &#39;AND&#39;). See a full list of supported cuisines. | [optional] 
 **diet** | **String**| The diet for which the recipes must be suitable. See a full list of supported diets. | [optional] 
 **intolerances** | **String**| A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. | [optional] 
 **equipment** | **String**| The equipment required. Multiple values will be interpreted as &#39;or&#39;. For example, value could be \&quot;blender, frying pan, bowl\&quot;. | [optional] 
 **includeIngredients** | **String**| A comma-separated list of ingredients that should/must be used in the recipes. | [optional] 
 **excludeIngredients** | **String**| A comma-separated list of ingredients or ingredient types that the recipes must not contain. | [optional] 
 **type** | **String**| The type of recipe. See a full list of supported meal types. | [optional] 
 **instructionsRequired** | **Boolean**| Whether the recipes must have instructions. | [optional] 
 **fillIngredients** | **Boolean**| Add information about the ingredients and whether they are used or missing in relation to the query. | [optional] 
 **addRecipeInformation** | **Boolean**| If set to true, you get more information about the recipes returned. | [optional] 
 **addRecipeNutrition** | **Boolean**| If set to true, you get nutritional information about each recipes returned. | [optional] 
 **author** | **String**| The username of the recipe author. | [optional] 
 **tags** | **String**| The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have. | [optional] 
 **recipeBoxId** | **Number**| The id of the recipe box to which the search should be limited to. | [optional] 
 **titleMatch** | **String**| Enter text that must be found in the title of the recipes. | [optional] 
 **maxReadyTime** | **Number**| The maximum time in minutes it should take to prepare and cook the recipe. | [optional] 
 **ignorePantry** | **Boolean**| Whether to ignore typical pantry items, such as water, salt, flour, etc. | [optional] [default to false]
 **sort** | **String**| The strategy to sort recipes by. See a full list of supported sorting options. | [optional] 
 **sortDirection** | **String**| The direction in which to sort. Must be either &#39;asc&#39; (ascending) or &#39;desc&#39; (descending). | [optional] 
 **minCarbs** | **Number**| The minimum amount of carbohydrates in grams the recipe must have. | [optional] 
 **maxCarbs** | **Number**| The maximum amount of carbohydrates in grams the recipe can have. | [optional] 
 **minProtein** | **Number**| The minimum amount of protein in grams the recipe must have. | [optional] 
 **maxProtein** | **Number**| The maximum amount of protein in grams the recipe can have. | [optional] 
 **minCalories** | **Number**| The minimum amount of calories the recipe must have. | [optional] 
 **maxCalories** | **Number**| The maximum amount of calories the recipe can have. | [optional] 
 **minFat** | **Number**| The minimum amount of fat in grams the recipe must have. | [optional] 
 **maxFat** | **Number**| The maximum amount of fat in grams the recipe can have. | [optional] 
 **minAlcohol** | **Number**| The minimum amount of alcohol in grams the recipe must have. | [optional] 
 **maxAlcohol** | **Number**| The maximum amount of alcohol in grams the recipe can have. | [optional] 
 **minCaffeine** | **Number**| The minimum amount of caffeine in milligrams the recipe must have. | [optional] 
 **maxCaffeine** | **Number**| The maximum amount of caffeine in milligrams the recipe can have. | [optional] 
 **minCopper** | **Number**| The minimum amount of copper in milligrams the recipe must have. | [optional] 
 **maxCopper** | **Number**| The maximum amount of copper in milligrams the recipe can have. | [optional] 
 **minCalcium** | **Number**| The minimum amount of calcium in milligrams the recipe must have. | [optional] 
 **maxCalcium** | **Number**| The maximum amount of calcium in milligrams the recipe can have. | [optional] 
 **minCholine** | **Number**| The minimum amount of choline in milligrams the recipe must have. | [optional] 
 **maxCholine** | **Number**| The maximum amount of choline in milligrams the recipe can have. | [optional] 
 **minCholesterol** | **Number**| The minimum amount of cholesterol in milligrams the recipe must have. | [optional] 
 **maxCholesterol** | **Number**| The maximum amount of cholesterol in milligrams the recipe can have. | [optional] 
 **minFluoride** | **Number**| The minimum amount of fluoride in milligrams the recipe must have. | [optional] 
 **maxFluoride** | **Number**| The maximum amount of fluoride in milligrams the recipe can have. | [optional] 
 **minSaturatedFat** | **Number**| The minimum amount of saturated fat in grams the recipe must have. | [optional] 
 **maxSaturatedFat** | **Number**| The maximum amount of saturated fat in grams the recipe can have. | [optional] 
 **minVitaminA** | **Number**| The minimum amount of Vitamin A in IU the recipe must have. | [optional] 
 **maxVitaminA** | **Number**| The maximum amount of Vitamin A in IU the recipe can have. | [optional] 
 **minVitaminC** | **Number**| The minimum amount of Vitamin C milligrams the recipe must have. | [optional] 
 **maxVitaminC** | **Number**| The maximum amount of Vitamin C in milligrams the recipe can have. | [optional] 
 **minVitaminD** | **Number**| The minimum amount of Vitamin D in micrograms the recipe must have. | [optional] 
 **maxVitaminD** | **Number**| The maximum amount of Vitamin D in micrograms the recipe can have. | [optional] 
 **minVitaminE** | **Number**| The minimum amount of Vitamin E in milligrams the recipe must have. | [optional] 
 **maxVitaminE** | **Number**| The maximum amount of Vitamin E in milligrams the recipe can have. | [optional] 
 **minVitaminK** | **Number**| The minimum amount of Vitamin K in micrograms the recipe must have. | [optional] 
 **maxVitaminK** | **Number**| The maximum amount of Vitamin K in micrograms the recipe can have. | [optional] 
 **minVitaminB1** | **Number**| The minimum amount of Vitamin B1 in milligrams the recipe must have. | [optional] 
 **maxVitaminB1** | **Number**| The maximum amount of Vitamin B1 in milligrams the recipe can have. | [optional] 
 **minVitaminB2** | **Number**| The minimum amount of Vitamin B2 in milligrams the recipe must have. | [optional] 
 **maxVitaminB2** | **Number**| The maximum amount of Vitamin B2 in milligrams the recipe can have. | [optional] 
 **minVitaminB5** | **Number**| The minimum amount of Vitamin B5 in milligrams the recipe must have. | [optional] 
 **maxVitaminB5** | **Number**| The maximum amount of Vitamin B5 in milligrams the recipe can have. | [optional] 
 **minVitaminB3** | **Number**| The minimum amount of Vitamin B3 in milligrams the recipe must have. | [optional] 
 **maxVitaminB3** | **Number**| The maximum amount of Vitamin B3 in milligrams the recipe can have. | [optional] 
 **minVitaminB6** | **Number**| The minimum amount of Vitamin B6 in milligrams the recipe must have. | [optional] 
 **maxVitaminB6** | **Number**| The maximum amount of Vitamin B6 in milligrams the recipe can have. | [optional] 
 **minVitaminB12** | **Number**| The minimum amount of Vitamin B12 in micrograms the recipe must have. | [optional] 
 **maxVitaminB12** | **Number**| The maximum amount of Vitamin B12 in micrograms the recipe can have. | [optional] 
 **minFiber** | **Number**| The minimum amount of fiber in grams the recipe must have. | [optional] 
 **maxFiber** | **Number**| The maximum amount of fiber in grams the recipe can have. | [optional] 
 **minFolate** | **Number**| The minimum amount of folate in micrograms the recipe must have. | [optional] 
 **maxFolate** | **Number**| The maximum amount of folate in micrograms the recipe can have. | [optional] 
 **minFolicAcid** | **Number**| The minimum amount of folic acid in micrograms the recipe must have. | [optional] 
 **maxFolicAcid** | **Number**| The maximum amount of folic acid in micrograms the recipe can have. | [optional] 
 **minIodine** | **Number**| The minimum amount of iodine in micrograms the recipe must have. | [optional] 
 **maxIodine** | **Number**| The maximum amount of iodine in micrograms the recipe can have. | [optional] 
 **minIron** | **Number**| The minimum amount of iron in milligrams the recipe must have. | [optional] 
 **maxIron** | **Number**| The maximum amount of iron in milligrams the recipe can have. | [optional] 
 **minMagnesium** | **Number**| The minimum amount of magnesium in milligrams the recipe must have. | [optional] 
 **maxMagnesium** | **Number**| The maximum amount of magnesium in milligrams the recipe can have. | [optional] 
 **minManganese** | **Number**| The minimum amount of manganese in milligrams the recipe must have. | [optional] 
 **maxManganese** | **Number**| The maximum amount of manganese in milligrams the recipe can have. | [optional] 
 **minPhosphorus** | **Number**| The minimum amount of phosphorus in milligrams the recipe must have. | [optional] 
 **maxPhosphorus** | **Number**| The maximum amount of phosphorus in milligrams the recipe can have. | [optional] 
 **minPotassium** | **Number**| The minimum amount of potassium in milligrams the recipe must have. | [optional] 
 **maxPotassium** | **Number**| The maximum amount of potassium in milligrams the recipe can have. | [optional] 
 **minSelenium** | **Number**| The minimum amount of selenium in micrograms the recipe must have. | [optional] 
 **maxSelenium** | **Number**| The maximum amount of selenium in micrograms the recipe can have. | [optional] 
 **minSodium** | **Number**| The minimum amount of sodium in milligrams the recipe must have. | [optional] 
 **maxSodium** | **Number**| The maximum amount of sodium in milligrams the recipe can have. | [optional] 
 **minSugar** | **Number**| The minimum amount of sugar in grams the recipe must have. | [optional] 
 **maxSugar** | **Number**| The maximum amount of sugar in grams the recipe can have. | [optional] 
 **minZinc** | **Number**| The minimum amount of zinc in milligrams the recipe must have. | [optional] 
 **maxZinc** | **Number**| The maximum amount of zinc in milligrams the recipe can have. | [optional] 
 **offset** | **Number**| The number of results to skip (between 0 and 900). | [optional] 
 **number** | **Number**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]
 **limitLicense** | **Boolean**| Whether the recipes should have an open license that allows display with proper attribution. | [optional] [default to true]

### Return type

[**SearchRecipes200Response**](SearchRecipes200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## searchRecipesByIngredients

> [SearchRecipesByIngredients200ResponseInner] searchRecipesByIngredients(opts)

Search Recipes by Ingredients

 Ever wondered what recipes you can cook with the ingredients you have in your fridge or pantry? This endpoint lets you find recipes that either maximize the usage of ingredients you have at hand (pre shopping) or minimize the ingredients that you don&#39;t currently have (post shopping).         

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.RecipesApi();
let opts = {
  'ingredients': carrots,tomatoes, // String | A comma-separated list of ingredients that the recipes should contain.
  'number': 10, // Number | The maximum number of items to return (between 1 and 100). Defaults to 10.
  'limitLicense': true, // Boolean | Whether the recipes should have an open license that allows display with proper attribution.
  'ranking': 1, // Number | Whether to maximize used ingredients (1) or minimize missing ingredients (2) first.
  'ignorePantry': false // Boolean | Whether to ignore typical pantry items, such as water, salt, flour, etc.
};
apiInstance.searchRecipesByIngredients(opts, (error, data, response) => {
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
 **ingredients** | **String**| A comma-separated list of ingredients that the recipes should contain. | [optional] 
 **number** | **Number**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]
 **limitLicense** | **Boolean**| Whether the recipes should have an open license that allows display with proper attribution. | [optional] [default to true]
 **ranking** | **Number**| Whether to maximize used ingredients (1) or minimize missing ingredients (2) first. | [optional] 
 **ignorePantry** | **Boolean**| Whether to ignore typical pantry items, such as water, salt, flour, etc. | [optional] [default to false]

### Return type

[**[SearchRecipesByIngredients200ResponseInner]**](SearchRecipesByIngredients200ResponseInner.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## searchRecipesByNutrients

> [SearchRecipesByNutrients200ResponseInner] searchRecipesByNutrients(opts)

Search Recipes by Nutrients

Find a set of recipes that adhere to the given nutritional limits. You may set limits for macronutrients (calories, protein, fat, and carbohydrate) and/or many micronutrients.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.RecipesApi();
let opts = {
  'minCarbs': 10, // Number | The minimum amount of carbohydrates in grams the recipe must have.
  'maxCarbs': 100, // Number | The maximum amount of carbohydrates in grams the recipe can have.
  'minProtein': 10, // Number | The minimum amount of protein in grams the recipe must have.
  'maxProtein': 100, // Number | The maximum amount of protein in grams the recipe can have.
  'minCalories': 50, // Number | The minimum amount of calories the recipe must have.
  'maxCalories': 800, // Number | The maximum amount of calories the recipe can have.
  'minFat': 1, // Number | The minimum amount of fat in grams the recipe must have.
  'maxFat': 100, // Number | The maximum amount of fat in grams the recipe can have.
  'minAlcohol': 0, // Number | The minimum amount of alcohol in grams the recipe must have.
  'maxAlcohol': 100, // Number | The maximum amount of alcohol in grams the recipe can have.
  'minCaffeine': 0, // Number | The minimum amount of caffeine in milligrams the recipe must have.
  'maxCaffeine': 100, // Number | The maximum amount of caffeine in milligrams the recipe can have.
  'minCopper': 0, // Number | The minimum amount of copper in milligrams the recipe must have.
  'maxCopper': 100, // Number | The maximum amount of copper in milligrams the recipe can have.
  'minCalcium': 0, // Number | The minimum amount of calcium in milligrams the recipe must have.
  'maxCalcium': 100, // Number | The maximum amount of calcium in milligrams the recipe can have.
  'minCholine': 0, // Number | The minimum amount of choline in milligrams the recipe must have.
  'maxCholine': 100, // Number | The maximum amount of choline in milligrams the recipe can have.
  'minCholesterol': 0, // Number | The minimum amount of cholesterol in milligrams the recipe must have.
  'maxCholesterol': 100, // Number | The maximum amount of cholesterol in milligrams the recipe can have.
  'minFluoride': 0, // Number | The minimum amount of fluoride in milligrams the recipe must have.
  'maxFluoride': 100, // Number | The maximum amount of fluoride in milligrams the recipe can have.
  'minSaturatedFat': 0, // Number | The minimum amount of saturated fat in grams the recipe must have.
  'maxSaturatedFat': 100, // Number | The maximum amount of saturated fat in grams the recipe can have.
  'minVitaminA': 0, // Number | The minimum amount of Vitamin A in IU the recipe must have.
  'maxVitaminA': 100, // Number | The maximum amount of Vitamin A in IU the recipe can have.
  'minVitaminC': 0, // Number | The minimum amount of Vitamin C in milligrams the recipe must have.
  'maxVitaminC': 100, // Number | The maximum amount of Vitamin C in milligrams the recipe can have.
  'minVitaminD': 0, // Number | The minimum amount of Vitamin D in micrograms the recipe must have.
  'maxVitaminD': 100, // Number | The maximum amount of Vitamin D in micrograms the recipe can have.
  'minVitaminE': 0, // Number | The minimum amount of Vitamin E in milligrams the recipe must have.
  'maxVitaminE': 100, // Number | The maximum amount of Vitamin E in milligrams the recipe can have.
  'minVitaminK': 0, // Number | The minimum amount of Vitamin K in micrograms the recipe must have.
  'maxVitaminK': 100, // Number | The maximum amount of Vitamin K in micrograms the recipe can have.
  'minVitaminB1': 0, // Number | The minimum amount of Vitamin B1 in milligrams the recipe must have.
  'maxVitaminB1': 100, // Number | The maximum amount of Vitamin B1 in milligrams the recipe can have.
  'minVitaminB2': 0, // Number | The minimum amount of Vitamin B2 in milligrams the recipe must have.
  'maxVitaminB2': 100, // Number | The maximum amount of Vitamin B2 in milligrams the recipe can have.
  'minVitaminB5': 0, // Number | The minimum amount of Vitamin B5 in milligrams the recipe must have.
  'maxVitaminB5': 100, // Number | The maximum amount of Vitamin B5 in milligrams the recipe can have.
  'minVitaminB3': 0, // Number | The minimum amount of Vitamin B3 in milligrams the recipe must have.
  'maxVitaminB3': 100, // Number | The maximum amount of Vitamin B3 in milligrams the recipe can have.
  'minVitaminB6': 0, // Number | The minimum amount of Vitamin B6 in milligrams the recipe must have.
  'maxVitaminB6': 100, // Number | The maximum amount of Vitamin B6 in milligrams the recipe can have.
  'minVitaminB12': 0, // Number | The minimum amount of Vitamin B12 in micrograms the recipe must have.
  'maxVitaminB12': 100, // Number | The maximum amount of Vitamin B12 in micrograms the recipe can have.
  'minFiber': 0, // Number | The minimum amount of fiber in grams the recipe must have.
  'maxFiber': 100, // Number | The maximum amount of fiber in grams the recipe can have.
  'minFolate': 0, // Number | The minimum amount of folate in micrograms the recipe must have.
  'maxFolate': 100, // Number | The maximum amount of folate in micrograms the recipe can have.
  'minFolicAcid': 0, // Number | The minimum amount of folic acid in micrograms the recipe must have.
  'maxFolicAcid': 100, // Number | The maximum amount of folic acid in micrograms the recipe can have.
  'minIodine': 0, // Number | The minimum amount of iodine in micrograms the recipe must have.
  'maxIodine': 100, // Number | The maximum amount of iodine in micrograms the recipe can have.
  'minIron': 0, // Number | The minimum amount of iron in milligrams the recipe must have.
  'maxIron': 100, // Number | The maximum amount of iron in milligrams the recipe can have.
  'minMagnesium': 0, // Number | The minimum amount of magnesium in milligrams the recipe must have.
  'maxMagnesium': 100, // Number | The maximum amount of magnesium in milligrams the recipe can have.
  'minManganese': 0, // Number | The minimum amount of manganese in milligrams the recipe must have.
  'maxManganese': 100, // Number | The maximum amount of manganese in milligrams the recipe can have.
  'minPhosphorus': 0, // Number | The minimum amount of phosphorus in milligrams the recipe must have.
  'maxPhosphorus': 100, // Number | The maximum amount of phosphorus in milligrams the recipe can have.
  'minPotassium': 0, // Number | The minimum amount of potassium in milligrams the recipe must have.
  'maxPotassium': 100, // Number | The maximum amount of potassium in milligrams the recipe can have.
  'minSelenium': 0, // Number | The minimum amount of selenium in micrograms the recipe must have.
  'maxSelenium': 100, // Number | The maximum amount of selenium in micrograms the recipe can have.
  'minSodium': 0, // Number | The minimum amount of sodium in milligrams the recipe must have.
  'maxSodium': 100, // Number | The maximum amount of sodium in milligrams the recipe can have.
  'minSugar': 0, // Number | The minimum amount of sugar in grams the recipe must have.
  'maxSugar': 100, // Number | The maximum amount of sugar in grams the recipe can have.
  'minZinc': 0, // Number | The minimum amount of zinc in milligrams the recipe must have.
  'maxZinc': 100, // Number | The maximum amount of zinc in milligrams the recipe can have.
  'offset': 56, // Number | The number of results to skip (between 0 and 900).
  'number': 10, // Number | The maximum number of items to return (between 1 and 100). Defaults to 10.
  'random': false, // Boolean | If true, every request will give you a random set of recipes within the requested limits.
  'limitLicense': true // Boolean | Whether the recipes should have an open license that allows display with proper attribution.
};
apiInstance.searchRecipesByNutrients(opts, (error, data, response) => {
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
 **minCarbs** | **Number**| The minimum amount of carbohydrates in grams the recipe must have. | [optional] 
 **maxCarbs** | **Number**| The maximum amount of carbohydrates in grams the recipe can have. | [optional] 
 **minProtein** | **Number**| The minimum amount of protein in grams the recipe must have. | [optional] 
 **maxProtein** | **Number**| The maximum amount of protein in grams the recipe can have. | [optional] 
 **minCalories** | **Number**| The minimum amount of calories the recipe must have. | [optional] 
 **maxCalories** | **Number**| The maximum amount of calories the recipe can have. | [optional] 
 **minFat** | **Number**| The minimum amount of fat in grams the recipe must have. | [optional] 
 **maxFat** | **Number**| The maximum amount of fat in grams the recipe can have. | [optional] 
 **minAlcohol** | **Number**| The minimum amount of alcohol in grams the recipe must have. | [optional] 
 **maxAlcohol** | **Number**| The maximum amount of alcohol in grams the recipe can have. | [optional] 
 **minCaffeine** | **Number**| The minimum amount of caffeine in milligrams the recipe must have. | [optional] 
 **maxCaffeine** | **Number**| The maximum amount of caffeine in milligrams the recipe can have. | [optional] 
 **minCopper** | **Number**| The minimum amount of copper in milligrams the recipe must have. | [optional] 
 **maxCopper** | **Number**| The maximum amount of copper in milligrams the recipe can have. | [optional] 
 **minCalcium** | **Number**| The minimum amount of calcium in milligrams the recipe must have. | [optional] 
 **maxCalcium** | **Number**| The maximum amount of calcium in milligrams the recipe can have. | [optional] 
 **minCholine** | **Number**| The minimum amount of choline in milligrams the recipe must have. | [optional] 
 **maxCholine** | **Number**| The maximum amount of choline in milligrams the recipe can have. | [optional] 
 **minCholesterol** | **Number**| The minimum amount of cholesterol in milligrams the recipe must have. | [optional] 
 **maxCholesterol** | **Number**| The maximum amount of cholesterol in milligrams the recipe can have. | [optional] 
 **minFluoride** | **Number**| The minimum amount of fluoride in milligrams the recipe must have. | [optional] 
 **maxFluoride** | **Number**| The maximum amount of fluoride in milligrams the recipe can have. | [optional] 
 **minSaturatedFat** | **Number**| The minimum amount of saturated fat in grams the recipe must have. | [optional] 
 **maxSaturatedFat** | **Number**| The maximum amount of saturated fat in grams the recipe can have. | [optional] 
 **minVitaminA** | **Number**| The minimum amount of Vitamin A in IU the recipe must have. | [optional] 
 **maxVitaminA** | **Number**| The maximum amount of Vitamin A in IU the recipe can have. | [optional] 
 **minVitaminC** | **Number**| The minimum amount of Vitamin C in milligrams the recipe must have. | [optional] 
 **maxVitaminC** | **Number**| The maximum amount of Vitamin C in milligrams the recipe can have. | [optional] 
 **minVitaminD** | **Number**| The minimum amount of Vitamin D in micrograms the recipe must have. | [optional] 
 **maxVitaminD** | **Number**| The maximum amount of Vitamin D in micrograms the recipe can have. | [optional] 
 **minVitaminE** | **Number**| The minimum amount of Vitamin E in milligrams the recipe must have. | [optional] 
 **maxVitaminE** | **Number**| The maximum amount of Vitamin E in milligrams the recipe can have. | [optional] 
 **minVitaminK** | **Number**| The minimum amount of Vitamin K in micrograms the recipe must have. | [optional] 
 **maxVitaminK** | **Number**| The maximum amount of Vitamin K in micrograms the recipe can have. | [optional] 
 **minVitaminB1** | **Number**| The minimum amount of Vitamin B1 in milligrams the recipe must have. | [optional] 
 **maxVitaminB1** | **Number**| The maximum amount of Vitamin B1 in milligrams the recipe can have. | [optional] 
 **minVitaminB2** | **Number**| The minimum amount of Vitamin B2 in milligrams the recipe must have. | [optional] 
 **maxVitaminB2** | **Number**| The maximum amount of Vitamin B2 in milligrams the recipe can have. | [optional] 
 **minVitaminB5** | **Number**| The minimum amount of Vitamin B5 in milligrams the recipe must have. | [optional] 
 **maxVitaminB5** | **Number**| The maximum amount of Vitamin B5 in milligrams the recipe can have. | [optional] 
 **minVitaminB3** | **Number**| The minimum amount of Vitamin B3 in milligrams the recipe must have. | [optional] 
 **maxVitaminB3** | **Number**| The maximum amount of Vitamin B3 in milligrams the recipe can have. | [optional] 
 **minVitaminB6** | **Number**| The minimum amount of Vitamin B6 in milligrams the recipe must have. | [optional] 
 **maxVitaminB6** | **Number**| The maximum amount of Vitamin B6 in milligrams the recipe can have. | [optional] 
 **minVitaminB12** | **Number**| The minimum amount of Vitamin B12 in micrograms the recipe must have. | [optional] 
 **maxVitaminB12** | **Number**| The maximum amount of Vitamin B12 in micrograms the recipe can have. | [optional] 
 **minFiber** | **Number**| The minimum amount of fiber in grams the recipe must have. | [optional] 
 **maxFiber** | **Number**| The maximum amount of fiber in grams the recipe can have. | [optional] 
 **minFolate** | **Number**| The minimum amount of folate in micrograms the recipe must have. | [optional] 
 **maxFolate** | **Number**| The maximum amount of folate in micrograms the recipe can have. | [optional] 
 **minFolicAcid** | **Number**| The minimum amount of folic acid in micrograms the recipe must have. | [optional] 
 **maxFolicAcid** | **Number**| The maximum amount of folic acid in micrograms the recipe can have. | [optional] 
 **minIodine** | **Number**| The minimum amount of iodine in micrograms the recipe must have. | [optional] 
 **maxIodine** | **Number**| The maximum amount of iodine in micrograms the recipe can have. | [optional] 
 **minIron** | **Number**| The minimum amount of iron in milligrams the recipe must have. | [optional] 
 **maxIron** | **Number**| The maximum amount of iron in milligrams the recipe can have. | [optional] 
 **minMagnesium** | **Number**| The minimum amount of magnesium in milligrams the recipe must have. | [optional] 
 **maxMagnesium** | **Number**| The maximum amount of magnesium in milligrams the recipe can have. | [optional] 
 **minManganese** | **Number**| The minimum amount of manganese in milligrams the recipe must have. | [optional] 
 **maxManganese** | **Number**| The maximum amount of manganese in milligrams the recipe can have. | [optional] 
 **minPhosphorus** | **Number**| The minimum amount of phosphorus in milligrams the recipe must have. | [optional] 
 **maxPhosphorus** | **Number**| The maximum amount of phosphorus in milligrams the recipe can have. | [optional] 
 **minPotassium** | **Number**| The minimum amount of potassium in milligrams the recipe must have. | [optional] 
 **maxPotassium** | **Number**| The maximum amount of potassium in milligrams the recipe can have. | [optional] 
 **minSelenium** | **Number**| The minimum amount of selenium in micrograms the recipe must have. | [optional] 
 **maxSelenium** | **Number**| The maximum amount of selenium in micrograms the recipe can have. | [optional] 
 **minSodium** | **Number**| The minimum amount of sodium in milligrams the recipe must have. | [optional] 
 **maxSodium** | **Number**| The maximum amount of sodium in milligrams the recipe can have. | [optional] 
 **minSugar** | **Number**| The minimum amount of sugar in grams the recipe must have. | [optional] 
 **maxSugar** | **Number**| The maximum amount of sugar in grams the recipe can have. | [optional] 
 **minZinc** | **Number**| The minimum amount of zinc in milligrams the recipe must have. | [optional] 
 **maxZinc** | **Number**| The maximum amount of zinc in milligrams the recipe can have. | [optional] 
 **offset** | **Number**| The number of results to skip (between 0 and 900). | [optional] 
 **number** | **Number**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]
 **random** | **Boolean**| If true, every request will give you a random set of recipes within the requested limits. | [optional] 
 **limitLicense** | **Boolean**| Whether the recipes should have an open license that allows display with proper attribution. | [optional] [default to true]

### Return type

[**[SearchRecipesByNutrients200ResponseInner]**](SearchRecipesByNutrients200ResponseInner.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## summarizeRecipe

> SummarizeRecipe200Response summarizeRecipe(id)

Summarize Recipe

Automatically generate a short description that summarizes key information about the recipe.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.RecipesApi();
let id = 1; // Number | The item's id.
apiInstance.summarizeRecipe(id, (error, data, response) => {
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

[**SummarizeRecipe200Response**](SummarizeRecipe200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## visualizeEquipment

> String visualizeEquipment(opts)

Equipment Widget

Visualize the equipment used to make a recipe.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.RecipesApi();
let opts = {
  'contentType': application/json, // String | The content type.
  'accept': application/json // String | Accept header.
};
apiInstance.visualizeEquipment(opts, (error, data, response) => {
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
 **accept** | **String**| Accept header. | [optional] 

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: text/html


## visualizePriceBreakdown

> String visualizePriceBreakdown(opts)

Price Breakdown Widget

Visualize the price breakdown of a recipe.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.RecipesApi();
let opts = {
  'contentType': application/json, // String | The content type.
  'accept': application/json, // String | Accept header.
  'language': en // String | The language of the input. Either 'en' or 'de'.
};
apiInstance.visualizePriceBreakdown(opts, (error, data, response) => {
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
 **accept** | **String**| Accept header. | [optional] 
 **language** | **String**| The language of the input. Either &#39;en&#39; or &#39;de&#39;. | [optional] 

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: text/html


## visualizeRecipeEquipmentByID

> String visualizeRecipeEquipmentByID(id, opts)

Equipment by ID Widget

Visualize a recipe&#39;s equipment list.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.RecipesApi();
let id = 1; // Number | The item's id.
let opts = {
  'defaultCss': false // Boolean | Whether the default CSS should be added to the response.
};
apiInstance.visualizeRecipeEquipmentByID(id, opts, (error, data, response) => {
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
 **defaultCss** | **Boolean**| Whether the default CSS should be added to the response. | [optional] [default to true]

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html


## visualizeRecipeIngredientsByID

> String visualizeRecipeIngredientsByID(id, opts)

Ingredients by ID Widget

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

let apiInstance = new SpoonacularApi.RecipesApi();
let id = 1; // Number | The item's id.
let opts = {
  'defaultCss': false, // Boolean | Whether the default CSS should be added to the response.
  'measure': metric // String | Whether the the measures should be 'us' or 'metric'.
};
apiInstance.visualizeRecipeIngredientsByID(id, opts, (error, data, response) => {
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
 **defaultCss** | **Boolean**| Whether the default CSS should be added to the response. | [optional] [default to true]
 **measure** | **String**| Whether the the measures should be &#39;us&#39; or &#39;metric&#39;. | [optional] 

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html


## visualizeRecipeNutrition

> String visualizeRecipeNutrition(opts)

Recipe Nutrition Widget

Visualize a recipe&#39;s nutritional information as HTML including CSS.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.RecipesApi();
let opts = {
  'contentType': application/json, // String | The content type.
  'accept': application/json, // String | Accept header.
  'language': en // String | The language of the input. Either 'en' or 'de'.
};
apiInstance.visualizeRecipeNutrition(opts, (error, data, response) => {
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
 **accept** | **String**| Accept header. | [optional] 
 **language** | **String**| The language of the input. Either &#39;en&#39; or &#39;de&#39;. | [optional] 

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: text/html


## visualizeRecipeNutritionByID

> String visualizeRecipeNutritionByID(id, opts)

Recipe Nutrition by ID Widget

Visualize a recipe&#39;s nutritional information as HTML including CSS.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.RecipesApi();
let id = 1; // Number | The item's id.
let opts = {
  'defaultCss': false, // Boolean | Whether the default CSS should be added to the response.
  'accept': application/json // String | Accept header.
};
apiInstance.visualizeRecipeNutritionByID(id, opts, (error, data, response) => {
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
 **defaultCss** | **Boolean**| Whether the default CSS should be added to the response. | [optional] [default to true]
 **accept** | **String**| Accept header. | [optional] 

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html


## visualizeRecipePriceBreakdownByID

> String visualizeRecipePriceBreakdownByID(id, opts)

Price Breakdown by ID Widget

Visualize a recipe&#39;s price breakdown.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.RecipesApi();
let id = 1; // Number | The item's id.
let opts = {
  'defaultCss': false // Boolean | Whether the default CSS should be added to the response.
};
apiInstance.visualizeRecipePriceBreakdownByID(id, opts, (error, data, response) => {
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
 **defaultCss** | **Boolean**| Whether the default CSS should be added to the response. | [optional] [default to true]

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html


## visualizeRecipeTaste

> String visualizeRecipeTaste(opts)

Recipe Taste Widget

Visualize a recipe&#39;s taste information as HTML including CSS. You can play around with that endpoint!

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.RecipesApi();
let opts = {
  'language': en, // String | The language of the input. Either 'en' or 'de'.
  'contentType': application/json, // String | The content type.
  'accept': application/json, // String | Accept header.
  'normalize': true, // Boolean | Whether to normalize to the strongest taste.
  'rgb': 75,192,192 // String | Red, green, blue values for the chart color.
};
apiInstance.visualizeRecipeTaste(opts, (error, data, response) => {
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
 **language** | **String**| The language of the input. Either &#39;en&#39; or &#39;de&#39;. | [optional] 
 **contentType** | **String**| The content type. | [optional] 
 **accept** | **String**| Accept header. | [optional] 
 **normalize** | **Boolean**| Whether to normalize to the strongest taste. | [optional] 
 **rgb** | **String**| Red, green, blue values for the chart color. | [optional] 

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: text/html


## visualizeRecipeTasteByID

> String visualizeRecipeTasteByID(id, opts)

Recipe Taste by ID Widget

Get a recipe&#39;s taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.

### Example

```javascript
import SpoonacularApi from 'spoonacular_api';
let defaultClient = SpoonacularApi.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
let apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix = 'Token';

let apiInstance = new SpoonacularApi.RecipesApi();
let id = 1; // Number | The item's id.
let opts = {
  'normalize': true, // Boolean | Whether to normalize to the strongest taste.
  'rgb': 75,192,192 // String | Red, green, blue values for the chart color.
};
apiInstance.visualizeRecipeTasteByID(id, opts, (error, data, response) => {
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
 **normalize** | **Boolean**| Whether to normalize to the strongest taste. | [optional] [default to true]
 **rgb** | **String**| Red, green, blue values for the chart color. | [optional] 

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

