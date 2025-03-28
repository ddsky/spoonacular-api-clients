# spoonacular

Spoonacular - JavaScript client for spoonacular
The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.

Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 2.0.2
- Package version: 2.0.2
- Generator version: 7.8.0-SNAPSHOT
- Build package: org.openapitools.codegen.languages.JavascriptClientCodegen
For more information, please visit [https://spoonacular.com/contact](https://spoonacular.com/contact)

## Installation

### For [Node.js](https://nodejs.org/)

#### npm

To publish the library as a [npm](https://www.npmjs.com/), please follow the procedure in ["Publishing npm packages"](https://docs.npmjs.com/getting-started/publishing-npm-packages).

Then install it via:

```shell
npm install spoonacular --save
```

Finally, you need to build the module:

```shell
npm run build
```

##### Local development

To use the library locally without publishing to a remote npm registry, first install the dependencies by changing into the directory containing `package.json` (and this README). Let's call this `JAVASCRIPT_CLIENT_DIR`. Then run:

```shell
npm install
```

Next, [link](https://docs.npmjs.com/cli/link) it globally in npm with the following, also from `JAVASCRIPT_CLIENT_DIR`:

```shell
npm link
```

To use the link you just defined in your project, switch to the directory you want to use your spoonacular from, and run:

```shell
npm link /path/to/<JAVASCRIPT_CLIENT_DIR>
```

Finally, you need to build the module:

```shell
npm run build
```

#### git

If the library is hosted at a git repository, e.g.https://github.com/ddsky/spoonacular-api-clients/tree/master/javascript/
then install it via:

```shell
    npm install ddsky/spoonacular-api-clients/tree/master/javascript/ --save
```

### For browser

The library also works in the browser environment via npm and [browserify](http://browserify.org/). After following
the above steps with Node.js and installing browserify with `npm install -g browserify`,
perform the following (assuming *main.js* is your entry file):

```shell
browserify main.js > bundle.js
```

Then include *bundle.js* in the HTML pages.

### Webpack Configuration

Using Webpack you may encounter the following error: "Module not found: Error:
Cannot resolve module", most certainly you should disable AMD loader. Add/merge
the following section to your webpack config:

```javascript
module: {
  rules: [
    {
      parser: {
        amd: false
      }
    }
  ]
}
```

## Getting Started

Please follow the [installation](#installation) instruction and execute the following JS code:

```javascript
var Spoonacular = require('spoonacular');

var defaultClient = Spoonacular.ApiClient.instance;
// Configure API key authorization: apiKeyScheme
var apiKeyScheme = defaultClient.authentications['apiKeyScheme'];
apiKeyScheme.apiKey = "YOUR API KEY"
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKeyScheme.apiKeyPrefix['x-api-key'] = "Token"

var api = new Spoonacular.DefaultApi()
var analyzeRecipeRequest = {"title":"Spaghetti Carbonara","servings":2,"ingredients":["1 lb spaghetti","3.5 oz pancetta","2 Tbsps olive oil","1  egg","0.5 cup parmesan cheese"],"instructions":"Bring a large pot of water to a boil and season generously with salt. Add the pasta to the water once boiling and cook until al dente. Reserve 2 cups of cooking water and drain the pasta. "}; // {AnalyzeRecipeRequest} Example request body.
var opts = {
  'language': "en", // {String} The input language, either \"en\" or \"de\".
  'includeNutrition': false, // {Boolean} Whether nutrition data should be added to correctly parsed ingredients.
  'includeTaste': false // {Boolean} Whether taste data should be added to correctly parsed ingredients.
};
var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
api.analyzeRecipe(analyzeRecipeRequest, opts, callback);

```

## Documentation for API Endpoints

All URIs are relative to *https://api.spoonacular.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*Spoonacular.DefaultApi* | [**analyzeRecipe**](docs/DefaultApi.md#analyzeRecipe) | **POST** /recipes/analyze | Analyze Recipe
*Spoonacular.DefaultApi* | [**createRecipeCardGet**](docs/DefaultApi.md#createRecipeCardGet) | **GET** /recipes/{id}/card | Create Recipe Card
*Spoonacular.DefaultApi* | [**searchRestaurants**](docs/DefaultApi.md#searchRestaurants) | **GET** /food/restaurants/search | Search Restaurants
*Spoonacular.IngredientsApi* | [**autocompleteIngredientSearch**](docs/IngredientsApi.md#autocompleteIngredientSearch) | **GET** /food/ingredients/autocomplete | Autocomplete Ingredient Search
*Spoonacular.IngredientsApi* | [**computeIngredientAmount**](docs/IngredientsApi.md#computeIngredientAmount) | **GET** /food/ingredients/{id}/amount | Compute Ingredient Amount
*Spoonacular.IngredientsApi* | [**getIngredientInformation**](docs/IngredientsApi.md#getIngredientInformation) | **GET** /food/ingredients/{id}/information | Get Ingredient Information
*Spoonacular.IngredientsApi* | [**getIngredientSubstitutes**](docs/IngredientsApi.md#getIngredientSubstitutes) | **GET** /food/ingredients/substitutes | Get Ingredient Substitutes
*Spoonacular.IngredientsApi* | [**getIngredientSubstitutesByID**](docs/IngredientsApi.md#getIngredientSubstitutesByID) | **GET** /food/ingredients/{id}/substitutes | Get Ingredient Substitutes by ID
*Spoonacular.IngredientsApi* | [**ingredientSearch**](docs/IngredientsApi.md#ingredientSearch) | **GET** /food/ingredients/search | Ingredient Search
*Spoonacular.IngredientsApi* | [**ingredientsByIDImage**](docs/IngredientsApi.md#ingredientsByIDImage) | **GET** /recipes/{id}/ingredientWidget.png | Ingredients by ID Image
*Spoonacular.IngredientsApi* | [**mapIngredientsToGroceryProducts**](docs/IngredientsApi.md#mapIngredientsToGroceryProducts) | **POST** /food/ingredients/map | Map Ingredients to Grocery Products
*Spoonacular.IngredientsApi* | [**visualizeIngredients**](docs/IngredientsApi.md#visualizeIngredients) | **POST** /recipes/visualizeIngredients | Ingredients Widget
*Spoonacular.MealPlanningApi* | [**addMealPlanTemplate**](docs/MealPlanningApi.md#addMealPlanTemplate) | **POST** /mealplanner/{username}/templates | Add Meal Plan Template
*Spoonacular.MealPlanningApi* | [**addToMealPlan**](docs/MealPlanningApi.md#addToMealPlan) | **POST** /mealplanner/{username}/items | Add to Meal Plan
*Spoonacular.MealPlanningApi* | [**addToShoppingList**](docs/MealPlanningApi.md#addToShoppingList) | **POST** /mealplanner/{username}/shopping-list/items | Add to Shopping List
*Spoonacular.MealPlanningApi* | [**clearMealPlanDay**](docs/MealPlanningApi.md#clearMealPlanDay) | **DELETE** /mealplanner/{username}/day/{date} | Clear Meal Plan Day
*Spoonacular.MealPlanningApi* | [**connectUser**](docs/MealPlanningApi.md#connectUser) | **POST** /users/connect | Connect User
*Spoonacular.MealPlanningApi* | [**deleteFromMealPlan**](docs/MealPlanningApi.md#deleteFromMealPlan) | **DELETE** /mealplanner/{username}/items/{id} | Delete from Meal Plan
*Spoonacular.MealPlanningApi* | [**deleteFromShoppingList**](docs/MealPlanningApi.md#deleteFromShoppingList) | **DELETE** /mealplanner/{username}/shopping-list/items/{id} | Delete from Shopping List
*Spoonacular.MealPlanningApi* | [**deleteMealPlanTemplate**](docs/MealPlanningApi.md#deleteMealPlanTemplate) | **DELETE** /mealplanner/{username}/templates/{id} | Delete Meal Plan Template
*Spoonacular.MealPlanningApi* | [**generateMealPlan**](docs/MealPlanningApi.md#generateMealPlan) | **GET** /mealplanner/generate | Generate Meal Plan
*Spoonacular.MealPlanningApi* | [**generateShoppingList**](docs/MealPlanningApi.md#generateShoppingList) | **POST** /mealplanner/{username}/shopping-list/{start_date}/{end_date} | Generate Shopping List
*Spoonacular.MealPlanningApi* | [**getMealPlanTemplate**](docs/MealPlanningApi.md#getMealPlanTemplate) | **GET** /mealplanner/{username}/templates/{id} | Get Meal Plan Template
*Spoonacular.MealPlanningApi* | [**getMealPlanTemplates**](docs/MealPlanningApi.md#getMealPlanTemplates) | **GET** /mealplanner/{username}/templates | Get Meal Plan Templates
*Spoonacular.MealPlanningApi* | [**getMealPlanWeek**](docs/MealPlanningApi.md#getMealPlanWeek) | **GET** /mealplanner/{username}/week/{start_date} | Get Meal Plan Week
*Spoonacular.MealPlanningApi* | [**getShoppingList**](docs/MealPlanningApi.md#getShoppingList) | **GET** /mealplanner/{username}/shopping-list | Get Shopping List
*Spoonacular.MenuItemsApi* | [**autocompleteMenuItemSearch**](docs/MenuItemsApi.md#autocompleteMenuItemSearch) | **GET** /food/menuItems/suggest | Autocomplete Menu Item Search
*Spoonacular.MenuItemsApi* | [**getMenuItemInformation**](docs/MenuItemsApi.md#getMenuItemInformation) | **GET** /food/menuItems/{id} | Get Menu Item Information
*Spoonacular.MenuItemsApi* | [**menuItemNutritionByIDImage**](docs/MenuItemsApi.md#menuItemNutritionByIDImage) | **GET** /food/menuItems/{id}/nutritionWidget.png | Menu Item Nutrition by ID Image
*Spoonacular.MenuItemsApi* | [**menuItemNutritionLabelImage**](docs/MenuItemsApi.md#menuItemNutritionLabelImage) | **GET** /food/menuItems/{id}/nutritionLabel.png | Menu Item Nutrition Label Image
*Spoonacular.MenuItemsApi* | [**menuItemNutritionLabelWidget**](docs/MenuItemsApi.md#menuItemNutritionLabelWidget) | **GET** /food/menuItems/{id}/nutritionLabel | Menu Item Nutrition Label Widget
*Spoonacular.MenuItemsApi* | [**searchMenuItems**](docs/MenuItemsApi.md#searchMenuItems) | **GET** /food/menuItems/search | Search Menu Items
*Spoonacular.MenuItemsApi* | [**visualizeMenuItemNutritionByID**](docs/MenuItemsApi.md#visualizeMenuItemNutritionByID) | **GET** /food/menuItems/{id}/nutritionWidget | Menu Item Nutrition by ID Widget
*Spoonacular.MiscApi* | [**detectFoodInText**](docs/MiscApi.md#detectFoodInText) | **POST** /food/detect | Detect Food in Text
*Spoonacular.MiscApi* | [**getARandomFoodJoke**](docs/MiscApi.md#getARandomFoodJoke) | **GET** /food/jokes/random | Random Food Joke
*Spoonacular.MiscApi* | [**getConversationSuggests**](docs/MiscApi.md#getConversationSuggests) | **GET** /food/converse/suggest | Conversation Suggests
*Spoonacular.MiscApi* | [**getRandomFoodTrivia**](docs/MiscApi.md#getRandomFoodTrivia) | **GET** /food/trivia/random | Random Food Trivia
*Spoonacular.MiscApi* | [**imageAnalysisByURL**](docs/MiscApi.md#imageAnalysisByURL) | **GET** /food/images/analyze | Image Analysis by URL
*Spoonacular.MiscApi* | [**imageClassificationByURL**](docs/MiscApi.md#imageClassificationByURL) | **GET** /food/images/classify | Image Classification by URL
*Spoonacular.MiscApi* | [**searchAllFood**](docs/MiscApi.md#searchAllFood) | **GET** /food/search | Search All Food
*Spoonacular.MiscApi* | [**searchCustomFoods**](docs/MiscApi.md#searchCustomFoods) | **GET** /food/customFoods/search | Search Custom Foods
*Spoonacular.MiscApi* | [**searchFoodVideos**](docs/MiscApi.md#searchFoodVideos) | **GET** /food/videos/search | Search Food Videos
*Spoonacular.MiscApi* | [**searchSiteContent**](docs/MiscApi.md#searchSiteContent) | **GET** /food/site/search | Search Site Content
*Spoonacular.MiscApi* | [**talkToChatbot**](docs/MiscApi.md#talkToChatbot) | **GET** /food/converse | Talk to Chatbot
*Spoonacular.ProductsApi* | [**autocompleteProductSearch**](docs/ProductsApi.md#autocompleteProductSearch) | **GET** /food/products/suggest | Autocomplete Product Search
*Spoonacular.ProductsApi* | [**classifyGroceryProduct**](docs/ProductsApi.md#classifyGroceryProduct) | **POST** /food/products/classify | Classify Grocery Product
*Spoonacular.ProductsApi* | [**classifyGroceryProductBulk**](docs/ProductsApi.md#classifyGroceryProductBulk) | **POST** /food/products/classifyBatch | Classify Grocery Product Bulk
*Spoonacular.ProductsApi* | [**getComparableProducts**](docs/ProductsApi.md#getComparableProducts) | **GET** /food/products/upc/{upc}/comparable | Get Comparable Products
*Spoonacular.ProductsApi* | [**getProductInformation**](docs/ProductsApi.md#getProductInformation) | **GET** /food/products/{id} | Get Product Information
*Spoonacular.ProductsApi* | [**productNutritionByIDImage**](docs/ProductsApi.md#productNutritionByIDImage) | **GET** /food/products/{id}/nutritionWidget.png | Product Nutrition by ID Image
*Spoonacular.ProductsApi* | [**productNutritionLabelImage**](docs/ProductsApi.md#productNutritionLabelImage) | **GET** /food/products/{id}/nutritionLabel.png | Product Nutrition Label Image
*Spoonacular.ProductsApi* | [**productNutritionLabelWidget**](docs/ProductsApi.md#productNutritionLabelWidget) | **GET** /food/products/{id}/nutritionLabel | Product Nutrition Label Widget
*Spoonacular.ProductsApi* | [**searchGroceryProducts**](docs/ProductsApi.md#searchGroceryProducts) | **GET** /food/products/search | Search Grocery Products
*Spoonacular.ProductsApi* | [**searchGroceryProductsByUPC**](docs/ProductsApi.md#searchGroceryProductsByUPC) | **GET** /food/products/upc/{upc} | Search Grocery Products by UPC
*Spoonacular.ProductsApi* | [**visualizeProductNutritionByID**](docs/ProductsApi.md#visualizeProductNutritionByID) | **GET** /food/products/{id}/nutritionWidget | Product Nutrition by ID Widget
*Spoonacular.RecipesApi* | [**analyzeARecipeSearchQuery**](docs/RecipesApi.md#analyzeARecipeSearchQuery) | **GET** /recipes/queries/analyze | Analyze a Recipe Search Query
*Spoonacular.RecipesApi* | [**analyzeRecipeInstructions**](docs/RecipesApi.md#analyzeRecipeInstructions) | **POST** /recipes/analyzeInstructions | Analyze Recipe Instructions
*Spoonacular.RecipesApi* | [**autocompleteRecipeSearch**](docs/RecipesApi.md#autocompleteRecipeSearch) | **GET** /recipes/autocomplete | Autocomplete Recipe Search
*Spoonacular.RecipesApi* | [**classifyCuisine**](docs/RecipesApi.md#classifyCuisine) | **POST** /recipes/cuisine | Classify Cuisine
*Spoonacular.RecipesApi* | [**computeGlycemicLoad**](docs/RecipesApi.md#computeGlycemicLoad) | **POST** /food/ingredients/glycemicLoad | Compute Glycemic Load
*Spoonacular.RecipesApi* | [**convertAmounts**](docs/RecipesApi.md#convertAmounts) | **GET** /recipes/convert | Convert Amounts
*Spoonacular.RecipesApi* | [**createRecipeCard**](docs/RecipesApi.md#createRecipeCard) | **POST** /recipes/visualizeRecipe | Create Recipe Card
*Spoonacular.RecipesApi* | [**equipmentByIDImage**](docs/RecipesApi.md#equipmentByIDImage) | **GET** /recipes/{id}/equipmentWidget.png | Equipment by ID Image
*Spoonacular.RecipesApi* | [**extractRecipeFromWebsite**](docs/RecipesApi.md#extractRecipeFromWebsite) | **GET** /recipes/extract | Extract Recipe from Website
*Spoonacular.RecipesApi* | [**getAnalyzedRecipeInstructions**](docs/RecipesApi.md#getAnalyzedRecipeInstructions) | **GET** /recipes/{id}/analyzedInstructions | Get Analyzed Recipe Instructions
*Spoonacular.RecipesApi* | [**getRandomRecipes**](docs/RecipesApi.md#getRandomRecipes) | **GET** /recipes/random | Get Random Recipes
*Spoonacular.RecipesApi* | [**getRecipeEquipmentByID**](docs/RecipesApi.md#getRecipeEquipmentByID) | **GET** /recipes/{id}/equipmentWidget.json | Equipment by ID
*Spoonacular.RecipesApi* | [**getRecipeInformation**](docs/RecipesApi.md#getRecipeInformation) | **GET** /recipes/{id}/information | Get Recipe Information
*Spoonacular.RecipesApi* | [**getRecipeInformationBulk**](docs/RecipesApi.md#getRecipeInformationBulk) | **GET** /recipes/informationBulk | Get Recipe Information Bulk
*Spoonacular.RecipesApi* | [**getRecipeIngredientsByID**](docs/RecipesApi.md#getRecipeIngredientsByID) | **GET** /recipes/{id}/ingredientWidget.json | Ingredients by ID
*Spoonacular.RecipesApi* | [**getRecipeNutritionWidgetByID**](docs/RecipesApi.md#getRecipeNutritionWidgetByID) | **GET** /recipes/{id}/nutritionWidget.json | Nutrition by ID
*Spoonacular.RecipesApi* | [**getRecipePriceBreakdownByID**](docs/RecipesApi.md#getRecipePriceBreakdownByID) | **GET** /recipes/{id}/priceBreakdownWidget.json | Price Breakdown by ID
*Spoonacular.RecipesApi* | [**getRecipeTasteByID**](docs/RecipesApi.md#getRecipeTasteByID) | **GET** /recipes/{id}/tasteWidget.json | Taste by ID
*Spoonacular.RecipesApi* | [**getSimilarRecipes**](docs/RecipesApi.md#getSimilarRecipes) | **GET** /recipes/{id}/similar | Get Similar Recipes
*Spoonacular.RecipesApi* | [**guessNutritionByDishName**](docs/RecipesApi.md#guessNutritionByDishName) | **GET** /recipes/guessNutrition | Guess Nutrition by Dish Name
*Spoonacular.RecipesApi* | [**parseIngredients**](docs/RecipesApi.md#parseIngredients) | **POST** /recipes/parseIngredients | Parse Ingredients
*Spoonacular.RecipesApi* | [**priceBreakdownByIDImage**](docs/RecipesApi.md#priceBreakdownByIDImage) | **GET** /recipes/{id}/priceBreakdownWidget.png | Price Breakdown by ID Image
*Spoonacular.RecipesApi* | [**quickAnswer**](docs/RecipesApi.md#quickAnswer) | **GET** /recipes/quickAnswer | Quick Answer
*Spoonacular.RecipesApi* | [**recipeNutritionByIDImage**](docs/RecipesApi.md#recipeNutritionByIDImage) | **GET** /recipes/{id}/nutritionWidget.png | Recipe Nutrition by ID Image
*Spoonacular.RecipesApi* | [**recipeNutritionLabelImage**](docs/RecipesApi.md#recipeNutritionLabelImage) | **GET** /recipes/{id}/nutritionLabel.png | Recipe Nutrition Label Image
*Spoonacular.RecipesApi* | [**recipeNutritionLabelWidget**](docs/RecipesApi.md#recipeNutritionLabelWidget) | **GET** /recipes/{id}/nutritionLabel | Recipe Nutrition Label Widget
*Spoonacular.RecipesApi* | [**recipeTasteByIDImage**](docs/RecipesApi.md#recipeTasteByIDImage) | **GET** /recipes/{id}/tasteWidget.png | Recipe Taste by ID Image
*Spoonacular.RecipesApi* | [**searchRecipes**](docs/RecipesApi.md#searchRecipes) | **GET** /recipes/complexSearch | Search Recipes
*Spoonacular.RecipesApi* | [**searchRecipesByIngredients**](docs/RecipesApi.md#searchRecipesByIngredients) | **GET** /recipes/findByIngredients | Search Recipes by Ingredients
*Spoonacular.RecipesApi* | [**searchRecipesByNutrients**](docs/RecipesApi.md#searchRecipesByNutrients) | **GET** /recipes/findByNutrients | Search Recipes by Nutrients
*Spoonacular.RecipesApi* | [**summarizeRecipe**](docs/RecipesApi.md#summarizeRecipe) | **GET** /recipes/{id}/summary | Summarize Recipe
*Spoonacular.RecipesApi* | [**visualizeEquipment**](docs/RecipesApi.md#visualizeEquipment) | **POST** /recipes/visualizeEquipment | Equipment Widget
*Spoonacular.RecipesApi* | [**visualizePriceBreakdown**](docs/RecipesApi.md#visualizePriceBreakdown) | **POST** /recipes/visualizePriceEstimator | Price Breakdown Widget
*Spoonacular.RecipesApi* | [**visualizeRecipeEquipmentByID**](docs/RecipesApi.md#visualizeRecipeEquipmentByID) | **GET** /recipes/{id}/equipmentWidget | Equipment by ID Widget
*Spoonacular.RecipesApi* | [**visualizeRecipeIngredientsByID**](docs/RecipesApi.md#visualizeRecipeIngredientsByID) | **GET** /recipes/{id}/ingredientWidget | Ingredients by ID Widget
*Spoonacular.RecipesApi* | [**visualizeRecipeNutrition**](docs/RecipesApi.md#visualizeRecipeNutrition) | **POST** /recipes/visualizeNutrition | Recipe Nutrition Widget
*Spoonacular.RecipesApi* | [**visualizeRecipeNutritionByID**](docs/RecipesApi.md#visualizeRecipeNutritionByID) | **GET** /recipes/{id}/nutritionWidget | Recipe Nutrition by ID Widget
*Spoonacular.RecipesApi* | [**visualizeRecipePriceBreakdownByID**](docs/RecipesApi.md#visualizeRecipePriceBreakdownByID) | **GET** /recipes/{id}/priceBreakdownWidget | Price Breakdown by ID Widget
*Spoonacular.RecipesApi* | [**visualizeRecipeTaste**](docs/RecipesApi.md#visualizeRecipeTaste) | **POST** /recipes/visualizeTaste | Recipe Taste Widget
*Spoonacular.RecipesApi* | [**visualizeRecipeTasteByID**](docs/RecipesApi.md#visualizeRecipeTasteByID) | **GET** /recipes/{id}/tasteWidget | Recipe Taste by ID Widget
*Spoonacular.WineApi* | [**getDishPairingForWine**](docs/WineApi.md#getDishPairingForWine) | **GET** /food/wine/dishes | Dish Pairing for Wine
*Spoonacular.WineApi* | [**getWineDescription**](docs/WineApi.md#getWineDescription) | **GET** /food/wine/description | Wine Description
*Spoonacular.WineApi* | [**getWinePairing**](docs/WineApi.md#getWinePairing) | **GET** /food/wine/pairing | Wine Pairing
*Spoonacular.WineApi* | [**getWineRecommendation**](docs/WineApi.md#getWineRecommendation) | **GET** /food/wine/recommendation | Wine Recommendation


## Documentation for Models

 - [Spoonacular.AddMealPlanTemplate200Response](docs/AddMealPlanTemplate200Response.md)
 - [Spoonacular.AddMealPlanTemplate200ResponseItemsInner](docs/AddMealPlanTemplate200ResponseItemsInner.md)
 - [Spoonacular.AddMealPlanTemplate200ResponseItemsInnerValue](docs/AddMealPlanTemplate200ResponseItemsInnerValue.md)
 - [Spoonacular.AddToMealPlanRequest](docs/AddToMealPlanRequest.md)
 - [Spoonacular.AddToMealPlanRequestValue](docs/AddToMealPlanRequestValue.md)
 - [Spoonacular.AddToMealPlanRequestValueIngredientsInner](docs/AddToMealPlanRequestValueIngredientsInner.md)
 - [Spoonacular.AddToShoppingListRequest](docs/AddToShoppingListRequest.md)
 - [Spoonacular.AnalyzeARecipeSearchQuery200Response](docs/AnalyzeARecipeSearchQuery200Response.md)
 - [Spoonacular.AnalyzeARecipeSearchQuery200ResponseDishesInner](docs/AnalyzeARecipeSearchQuery200ResponseDishesInner.md)
 - [Spoonacular.AnalyzeARecipeSearchQuery200ResponseIngredientsInner](docs/AnalyzeARecipeSearchQuery200ResponseIngredientsInner.md)
 - [Spoonacular.AnalyzeRecipeInstructions200Response](docs/AnalyzeRecipeInstructions200Response.md)
 - [Spoonacular.AnalyzeRecipeInstructions200ResponseIngredientsInner](docs/AnalyzeRecipeInstructions200ResponseIngredientsInner.md)
 - [Spoonacular.AnalyzeRecipeInstructions200ResponseParsedInstructionsInner](docs/AnalyzeRecipeInstructions200ResponseParsedInstructionsInner.md)
 - [Spoonacular.AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner](docs/AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner.md)
 - [Spoonacular.AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner](docs/AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner.md)
 - [Spoonacular.AnalyzeRecipeRequest](docs/AnalyzeRecipeRequest.md)
 - [Spoonacular.AutocompleteIngredientSearch200ResponseInner](docs/AutocompleteIngredientSearch200ResponseInner.md)
 - [Spoonacular.AutocompleteProductSearch200Response](docs/AutocompleteProductSearch200Response.md)
 - [Spoonacular.AutocompleteProductSearch200ResponseResultsInner](docs/AutocompleteProductSearch200ResponseResultsInner.md)
 - [Spoonacular.AutocompleteRecipeSearch200ResponseInner](docs/AutocompleteRecipeSearch200ResponseInner.md)
 - [Spoonacular.ClassifyCuisine200Response](docs/ClassifyCuisine200Response.md)
 - [Spoonacular.ClassifyGroceryProduct200Response](docs/ClassifyGroceryProduct200Response.md)
 - [Spoonacular.ClassifyGroceryProductBulk200ResponseInner](docs/ClassifyGroceryProductBulk200ResponseInner.md)
 - [Spoonacular.ClassifyGroceryProductBulkRequestInner](docs/ClassifyGroceryProductBulkRequestInner.md)
 - [Spoonacular.ClassifyGroceryProductRequest](docs/ClassifyGroceryProductRequest.md)
 - [Spoonacular.ComparableProduct](docs/ComparableProduct.md)
 - [Spoonacular.ComputeGlycemicLoad200Response](docs/ComputeGlycemicLoad200Response.md)
 - [Spoonacular.ComputeGlycemicLoad200ResponseIngredientsInner](docs/ComputeGlycemicLoad200ResponseIngredientsInner.md)
 - [Spoonacular.ComputeGlycemicLoadRequest](docs/ComputeGlycemicLoadRequest.md)
 - [Spoonacular.ComputeIngredientAmount200Response](docs/ComputeIngredientAmount200Response.md)
 - [Spoonacular.ConnectUser200Response](docs/ConnectUser200Response.md)
 - [Spoonacular.ConnectUserRequest](docs/ConnectUserRequest.md)
 - [Spoonacular.ConvertAmounts200Response](docs/ConvertAmounts200Response.md)
 - [Spoonacular.CreateRecipeCard200Response](docs/CreateRecipeCard200Response.md)
 - [Spoonacular.DetectFoodInText200Response](docs/DetectFoodInText200Response.md)
 - [Spoonacular.DetectFoodInText200ResponseAnnotationsInner](docs/DetectFoodInText200ResponseAnnotationsInner.md)
 - [Spoonacular.GenerateMealPlan200Response](docs/GenerateMealPlan200Response.md)
 - [Spoonacular.GenerateMealPlan200ResponseNutrients](docs/GenerateMealPlan200ResponseNutrients.md)
 - [Spoonacular.GetARandomFoodJoke200Response](docs/GetARandomFoodJoke200Response.md)
 - [Spoonacular.GetAnalyzedRecipeInstructions200ResponseInner](docs/GetAnalyzedRecipeInstructions200ResponseInner.md)
 - [Spoonacular.GetAnalyzedRecipeInstructions200ResponseInnerStepsInner](docs/GetAnalyzedRecipeInstructions200ResponseInnerStepsInner.md)
 - [Spoonacular.GetAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner](docs/GetAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner.md)
 - [Spoonacular.GetComparableProducts200Response](docs/GetComparableProducts200Response.md)
 - [Spoonacular.GetComparableProducts200ResponseComparableProducts](docs/GetComparableProducts200ResponseComparableProducts.md)
 - [Spoonacular.GetConversationSuggests200Response](docs/GetConversationSuggests200Response.md)
 - [Spoonacular.GetConversationSuggests200ResponseSuggests](docs/GetConversationSuggests200ResponseSuggests.md)
 - [Spoonacular.GetConversationSuggests200ResponseSuggestsInner](docs/GetConversationSuggests200ResponseSuggestsInner.md)
 - [Spoonacular.GetDishPairingForWine200Response](docs/GetDishPairingForWine200Response.md)
 - [Spoonacular.GetIngredientSubstitutes200Response](docs/GetIngredientSubstitutes200Response.md)
 - [Spoonacular.GetMealPlanTemplate200Response](docs/GetMealPlanTemplate200Response.md)
 - [Spoonacular.GetMealPlanTemplate200ResponseDaysInner](docs/GetMealPlanTemplate200ResponseDaysInner.md)
 - [Spoonacular.GetMealPlanTemplate200ResponseDaysInnerItemsInner](docs/GetMealPlanTemplate200ResponseDaysInnerItemsInner.md)
 - [Spoonacular.GetMealPlanTemplate200ResponseDaysInnerItemsInnerValue](docs/GetMealPlanTemplate200ResponseDaysInnerItemsInnerValue.md)
 - [Spoonacular.GetMealPlanTemplates200Response](docs/GetMealPlanTemplates200Response.md)
 - [Spoonacular.GetMealPlanTemplates200ResponseTemplatesInner](docs/GetMealPlanTemplates200ResponseTemplatesInner.md)
 - [Spoonacular.GetMealPlanWeek200Response](docs/GetMealPlanWeek200Response.md)
 - [Spoonacular.GetMealPlanWeek200ResponseDaysInner](docs/GetMealPlanWeek200ResponseDaysInner.md)
 - [Spoonacular.GetMealPlanWeek200ResponseDaysInnerItemsInner](docs/GetMealPlanWeek200ResponseDaysInnerItemsInner.md)
 - [Spoonacular.GetMealPlanWeek200ResponseDaysInnerItemsInnerValue](docs/GetMealPlanWeek200ResponseDaysInnerItemsInnerValue.md)
 - [Spoonacular.GetMealPlanWeek200ResponseDaysInnerNutritionSummary](docs/GetMealPlanWeek200ResponseDaysInnerNutritionSummary.md)
 - [Spoonacular.GetMealPlanWeek200ResponseDaysInnerNutritionSummaryNutrientsInner](docs/GetMealPlanWeek200ResponseDaysInnerNutritionSummaryNutrientsInner.md)
 - [Spoonacular.GetRandomRecipes200Response](docs/GetRandomRecipes200Response.md)
 - [Spoonacular.GetRecipeEquipmentByID200Response](docs/GetRecipeEquipmentByID200Response.md)
 - [Spoonacular.GetRecipeEquipmentByID200ResponseEquipmentInner](docs/GetRecipeEquipmentByID200ResponseEquipmentInner.md)
 - [Spoonacular.GetRecipeIngredientsByID200Response](docs/GetRecipeIngredientsByID200Response.md)
 - [Spoonacular.GetRecipeIngredientsByID200ResponseIngredientsInner](docs/GetRecipeIngredientsByID200ResponseIngredientsInner.md)
 - [Spoonacular.GetRecipeNutritionWidgetByID200Response](docs/GetRecipeNutritionWidgetByID200Response.md)
 - [Spoonacular.GetRecipeNutritionWidgetByID200ResponseBadInner](docs/GetRecipeNutritionWidgetByID200ResponseBadInner.md)
 - [Spoonacular.GetRecipeNutritionWidgetByID200ResponseGoodInner](docs/GetRecipeNutritionWidgetByID200ResponseGoodInner.md)
 - [Spoonacular.GetRecipePriceBreakdownByID200Response](docs/GetRecipePriceBreakdownByID200Response.md)
 - [Spoonacular.GetRecipePriceBreakdownByID200ResponseIngredientsInner](docs/GetRecipePriceBreakdownByID200ResponseIngredientsInner.md)
 - [Spoonacular.GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount](docs/GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount.md)
 - [Spoonacular.GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric](docs/GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric.md)
 - [Spoonacular.GetShoppingList200Response](docs/GetShoppingList200Response.md)
 - [Spoonacular.GetShoppingList200ResponseAislesInner](docs/GetShoppingList200ResponseAislesInner.md)
 - [Spoonacular.GetShoppingList200ResponseAislesInnerItemsInner](docs/GetShoppingList200ResponseAislesInnerItemsInner.md)
 - [Spoonacular.GetShoppingList200ResponseAislesInnerItemsInnerMeasures](docs/GetShoppingList200ResponseAislesInnerItemsInnerMeasures.md)
 - [Spoonacular.GetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal](docs/GetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal.md)
 - [Spoonacular.GetSimilarRecipes200ResponseInner](docs/GetSimilarRecipes200ResponseInner.md)
 - [Spoonacular.GetWineDescription200Response](docs/GetWineDescription200Response.md)
 - [Spoonacular.GetWinePairing200Response](docs/GetWinePairing200Response.md)
 - [Spoonacular.GetWinePairing200ResponseProductMatchesInner](docs/GetWinePairing200ResponseProductMatchesInner.md)
 - [Spoonacular.GetWineRecommendation200Response](docs/GetWineRecommendation200Response.md)
 - [Spoonacular.GetWineRecommendation200ResponseRecommendedWinesInner](docs/GetWineRecommendation200ResponseRecommendedWinesInner.md)
 - [Spoonacular.GuessNutritionByDishName200Response](docs/GuessNutritionByDishName200Response.md)
 - [Spoonacular.GuessNutritionByDishName200ResponseCalories](docs/GuessNutritionByDishName200ResponseCalories.md)
 - [Spoonacular.GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent](docs/GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent.md)
 - [Spoonacular.ImageAnalysisByURL200Response](docs/ImageAnalysisByURL200Response.md)
 - [Spoonacular.ImageAnalysisByURL200ResponseCategory](docs/ImageAnalysisByURL200ResponseCategory.md)
 - [Spoonacular.ImageAnalysisByURL200ResponseNutrition](docs/ImageAnalysisByURL200ResponseNutrition.md)
 - [Spoonacular.ImageAnalysisByURL200ResponseNutritionCalories](docs/ImageAnalysisByURL200ResponseNutritionCalories.md)
 - [Spoonacular.ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent](docs/ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent.md)
 - [Spoonacular.ImageAnalysisByURL200ResponseRecipesInner](docs/ImageAnalysisByURL200ResponseRecipesInner.md)
 - [Spoonacular.ImageClassificationByURL200Response](docs/ImageClassificationByURL200Response.md)
 - [Spoonacular.IngredientBasics](docs/IngredientBasics.md)
 - [Spoonacular.IngredientInformation](docs/IngredientInformation.md)
 - [Spoonacular.IngredientInformationEstimatedCost](docs/IngredientInformationEstimatedCost.md)
 - [Spoonacular.IngredientInformationNutrition](docs/IngredientInformationNutrition.md)
 - [Spoonacular.IngredientInformationNutritionPropertiesInner](docs/IngredientInformationNutritionPropertiesInner.md)
 - [Spoonacular.IngredientSearch200Response](docs/IngredientSearch200Response.md)
 - [Spoonacular.IngredientSearch200ResponseResultsInner](docs/IngredientSearch200ResponseResultsInner.md)
 - [Spoonacular.MapIngredientsToGroceryProducts200ResponseInner](docs/MapIngredientsToGroceryProducts200ResponseInner.md)
 - [Spoonacular.MapIngredientsToGroceryProducts200ResponseInnerProductsInner](docs/MapIngredientsToGroceryProducts200ResponseInnerProductsInner.md)
 - [Spoonacular.MapIngredientsToGroceryProductsRequest](docs/MapIngredientsToGroceryProductsRequest.md)
 - [Spoonacular.MenuItem](docs/MenuItem.md)
 - [Spoonacular.MenuItemServings](docs/MenuItemServings.md)
 - [Spoonacular.ProductInformation](docs/ProductInformation.md)
 - [Spoonacular.ProductInformationCredits](docs/ProductInformationCredits.md)
 - [Spoonacular.QuickAnswer200Response](docs/QuickAnswer200Response.md)
 - [Spoonacular.RecipeInformation](docs/RecipeInformation.md)
 - [Spoonacular.RecipeInformationExtendedIngredientsInner](docs/RecipeInformationExtendedIngredientsInner.md)
 - [Spoonacular.RecipeInformationExtendedIngredientsInnerMeasures](docs/RecipeInformationExtendedIngredientsInnerMeasures.md)
 - [Spoonacular.RecipeInformationExtendedIngredientsInnerMeasuresMetric](docs/RecipeInformationExtendedIngredientsInnerMeasuresMetric.md)
 - [Spoonacular.RecipeInformationWinePairing](docs/RecipeInformationWinePairing.md)
 - [Spoonacular.RecipeInformationWinePairingProductMatchesInner](docs/RecipeInformationWinePairingProductMatchesInner.md)
 - [Spoonacular.SearchAllFood200Response](docs/SearchAllFood200Response.md)
 - [Spoonacular.SearchAllFood200ResponseSearchResultsInner](docs/SearchAllFood200ResponseSearchResultsInner.md)
 - [Spoonacular.SearchCustomFoods200Response](docs/SearchCustomFoods200Response.md)
 - [Spoonacular.SearchCustomFoods200ResponseCustomFoodsInner](docs/SearchCustomFoods200ResponseCustomFoodsInner.md)
 - [Spoonacular.SearchFoodVideos200Response](docs/SearchFoodVideos200Response.md)
 - [Spoonacular.SearchFoodVideos200ResponseVideosInner](docs/SearchFoodVideos200ResponseVideosInner.md)
 - [Spoonacular.SearchGroceryProducts200Response](docs/SearchGroceryProducts200Response.md)
 - [Spoonacular.SearchGroceryProductsByUPC200Response](docs/SearchGroceryProductsByUPC200Response.md)
 - [Spoonacular.SearchGroceryProductsByUPC200ResponseNutrition](docs/SearchGroceryProductsByUPC200ResponseNutrition.md)
 - [Spoonacular.SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown](docs/SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown.md)
 - [Spoonacular.SearchGroceryProductsByUPC200ResponseNutritionNutrientsInner](docs/SearchGroceryProductsByUPC200ResponseNutritionNutrientsInner.md)
 - [Spoonacular.SearchGroceryProductsByUPC200ResponseServings](docs/SearchGroceryProductsByUPC200ResponseServings.md)
 - [Spoonacular.SearchMenuItems200Response](docs/SearchMenuItems200Response.md)
 - [Spoonacular.SearchRecipes200Response](docs/SearchRecipes200Response.md)
 - [Spoonacular.SearchRecipes200ResponseResultsInner](docs/SearchRecipes200ResponseResultsInner.md)
 - [Spoonacular.SearchRecipesByIngredients200ResponseInner](docs/SearchRecipesByIngredients200ResponseInner.md)
 - [Spoonacular.SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner](docs/SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner.md)
 - [Spoonacular.SearchRecipesByNutrients200ResponseInner](docs/SearchRecipesByNutrients200ResponseInner.md)
 - [Spoonacular.SearchRestaurants200Response](docs/SearchRestaurants200Response.md)
 - [Spoonacular.SearchRestaurants200ResponseRestaurantsInner](docs/SearchRestaurants200ResponseRestaurantsInner.md)
 - [Spoonacular.SearchRestaurants200ResponseRestaurantsInnerAddress](docs/SearchRestaurants200ResponseRestaurantsInnerAddress.md)
 - [Spoonacular.SearchRestaurants200ResponseRestaurantsInnerLocalHours](docs/SearchRestaurants200ResponseRestaurantsInnerLocalHours.md)
 - [Spoonacular.SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational](docs/SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational.md)
 - [Spoonacular.SearchResult](docs/SearchResult.md)
 - [Spoonacular.SearchSiteContent200Response](docs/SearchSiteContent200Response.md)
 - [Spoonacular.SummarizeRecipe200Response](docs/SummarizeRecipe200Response.md)
 - [Spoonacular.TalkToChatbot200Response](docs/TalkToChatbot200Response.md)
 - [Spoonacular.TalkToChatbot200ResponseMediaInner](docs/TalkToChatbot200ResponseMediaInner.md)
 - [Spoonacular.TasteInformation](docs/TasteInformation.md)


## Documentation for Authorization


Authentication schemes defined for the API:
### apiKeyScheme


- **Type**: API key
- **API key parameter name**: x-api-key
- **Location**: HTTP header

