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
*IngredientsApi* | [**autocompleteIngredientSearch**](docs/IngredientsApi.md#autocompleteingredientsearch) | **GET** /food/ingredients/autocomplete | Autocomplete Ingredient Search
*IngredientsApi* | [**computeIngredientAmount**](docs/IngredientsApi.md#computeingredientamount) | **GET** /food/ingredients/{id}/amount | Compute Ingredient Amount
*IngredientsApi* | [**getIngredientInformation**](docs/IngredientsApi.md#getingredientinformation) | **GET** /food/ingredients/{id}/information | Get Ingredient Information
*IngredientsApi* | [**getIngredientSubstitutes**](docs/IngredientsApi.md#getingredientsubstitutes) | **GET** /food/ingredients/substitutes | Get Ingredient Substitutes
*IngredientsApi* | [**getIngredientSubstitutesByID**](docs/IngredientsApi.md#getingredientsubstitutesbyid) | **GET** /food/ingredients/{id}/substitutes | Get Ingredient Substitutes by ID
*IngredientsApi* | [**ingredientSearch**](docs/IngredientsApi.md#ingredientsearch) | **GET** /food/ingredients/search | Ingredient Search
*IngredientsApi* | [**ingredientsByIDImage**](docs/IngredientsApi.md#ingredientsbyidimage) | **GET** /recipes/{id}/ingredientWidget.png | Ingredients by ID Image
*IngredientsApi* | [**mapIngredientsToGroceryProducts**](docs/IngredientsApi.md#mapingredientstogroceryproducts) | **POST** /food/ingredients/map | Map Ingredients to Grocery Products
*IngredientsApi* | [**visualizeIngredients**](docs/IngredientsApi.md#visualizeingredients) | **POST** /recipes/visualizeIngredients | Ingredients Widget
*MealPlanningApi* | [**addMealPlanTemplate**](docs/MealPlanningApi.md#addmealplantemplate) | **POST** /mealplanner/{username}/templates | Add Meal Plan Template
*MealPlanningApi* | [**addToMealPlan**](docs/MealPlanningApi.md#addtomealplan) | **POST** /mealplanner/{username}/items | Add to Meal Plan
*MealPlanningApi* | [**addToShoppingList**](docs/MealPlanningApi.md#addtoshoppinglist) | **POST** /mealplanner/{username}/shopping-list/items | Add to Shopping List
*MealPlanningApi* | [**clearMealPlanDay**](docs/MealPlanningApi.md#clearmealplanday) | **DELETE** /mealplanner/{username}/day/{date} | Clear Meal Plan Day
*MealPlanningApi* | [**connectUser**](docs/MealPlanningApi.md#connectuser) | **POST** /users/connect | Connect User
*MealPlanningApi* | [**deleteFromMealPlan**](docs/MealPlanningApi.md#deletefrommealplan) | **DELETE** /mealplanner/{username}/items/{id} | Delete from Meal Plan
*MealPlanningApi* | [**deleteFromShoppingList**](docs/MealPlanningApi.md#deletefromshoppinglist) | **DELETE** /mealplanner/{username}/shopping-list/items/{id} | Delete from Shopping List
*MealPlanningApi* | [**deleteMealPlanTemplate**](docs/MealPlanningApi.md#deletemealplantemplate) | **DELETE** /mealplanner/{username}/templates/{id} | Delete Meal Plan Template
*MealPlanningApi* | [**generateMealPlan**](docs/MealPlanningApi.md#generatemealplan) | **GET** /mealplanner/generate | Generate Meal Plan
*MealPlanningApi* | [**generateShoppingList**](docs/MealPlanningApi.md#generateshoppinglist) | **POST** /mealplanner/{username}/shopping-list/{start-date}/{end-date} | Generate Shopping List
*MealPlanningApi* | [**getMealPlanTemplate**](docs/MealPlanningApi.md#getmealplantemplate) | **GET** /mealplanner/{username}/templates/{id} | Get Meal Plan Template
*MealPlanningApi* | [**getMealPlanTemplates**](docs/MealPlanningApi.md#getmealplantemplates) | **GET** /mealplanner/{username}/templates | Get Meal Plan Templates
*MealPlanningApi* | [**getMealPlanWeek**](docs/MealPlanningApi.md#getmealplanweek) | **GET** /mealplanner/{username}/week/{start-date} | Get Meal Plan Week
*MealPlanningApi* | [**getShoppingList**](docs/MealPlanningApi.md#getshoppinglist) | **GET** /mealplanner/{username}/shopping-list | Get Shopping List
*MenuItemsApi* | [**autocompleteMenuItemSearch**](docs/MenuItemsApi.md#autocompletemenuitemsearch) | **GET** /food/menuItems/suggest | Autocomplete Menu Item Search
*MenuItemsApi* | [**getMenuItemInformation**](docs/MenuItemsApi.md#getmenuiteminformation) | **GET** /food/menuItems/{id} | Get Menu Item Information
*MenuItemsApi* | [**menuItemNutritionByIDImage**](docs/MenuItemsApi.md#menuitemnutritionbyidimage) | **GET** /food/menuItems/{id}/nutritionWidget.png | Menu Item Nutrition by ID Image
*MenuItemsApi* | [**menuItemNutritionLabelImage**](docs/MenuItemsApi.md#menuitemnutritionlabelimage) | **GET** /food/menuItems/{id}/nutritionLabel.png | Menu Item Nutrition Label Image
*MenuItemsApi* | [**menuItemNutritionLabelWidget**](docs/MenuItemsApi.md#menuitemnutritionlabelwidget) | **GET** /food/menuItems/{id}/nutritionLabel | Menu Item Nutrition Label Widget
*MenuItemsApi* | [**searchMenuItems**](docs/MenuItemsApi.md#searchmenuitems) | **GET** /food/menuItems/search | Search Menu Items
*MenuItemsApi* | [**visualizeMenuItemNutritionByID**](docs/MenuItemsApi.md#visualizemenuitemnutritionbyid) | **GET** /food/menuItems/{id}/nutritionWidget | Menu Item Nutrition by ID Widget
*MiscApi* | [**detectFoodInText**](docs/MiscApi.md#detectfoodintext) | **POST** /food/detect | Detect Food in Text
*MiscApi* | [**getARandomFoodJoke**](docs/MiscApi.md#getarandomfoodjoke) | **GET** /food/jokes/random | Random Food Joke
*MiscApi* | [**getConversationSuggests**](docs/MiscApi.md#getconversationsuggests) | **GET** /food/converse/suggest | Conversation Suggests
*MiscApi* | [**getRandomFoodTrivia**](docs/MiscApi.md#getrandomfoodtrivia) | **GET** /food/trivia/random | Random Food Trivia
*MiscApi* | [**imageAnalysisByURL**](docs/MiscApi.md#imageanalysisbyurl) | **GET** /food/images/analyze | Image Analysis by URL
*MiscApi* | [**imageClassificationByURL**](docs/MiscApi.md#imageclassificationbyurl) | **GET** /food/images/classify | Image Classification by URL
*MiscApi* | [**searchAllFood**](docs/MiscApi.md#searchallfood) | **GET** /food/search | Search All Food
*MiscApi* | [**searchCustomFoods**](docs/MiscApi.md#searchcustomfoods) | **GET** /food/customFoods/search | Search Custom Foods
*MiscApi* | [**searchFoodVideos**](docs/MiscApi.md#searchfoodvideos) | **GET** /food/videos/search | Search Food Videos
*MiscApi* | [**searchSiteContent**](docs/MiscApi.md#searchsitecontent) | **GET** /food/site/search | Search Site Content
*MiscApi* | [**talkToChatbot**](docs/MiscApi.md#talktochatbot) | **GET** /food/converse | Talk to Chatbot
*ProductsApi* | [**autocompleteProductSearch**](docs/ProductsApi.md#autocompleteproductsearch) | **GET** /food/products/suggest | Autocomplete Product Search
*ProductsApi* | [**classifyGroceryProduct**](docs/ProductsApi.md#classifygroceryproduct) | **POST** /food/products/classify | Classify Grocery Product
*ProductsApi* | [**classifyGroceryProductBulk**](docs/ProductsApi.md#classifygroceryproductbulk) | **POST** /food/products/classifyBatch | Classify Grocery Product Bulk
*ProductsApi* | [**getComparableProducts**](docs/ProductsApi.md#getcomparableproducts) | **GET** /food/products/upc/{upc}/comparable | Get Comparable Products
*ProductsApi* | [**getProductInformation**](docs/ProductsApi.md#getproductinformation) | **GET** /food/products/{id} | Get Product Information
*ProductsApi* | [**productNutritionByIDImage**](docs/ProductsApi.md#productnutritionbyidimage) | **GET** /food/products/{id}/nutritionWidget.png | Product Nutrition by ID Image
*ProductsApi* | [**productNutritionLabelImage**](docs/ProductsApi.md#productnutritionlabelimage) | **GET** /food/products/{id}/nutritionLabel.png | Product Nutrition Label Image
*ProductsApi* | [**productNutritionLabelWidget**](docs/ProductsApi.md#productnutritionlabelwidget) | **GET** /food/products/{id}/nutritionLabel | Product Nutrition Label Widget
*ProductsApi* | [**searchGroceryProducts**](docs/ProductsApi.md#searchgroceryproducts) | **GET** /food/products/search | Search Grocery Products
*ProductsApi* | [**searchGroceryProductsByUPC**](docs/ProductsApi.md#searchgroceryproductsbyupc) | **GET** /food/products/upc/{upc} | Search Grocery Products by UPC
*ProductsApi* | [**visualizeProductNutritionByID**](docs/ProductsApi.md#visualizeproductnutritionbyid) | **GET** /food/products/{id}/nutritionWidget | Product Nutrition by ID Widget
*RecipesApi* | [**analyzeARecipeSearchQuery**](docs/RecipesApi.md#analyzearecipesearchquery) | **GET** /recipes/queries/analyze | Analyze a Recipe Search Query
*RecipesApi* | [**analyzeRecipeInstructions**](docs/RecipesApi.md#analyzerecipeinstructions) | **POST** /recipes/analyzeInstructions | Analyze Recipe Instructions
*RecipesApi* | [**autocompleteRecipeSearch**](docs/RecipesApi.md#autocompleterecipesearch) | **GET** /recipes/autocomplete | Autocomplete Recipe Search
*RecipesApi* | [**classifyCuisine**](docs/RecipesApi.md#classifycuisine) | **POST** /recipes/cuisine | Classify Cuisine
*RecipesApi* | [**computeGlycemicLoad**](docs/RecipesApi.md#computeglycemicload) | **POST** /food/ingredients/glycemicLoad | Compute Glycemic Load
*RecipesApi* | [**convertAmounts**](docs/RecipesApi.md#convertamounts) | **GET** /recipes/convert | Convert Amounts
*RecipesApi* | [**createRecipeCard**](docs/RecipesApi.md#createrecipecard) | **POST** /recipes/visualizeRecipe | Create Recipe Card
*RecipesApi* | [**equipmentByIDImage**](docs/RecipesApi.md#equipmentbyidimage) | **GET** /recipes/{id}/equipmentWidget.png | Equipment by ID Image
*RecipesApi* | [**extractRecipeFromWebsite**](docs/RecipesApi.md#extractrecipefromwebsite) | **GET** /recipes/extract | Extract Recipe from Website
*RecipesApi* | [**getAnalyzedRecipeInstructions**](docs/RecipesApi.md#getanalyzedrecipeinstructions) | **GET** /recipes/{id}/analyzedInstructions | Get Analyzed Recipe Instructions
*RecipesApi* | [**getRandomRecipes**](docs/RecipesApi.md#getrandomrecipes) | **GET** /recipes/random | Get Random Recipes
*RecipesApi* | [**getRecipeEquipmentByID**](docs/RecipesApi.md#getrecipeequipmentbyid) | **GET** /recipes/{id}/equipmentWidget.json | Equipment by ID
*RecipesApi* | [**getRecipeInformation**](docs/RecipesApi.md#getrecipeinformation) | **GET** /recipes/{id}/information | Get Recipe Information
*RecipesApi* | [**getRecipeInformationBulk**](docs/RecipesApi.md#getrecipeinformationbulk) | **GET** /recipes/informationBulk | Get Recipe Information Bulk
*RecipesApi* | [**getRecipeIngredientsByID**](docs/RecipesApi.md#getrecipeingredientsbyid) | **GET** /recipes/{id}/ingredientWidget.json | Ingredients by ID
*RecipesApi* | [**getRecipeNutritionWidgetByID**](docs/RecipesApi.md#getrecipenutritionwidgetbyid) | **GET** /recipes/{id}/nutritionWidget.json | Nutrition by ID
*RecipesApi* | [**getRecipePriceBreakdownByID**](docs/RecipesApi.md#getrecipepricebreakdownbyid) | **GET** /recipes/{id}/priceBreakdownWidget.json | Price Breakdown by ID
*RecipesApi* | [**getRecipeTasteByID**](docs/RecipesApi.md#getrecipetastebyid) | **GET** /recipes/{id}/tasteWidget.json | Taste by ID
*RecipesApi* | [**getSimilarRecipes**](docs/RecipesApi.md#getsimilarrecipes) | **GET** /recipes/{id}/similar | Get Similar Recipes
*RecipesApi* | [**guessNutritionByDishName**](docs/RecipesApi.md#guessnutritionbydishname) | **GET** /recipes/guessNutrition | Guess Nutrition by Dish Name
*RecipesApi* | [**ingredientsByIDImage**](docs/RecipesApi.md#ingredientsbyidimage) | **GET** /recipes/{id}/ingredientWidget.png | Ingredients by ID Image
*RecipesApi* | [**parseIngredients**](docs/RecipesApi.md#parseingredients) | **POST** /recipes/parseIngredients | Parse Ingredients
*RecipesApi* | [**priceBreakdownByIDImage**](docs/RecipesApi.md#pricebreakdownbyidimage) | **GET** /recipes/{id}/priceBreakdownWidget.png | Price Breakdown by ID Image
*RecipesApi* | [**quickAnswer**](docs/RecipesApi.md#quickanswer) | **GET** /recipes/quickAnswer | Quick Answer
*RecipesApi* | [**recipeNutritionByIDImage**](docs/RecipesApi.md#recipenutritionbyidimage) | **GET** /recipes/{id}/nutritionWidget.png | Recipe Nutrition by ID Image
*RecipesApi* | [**recipeNutritionLabelImage**](docs/RecipesApi.md#recipenutritionlabelimage) | **GET** /recipes/{id}/nutritionLabel.png | Recipe Nutrition Label Image
*RecipesApi* | [**recipeNutritionLabelWidget**](docs/RecipesApi.md#recipenutritionlabelwidget) | **GET** /recipes/{id}/nutritionLabel | Recipe Nutrition Label Widget
*RecipesApi* | [**recipeTasteByIDImage**](docs/RecipesApi.md#recipetastebyidimage) | **GET** /recipes/{id}/tasteWidget.png | Recipe Taste by ID Image
*RecipesApi* | [**searchRecipes**](docs/RecipesApi.md#searchrecipes) | **GET** /recipes/complexSearch | Search Recipes
*RecipesApi* | [**searchRecipesByIngredients**](docs/RecipesApi.md#searchrecipesbyingredients) | **GET** /recipes/findByIngredients | Search Recipes by Ingredients
*RecipesApi* | [**searchRecipesByNutrients**](docs/RecipesApi.md#searchrecipesbynutrients) | **GET** /recipes/findByNutrients | Search Recipes by Nutrients
*RecipesApi* | [**summarizeRecipe**](docs/RecipesApi.md#summarizerecipe) | **GET** /recipes/{id}/summary | Summarize Recipe
*RecipesApi* | [**visualizeEquipment**](docs/RecipesApi.md#visualizeequipment) | **POST** /recipes/visualizeEquipment | Equipment Widget
*RecipesApi* | [**visualizePriceBreakdown**](docs/RecipesApi.md#visualizepricebreakdown) | **POST** /recipes/visualizePriceEstimator | Price Breakdown Widget
*RecipesApi* | [**visualizeRecipeEquipmentByID**](docs/RecipesApi.md#visualizerecipeequipmentbyid) | **GET** /recipes/{id}/equipmentWidget | Equipment by ID Widget
*RecipesApi* | [**visualizeRecipeIngredientsByID**](docs/RecipesApi.md#visualizerecipeingredientsbyid) | **GET** /recipes/{id}/ingredientWidget | Ingredients by ID Widget
*RecipesApi* | [**visualizeRecipeNutrition**](docs/RecipesApi.md#visualizerecipenutrition) | **POST** /recipes/visualizeNutrition | Recipe Nutrition Widget
*RecipesApi* | [**visualizeRecipeNutritionByID**](docs/RecipesApi.md#visualizerecipenutritionbyid) | **GET** /recipes/{id}/nutritionWidget | Recipe Nutrition by ID Widget
*RecipesApi* | [**visualizeRecipePriceBreakdownByID**](docs/RecipesApi.md#visualizerecipepricebreakdownbyid) | **GET** /recipes/{id}/priceBreakdownWidget | Price Breakdown by ID Widget
*RecipesApi* | [**visualizeRecipeTaste**](docs/RecipesApi.md#visualizerecipetaste) | **POST** /recipes/visualizeTaste | Recipe Taste Widget
*RecipesApi* | [**visualizeRecipeTasteByID**](docs/RecipesApi.md#visualizerecipetastebyid) | **GET** /recipes/{id}/tasteWidget | Recipe Taste by ID Widget
*WineApi* | [**getDishPairingForWine**](docs/WineApi.md#getdishpairingforwine) | **GET** /food/wine/dishes | Dish Pairing for Wine
*WineApi* | [**getWineDescription**](docs/WineApi.md#getwinedescription) | **GET** /food/wine/description | Wine Description
*WineApi* | [**getWinePairing**](docs/WineApi.md#getwinepairing) | **GET** /food/wine/pairing | Wine Pairing
*WineApi* | [**getWineRecommendation**](docs/WineApi.md#getwinerecommendation) | **GET** /food/wine/recommendation | Wine Recommendation


<a name="documentation-for-models"></a>
## Documentation for Models

 - [com.spoonacular.client.model.FoodIngredientsMapProducts](docs/FoodIngredientsMapProducts.md)
 - [com.spoonacular.client.model.InlineObject](docs/InlineObject.md)
 - [com.spoonacular.client.model.InlineObject1](docs/InlineObject1.md)
 - [com.spoonacular.client.model.InlineObject10](docs/InlineObject10.md)
 - [com.spoonacular.client.model.InlineObject2](docs/InlineObject2.md)
 - [com.spoonacular.client.model.InlineObject3](docs/InlineObject3.md)
 - [com.spoonacular.client.model.InlineObject4](docs/InlineObject4.md)
 - [com.spoonacular.client.model.InlineObject5](docs/InlineObject5.md)
 - [com.spoonacular.client.model.InlineObject6](docs/InlineObject6.md)
 - [com.spoonacular.client.model.InlineObject7](docs/InlineObject7.md)
 - [com.spoonacular.client.model.InlineObject8](docs/InlineObject8.md)
 - [com.spoonacular.client.model.InlineObject9](docs/InlineObject9.md)
 - [com.spoonacular.client.model.InlineResponse200](docs/InlineResponse200.md)
 - [com.spoonacular.client.model.InlineResponse2001](docs/InlineResponse2001.md)
 - [com.spoonacular.client.model.InlineResponse20010](docs/InlineResponse20010.md)
 - [com.spoonacular.client.model.InlineResponse20010Amount](docs/InlineResponse20010Amount.md)
 - [com.spoonacular.client.model.InlineResponse20010AmountMetric](docs/InlineResponse20010AmountMetric.md)
 - [com.spoonacular.client.model.InlineResponse20010Ingredients](docs/InlineResponse20010Ingredients.md)
 - [com.spoonacular.client.model.InlineResponse20011](docs/InlineResponse20011.md)
 - [com.spoonacular.client.model.InlineResponse20011Ingredients](docs/InlineResponse20011Ingredients.md)
 - [com.spoonacular.client.model.InlineResponse20012](docs/InlineResponse20012.md)
 - [com.spoonacular.client.model.InlineResponse20013](docs/InlineResponse20013.md)
 - [com.spoonacular.client.model.InlineResponse20013Ingredients](docs/InlineResponse20013Ingredients.md)
 - [com.spoonacular.client.model.InlineResponse20013Ingredients1](docs/InlineResponse20013Ingredients1.md)
 - [com.spoonacular.client.model.InlineResponse20013ParsedInstructions](docs/InlineResponse20013ParsedInstructions.md)
 - [com.spoonacular.client.model.InlineResponse20013Steps](docs/InlineResponse20013Steps.md)
 - [com.spoonacular.client.model.InlineResponse20014](docs/InlineResponse20014.md)
 - [com.spoonacular.client.model.InlineResponse20015](docs/InlineResponse20015.md)
 - [com.spoonacular.client.model.InlineResponse20016](docs/InlineResponse20016.md)
 - [com.spoonacular.client.model.InlineResponse20017](docs/InlineResponse20017.md)
 - [com.spoonacular.client.model.InlineResponse20018](docs/InlineResponse20018.md)
 - [com.spoonacular.client.model.InlineResponse20018Dishes](docs/InlineResponse20018Dishes.md)
 - [com.spoonacular.client.model.InlineResponse20018Ingredients](docs/InlineResponse20018Ingredients.md)
 - [com.spoonacular.client.model.InlineResponse20019](docs/InlineResponse20019.md)
 - [com.spoonacular.client.model.InlineResponse2002](docs/InlineResponse2002.md)
 - [com.spoonacular.client.model.InlineResponse20020](docs/InlineResponse20020.md)
 - [com.spoonacular.client.model.InlineResponse20021](docs/InlineResponse20021.md)
 - [com.spoonacular.client.model.InlineResponse20021Calories](docs/InlineResponse20021Calories.md)
 - [com.spoonacular.client.model.InlineResponse20021CaloriesConfidenceRange95Percent](docs/InlineResponse20021CaloriesConfidenceRange95Percent.md)
 - [com.spoonacular.client.model.InlineResponse20022](docs/InlineResponse20022.md)
 - [com.spoonacular.client.model.InlineResponse20022Nutrition](docs/InlineResponse20022Nutrition.md)
 - [com.spoonacular.client.model.InlineResponse20023](docs/InlineResponse20023.md)
 - [com.spoonacular.client.model.InlineResponse20023Ingredients](docs/InlineResponse20023Ingredients.md)
 - [com.spoonacular.client.model.InlineResponse20024](docs/InlineResponse20024.md)
 - [com.spoonacular.client.model.InlineResponse20025](docs/InlineResponse20025.md)
 - [com.spoonacular.client.model.InlineResponse20025Results](docs/InlineResponse20025Results.md)
 - [com.spoonacular.client.model.InlineResponse20026](docs/InlineResponse20026.md)
 - [com.spoonacular.client.model.InlineResponse20027](docs/InlineResponse20027.md)
 - [com.spoonacular.client.model.InlineResponse20028](docs/InlineResponse20028.md)
 - [com.spoonacular.client.model.InlineResponse20028Ingredients](docs/InlineResponse20028Ingredients.md)
 - [com.spoonacular.client.model.InlineResponse20028Nutrition](docs/InlineResponse20028Nutrition.md)
 - [com.spoonacular.client.model.InlineResponse20028Servings](docs/InlineResponse20028Servings.md)
 - [com.spoonacular.client.model.InlineResponse20029](docs/InlineResponse20029.md)
 - [com.spoonacular.client.model.InlineResponse20029CustomFoods](docs/InlineResponse20029CustomFoods.md)
 - [com.spoonacular.client.model.InlineResponse2003](docs/InlineResponse2003.md)
 - [com.spoonacular.client.model.InlineResponse20030](docs/InlineResponse20030.md)
 - [com.spoonacular.client.model.InlineResponse20030Ingredients](docs/InlineResponse20030Ingredients.md)
 - [com.spoonacular.client.model.InlineResponse20031](docs/InlineResponse20031.md)
 - [com.spoonacular.client.model.InlineResponse20031ComparableProducts](docs/InlineResponse20031ComparableProducts.md)
 - [com.spoonacular.client.model.InlineResponse20031ComparableProductsProtein](docs/InlineResponse20031ComparableProductsProtein.md)
 - [com.spoonacular.client.model.InlineResponse20032](docs/InlineResponse20032.md)
 - [com.spoonacular.client.model.InlineResponse20032Results](docs/InlineResponse20032Results.md)
 - [com.spoonacular.client.model.InlineResponse20033](docs/InlineResponse20033.md)
 - [com.spoonacular.client.model.InlineResponse20034](docs/InlineResponse20034.md)
 - [com.spoonacular.client.model.InlineResponse20035](docs/InlineResponse20035.md)
 - [com.spoonacular.client.model.InlineResponse20035MenuItems](docs/InlineResponse20035MenuItems.md)
 - [com.spoonacular.client.model.InlineResponse20036](docs/InlineResponse20036.md)
 - [com.spoonacular.client.model.InlineResponse20037](docs/InlineResponse20037.md)
 - [com.spoonacular.client.model.InlineResponse20037Nutrients](docs/InlineResponse20037Nutrients.md)
 - [com.spoonacular.client.model.InlineResponse20038](docs/InlineResponse20038.md)
 - [com.spoonacular.client.model.InlineResponse20038Days](docs/InlineResponse20038Days.md)
 - [com.spoonacular.client.model.InlineResponse20038Items](docs/InlineResponse20038Items.md)
 - [com.spoonacular.client.model.InlineResponse20038NutritionSummary](docs/InlineResponse20038NutritionSummary.md)
 - [com.spoonacular.client.model.InlineResponse20038NutritionSummaryNutrients](docs/InlineResponse20038NutritionSummaryNutrients.md)
 - [com.spoonacular.client.model.InlineResponse20038Value](docs/InlineResponse20038Value.md)
 - [com.spoonacular.client.model.InlineResponse20039](docs/InlineResponse20039.md)
 - [com.spoonacular.client.model.InlineResponse2003ExtendedIngredients](docs/InlineResponse2003ExtendedIngredients.md)
 - [com.spoonacular.client.model.InlineResponse2003Measures](docs/InlineResponse2003Measures.md)
 - [com.spoonacular.client.model.InlineResponse2003MeasuresMetric](docs/InlineResponse2003MeasuresMetric.md)
 - [com.spoonacular.client.model.InlineResponse2003WinePairing](docs/InlineResponse2003WinePairing.md)
 - [com.spoonacular.client.model.InlineResponse2003WinePairingProductMatches](docs/InlineResponse2003WinePairingProductMatches.md)
 - [com.spoonacular.client.model.InlineResponse2004](docs/InlineResponse2004.md)
 - [com.spoonacular.client.model.InlineResponse20040](docs/InlineResponse20040.md)
 - [com.spoonacular.client.model.InlineResponse20040Items](docs/InlineResponse20040Items.md)
 - [com.spoonacular.client.model.InlineResponse20040Value](docs/InlineResponse20040Value.md)
 - [com.spoonacular.client.model.InlineResponse20041](docs/InlineResponse20041.md)
 - [com.spoonacular.client.model.InlineResponse20041Days](docs/InlineResponse20041Days.md)
 - [com.spoonacular.client.model.InlineResponse20041Items](docs/InlineResponse20041Items.md)
 - [com.spoonacular.client.model.InlineResponse20041Value](docs/InlineResponse20041Value.md)
 - [com.spoonacular.client.model.InlineResponse20042](docs/InlineResponse20042.md)
 - [com.spoonacular.client.model.InlineResponse20042Aisles](docs/InlineResponse20042Aisles.md)
 - [com.spoonacular.client.model.InlineResponse20042Items](docs/InlineResponse20042Items.md)
 - [com.spoonacular.client.model.InlineResponse20042Measures](docs/InlineResponse20042Measures.md)
 - [com.spoonacular.client.model.InlineResponse20043](docs/InlineResponse20043.md)
 - [com.spoonacular.client.model.InlineResponse20044](docs/InlineResponse20044.md)
 - [com.spoonacular.client.model.InlineResponse20045](docs/InlineResponse20045.md)
 - [com.spoonacular.client.model.InlineResponse20045ProductMatches](docs/InlineResponse20045ProductMatches.md)
 - [com.spoonacular.client.model.InlineResponse20046](docs/InlineResponse20046.md)
 - [com.spoonacular.client.model.InlineResponse20047](docs/InlineResponse20047.md)
 - [com.spoonacular.client.model.InlineResponse20047RecommendedWines](docs/InlineResponse20047RecommendedWines.md)
 - [com.spoonacular.client.model.InlineResponse20048](docs/InlineResponse20048.md)
 - [com.spoonacular.client.model.InlineResponse20049](docs/InlineResponse20049.md)
 - [com.spoonacular.client.model.InlineResponse20049Category](docs/InlineResponse20049Category.md)
 - [com.spoonacular.client.model.InlineResponse20049Nutrition](docs/InlineResponse20049Nutrition.md)
 - [com.spoonacular.client.model.InlineResponse20049NutritionCalories](docs/InlineResponse20049NutritionCalories.md)
 - [com.spoonacular.client.model.InlineResponse20049NutritionCaloriesConfidenceRange95Percent](docs/InlineResponse20049NutritionCaloriesConfidenceRange95Percent.md)
 - [com.spoonacular.client.model.InlineResponse20049Recipes](docs/InlineResponse20049Recipes.md)
 - [com.spoonacular.client.model.InlineResponse2005](docs/InlineResponse2005.md)
 - [com.spoonacular.client.model.InlineResponse20050](docs/InlineResponse20050.md)
 - [com.spoonacular.client.model.InlineResponse20051](docs/InlineResponse20051.md)
 - [com.spoonacular.client.model.InlineResponse20052](docs/InlineResponse20052.md)
 - [com.spoonacular.client.model.InlineResponse20053](docs/InlineResponse20053.md)
 - [com.spoonacular.client.model.InlineResponse20053Results](docs/InlineResponse20053Results.md)
 - [com.spoonacular.client.model.InlineResponse20053SearchResults](docs/InlineResponse20053SearchResults.md)
 - [com.spoonacular.client.model.InlineResponse20054](docs/InlineResponse20054.md)
 - [com.spoonacular.client.model.InlineResponse20054Videos](docs/InlineResponse20054Videos.md)
 - [com.spoonacular.client.model.InlineResponse20055](docs/InlineResponse20055.md)
 - [com.spoonacular.client.model.InlineResponse20056](docs/InlineResponse20056.md)
 - [com.spoonacular.client.model.InlineResponse20057](docs/InlineResponse20057.md)
 - [com.spoonacular.client.model.InlineResponse20057Suggests](docs/InlineResponse20057Suggests.md)
 - [com.spoonacular.client.model.InlineResponse2006](docs/InlineResponse2006.md)
 - [com.spoonacular.client.model.InlineResponse2006Recipes](docs/InlineResponse2006Recipes.md)
 - [com.spoonacular.client.model.InlineResponse2007](docs/InlineResponse2007.md)
 - [com.spoonacular.client.model.InlineResponse2008](docs/InlineResponse2008.md)
 - [com.spoonacular.client.model.InlineResponse2009](docs/InlineResponse2009.md)
 - [com.spoonacular.client.model.InlineResponse200Results](docs/InlineResponse200Results.md)
 - [com.spoonacular.client.model.RecipesFindByIngredientsMissedIngredients](docs/RecipesFindByIngredientsMissedIngredients.md)
 - [com.spoonacular.client.model.RecipesParseIngredientsEstimatedCost](docs/RecipesParseIngredientsEstimatedCost.md)
 - [com.spoonacular.client.model.RecipesParseIngredientsNutrition](docs/RecipesParseIngredientsNutrition.md)
 - [com.spoonacular.client.model.RecipesParseIngredientsNutritionCaloricBreakdown](docs/RecipesParseIngredientsNutritionCaloricBreakdown.md)
 - [com.spoonacular.client.model.RecipesParseIngredientsNutritionNutrients](docs/RecipesParseIngredientsNutritionNutrients.md)
 - [com.spoonacular.client.model.RecipesParseIngredientsNutritionProperties](docs/RecipesParseIngredientsNutritionProperties.md)
 - [com.spoonacular.client.model.RecipesParseIngredientsNutritionWeightPerServing](docs/RecipesParseIngredientsNutritionWeightPerServing.md)


<a name="documentation-for-authorization"></a>
## Documentation for Authorization

<a name="apiKeyScheme"></a>
### apiKeyScheme

- **Type**: API key
- **API key parameter name**: apiKey
- **Location**: URL query string

