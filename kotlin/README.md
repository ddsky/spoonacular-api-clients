# spoonacular - Kotlin client library for spoonacular API

## Requires

* Kotlin 1.3.31
* Gradle 4.9

## Build

First, create the gradle wrapper script:

```
gradle wrapper
```

Then, run:

```
./gradlew check assemble
```

This runs all tests and packages the library.

## Features/Implementation Notes

* Supports JSON inputs/outputs, File inputs, and Form inputs.
* Supports collection formats for query parameters: csv, tsv, ssv, pipes.
* Some Kotlin and Java types are fully qualified to avoid conflicts with types defined in OpenAPI definitions.
* Implementation of ApiClient is intended to reduce method counts, specifically to benefit Android targets.

<a name="documentation-for-api-endpoints"></a>
## Documentation for API Endpoints

All URIs are relative to *https://api.spoonacular.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*DefaultApi* | [**analyzeARecipeSearchQuery**](docs/DefaultApi.md#analyzearecipesearchquery) | **GET** /recipes/queries/analyze | Analyze a Recipe Search Query
*DefaultApi* | [**analyzeRecipeInstructions**](docs/DefaultApi.md#analyzerecipeinstructions) | **POST** /recipes/analyzeInstructions | Analyze Recipe Instructions
*DefaultApi* | [**autocompleteIngredientSearch**](docs/DefaultApi.md#autocompleteingredientsearch) | **GET** /food/ingredients/autocomplete | Autocomplete Ingredient Search
*DefaultApi* | [**autocompleteMenuItemSearch**](docs/DefaultApi.md#autocompletemenuitemsearch) | **GET** /food/menuItems/suggest | Autocomplete Menu Item Search
*DefaultApi* | [**autocompleteProductSearch**](docs/DefaultApi.md#autocompleteproductsearch) | **GET** /food/products/suggest | Autocomplete Product Search
*DefaultApi* | [**autocompleteRecipeSearch**](docs/DefaultApi.md#autocompleterecipesearch) | **GET** /recipes/autocomplete | Autocomplete Recipe Search
*DefaultApi* | [**classifyCuisine**](docs/DefaultApi.md#classifycuisine) | **POST** /recipes/cuisine | Classify Cuisine
*DefaultApi* | [**classifyGroceryProduct**](docs/DefaultApi.md#classifygroceryproduct) | **POST** /food/products/classify | Classify Grocery Product
*DefaultApi* | [**classifyGroceryProductBulk**](docs/DefaultApi.md#classifygroceryproductbulk) | **POST** /food/products/classifyBatch | Classify Grocery Product Bulk
*DefaultApi* | [**convertAmounts**](docs/DefaultApi.md#convertamounts) | **GET** /recipes/convert | Convert Amounts
*DefaultApi* | [**createRecipeCard**](docs/DefaultApi.md#createrecipecard) | **POST** /recipes/visualizeRecipe | Create Recipe Card
*DefaultApi* | [**detectFoodInText**](docs/DefaultApi.md#detectfoodintext) | **POST** /food/detect | Detect Food in Text
*DefaultApi* | [**extractRecipeFromWebsite**](docs/DefaultApi.md#extractrecipefromwebsite) | **GET** /recipes/extract | Extract Recipe from Website
*DefaultApi* | [**generateMealPlan**](docs/DefaultApi.md#generatemealplan) | **GET** /recipes/mealplans/generate | Generate Meal Plan
*DefaultApi* | [**getARandomFoodJoke**](docs/DefaultApi.md#getarandomfoodjoke) | **GET** /food/jokes/random | Get a Random Food Joke
*DefaultApi* | [**getAnalyzedRecipeInstructions**](docs/DefaultApi.md#getanalyzedrecipeinstructions) | **GET** /recipes/{id}/analyzedInstructions | Get Analyzed Recipe Instructions
*DefaultApi* | [**getComparableProducts**](docs/DefaultApi.md#getcomparableproducts) | **GET** /food/products/upc/{upc}/comparable | Get Comparable Products
*DefaultApi* | [**getConversationSuggests**](docs/DefaultApi.md#getconversationsuggests) | **GET** /food/converse/suggest | Get Conversation Suggests
*DefaultApi* | [**getDishPairingForWine**](docs/DefaultApi.md#getdishpairingforwine) | **GET** /food/wine/dishes | Get Dish Pairing for Wine
*DefaultApi* | [**getFoodInformation**](docs/DefaultApi.md#getfoodinformation) | **GET** /food/ingredients/{id}/information | Get Food Information
*DefaultApi* | [**getIngredientSubstitutes**](docs/DefaultApi.md#getingredientsubstitutes) | **GET** /food/ingredients/substitutes | Get Ingredient Substitutes
*DefaultApi* | [**getIngredientSubstitutesByID**](docs/DefaultApi.md#getingredientsubstitutesbyid) | **GET** /food/ingredients/{id}/substitutes | Get Ingredient Substitutes by ID
*DefaultApi* | [**getMenuItemInformation**](docs/DefaultApi.md#getmenuiteminformation) | **GET** /food/menuItems/{id} | Get Menu Item Information
*DefaultApi* | [**getProductInformation**](docs/DefaultApi.md#getproductinformation) | **GET** /food/products/{id} | Get Product Information
*DefaultApi* | [**getRandomFoodTrivia**](docs/DefaultApi.md#getrandomfoodtrivia) | **GET** /food/trivia/random | Get Random Food Trivia
*DefaultApi* | [**getRandomRecipes**](docs/DefaultApi.md#getrandomrecipes) | **GET** /recipes/random | Get Random Recipes
*DefaultApi* | [**getRecipeEquipmentByID**](docs/DefaultApi.md#getrecipeequipmentbyid) | **GET** /recipes/{id}/equipmentWidget.json | Get Recipe Equipment by ID
*DefaultApi* | [**getRecipeInformation**](docs/DefaultApi.md#getrecipeinformation) | **GET** /recipes/{id}/information | Get Recipe Information
*DefaultApi* | [**getRecipeInformationBulk**](docs/DefaultApi.md#getrecipeinformationbulk) | **GET** /recipes/informationBulk | Get Recipe Information Bulk
*DefaultApi* | [**getRecipeIngredientsByID**](docs/DefaultApi.md#getrecipeingredientsbyid) | **GET** /recipes/{id}/ingredientWidget.json | Get Recipe Ingredients by ID
*DefaultApi* | [**getRecipeNutritionByID**](docs/DefaultApi.md#getrecipenutritionbyid) | **GET** /recipes/{id}/nutritionWidget.json | Get Recipe Nutrition by ID
*DefaultApi* | [**getRecipePriceBreakdownByID**](docs/DefaultApi.md#getrecipepricebreakdownbyid) | **GET** /recipes/{id}/priceBreakdownWidget.json | Get Recipe Price Breakdown by ID
*DefaultApi* | [**getSimilarRecipes**](docs/DefaultApi.md#getsimilarrecipes) | **GET** /recipes/{id}/similar | Get Similar Recipes
*DefaultApi* | [**getWineDescription**](docs/DefaultApi.md#getwinedescription) | **GET** /food/wine/description | Get Wine Description
*DefaultApi* | [**getWinePairing**](docs/DefaultApi.md#getwinepairing) | **GET** /food/wine/pairing | Get Wine Pairing
*DefaultApi* | [**getWineRecommendation**](docs/DefaultApi.md#getwinerecommendation) | **GET** /food/wine/recommendation | Get Wine Recommendation
*DefaultApi* | [**guessNutritionByDishName**](docs/DefaultApi.md#guessnutritionbydishname) | **GET** /recipes/guessNutrition | Guess Nutrition by Dish Name
*DefaultApi* | [**mapIngredientsToGroceryProducts**](docs/DefaultApi.md#mapingredientstogroceryproducts) | **POST** /food/ingredients/map | Map Ingredients to Grocery Products
*DefaultApi* | [**parseIngredients**](docs/DefaultApi.md#parseingredients) | **POST** /recipes/parseIngredients | Parse Ingredients
*DefaultApi* | [**quickAnswer**](docs/DefaultApi.md#quickanswer) | **GET** /recipes/quickAnswer | Quick Answer
*DefaultApi* | [**searchFoodVideos**](docs/DefaultApi.md#searchfoodvideos) | **GET** /food/videos/search | Search Food Videos
*DefaultApi* | [**searchGroceryProducts**](docs/DefaultApi.md#searchgroceryproducts) | **GET** /food/products/search | Search Grocery Products
*DefaultApi* | [**searchGroceryProductsByUPC**](docs/DefaultApi.md#searchgroceryproductsbyupc) | **GET** /food/products/upc/{upc} | Search Grocery Products by UPC
*DefaultApi* | [**searchMenuItems**](docs/DefaultApi.md#searchmenuitems) | **GET** /food/menuItems/search | Search Menu Items
*DefaultApi* | [**searchRecipes**](docs/DefaultApi.md#searchrecipes) | **GET** /recipes/search | Search Recipes
*DefaultApi* | [**searchRecipesByIngredients**](docs/DefaultApi.md#searchrecipesbyingredients) | **GET** /recipes/findByIngredients | Search Recipes by Ingredients
*DefaultApi* | [**searchRecipesByNutrients**](docs/DefaultApi.md#searchrecipesbynutrients) | **GET** /recipes/findByNutrients | Search Recipes by Nutrients
*DefaultApi* | [**searchRecipesComplex**](docs/DefaultApi.md#searchrecipescomplex) | **GET** /recipes/complexSearch | Search Recipes Complex
*DefaultApi* | [**searchSiteContent**](docs/DefaultApi.md#searchsitecontent) | **GET** /food/site/search | Search Site Content
*DefaultApi* | [**summarizeRecipe**](docs/DefaultApi.md#summarizerecipe) | **GET** /recipes/{id}/summary | Summarize Recipe
*DefaultApi* | [**talkToChatbot**](docs/DefaultApi.md#talktochatbot) | **GET** /food/converse | Talk to Chatbot
*DefaultApi* | [**visualizeEquipment**](docs/DefaultApi.md#visualizeequipment) | **POST** /recipes/visualizeEquipment | Visualize Equipment
*DefaultApi* | [**visualizeIngredients**](docs/DefaultApi.md#visualizeingredients) | **POST** /recipes/visualizeIngredients | Visualize Ingredients
*DefaultApi* | [**visualizeMenuItemNutritionByID**](docs/DefaultApi.md#visualizemenuitemnutritionbyid) | **GET** /food/menuItems/{id}/nutritionWidget | Visualize Menu Item Nutrition by ID
*DefaultApi* | [**visualizePriceBreakdown**](docs/DefaultApi.md#visualizepricebreakdown) | **POST** /recipes/visualizePriceEstimator | Visualize Price Breakdown
*DefaultApi* | [**visualizeProductNutritionByID**](docs/DefaultApi.md#visualizeproductnutritionbyid) | **GET** /food/products/{id}/nutritionWidget | Visualize Product Nutrition by ID
*DefaultApi* | [**visualizeRecipeEquipmentByID**](docs/DefaultApi.md#visualizerecipeequipmentbyid) | **GET** /recipes/{id}/equipmentWidget | Visualize Recipe Equipment by ID
*DefaultApi* | [**visualizeRecipeIngredientsByID**](docs/DefaultApi.md#visualizerecipeingredientsbyid) | **GET** /recipes/{id}/ingredientWidget | Visualize Recipe Ingredients by ID
*DefaultApi* | [**visualizeRecipeNutrition**](docs/DefaultApi.md#visualizerecipenutrition) | **POST** /recipes/visualizeNutrition | Visualize Recipe Nutrition
*DefaultApi* | [**visualizeRecipeNutritionByID**](docs/DefaultApi.md#visualizerecipenutritionbyid) | **GET** /recipes/{id}/nutritionWidget | Visualize Recipe Nutrition by ID
*DefaultApi* | [**visualizeRecipePriceBreakdownByID**](docs/DefaultApi.md#visualizerecipepricebreakdownbyid) | **GET** /recipes/{id}/priceBreakdownWidget | Visualize Recipe Price Breakdown by ID


<a name="documentation-for-models"></a>
## Documentation for Models

 - [com.spoonacular.client.model.InlineObject](docs/InlineObject.md)
 - [com.spoonacular.client.model.InlineObject1](docs/InlineObject1.md)
 - [com.spoonacular.client.model.InlineObject2](docs/InlineObject2.md)
 - [com.spoonacular.client.model.InlineObject3](docs/InlineObject3.md)
 - [com.spoonacular.client.model.InlineObject4](docs/InlineObject4.md)
 - [com.spoonacular.client.model.InlineObject5](docs/InlineObject5.md)
 - [com.spoonacular.client.model.InlineObject6](docs/InlineObject6.md)
 - [com.spoonacular.client.model.InlineObject7](docs/InlineObject7.md)
 - [com.spoonacular.client.model.InlineObject8](docs/InlineObject8.md)
 - [com.spoonacular.client.model.InlineObject9](docs/InlineObject9.md)


<a name="documentation-for-authorization"></a>
## Documentation for Authorization

<a name="apiKeyScheme"></a>
### apiKeyScheme

- **Type**: API key
- **API key parameter name**: api_key
- **Location**: URL query string

