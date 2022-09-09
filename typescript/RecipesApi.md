# .RecipesApi

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


# **analyzeARecipeSearchQuery**
> AnalyzeARecipeSearchQuery200Response analyzeARecipeSearchQuery()

Parse a recipe search query to find out its intention.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .RecipesApi(configuration);

let body:.RecipesApiAnalyzeARecipeSearchQueryRequest = {
  // string | The recipe search query.
  q: "salmon with fusilli and no nuts",
};

apiInstance.analyzeARecipeSearchQuery(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | [**string**] | The recipe search query. | defaults to undefined


### Return type

**AnalyzeARecipeSearchQuery200Response**

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

# **analyzeRecipeInstructions**
> AnalyzeRecipeInstructions200Response analyzeRecipeInstructions()

This endpoint allows you to break down instructions into atomic steps. Furthermore, each step will contain the ingredients and equipment required. Additionally, all ingredients and equipment from the recipe's instructions will be extracted independently of the step they're used in.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .RecipesApi(configuration);

let body:.RecipesApiAnalyzeRecipeInstructionsRequest = {
  // 'application/x-www-form-urlencoded' | 'application/json' | 'multipart/form-data' | The content type. (optional)
  contentType: "application/json",
};

apiInstance.analyzeRecipeInstructions(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentType** | [**&#39;application/x-www-form-urlencoded&#39; | &#39;application/json&#39; | &#39;multipart/form-data&#39;**]**Array<&#39;application/x-www-form-urlencoded&#39; &#124; &#39;application/json&#39; &#124; &#39;multipart/form-data&#39;>** | The content type. | (optional) defaults to undefined


### Return type

**AnalyzeRecipeInstructions200Response**

### Authorization

[apiKeyScheme](README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **autocompleteRecipeSearch**
> Set<AutocompleteRecipeSearch200ResponseInner> autocompleteRecipeSearch()

Autocomplete a partial input to suggest possible recipe names.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .RecipesApi(configuration);

let body:.RecipesApiAutocompleteRecipeSearchRequest = {
  // string | The (natural language) search query. (optional)
  query: "burger",
  // number | The maximum number of items to return (between 1 and 100). Defaults to 10. (optional)
  number: 10,
};

apiInstance.autocompleteRecipeSearch(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | [**string**] | The (natural language) search query. | (optional) defaults to undefined
 **number** | [**number**] | The maximum number of items to return (between 1 and 100). Defaults to 10. | (optional) defaults to 10


### Return type

**Set<AutocompleteRecipeSearch200ResponseInner>**

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

# **classifyCuisine**
> ClassifyCuisine200Response classifyCuisine()

Classify the recipe's cuisine.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .RecipesApi(configuration);

let body:.RecipesApiClassifyCuisineRequest = {
  // 'application/x-www-form-urlencoded' | 'application/json' | 'multipart/form-data' | The content type. (optional)
  contentType: "application/json",
};

apiInstance.classifyCuisine(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentType** | [**&#39;application/x-www-form-urlencoded&#39; | &#39;application/json&#39; | &#39;multipart/form-data&#39;**]**Array<&#39;application/x-www-form-urlencoded&#39; &#124; &#39;application/json&#39; &#124; &#39;multipart/form-data&#39;>** | The content type. | (optional) defaults to undefined


### Return type

**ClassifyCuisine200Response**

### Authorization

[apiKeyScheme](README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **computeGlycemicLoad**
> ComputeGlycemicLoad200Response computeGlycemicLoad(computeGlycemicLoadRequest)

Retrieve the glycemic index for a list of ingredients and compute the individual and total glycemic load.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .RecipesApi(configuration);

let body:.RecipesApiComputeGlycemicLoadRequest = {
  // ComputeGlycemicLoadRequest
  computeGlycemicLoadRequest: {
    ingredients: [
      "ingredients_example",
    ],
  },
  // 'en' | 'de' | The language of the input. Either 'en' or 'de'. (optional)
  language: "en",
};

apiInstance.computeGlycemicLoad(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **computeGlycemicLoadRequest** | **ComputeGlycemicLoadRequest**|  |
 **language** | [**&#39;en&#39; | &#39;de&#39;**]**Array<&#39;en&#39; &#124; &#39;de&#39;>** | The language of the input. Either &#39;en&#39; or &#39;de&#39;. | (optional) defaults to undefined


### Return type

**ComputeGlycemicLoad200Response**

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

# **convertAmounts**
> ConvertAmounts200Response convertAmounts()

Convert amounts like \"2 cups of flour to grams\".

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .RecipesApi(configuration);

let body:.RecipesApiConvertAmountsRequest = {
  // string | The ingredient which you want to convert.
  ingredientName: "flour",
  // number | The amount from which you want to convert, e.g. the 2.5 in \"2.5 cups of flour to grams\".
  sourceAmount: 2.5,
  // string | The unit from which you want to convert, e.g. the grams in \"2.5 cups of flour to grams\". You can also use \"piece\", e.g. \"3.4 oz tomatoes to piece\"
  sourceUnit: "cups",
  // string | The unit to which you want to convert, e.g. the grams in \"2.5 cups of flour to grams\". You can also use \"piece\", e.g. \"3.4 oz tomatoes to piece\"
  targetUnit: "grams",
};

apiInstance.convertAmounts(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredientName** | [**string**] | The ingredient which you want to convert. | defaults to undefined
 **sourceAmount** | [**number**] | The amount from which you want to convert, e.g. the 2.5 in \&quot;2.5 cups of flour to grams\&quot;. | defaults to undefined
 **sourceUnit** | [**string**] | The unit from which you want to convert, e.g. the grams in \&quot;2.5 cups of flour to grams\&quot;. You can also use \&quot;piece\&quot;, e.g. \&quot;3.4 oz tomatoes to piece\&quot; | defaults to undefined
 **targetUnit** | [**string**] | The unit to which you want to convert, e.g. the grams in \&quot;2.5 cups of flour to grams\&quot;. You can also use \&quot;piece\&quot;, e.g. \&quot;3.4 oz tomatoes to piece\&quot; | defaults to undefined


### Return type

**ConvertAmounts200Response**

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

# **createRecipeCard**
> CreateRecipeCard200Response createRecipeCard()

Generate a recipe card for a recipe.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .RecipesApi(configuration);

let body:.RecipesApiCreateRecipeCardRequest = {
  // 'application/x-www-form-urlencoded' | 'application/json' | 'multipart/form-data' | The content type. (optional)
  contentType: "application/json",
};

apiInstance.createRecipeCard(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentType** | [**&#39;application/x-www-form-urlencoded&#39; | &#39;application/json&#39; | &#39;multipart/form-data&#39;**]**Array<&#39;application/x-www-form-urlencoded&#39; &#124; &#39;application/json&#39; &#124; &#39;multipart/form-data&#39;>** | The content type. | (optional) defaults to undefined


### Return type

**CreateRecipeCard200Response**

### Authorization

[apiKeyScheme](README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **equipmentByIDImage**
> any equipmentByIDImage()

Visualize a recipe's equipment list as an image.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .RecipesApi(configuration);

let body:.RecipesApiEquipmentByIDImageRequest = {
  // number | The recipe id.
  id: 44860,
};

apiInstance.equipmentByIDImage(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**number**] | The recipe id. | defaults to undefined


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

# **extractRecipeFromWebsite**
> GetRecipeInformation200Response extractRecipeFromWebsite()

This endpoint lets you extract recipe data such as title, ingredients, and instructions from any properly formatted Website.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .RecipesApi(configuration);

let body:.RecipesApiExtractRecipeFromWebsiteRequest = {
  // string | The URL of the recipe page.
  url: "https://foodista.com/recipe/ZHK4KPB6/chocolate-crinkle-cookies",
  // boolean | If true, the extraction will be triggered whether we already know the recipe or not. Use this only if information is missing as this operation is slower. (optional)
  forceExtraction: true,
  // boolean | If true, the recipe will be analyzed and classified resolving in more data such as cuisines, dish types, and more. (optional)
  analyze: false,
  // boolean | Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. (optional)
  includeNutrition: false,
  // boolean | Whether taste data should be added to correctly parsed ingredients. (optional)
  includeTaste: false,
};

apiInstance.extractRecipeFromWebsite(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | [**string**] | The URL of the recipe page. | defaults to undefined
 **forceExtraction** | [**boolean**] | If true, the extraction will be triggered whether we already know the recipe or not. Use this only if information is missing as this operation is slower. | (optional) defaults to undefined
 **analyze** | [**boolean**] | If true, the recipe will be analyzed and classified resolving in more data such as cuisines, dish types, and more. | (optional) defaults to undefined
 **includeNutrition** | [**boolean**] | Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. | (optional) defaults to undefined
 **includeTaste** | [**boolean**] | Whether taste data should be added to correctly parsed ingredients. | (optional) defaults to undefined


### Return type

**GetRecipeInformation200Response**

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

# **getAnalyzedRecipeInstructions**
> GetAnalyzedRecipeInstructions200Response getAnalyzedRecipeInstructions()

Get an analyzed breakdown of a recipe's instructions. Each step is enriched with the ingredients and equipment required.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .RecipesApi(configuration);

let body:.RecipesApiGetAnalyzedRecipeInstructionsRequest = {
  // number | The item's id.
  id: 1,
  // boolean | Whether to break down the recipe steps even more. (optional)
  stepBreakdown: true,
};

apiInstance.getAnalyzedRecipeInstructions(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**number**] | The item&#39;s id. | defaults to undefined
 **stepBreakdown** | [**boolean**] | Whether to break down the recipe steps even more. | (optional) defaults to undefined


### Return type

**GetAnalyzedRecipeInstructions200Response**

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

# **getRandomRecipes**
> GetRandomRecipes200Response getRandomRecipes()

Find random (popular) recipes. If you need to filter recipes by diet, nutrition etc. you might want to consider using the complex recipe search endpoint and set the sort request parameter to random.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .RecipesApi(configuration);

let body:.RecipesApiGetRandomRecipesRequest = {
  // boolean | Whether the recipes should have an open license that allows display with proper attribution. (optional)
  limitLicense: true,
  // string | The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have. (optional)
  tags: "tags_example",
  // number | The maximum number of items to return (between 1 and 100). Defaults to 10. (optional)
  number: 10,
};

apiInstance.getRandomRecipes(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limitLicense** | [**boolean**] | Whether the recipes should have an open license that allows display with proper attribution. | (optional) defaults to undefined
 **tags** | [**string**] | The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have. | (optional) defaults to undefined
 **number** | [**number**] | The maximum number of items to return (between 1 and 100). Defaults to 10. | (optional) defaults to 10


### Return type

**GetRandomRecipes200Response**

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

# **getRecipeEquipmentByID**
> GetRecipeEquipmentByID200Response getRecipeEquipmentByID()

Get a recipe's equipment list.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .RecipesApi(configuration);

let body:.RecipesApiGetRecipeEquipmentByIDRequest = {
  // number | The item's id.
  id: 1,
};

apiInstance.getRecipeEquipmentByID(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**number**] | The item&#39;s id. | defaults to undefined


### Return type

**GetRecipeEquipmentByID200Response**

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

# **getRecipeInformation**
> GetRecipeInformation200Response getRecipeInformation()

Use a recipe id to get full information about a recipe, such as ingredients, nutrition, diet and allergen information, etc.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .RecipesApi(configuration);

let body:.RecipesApiGetRecipeInformationRequest = {
  // number | The item's id.
  id: 1,
  // boolean | Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. (optional)
  includeNutrition: false,
};

apiInstance.getRecipeInformation(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**number**] | The item&#39;s id. | defaults to undefined
 **includeNutrition** | [**boolean**] | Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. | (optional) defaults to undefined


### Return type

**GetRecipeInformation200Response**

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

# **getRecipeInformationBulk**
> Set<GetRecipeInformationBulk200ResponseInner> getRecipeInformationBulk()

Get information about multiple recipes at once. This is equivalent to calling the Get Recipe Information endpoint multiple times, but faster.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .RecipesApi(configuration);

let body:.RecipesApiGetRecipeInformationBulkRequest = {
  // string | A comma-separated list of recipe ids.
  ids: "715538,716429",
  // boolean | Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. (optional)
  includeNutrition: false,
};

apiInstance.getRecipeInformationBulk(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | [**string**] | A comma-separated list of recipe ids. | defaults to undefined
 **includeNutrition** | [**boolean**] | Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. | (optional) defaults to undefined


### Return type

**Set<GetRecipeInformationBulk200ResponseInner>**

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

# **getRecipeIngredientsByID**
> GetRecipeIngredientsByID200Response getRecipeIngredientsByID()

Get a recipe's ingredient list.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .RecipesApi(configuration);

let body:.RecipesApiGetRecipeIngredientsByIDRequest = {
  // number | The item's id.
  id: 1,
};

apiInstance.getRecipeIngredientsByID(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**number**] | The item&#39;s id. | defaults to undefined


### Return type

**GetRecipeIngredientsByID200Response**

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

# **getRecipeNutritionWidgetByID**
> GetRecipeNutritionWidgetByID200Response getRecipeNutritionWidgetByID()

Get a recipe's nutrition data.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .RecipesApi(configuration);

let body:.RecipesApiGetRecipeNutritionWidgetByIDRequest = {
  // number | The item's id.
  id: 1,
};

apiInstance.getRecipeNutritionWidgetByID(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**number**] | The item&#39;s id. | defaults to undefined


### Return type

**GetRecipeNutritionWidgetByID200Response**

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

# **getRecipePriceBreakdownByID**
> GetRecipePriceBreakdownByID200Response getRecipePriceBreakdownByID()

Get a recipe's price breakdown data.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .RecipesApi(configuration);

let body:.RecipesApiGetRecipePriceBreakdownByIDRequest = {
  // number | The item's id.
  id: 1,
};

apiInstance.getRecipePriceBreakdownByID(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**number**] | The item&#39;s id. | defaults to undefined


### Return type

**GetRecipePriceBreakdownByID200Response**

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

# **getRecipeTasteByID**
> GetRecipeTasteByID200Response getRecipeTasteByID()

Get a recipe's taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .RecipesApi(configuration);

let body:.RecipesApiGetRecipeTasteByIDRequest = {
  // number | The item's id.
  id: 1,
  // boolean | Normalize to the strongest taste. (optional)
  normalize: true,
};

apiInstance.getRecipeTasteByID(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**number**] | The item&#39;s id. | defaults to undefined
 **normalize** | [**boolean**]**Array<&#39;false&#39; &#124; &#39;true&#39;>** | Normalize to the strongest taste. | (optional) defaults to undefined


### Return type

**GetRecipeTasteByID200Response**

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

# **getSimilarRecipes**
> Set<GetSimilarRecipes200ResponseInner> getSimilarRecipes()

Find recipes which are similar to the given one.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .RecipesApi(configuration);

let body:.RecipesApiGetSimilarRecipesRequest = {
  // number | The item's id.
  id: 1,
  // number | The maximum number of items to return (between 1 and 100). Defaults to 10. (optional)
  number: 10,
  // boolean | Whether the recipes should have an open license that allows display with proper attribution. (optional)
  limitLicense: true,
};

apiInstance.getSimilarRecipes(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**number**] | The item&#39;s id. | defaults to undefined
 **number** | [**number**] | The maximum number of items to return (between 1 and 100). Defaults to 10. | (optional) defaults to 10
 **limitLicense** | [**boolean**] | Whether the recipes should have an open license that allows display with proper attribution. | (optional) defaults to undefined


### Return type

**Set<GetSimilarRecipes200ResponseInner>**

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

# **guessNutritionByDishName**
> GuessNutritionByDishName200Response guessNutritionByDishName()

Estimate the macronutrients of a dish based on its title.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .RecipesApi(configuration);

let body:.RecipesApiGuessNutritionByDishNameRequest = {
  // string | The title of the dish.
  title: "Spaghetti Aglio et Olio",
};

apiInstance.guessNutritionByDishName(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | [**string**] | The title of the dish. | defaults to undefined


### Return type

**GuessNutritionByDishName200Response**

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
const apiInstance = new .RecipesApi(configuration);

let body:.RecipesApiIngredientsByIDImageRequest = {
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

# **parseIngredients**
> Set<ParseIngredients200ResponseInner> parseIngredients()

Extract an ingredient from plain text.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .RecipesApi(configuration);

let body:.RecipesApiParseIngredientsRequest = {
  // 'application/x-www-form-urlencoded' | 'application/json' | 'multipart/form-data' | The content type. (optional)
  contentType: "application/json",
  // 'en' | 'de' | The language of the input. Either 'en' or 'de'. (optional)
  language: "en",
};

apiInstance.parseIngredients(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentType** | [**&#39;application/x-www-form-urlencoded&#39; | &#39;application/json&#39; | &#39;multipart/form-data&#39;**]**Array<&#39;application/x-www-form-urlencoded&#39; &#124; &#39;application/json&#39; &#124; &#39;multipart/form-data&#39;>** | The content type. | (optional) defaults to undefined
 **language** | [**&#39;en&#39; | &#39;de&#39;**]**Array<&#39;en&#39; &#124; &#39;de&#39;>** | The language of the input. Either &#39;en&#39; or &#39;de&#39;. | (optional) defaults to undefined


### Return type

**Set<ParseIngredients200ResponseInner>**

### Authorization

[apiKeyScheme](README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **priceBreakdownByIDImage**
> any priceBreakdownByIDImage()

Visualize a recipe's price breakdown.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .RecipesApi(configuration);

let body:.RecipesApiPriceBreakdownByIDImageRequest = {
  // number | The recipe id.
  id: 1082038,
};

apiInstance.priceBreakdownByIDImage(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**number**] | The recipe id. | defaults to undefined


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

# **quickAnswer**
> QuickAnswer200Response quickAnswer()

Answer a nutrition related natural language question.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .RecipesApi(configuration);

let body:.RecipesApiQuickAnswerRequest = {
  // string | The nutrition related question.
  q: "How much vitamin c is in 2 apples?",
};

apiInstance.quickAnswer(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | [**string**] | The nutrition related question. | defaults to undefined


### Return type

**QuickAnswer200Response**

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

# **recipeNutritionByIDImage**
> any recipeNutritionByIDImage()

Visualize a recipe's nutritional information as an image.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .RecipesApi(configuration);

let body:.RecipesApiRecipeNutritionByIDImageRequest = {
  // number | The recipe id.
  id: 1082038,
};

apiInstance.recipeNutritionByIDImage(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**number**] | The recipe id. | defaults to undefined


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

# **recipeNutritionLabelImage**
> any recipeNutritionLabelImage()

Get a recipe's nutrition label as an image.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .RecipesApi(configuration);

let body:.RecipesApiRecipeNutritionLabelImageRequest = {
  // number | The recipe id.
  id: 641166,
  // boolean | Whether to show optional nutrients. (optional)
  showOptionalNutrients: false,
  // boolean | Whether to show zero values. (optional)
  showZeroValues: false,
  // boolean | Whether to show a list of ingredients. (optional)
  showIngredients: false,
};

apiInstance.recipeNutritionLabelImage(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**number**] | The recipe id. | defaults to undefined
 **showOptionalNutrients** | [**boolean**] | Whether to show optional nutrients. | (optional) defaults to undefined
 **showZeroValues** | [**boolean**] | Whether to show zero values. | (optional) defaults to undefined
 **showIngredients** | [**boolean**] | Whether to show a list of ingredients. | (optional) defaults to undefined


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

# **recipeNutritionLabelWidget**
> string recipeNutritionLabelWidget()

Get a recipe's nutrition label as an HTML widget.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .RecipesApi(configuration);

let body:.RecipesApiRecipeNutritionLabelWidgetRequest = {
  // number | The recipe id.
  id: 641166,
  // boolean | Whether the default CSS should be added to the response. (optional)
  defaultCss: false,
  // boolean | Whether to show optional nutrients. (optional)
  showOptionalNutrients: false,
  // boolean | Whether to show zero values. (optional)
  showZeroValues: false,
  // boolean | Whether to show a list of ingredients. (optional)
  showIngredients: false,
};

apiInstance.recipeNutritionLabelWidget(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**number**] | The recipe id. | defaults to undefined
 **defaultCss** | [**boolean**] | Whether the default CSS should be added to the response. | (optional) defaults to undefined
 **showOptionalNutrients** | [**boolean**] | Whether to show optional nutrients. | (optional) defaults to undefined
 **showZeroValues** | [**boolean**] | Whether to show zero values. | (optional) defaults to undefined
 **showIngredients** | [**boolean**] | Whether to show a list of ingredients. | (optional) defaults to undefined


### Return type

**string**

### Authorization

[apiKeyScheme](README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **recipeTasteByIDImage**
> any recipeTasteByIDImage()

Get a recipe's taste as an image. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .RecipesApi(configuration);

let body:.RecipesApiRecipeTasteByIDImageRequest = {
  // number | The recipe id.
  id: 69095,
  // boolean | Normalize to the strongest taste. (optional)
  normalize: false,
  // string | Red, green, blue values for the chart color. (optional)
  rgb: "75,192,192",
};

apiInstance.recipeTasteByIDImage(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**number**] | The recipe id. | defaults to undefined
 **normalize** | [**boolean**] | Normalize to the strongest taste. | (optional) defaults to undefined
 **rgb** | [**string**] | Red, green, blue values for the chart color. | (optional) defaults to undefined


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

# **searchRecipes**
> SearchRecipes200Response searchRecipes()

Search through hundreds of thousands of recipes using advanced filtering and ranking. NOTE: This method combines searching by query, by ingredients, and by nutrients into one endpoint.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .RecipesApi(configuration);

let body:.RecipesApiSearchRecipesRequest = {
  // string | The (natural language) search query. (optional)
  query: "burger",
  // string | The cuisine(s) of the recipes. One or more, comma separated (will be interpreted as 'OR'). See a full list of supported cuisines. (optional)
  cuisine: "italian",
  // string | The cuisine(s) the recipes must not match. One or more, comma separated (will be interpreted as 'AND'). See a full list of supported cuisines. (optional)
  excludeCuisine: "greek",
  // string | The diet for which the recipes must be suitable. See a full list of supported diets. (optional)
  diet: "vegetarian",
  // string | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. (optional)
  intolerances: "gluten",
  // string | The equipment required. Multiple values will be interpreted as 'or'. For example, value could be \"blender, frying pan, bowl\". (optional)
  equipment: "pan",
  // string | A comma-separated list of ingredients that should/must be used in the recipes. (optional)
  includeIngredients: "tomato,cheese",
  // string | A comma-separated list of ingredients or ingredient types that the recipes must not contain. (optional)
  excludeIngredients: "eggs",
  // string | The type of recipe. See a full list of supported meal types. (optional)
  type: "main course",
  // boolean | Whether the recipes must have instructions. (optional)
  instructionsRequired: true,
  // boolean | Add information about the ingredients and whether they are used or missing in relation to the query. (optional)
  fillIngredients: false,
  // boolean | If set to true, you get more information about the recipes returned. (optional)
  addRecipeInformation: false,
  // boolean | If set to true, you get nutritional information about each recipes returned. (optional)
  addRecipeNutrition: false,
  // string | The username of the recipe author. (optional)
  author: "coffeebean",
  // string | The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have. (optional)
  tags: "tags_example",
  // number | The id of the recipe box to which the search should be limited to. (optional)
  recipeBoxId: 2468,
  // string | Enter text that must be found in the title of the recipes. (optional)
  titleMatch: "Crock Pot",
  // number | The maximum time in minutes it should take to prepare and cook the recipe. (optional)
  maxReadyTime: 20,
  // boolean | Whether to ignore typical pantry items, such as water, salt, flour, etc. (optional)
  ignorePantry: false,
  // string | The strategy to sort recipes by. See a full list of supported sorting options. (optional)
  sort: "calories",
  // string | The direction in which to sort. Must be either 'asc' (ascending) or 'desc' (descending). (optional)
  sortDirection: "asc",
  // number | The minimum amount of carbohydrates in grams the recipe must have. (optional)
  minCarbs: 10,
  // number | The maximum amount of carbohydrates in grams the recipe can have. (optional)
  maxCarbs: 100,
  // number | The minimum amount of protein in grams the recipe must have. (optional)
  minProtein: 10,
  // number | The maximum amount of protein in grams the recipe can have. (optional)
  maxProtein: 100,
  // number | The minimum amount of calories the recipe must have. (optional)
  minCalories: 50,
  // number | The maximum amount of calories the recipe can have. (optional)
  maxCalories: 800,
  // number | The minimum amount of fat in grams the recipe must have. (optional)
  minFat: 1,
  // number | The maximum amount of fat in grams the recipe can have. (optional)
  maxFat: 100,
  // number | The minimum amount of alcohol in grams the recipe must have. (optional)
  minAlcohol: 0,
  // number | The maximum amount of alcohol in grams the recipe can have. (optional)
  maxAlcohol: 100,
  // number | The minimum amount of caffeine in milligrams the recipe must have. (optional)
  minCaffeine: 0,
  // number | The maximum amount of caffeine in milligrams the recipe can have. (optional)
  maxCaffeine: 100,
  // number | The minimum amount of copper in milligrams the recipe must have. (optional)
  minCopper: 0,
  // number | The maximum amount of copper in milligrams the recipe can have. (optional)
  maxCopper: 100,
  // number | The minimum amount of calcium in milligrams the recipe must have. (optional)
  minCalcium: 0,
  // number | The maximum amount of calcium in milligrams the recipe can have. (optional)
  maxCalcium: 100,
  // number | The minimum amount of choline in milligrams the recipe must have. (optional)
  minCholine: 0,
  // number | The maximum amount of choline in milligrams the recipe can have. (optional)
  maxCholine: 100,
  // number | The minimum amount of cholesterol in milligrams the recipe must have. (optional)
  minCholesterol: 0,
  // number | The maximum amount of cholesterol in milligrams the recipe can have. (optional)
  maxCholesterol: 100,
  // number | The minimum amount of fluoride in milligrams the recipe must have. (optional)
  minFluoride: 0,
  // number | The maximum amount of fluoride in milligrams the recipe can have. (optional)
  maxFluoride: 100,
  // number | The minimum amount of saturated fat in grams the recipe must have. (optional)
  minSaturatedFat: 0,
  // number | The maximum amount of saturated fat in grams the recipe can have. (optional)
  maxSaturatedFat: 100,
  // number | The minimum amount of Vitamin A in IU the recipe must have. (optional)
  minVitaminA: 0,
  // number | The maximum amount of Vitamin A in IU the recipe can have. (optional)
  maxVitaminA: 100,
  // number | The minimum amount of Vitamin C milligrams the recipe must have. (optional)
  minVitaminC: 0,
  // number | The maximum amount of Vitamin C in milligrams the recipe can have. (optional)
  maxVitaminC: 100,
  // number | The minimum amount of Vitamin D in micrograms the recipe must have. (optional)
  minVitaminD: 0,
  // number | The maximum amount of Vitamin D in micrograms the recipe can have. (optional)
  maxVitaminD: 100,
  // number | The minimum amount of Vitamin E in milligrams the recipe must have. (optional)
  minVitaminE: 0,
  // number | The maximum amount of Vitamin E in milligrams the recipe can have. (optional)
  maxVitaminE: 100,
  // number | The minimum amount of Vitamin K in micrograms the recipe must have. (optional)
  minVitaminK: 0,
  // number | The maximum amount of Vitamin K in micrograms the recipe can have. (optional)
  maxVitaminK: 100,
  // number | The minimum amount of Vitamin B1 in milligrams the recipe must have. (optional)
  minVitaminB1: 0,
  // number | The maximum amount of Vitamin B1 in milligrams the recipe can have. (optional)
  maxVitaminB1: 100,
  // number | The minimum amount of Vitamin B2 in milligrams the recipe must have. (optional)
  minVitaminB2: 0,
  // number | The maximum amount of Vitamin B2 in milligrams the recipe can have. (optional)
  maxVitaminB2: 100,
  // number | The minimum amount of Vitamin B5 in milligrams the recipe must have. (optional)
  minVitaminB5: 0,
  // number | The maximum amount of Vitamin B5 in milligrams the recipe can have. (optional)
  maxVitaminB5: 100,
  // number | The minimum amount of Vitamin B3 in milligrams the recipe must have. (optional)
  minVitaminB3: 0,
  // number | The maximum amount of Vitamin B3 in milligrams the recipe can have. (optional)
  maxVitaminB3: 100,
  // number | The minimum amount of Vitamin B6 in milligrams the recipe must have. (optional)
  minVitaminB6: 0,
  // number | The maximum amount of Vitamin B6 in milligrams the recipe can have. (optional)
  maxVitaminB6: 100,
  // number | The minimum amount of Vitamin B12 in micrograms the recipe must have. (optional)
  minVitaminB12: 0,
  // number | The maximum amount of Vitamin B12 in micrograms the recipe can have. (optional)
  maxVitaminB12: 100,
  // number | The minimum amount of fiber in grams the recipe must have. (optional)
  minFiber: 0,
  // number | The maximum amount of fiber in grams the recipe can have. (optional)
  maxFiber: 100,
  // number | The minimum amount of folate in micrograms the recipe must have. (optional)
  minFolate: 0,
  // number | The maximum amount of folate in micrograms the recipe can have. (optional)
  maxFolate: 100,
  // number | The minimum amount of folic acid in micrograms the recipe must have. (optional)
  minFolicAcid: 0,
  // number | The maximum amount of folic acid in micrograms the recipe can have. (optional)
  maxFolicAcid: 100,
  // number | The minimum amount of iodine in micrograms the recipe must have. (optional)
  minIodine: 0,
  // number | The maximum amount of iodine in micrograms the recipe can have. (optional)
  maxIodine: 100,
  // number | The minimum amount of iron in milligrams the recipe must have. (optional)
  minIron: 0,
  // number | The maximum amount of iron in milligrams the recipe can have. (optional)
  maxIron: 100,
  // number | The minimum amount of magnesium in milligrams the recipe must have. (optional)
  minMagnesium: 0,
  // number | The maximum amount of magnesium in milligrams the recipe can have. (optional)
  maxMagnesium: 100,
  // number | The minimum amount of manganese in milligrams the recipe must have. (optional)
  minManganese: 0,
  // number | The maximum amount of manganese in milligrams the recipe can have. (optional)
  maxManganese: 100,
  // number | The minimum amount of phosphorus in milligrams the recipe must have. (optional)
  minPhosphorus: 0,
  // number | The maximum amount of phosphorus in milligrams the recipe can have. (optional)
  maxPhosphorus: 100,
  // number | The minimum amount of potassium in milligrams the recipe must have. (optional)
  minPotassium: 0,
  // number | The maximum amount of potassium in milligrams the recipe can have. (optional)
  maxPotassium: 100,
  // number | The minimum amount of selenium in micrograms the recipe must have. (optional)
  minSelenium: 0,
  // number | The maximum amount of selenium in micrograms the recipe can have. (optional)
  maxSelenium: 100,
  // number | The minimum amount of sodium in milligrams the recipe must have. (optional)
  minSodium: 0,
  // number | The maximum amount of sodium in milligrams the recipe can have. (optional)
  maxSodium: 100,
  // number | The minimum amount of sugar in grams the recipe must have. (optional)
  minSugar: 0,
  // number | The maximum amount of sugar in grams the recipe can have. (optional)
  maxSugar: 100,
  // number | The minimum amount of zinc in milligrams the recipe must have. (optional)
  minZinc: 0,
  // number | The maximum amount of zinc in milligrams the recipe can have. (optional)
  maxZinc: 100,
  // number | The number of results to skip (between 0 and 900). (optional)
  offset: 0,
  // number | The maximum number of items to return (between 1 and 100). Defaults to 10. (optional)
  number: 10,
  // boolean | Whether the recipes should have an open license that allows display with proper attribution. (optional)
  limitLicense: true,
};

apiInstance.searchRecipes(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | [**string**] | The (natural language) search query. | (optional) defaults to undefined
 **cuisine** | [**string**] | The cuisine(s) of the recipes. One or more, comma separated (will be interpreted as &#39;OR&#39;). See a full list of supported cuisines. | (optional) defaults to undefined
 **excludeCuisine** | [**string**] | The cuisine(s) the recipes must not match. One or more, comma separated (will be interpreted as &#39;AND&#39;). See a full list of supported cuisines. | (optional) defaults to undefined
 **diet** | [**string**] | The diet for which the recipes must be suitable. See a full list of supported diets. | (optional) defaults to undefined
 **intolerances** | [**string**] | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. | (optional) defaults to undefined
 **equipment** | [**string**] | The equipment required. Multiple values will be interpreted as &#39;or&#39;. For example, value could be \&quot;blender, frying pan, bowl\&quot;. | (optional) defaults to undefined
 **includeIngredients** | [**string**] | A comma-separated list of ingredients that should/must be used in the recipes. | (optional) defaults to undefined
 **excludeIngredients** | [**string**] | A comma-separated list of ingredients or ingredient types that the recipes must not contain. | (optional) defaults to undefined
 **type** | [**string**] | The type of recipe. See a full list of supported meal types. | (optional) defaults to undefined
 **instructionsRequired** | [**boolean**] | Whether the recipes must have instructions. | (optional) defaults to undefined
 **fillIngredients** | [**boolean**] | Add information about the ingredients and whether they are used or missing in relation to the query. | (optional) defaults to undefined
 **addRecipeInformation** | [**boolean**] | If set to true, you get more information about the recipes returned. | (optional) defaults to undefined
 **addRecipeNutrition** | [**boolean**] | If set to true, you get nutritional information about each recipes returned. | (optional) defaults to undefined
 **author** | [**string**] | The username of the recipe author. | (optional) defaults to undefined
 **tags** | [**string**] | The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have. | (optional) defaults to undefined
 **recipeBoxId** | [**number**] | The id of the recipe box to which the search should be limited to. | (optional) defaults to undefined
 **titleMatch** | [**string**] | Enter text that must be found in the title of the recipes. | (optional) defaults to undefined
 **maxReadyTime** | [**number**] | The maximum time in minutes it should take to prepare and cook the recipe. | (optional) defaults to undefined
 **ignorePantry** | [**boolean**] | Whether to ignore typical pantry items, such as water, salt, flour, etc. | (optional) defaults to undefined
 **sort** | [**string**] | The strategy to sort recipes by. See a full list of supported sorting options. | (optional) defaults to undefined
 **sortDirection** | [**string**] | The direction in which to sort. Must be either &#39;asc&#39; (ascending) or &#39;desc&#39; (descending). | (optional) defaults to undefined
 **minCarbs** | [**number**] | The minimum amount of carbohydrates in grams the recipe must have. | (optional) defaults to undefined
 **maxCarbs** | [**number**] | The maximum amount of carbohydrates in grams the recipe can have. | (optional) defaults to undefined
 **minProtein** | [**number**] | The minimum amount of protein in grams the recipe must have. | (optional) defaults to undefined
 **maxProtein** | [**number**] | The maximum amount of protein in grams the recipe can have. | (optional) defaults to undefined
 **minCalories** | [**number**] | The minimum amount of calories the recipe must have. | (optional) defaults to undefined
 **maxCalories** | [**number**] | The maximum amount of calories the recipe can have. | (optional) defaults to undefined
 **minFat** | [**number**] | The minimum amount of fat in grams the recipe must have. | (optional) defaults to undefined
 **maxFat** | [**number**] | The maximum amount of fat in grams the recipe can have. | (optional) defaults to undefined
 **minAlcohol** | [**number**] | The minimum amount of alcohol in grams the recipe must have. | (optional) defaults to undefined
 **maxAlcohol** | [**number**] | The maximum amount of alcohol in grams the recipe can have. | (optional) defaults to undefined
 **minCaffeine** | [**number**] | The minimum amount of caffeine in milligrams the recipe must have. | (optional) defaults to undefined
 **maxCaffeine** | [**number**] | The maximum amount of caffeine in milligrams the recipe can have. | (optional) defaults to undefined
 **minCopper** | [**number**] | The minimum amount of copper in milligrams the recipe must have. | (optional) defaults to undefined
 **maxCopper** | [**number**] | The maximum amount of copper in milligrams the recipe can have. | (optional) defaults to undefined
 **minCalcium** | [**number**] | The minimum amount of calcium in milligrams the recipe must have. | (optional) defaults to undefined
 **maxCalcium** | [**number**] | The maximum amount of calcium in milligrams the recipe can have. | (optional) defaults to undefined
 **minCholine** | [**number**] | The minimum amount of choline in milligrams the recipe must have. | (optional) defaults to undefined
 **maxCholine** | [**number**] | The maximum amount of choline in milligrams the recipe can have. | (optional) defaults to undefined
 **minCholesterol** | [**number**] | The minimum amount of cholesterol in milligrams the recipe must have. | (optional) defaults to undefined
 **maxCholesterol** | [**number**] | The maximum amount of cholesterol in milligrams the recipe can have. | (optional) defaults to undefined
 **minFluoride** | [**number**] | The minimum amount of fluoride in milligrams the recipe must have. | (optional) defaults to undefined
 **maxFluoride** | [**number**] | The maximum amount of fluoride in milligrams the recipe can have. | (optional) defaults to undefined
 **minSaturatedFat** | [**number**] | The minimum amount of saturated fat in grams the recipe must have. | (optional) defaults to undefined
 **maxSaturatedFat** | [**number**] | The maximum amount of saturated fat in grams the recipe can have. | (optional) defaults to undefined
 **minVitaminA** | [**number**] | The minimum amount of Vitamin A in IU the recipe must have. | (optional) defaults to undefined
 **maxVitaminA** | [**number**] | The maximum amount of Vitamin A in IU the recipe can have. | (optional) defaults to undefined
 **minVitaminC** | [**number**] | The minimum amount of Vitamin C milligrams the recipe must have. | (optional) defaults to undefined
 **maxVitaminC** | [**number**] | The maximum amount of Vitamin C in milligrams the recipe can have. | (optional) defaults to undefined
 **minVitaminD** | [**number**] | The minimum amount of Vitamin D in micrograms the recipe must have. | (optional) defaults to undefined
 **maxVitaminD** | [**number**] | The maximum amount of Vitamin D in micrograms the recipe can have. | (optional) defaults to undefined
 **minVitaminE** | [**number**] | The minimum amount of Vitamin E in milligrams the recipe must have. | (optional) defaults to undefined
 **maxVitaminE** | [**number**] | The maximum amount of Vitamin E in milligrams the recipe can have. | (optional) defaults to undefined
 **minVitaminK** | [**number**] | The minimum amount of Vitamin K in micrograms the recipe must have. | (optional) defaults to undefined
 **maxVitaminK** | [**number**] | The maximum amount of Vitamin K in micrograms the recipe can have. | (optional) defaults to undefined
 **minVitaminB1** | [**number**] | The minimum amount of Vitamin B1 in milligrams the recipe must have. | (optional) defaults to undefined
 **maxVitaminB1** | [**number**] | The maximum amount of Vitamin B1 in milligrams the recipe can have. | (optional) defaults to undefined
 **minVitaminB2** | [**number**] | The minimum amount of Vitamin B2 in milligrams the recipe must have. | (optional) defaults to undefined
 **maxVitaminB2** | [**number**] | The maximum amount of Vitamin B2 in milligrams the recipe can have. | (optional) defaults to undefined
 **minVitaminB5** | [**number**] | The minimum amount of Vitamin B5 in milligrams the recipe must have. | (optional) defaults to undefined
 **maxVitaminB5** | [**number**] | The maximum amount of Vitamin B5 in milligrams the recipe can have. | (optional) defaults to undefined
 **minVitaminB3** | [**number**] | The minimum amount of Vitamin B3 in milligrams the recipe must have. | (optional) defaults to undefined
 **maxVitaminB3** | [**number**] | The maximum amount of Vitamin B3 in milligrams the recipe can have. | (optional) defaults to undefined
 **minVitaminB6** | [**number**] | The minimum amount of Vitamin B6 in milligrams the recipe must have. | (optional) defaults to undefined
 **maxVitaminB6** | [**number**] | The maximum amount of Vitamin B6 in milligrams the recipe can have. | (optional) defaults to undefined
 **minVitaminB12** | [**number**] | The minimum amount of Vitamin B12 in micrograms the recipe must have. | (optional) defaults to undefined
 **maxVitaminB12** | [**number**] | The maximum amount of Vitamin B12 in micrograms the recipe can have. | (optional) defaults to undefined
 **minFiber** | [**number**] | The minimum amount of fiber in grams the recipe must have. | (optional) defaults to undefined
 **maxFiber** | [**number**] | The maximum amount of fiber in grams the recipe can have. | (optional) defaults to undefined
 **minFolate** | [**number**] | The minimum amount of folate in micrograms the recipe must have. | (optional) defaults to undefined
 **maxFolate** | [**number**] | The maximum amount of folate in micrograms the recipe can have. | (optional) defaults to undefined
 **minFolicAcid** | [**number**] | The minimum amount of folic acid in micrograms the recipe must have. | (optional) defaults to undefined
 **maxFolicAcid** | [**number**] | The maximum amount of folic acid in micrograms the recipe can have. | (optional) defaults to undefined
 **minIodine** | [**number**] | The minimum amount of iodine in micrograms the recipe must have. | (optional) defaults to undefined
 **maxIodine** | [**number**] | The maximum amount of iodine in micrograms the recipe can have. | (optional) defaults to undefined
 **minIron** | [**number**] | The minimum amount of iron in milligrams the recipe must have. | (optional) defaults to undefined
 **maxIron** | [**number**] | The maximum amount of iron in milligrams the recipe can have. | (optional) defaults to undefined
 **minMagnesium** | [**number**] | The minimum amount of magnesium in milligrams the recipe must have. | (optional) defaults to undefined
 **maxMagnesium** | [**number**] | The maximum amount of magnesium in milligrams the recipe can have. | (optional) defaults to undefined
 **minManganese** | [**number**] | The minimum amount of manganese in milligrams the recipe must have. | (optional) defaults to undefined
 **maxManganese** | [**number**] | The maximum amount of manganese in milligrams the recipe can have. | (optional) defaults to undefined
 **minPhosphorus** | [**number**] | The minimum amount of phosphorus in milligrams the recipe must have. | (optional) defaults to undefined
 **maxPhosphorus** | [**number**] | The maximum amount of phosphorus in milligrams the recipe can have. | (optional) defaults to undefined
 **minPotassium** | [**number**] | The minimum amount of potassium in milligrams the recipe must have. | (optional) defaults to undefined
 **maxPotassium** | [**number**] | The maximum amount of potassium in milligrams the recipe can have. | (optional) defaults to undefined
 **minSelenium** | [**number**] | The minimum amount of selenium in micrograms the recipe must have. | (optional) defaults to undefined
 **maxSelenium** | [**number**] | The maximum amount of selenium in micrograms the recipe can have. | (optional) defaults to undefined
 **minSodium** | [**number**] | The minimum amount of sodium in milligrams the recipe must have. | (optional) defaults to undefined
 **maxSodium** | [**number**] | The maximum amount of sodium in milligrams the recipe can have. | (optional) defaults to undefined
 **minSugar** | [**number**] | The minimum amount of sugar in grams the recipe must have. | (optional) defaults to undefined
 **maxSugar** | [**number**] | The maximum amount of sugar in grams the recipe can have. | (optional) defaults to undefined
 **minZinc** | [**number**] | The minimum amount of zinc in milligrams the recipe must have. | (optional) defaults to undefined
 **maxZinc** | [**number**] | The maximum amount of zinc in milligrams the recipe can have. | (optional) defaults to undefined
 **offset** | [**number**] | The number of results to skip (between 0 and 900). | (optional) defaults to undefined
 **number** | [**number**] | The maximum number of items to return (between 1 and 100). Defaults to 10. | (optional) defaults to 10
 **limitLicense** | [**boolean**] | Whether the recipes should have an open license that allows display with proper attribution. | (optional) defaults to undefined


### Return type

**SearchRecipes200Response**

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

# **searchRecipesByIngredients**
> Set<SearchRecipesByIngredients200ResponseInner> searchRecipesByIngredients()

 Ever wondered what recipes you can cook with the ingredients you have in your fridge or pantry? This endpoint lets you find recipes that either maximize the usage of ingredients you have at hand (pre shopping) or minimize the ingredients that you don't currently have (post shopping).         

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .RecipesApi(configuration);

let body:.RecipesApiSearchRecipesByIngredientsRequest = {
  // string | A comma-separated list of ingredients that the recipes should contain. (optional)
  ingredients: "carrots,tomatoes",
  // number | The maximum number of items to return (between 1 and 100). Defaults to 10. (optional)
  number: 10,
  // boolean | Whether the recipes should have an open license that allows display with proper attribution. (optional)
  limitLicense: true,
  // number | Whether to maximize used ingredients (1) or minimize missing ingredients (2) first. (optional)
  ranking: 1,
  // boolean | Whether to ignore typical pantry items, such as water, salt, flour, etc. (optional)
  ignorePantry: false,
};

apiInstance.searchRecipesByIngredients(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredients** | [**string**] | A comma-separated list of ingredients that the recipes should contain. | (optional) defaults to undefined
 **number** | [**number**] | The maximum number of items to return (between 1 and 100). Defaults to 10. | (optional) defaults to 10
 **limitLicense** | [**boolean**] | Whether the recipes should have an open license that allows display with proper attribution. | (optional) defaults to undefined
 **ranking** | [**number**] | Whether to maximize used ingredients (1) or minimize missing ingredients (2) first. | (optional) defaults to undefined
 **ignorePantry** | [**boolean**] | Whether to ignore typical pantry items, such as water, salt, flour, etc. | (optional) defaults to undefined


### Return type

**Set<SearchRecipesByIngredients200ResponseInner>**

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

# **searchRecipesByNutrients**
> Set<SearchRecipesByNutrients200ResponseInner> searchRecipesByNutrients()

Find a set of recipes that adhere to the given nutritional limits. You may set limits for macronutrients (calories, protein, fat, and carbohydrate) and/or many micronutrients.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .RecipesApi(configuration);

let body:.RecipesApiSearchRecipesByNutrientsRequest = {
  // number | The minimum amount of carbohydrates in grams the recipe must have. (optional)
  minCarbs: 10,
  // number | The maximum amount of carbohydrates in grams the recipe can have. (optional)
  maxCarbs: 100,
  // number | The minimum amount of protein in grams the recipe must have. (optional)
  minProtein: 10,
  // number | The maximum amount of protein in grams the recipe can have. (optional)
  maxProtein: 100,
  // number | The minimum amount of calories the recipe must have. (optional)
  minCalories: 50,
  // number | The maximum amount of calories the recipe can have. (optional)
  maxCalories: 800,
  // number | The minimum amount of fat in grams the recipe must have. (optional)
  minFat: 1,
  // number | The maximum amount of fat in grams the recipe can have. (optional)
  maxFat: 100,
  // number | The minimum amount of alcohol in grams the recipe must have. (optional)
  minAlcohol: 0,
  // number | The maximum amount of alcohol in grams the recipe can have. (optional)
  maxAlcohol: 100,
  // number | The minimum amount of caffeine in milligrams the recipe must have. (optional)
  minCaffeine: 0,
  // number | The maximum amount of caffeine in milligrams the recipe can have. (optional)
  maxCaffeine: 100,
  // number | The minimum amount of copper in milligrams the recipe must have. (optional)
  minCopper: 0,
  // number | The maximum amount of copper in milligrams the recipe can have. (optional)
  maxCopper: 100,
  // number | The minimum amount of calcium in milligrams the recipe must have. (optional)
  minCalcium: 0,
  // number | The maximum amount of calcium in milligrams the recipe can have. (optional)
  maxCalcium: 100,
  // number | The minimum amount of choline in milligrams the recipe must have. (optional)
  minCholine: 0,
  // number | The maximum amount of choline in milligrams the recipe can have. (optional)
  maxCholine: 100,
  // number | The minimum amount of cholesterol in milligrams the recipe must have. (optional)
  minCholesterol: 0,
  // number | The maximum amount of cholesterol in milligrams the recipe can have. (optional)
  maxCholesterol: 100,
  // number | The minimum amount of fluoride in milligrams the recipe must have. (optional)
  minFluoride: 0,
  // number | The maximum amount of fluoride in milligrams the recipe can have. (optional)
  maxFluoride: 100,
  // number | The minimum amount of saturated fat in grams the recipe must have. (optional)
  minSaturatedFat: 0,
  // number | The maximum amount of saturated fat in grams the recipe can have. (optional)
  maxSaturatedFat: 100,
  // number | The minimum amount of Vitamin A in IU the recipe must have. (optional)
  minVitaminA: 0,
  // number | The maximum amount of Vitamin A in IU the recipe can have. (optional)
  maxVitaminA: 100,
  // number | The minimum amount of Vitamin C in milligrams the recipe must have. (optional)
  minVitaminC: 0,
  // number | The maximum amount of Vitamin C in milligrams the recipe can have. (optional)
  maxVitaminC: 100,
  // number | The minimum amount of Vitamin D in micrograms the recipe must have. (optional)
  minVitaminD: 0,
  // number | The maximum amount of Vitamin D in micrograms the recipe can have. (optional)
  maxVitaminD: 100,
  // number | The minimum amount of Vitamin E in milligrams the recipe must have. (optional)
  minVitaminE: 0,
  // number | The maximum amount of Vitamin E in milligrams the recipe can have. (optional)
  maxVitaminE: 100,
  // number | The minimum amount of Vitamin K in micrograms the recipe must have. (optional)
  minVitaminK: 0,
  // number | The maximum amount of Vitamin K in micrograms the recipe can have. (optional)
  maxVitaminK: 100,
  // number | The minimum amount of Vitamin B1 in milligrams the recipe must have. (optional)
  minVitaminB1: 0,
  // number | The maximum amount of Vitamin B1 in milligrams the recipe can have. (optional)
  maxVitaminB1: 100,
  // number | The minimum amount of Vitamin B2 in milligrams the recipe must have. (optional)
  minVitaminB2: 0,
  // number | The maximum amount of Vitamin B2 in milligrams the recipe can have. (optional)
  maxVitaminB2: 100,
  // number | The minimum amount of Vitamin B5 in milligrams the recipe must have. (optional)
  minVitaminB5: 0,
  // number | The maximum amount of Vitamin B5 in milligrams the recipe can have. (optional)
  maxVitaminB5: 100,
  // number | The minimum amount of Vitamin B3 in milligrams the recipe must have. (optional)
  minVitaminB3: 0,
  // number | The maximum amount of Vitamin B3 in milligrams the recipe can have. (optional)
  maxVitaminB3: 100,
  // number | The minimum amount of Vitamin B6 in milligrams the recipe must have. (optional)
  minVitaminB6: 0,
  // number | The maximum amount of Vitamin B6 in milligrams the recipe can have. (optional)
  maxVitaminB6: 100,
  // number | The minimum amount of Vitamin B12 in micrograms the recipe must have. (optional)
  minVitaminB12: 0,
  // number | The maximum amount of Vitamin B12 in micrograms the recipe can have. (optional)
  maxVitaminB12: 100,
  // number | The minimum amount of fiber in grams the recipe must have. (optional)
  minFiber: 0,
  // number | The maximum amount of fiber in grams the recipe can have. (optional)
  maxFiber: 100,
  // number | The minimum amount of folate in micrograms the recipe must have. (optional)
  minFolate: 0,
  // number | The maximum amount of folate in micrograms the recipe can have. (optional)
  maxFolate: 100,
  // number | The minimum amount of folic acid in micrograms the recipe must have. (optional)
  minFolicAcid: 0,
  // number | The maximum amount of folic acid in micrograms the recipe can have. (optional)
  maxFolicAcid: 100,
  // number | The minimum amount of iodine in micrograms the recipe must have. (optional)
  minIodine: 0,
  // number | The maximum amount of iodine in micrograms the recipe can have. (optional)
  maxIodine: 100,
  // number | The minimum amount of iron in milligrams the recipe must have. (optional)
  minIron: 0,
  // number | The maximum amount of iron in milligrams the recipe can have. (optional)
  maxIron: 100,
  // number | The minimum amount of magnesium in milligrams the recipe must have. (optional)
  minMagnesium: 0,
  // number | The maximum amount of magnesium in milligrams the recipe can have. (optional)
  maxMagnesium: 100,
  // number | The minimum amount of manganese in milligrams the recipe must have. (optional)
  minManganese: 0,
  // number | The maximum amount of manganese in milligrams the recipe can have. (optional)
  maxManganese: 100,
  // number | The minimum amount of phosphorus in milligrams the recipe must have. (optional)
  minPhosphorus: 0,
  // number | The maximum amount of phosphorus in milligrams the recipe can have. (optional)
  maxPhosphorus: 100,
  // number | The minimum amount of potassium in milligrams the recipe must have. (optional)
  minPotassium: 0,
  // number | The maximum amount of potassium in milligrams the recipe can have. (optional)
  maxPotassium: 100,
  // number | The minimum amount of selenium in micrograms the recipe must have. (optional)
  minSelenium: 0,
  // number | The maximum amount of selenium in micrograms the recipe can have. (optional)
  maxSelenium: 100,
  // number | The minimum amount of sodium in milligrams the recipe must have. (optional)
  minSodium: 0,
  // number | The maximum amount of sodium in milligrams the recipe can have. (optional)
  maxSodium: 100,
  // number | The minimum amount of sugar in grams the recipe must have. (optional)
  minSugar: 0,
  // number | The maximum amount of sugar in grams the recipe can have. (optional)
  maxSugar: 100,
  // number | The minimum amount of zinc in milligrams the recipe must have. (optional)
  minZinc: 0,
  // number | The maximum amount of zinc in milligrams the recipe can have. (optional)
  maxZinc: 100,
  // number | The number of results to skip (between 0 and 900). (optional)
  offset: 0,
  // number | The maximum number of items to return (between 1 and 100). Defaults to 10. (optional)
  number: 10,
  // boolean | If true, every request will give you a random set of recipes within the requested limits. (optional)
  random: false,
  // boolean | Whether the recipes should have an open license that allows display with proper attribution. (optional)
  limitLicense: true,
};

apiInstance.searchRecipesByNutrients(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **minCarbs** | [**number**] | The minimum amount of carbohydrates in grams the recipe must have. | (optional) defaults to undefined
 **maxCarbs** | [**number**] | The maximum amount of carbohydrates in grams the recipe can have. | (optional) defaults to undefined
 **minProtein** | [**number**] | The minimum amount of protein in grams the recipe must have. | (optional) defaults to undefined
 **maxProtein** | [**number**] | The maximum amount of protein in grams the recipe can have. | (optional) defaults to undefined
 **minCalories** | [**number**] | The minimum amount of calories the recipe must have. | (optional) defaults to undefined
 **maxCalories** | [**number**] | The maximum amount of calories the recipe can have. | (optional) defaults to undefined
 **minFat** | [**number**] | The minimum amount of fat in grams the recipe must have. | (optional) defaults to undefined
 **maxFat** | [**number**] | The maximum amount of fat in grams the recipe can have. | (optional) defaults to undefined
 **minAlcohol** | [**number**] | The minimum amount of alcohol in grams the recipe must have. | (optional) defaults to undefined
 **maxAlcohol** | [**number**] | The maximum amount of alcohol in grams the recipe can have. | (optional) defaults to undefined
 **minCaffeine** | [**number**] | The minimum amount of caffeine in milligrams the recipe must have. | (optional) defaults to undefined
 **maxCaffeine** | [**number**] | The maximum amount of caffeine in milligrams the recipe can have. | (optional) defaults to undefined
 **minCopper** | [**number**] | The minimum amount of copper in milligrams the recipe must have. | (optional) defaults to undefined
 **maxCopper** | [**number**] | The maximum amount of copper in milligrams the recipe can have. | (optional) defaults to undefined
 **minCalcium** | [**number**] | The minimum amount of calcium in milligrams the recipe must have. | (optional) defaults to undefined
 **maxCalcium** | [**number**] | The maximum amount of calcium in milligrams the recipe can have. | (optional) defaults to undefined
 **minCholine** | [**number**] | The minimum amount of choline in milligrams the recipe must have. | (optional) defaults to undefined
 **maxCholine** | [**number**] | The maximum amount of choline in milligrams the recipe can have. | (optional) defaults to undefined
 **minCholesterol** | [**number**] | The minimum amount of cholesterol in milligrams the recipe must have. | (optional) defaults to undefined
 **maxCholesterol** | [**number**] | The maximum amount of cholesterol in milligrams the recipe can have. | (optional) defaults to undefined
 **minFluoride** | [**number**] | The minimum amount of fluoride in milligrams the recipe must have. | (optional) defaults to undefined
 **maxFluoride** | [**number**] | The maximum amount of fluoride in milligrams the recipe can have. | (optional) defaults to undefined
 **minSaturatedFat** | [**number**] | The minimum amount of saturated fat in grams the recipe must have. | (optional) defaults to undefined
 **maxSaturatedFat** | [**number**] | The maximum amount of saturated fat in grams the recipe can have. | (optional) defaults to undefined
 **minVitaminA** | [**number**] | The minimum amount of Vitamin A in IU the recipe must have. | (optional) defaults to undefined
 **maxVitaminA** | [**number**] | The maximum amount of Vitamin A in IU the recipe can have. | (optional) defaults to undefined
 **minVitaminC** | [**number**] | The minimum amount of Vitamin C in milligrams the recipe must have. | (optional) defaults to undefined
 **maxVitaminC** | [**number**] | The maximum amount of Vitamin C in milligrams the recipe can have. | (optional) defaults to undefined
 **minVitaminD** | [**number**] | The minimum amount of Vitamin D in micrograms the recipe must have. | (optional) defaults to undefined
 **maxVitaminD** | [**number**] | The maximum amount of Vitamin D in micrograms the recipe can have. | (optional) defaults to undefined
 **minVitaminE** | [**number**] | The minimum amount of Vitamin E in milligrams the recipe must have. | (optional) defaults to undefined
 **maxVitaminE** | [**number**] | The maximum amount of Vitamin E in milligrams the recipe can have. | (optional) defaults to undefined
 **minVitaminK** | [**number**] | The minimum amount of Vitamin K in micrograms the recipe must have. | (optional) defaults to undefined
 **maxVitaminK** | [**number**] | The maximum amount of Vitamin K in micrograms the recipe can have. | (optional) defaults to undefined
 **minVitaminB1** | [**number**] | The minimum amount of Vitamin B1 in milligrams the recipe must have. | (optional) defaults to undefined
 **maxVitaminB1** | [**number**] | The maximum amount of Vitamin B1 in milligrams the recipe can have. | (optional) defaults to undefined
 **minVitaminB2** | [**number**] | The minimum amount of Vitamin B2 in milligrams the recipe must have. | (optional) defaults to undefined
 **maxVitaminB2** | [**number**] | The maximum amount of Vitamin B2 in milligrams the recipe can have. | (optional) defaults to undefined
 **minVitaminB5** | [**number**] | The minimum amount of Vitamin B5 in milligrams the recipe must have. | (optional) defaults to undefined
 **maxVitaminB5** | [**number**] | The maximum amount of Vitamin B5 in milligrams the recipe can have. | (optional) defaults to undefined
 **minVitaminB3** | [**number**] | The minimum amount of Vitamin B3 in milligrams the recipe must have. | (optional) defaults to undefined
 **maxVitaminB3** | [**number**] | The maximum amount of Vitamin B3 in milligrams the recipe can have. | (optional) defaults to undefined
 **minVitaminB6** | [**number**] | The minimum amount of Vitamin B6 in milligrams the recipe must have. | (optional) defaults to undefined
 **maxVitaminB6** | [**number**] | The maximum amount of Vitamin B6 in milligrams the recipe can have. | (optional) defaults to undefined
 **minVitaminB12** | [**number**] | The minimum amount of Vitamin B12 in micrograms the recipe must have. | (optional) defaults to undefined
 **maxVitaminB12** | [**number**] | The maximum amount of Vitamin B12 in micrograms the recipe can have. | (optional) defaults to undefined
 **minFiber** | [**number**] | The minimum amount of fiber in grams the recipe must have. | (optional) defaults to undefined
 **maxFiber** | [**number**] | The maximum amount of fiber in grams the recipe can have. | (optional) defaults to undefined
 **minFolate** | [**number**] | The minimum amount of folate in micrograms the recipe must have. | (optional) defaults to undefined
 **maxFolate** | [**number**] | The maximum amount of folate in micrograms the recipe can have. | (optional) defaults to undefined
 **minFolicAcid** | [**number**] | The minimum amount of folic acid in micrograms the recipe must have. | (optional) defaults to undefined
 **maxFolicAcid** | [**number**] | The maximum amount of folic acid in micrograms the recipe can have. | (optional) defaults to undefined
 **minIodine** | [**number**] | The minimum amount of iodine in micrograms the recipe must have. | (optional) defaults to undefined
 **maxIodine** | [**number**] | The maximum amount of iodine in micrograms the recipe can have. | (optional) defaults to undefined
 **minIron** | [**number**] | The minimum amount of iron in milligrams the recipe must have. | (optional) defaults to undefined
 **maxIron** | [**number**] | The maximum amount of iron in milligrams the recipe can have. | (optional) defaults to undefined
 **minMagnesium** | [**number**] | The minimum amount of magnesium in milligrams the recipe must have. | (optional) defaults to undefined
 **maxMagnesium** | [**number**] | The maximum amount of magnesium in milligrams the recipe can have. | (optional) defaults to undefined
 **minManganese** | [**number**] | The minimum amount of manganese in milligrams the recipe must have. | (optional) defaults to undefined
 **maxManganese** | [**number**] | The maximum amount of manganese in milligrams the recipe can have. | (optional) defaults to undefined
 **minPhosphorus** | [**number**] | The minimum amount of phosphorus in milligrams the recipe must have. | (optional) defaults to undefined
 **maxPhosphorus** | [**number**] | The maximum amount of phosphorus in milligrams the recipe can have. | (optional) defaults to undefined
 **minPotassium** | [**number**] | The minimum amount of potassium in milligrams the recipe must have. | (optional) defaults to undefined
 **maxPotassium** | [**number**] | The maximum amount of potassium in milligrams the recipe can have. | (optional) defaults to undefined
 **minSelenium** | [**number**] | The minimum amount of selenium in micrograms the recipe must have. | (optional) defaults to undefined
 **maxSelenium** | [**number**] | The maximum amount of selenium in micrograms the recipe can have. | (optional) defaults to undefined
 **minSodium** | [**number**] | The minimum amount of sodium in milligrams the recipe must have. | (optional) defaults to undefined
 **maxSodium** | [**number**] | The maximum amount of sodium in milligrams the recipe can have. | (optional) defaults to undefined
 **minSugar** | [**number**] | The minimum amount of sugar in grams the recipe must have. | (optional) defaults to undefined
 **maxSugar** | [**number**] | The maximum amount of sugar in grams the recipe can have. | (optional) defaults to undefined
 **minZinc** | [**number**] | The minimum amount of zinc in milligrams the recipe must have. | (optional) defaults to undefined
 **maxZinc** | [**number**] | The maximum amount of zinc in milligrams the recipe can have. | (optional) defaults to undefined
 **offset** | [**number**] | The number of results to skip (between 0 and 900). | (optional) defaults to undefined
 **number** | [**number**] | The maximum number of items to return (between 1 and 100). Defaults to 10. | (optional) defaults to 10
 **random** | [**boolean**] | If true, every request will give you a random set of recipes within the requested limits. | (optional) defaults to undefined
 **limitLicense** | [**boolean**] | Whether the recipes should have an open license that allows display with proper attribution. | (optional) defaults to undefined


### Return type

**Set<SearchRecipesByNutrients200ResponseInner>**

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

# **summarizeRecipe**
> SummarizeRecipe200Response summarizeRecipe()

Automatically generate a short description that summarizes key information about the recipe.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .RecipesApi(configuration);

let body:.RecipesApiSummarizeRecipeRequest = {
  // number | The item's id.
  id: 1,
};

apiInstance.summarizeRecipe(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**number**] | The item&#39;s id. | defaults to undefined


### Return type

**SummarizeRecipe200Response**

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

# **visualizeEquipment**
> string visualizeEquipment()

Visualize the equipment used to make a recipe.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .RecipesApi(configuration);

let body:.RecipesApiVisualizeEquipmentRequest = {
  // 'application/x-www-form-urlencoded' | 'application/json' | 'multipart/form-data' | The content type. (optional)
  contentType: "application/json",
  // 'application/json' | 'text/html' | 'media/_*' | Accept header. (optional)
  accept: "application/json",
};

apiInstance.visualizeEquipment(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentType** | [**&#39;application/x-www-form-urlencoded&#39; | &#39;application/json&#39; | &#39;multipart/form-data&#39;**]**Array<&#39;application/x-www-form-urlencoded&#39; &#124; &#39;application/json&#39; &#124; &#39;multipart/form-data&#39;>** | The content type. | (optional) defaults to undefined
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

# **visualizePriceBreakdown**
> string visualizePriceBreakdown()

Visualize the price breakdown of a recipe.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .RecipesApi(configuration);

let body:.RecipesApiVisualizePriceBreakdownRequest = {
  // 'application/x-www-form-urlencoded' | 'application/json' | 'multipart/form-data' | The content type. (optional)
  contentType: "application/json",
  // 'application/json' | 'text/html' | 'media/_*' | Accept header. (optional)
  accept: "application/json",
  // 'en' | 'de' | The language of the input. Either 'en' or 'de'. (optional)
  language: "en",
};

apiInstance.visualizePriceBreakdown(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentType** | [**&#39;application/x-www-form-urlencoded&#39; | &#39;application/json&#39; | &#39;multipart/form-data&#39;**]**Array<&#39;application/x-www-form-urlencoded&#39; &#124; &#39;application/json&#39; &#124; &#39;multipart/form-data&#39;>** | The content type. | (optional) defaults to undefined
 **accept** | [**&#39;application/json&#39; | &#39;text/html&#39; | &#39;media/_*&#39;**]**Array<&#39;application/json&#39; &#124; &#39;text/html&#39; &#124; &#39;media/_*&#39;>** | Accept header. | (optional) defaults to undefined
 **language** | [**&#39;en&#39; | &#39;de&#39;**]**Array<&#39;en&#39; &#124; &#39;de&#39;>** | The language of the input. Either &#39;en&#39; or &#39;de&#39;. | (optional) defaults to undefined


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

# **visualizeRecipeEquipmentByID**
> string visualizeRecipeEquipmentByID()

Visualize a recipe's equipment list.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .RecipesApi(configuration);

let body:.RecipesApiVisualizeRecipeEquipmentByIDRequest = {
  // number | The item's id.
  id: 1,
  // boolean | Whether the default CSS should be added to the response. (optional)
  defaultCss: false,
};

apiInstance.visualizeRecipeEquipmentByID(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**number**] | The item&#39;s id. | defaults to undefined
 **defaultCss** | [**boolean**] | Whether the default CSS should be added to the response. | (optional) defaults to undefined


### Return type

**string**

### Authorization

[apiKeyScheme](README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **visualizeRecipeIngredientsByID**
> string visualizeRecipeIngredientsByID()

Visualize a recipe's ingredient list.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .RecipesApi(configuration);

let body:.RecipesApiVisualizeRecipeIngredientsByIDRequest = {
  // number | The item's id.
  id: 1,
  // boolean | Whether the default CSS should be added to the response. (optional)
  defaultCss: false,
  // 'us' | 'metric' | Whether the the measures should be 'us' or 'metric'. (optional)
  measure: "metric",
};

apiInstance.visualizeRecipeIngredientsByID(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**number**] | The item&#39;s id. | defaults to undefined
 **defaultCss** | [**boolean**] | Whether the default CSS should be added to the response. | (optional) defaults to undefined
 **measure** | [**&#39;us&#39; | &#39;metric&#39;**]**Array<&#39;us&#39; &#124; &#39;metric&#39;>** | Whether the the measures should be &#39;us&#39; or &#39;metric&#39;. | (optional) defaults to undefined


### Return type

**string**

### Authorization

[apiKeyScheme](README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **visualizeRecipeNutrition**
> string visualizeRecipeNutrition()

Visualize a recipe's nutritional information as HTML including CSS.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .RecipesApi(configuration);

let body:.RecipesApiVisualizeRecipeNutritionRequest = {
  // 'application/x-www-form-urlencoded' | 'application/json' | 'multipart/form-data' | The content type. (optional)
  contentType: "application/json",
  // 'application/json' | 'text/html' | 'media/_*' | Accept header. (optional)
  accept: "application/json",
  // 'en' | 'de' | The language of the input. Either 'en' or 'de'. (optional)
  language: "en",
};

apiInstance.visualizeRecipeNutrition(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentType** | [**&#39;application/x-www-form-urlencoded&#39; | &#39;application/json&#39; | &#39;multipart/form-data&#39;**]**Array<&#39;application/x-www-form-urlencoded&#39; &#124; &#39;application/json&#39; &#124; &#39;multipart/form-data&#39;>** | The content type. | (optional) defaults to undefined
 **accept** | [**&#39;application/json&#39; | &#39;text/html&#39; | &#39;media/_*&#39;**]**Array<&#39;application/json&#39; &#124; &#39;text/html&#39; &#124; &#39;media/_*&#39;>** | Accept header. | (optional) defaults to undefined
 **language** | [**&#39;en&#39; | &#39;de&#39;**]**Array<&#39;en&#39; &#124; &#39;de&#39;>** | The language of the input. Either &#39;en&#39; or &#39;de&#39;. | (optional) defaults to undefined


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

# **visualizeRecipeNutritionByID**
> string visualizeRecipeNutritionByID()

Visualize a recipe's nutritional information as HTML including CSS.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .RecipesApi(configuration);

let body:.RecipesApiVisualizeRecipeNutritionByIDRequest = {
  // number | The item's id.
  id: 1,
  // boolean | Whether the default CSS should be added to the response. (optional)
  defaultCss: false,
  // 'application/json' | 'text/html' | 'media/_*' | Accept header. (optional)
  accept: "application/json",
};

apiInstance.visualizeRecipeNutritionByID(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**number**] | The item&#39;s id. | defaults to undefined
 **defaultCss** | [**boolean**] | Whether the default CSS should be added to the response. | (optional) defaults to undefined
 **accept** | [**&#39;application/json&#39; | &#39;text/html&#39; | &#39;media/_*&#39;**]**Array<&#39;application/json&#39; &#124; &#39;text/html&#39; &#124; &#39;media/_*&#39;>** | Accept header. | (optional) defaults to undefined


### Return type

**string**

### Authorization

[apiKeyScheme](README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **visualizeRecipePriceBreakdownByID**
> string visualizeRecipePriceBreakdownByID()

Visualize a recipe's price breakdown.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .RecipesApi(configuration);

let body:.RecipesApiVisualizeRecipePriceBreakdownByIDRequest = {
  // number | The item's id.
  id: 1,
  // boolean | Whether the default CSS should be added to the response. (optional)
  defaultCss: false,
};

apiInstance.visualizeRecipePriceBreakdownByID(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**number**] | The item&#39;s id. | defaults to undefined
 **defaultCss** | [**boolean**] | Whether the default CSS should be added to the response. | (optional) defaults to undefined


### Return type

**string**

### Authorization

[apiKeyScheme](README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **visualizeRecipeTaste**
> string visualizeRecipeTaste()

Visualize a recipe's taste information as HTML including CSS. You can play around with that endpoint!

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .RecipesApi(configuration);

let body:.RecipesApiVisualizeRecipeTasteRequest = {
  // 'en' | 'de' | The language of the input. Either 'en' or 'de'. (optional)
  language: "en",
  // 'application/x-www-form-urlencoded' | 'application/json' | 'multipart/form-data' | The content type. (optional)
  contentType: "application/json",
  // 'application/json' | 'text/html' | 'media/_*' | Accept header. (optional)
  accept: "application/json",
  // boolean | Whether to normalize to the strongest taste. (optional)
  normalize: true,
  // string | Red, green, blue values for the chart color. (optional)
  rgb: "75,192,192",
};

apiInstance.visualizeRecipeTaste(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **language** | [**&#39;en&#39; | &#39;de&#39;**]**Array<&#39;en&#39; &#124; &#39;de&#39;>** | The language of the input. Either &#39;en&#39; or &#39;de&#39;. | (optional) defaults to undefined
 **contentType** | [**&#39;application/x-www-form-urlencoded&#39; | &#39;application/json&#39; | &#39;multipart/form-data&#39;**]**Array<&#39;application/x-www-form-urlencoded&#39; &#124; &#39;application/json&#39; &#124; &#39;multipart/form-data&#39;>** | The content type. | (optional) defaults to undefined
 **accept** | [**&#39;application/json&#39; | &#39;text/html&#39; | &#39;media/_*&#39;**]**Array<&#39;application/json&#39; &#124; &#39;text/html&#39; &#124; &#39;media/_*&#39;>** | Accept header. | (optional) defaults to undefined
 **normalize** | [**boolean**] | Whether to normalize to the strongest taste. | (optional) defaults to undefined
 **rgb** | [**string**] | Red, green, blue values for the chart color. | (optional) defaults to undefined


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

# **visualizeRecipeTasteByID**
> string visualizeRecipeTasteByID()

Get a recipe's taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .RecipesApi(configuration);

let body:.RecipesApiVisualizeRecipeTasteByIDRequest = {
  // number | The item's id.
  id: 1,
  // boolean | Whether to normalize to the strongest taste. (optional)
  normalize: true,
  // string | Red, green, blue values for the chart color. (optional)
  rgb: "75,192,192",
};

apiInstance.visualizeRecipeTasteByID(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**number**] | The item&#39;s id. | defaults to undefined
 **normalize** | [**boolean**]**Array<&#39;true&#39; &#124; &#39;false&#39;>** | Whether to normalize to the strongest taste. | (optional) defaults to undefined
 **rgb** | [**string**] | Red, green, blue values for the chart color. | (optional) defaults to undefined


### Return type

**string**

### Authorization

[apiKeyScheme](README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)


