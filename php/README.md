# spoonacular

The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.

Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.

For more information, please visit [https://spoonacular.com/contact](https://spoonacular.com/contact).

## Installation & Usage

### Requirements

PHP 7.4 and later.
Should also work with PHP 8.0.

### Composer

To install the bindings via [Composer](https://getcomposer.org/), add the following to `composer.json`:

```json
{
  "repositories": [
    {
      "type": "vcs",
      "url": "https://github.com/ddsky/spoonacular-api-clients/tree/master/php/.git"
    }
  ],
  "require": {
    "ddsky/spoonacular-api-clients/tree/master/php/": "*@dev"
  }
}
```

Then run `composer install`

### Manual Installation

Download the files and include `autoload.php`:

```php
<?php
require_once('/path/to/spoonacular/vendor/autoload.php');
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



// Configure API key authorization: apiKeyScheme
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$analyze_recipe_request = new \OpenAPI\Client\Model\AnalyzeRecipeRequest(); // \OpenAPI\Client\Model\AnalyzeRecipeRequest | Example request body.
$language = en; // string | The input language, either \"en\" or \"de\".
$include_nutrition = false; // bool | Whether nutrition data should be added to correctly parsed ingredients.
$include_taste = false; // bool | Whether taste data should be added to correctly parsed ingredients.

try {
    $result = $apiInstance->analyzeRecipe($analyze_recipe_request, $language, $include_nutrition, $include_taste);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->analyzeRecipe: ', $e->getMessage(), PHP_EOL;
}

```

## API Endpoints

All URIs are relative to *https://api.spoonacular.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*DefaultApi* | [**analyzeRecipe**](docs/Api/DefaultApi.md#analyzerecipe) | **POST** /recipes/analyze | Analyze Recipe
*DefaultApi* | [**createRecipeCardGet**](docs/Api/DefaultApi.md#createrecipecardget) | **GET** /recipes/{id}/card | Create Recipe Card
*DefaultApi* | [**searchRestaurants**](docs/Api/DefaultApi.md#searchrestaurants) | **GET** /food/restaurants/search | Search Restaurants
*IngredientsApi* | [**autocompleteIngredientSearch**](docs/Api/IngredientsApi.md#autocompleteingredientsearch) | **GET** /food/ingredients/autocomplete | Autocomplete Ingredient Search
*IngredientsApi* | [**computeIngredientAmount**](docs/Api/IngredientsApi.md#computeingredientamount) | **GET** /food/ingredients/{id}/amount | Compute Ingredient Amount
*IngredientsApi* | [**getIngredientInformation**](docs/Api/IngredientsApi.md#getingredientinformation) | **GET** /food/ingredients/{id}/information | Get Ingredient Information
*IngredientsApi* | [**getIngredientSubstitutes**](docs/Api/IngredientsApi.md#getingredientsubstitutes) | **GET** /food/ingredients/substitutes | Get Ingredient Substitutes
*IngredientsApi* | [**getIngredientSubstitutesByID**](docs/Api/IngredientsApi.md#getingredientsubstitutesbyid) | **GET** /food/ingredients/{id}/substitutes | Get Ingredient Substitutes by ID
*IngredientsApi* | [**ingredientSearch**](docs/Api/IngredientsApi.md#ingredientsearch) | **GET** /food/ingredients/search | Ingredient Search
*IngredientsApi* | [**ingredientsByIDImage**](docs/Api/IngredientsApi.md#ingredientsbyidimage) | **GET** /recipes/{id}/ingredientWidget.png | Ingredients by ID Image
*IngredientsApi* | [**mapIngredientsToGroceryProducts**](docs/Api/IngredientsApi.md#mapingredientstogroceryproducts) | **POST** /food/ingredients/map | Map Ingredients to Grocery Products
*IngredientsApi* | [**visualizeIngredients**](docs/Api/IngredientsApi.md#visualizeingredients) | **POST** /recipes/visualizeIngredients | Ingredients Widget
*MealPlanningApi* | [**addMealPlanTemplate**](docs/Api/MealPlanningApi.md#addmealplantemplate) | **POST** /mealplanner/{username}/templates | Add Meal Plan Template
*MealPlanningApi* | [**addToMealPlan**](docs/Api/MealPlanningApi.md#addtomealplan) | **POST** /mealplanner/{username}/items | Add to Meal Plan
*MealPlanningApi* | [**addToShoppingList**](docs/Api/MealPlanningApi.md#addtoshoppinglist) | **POST** /mealplanner/{username}/shopping-list/items | Add to Shopping List
*MealPlanningApi* | [**clearMealPlanDay**](docs/Api/MealPlanningApi.md#clearmealplanday) | **DELETE** /mealplanner/{username}/day/{date} | Clear Meal Plan Day
*MealPlanningApi* | [**connectUser**](docs/Api/MealPlanningApi.md#connectuser) | **POST** /users/connect | Connect User
*MealPlanningApi* | [**deleteFromMealPlan**](docs/Api/MealPlanningApi.md#deletefrommealplan) | **DELETE** /mealplanner/{username}/items/{id} | Delete from Meal Plan
*MealPlanningApi* | [**deleteFromShoppingList**](docs/Api/MealPlanningApi.md#deletefromshoppinglist) | **DELETE** /mealplanner/{username}/shopping-list/items/{id} | Delete from Shopping List
*MealPlanningApi* | [**deleteMealPlanTemplate**](docs/Api/MealPlanningApi.md#deletemealplantemplate) | **DELETE** /mealplanner/{username}/templates/{id} | Delete Meal Plan Template
*MealPlanningApi* | [**generateMealPlan**](docs/Api/MealPlanningApi.md#generatemealplan) | **GET** /mealplanner/generate | Generate Meal Plan
*MealPlanningApi* | [**generateShoppingList**](docs/Api/MealPlanningApi.md#generateshoppinglist) | **POST** /mealplanner/{username}/shopping-list/{start-date}/{end-date} | Generate Shopping List
*MealPlanningApi* | [**getMealPlanTemplate**](docs/Api/MealPlanningApi.md#getmealplantemplate) | **GET** /mealplanner/{username}/templates/{id} | Get Meal Plan Template
*MealPlanningApi* | [**getMealPlanTemplates**](docs/Api/MealPlanningApi.md#getmealplantemplates) | **GET** /mealplanner/{username}/templates | Get Meal Plan Templates
*MealPlanningApi* | [**getMealPlanWeek**](docs/Api/MealPlanningApi.md#getmealplanweek) | **GET** /mealplanner/{username}/week/{start-date} | Get Meal Plan Week
*MealPlanningApi* | [**getShoppingList**](docs/Api/MealPlanningApi.md#getshoppinglist) | **GET** /mealplanner/{username}/shopping-list | Get Shopping List
*MenuItemsApi* | [**autocompleteMenuItemSearch**](docs/Api/MenuItemsApi.md#autocompletemenuitemsearch) | **GET** /food/menuItems/suggest | Autocomplete Menu Item Search
*MenuItemsApi* | [**getMenuItemInformation**](docs/Api/MenuItemsApi.md#getmenuiteminformation) | **GET** /food/menuItems/{id} | Get Menu Item Information
*MenuItemsApi* | [**menuItemNutritionByIDImage**](docs/Api/MenuItemsApi.md#menuitemnutritionbyidimage) | **GET** /food/menuItems/{id}/nutritionWidget.png | Menu Item Nutrition by ID Image
*MenuItemsApi* | [**menuItemNutritionLabelImage**](docs/Api/MenuItemsApi.md#menuitemnutritionlabelimage) | **GET** /food/menuItems/{id}/nutritionLabel.png | Menu Item Nutrition Label Image
*MenuItemsApi* | [**menuItemNutritionLabelWidget**](docs/Api/MenuItemsApi.md#menuitemnutritionlabelwidget) | **GET** /food/menuItems/{id}/nutritionLabel | Menu Item Nutrition Label Widget
*MenuItemsApi* | [**searchMenuItems**](docs/Api/MenuItemsApi.md#searchmenuitems) | **GET** /food/menuItems/search | Search Menu Items
*MenuItemsApi* | [**visualizeMenuItemNutritionByID**](docs/Api/MenuItemsApi.md#visualizemenuitemnutritionbyid) | **GET** /food/menuItems/{id}/nutritionWidget | Menu Item Nutrition by ID Widget
*MiscApi* | [**detectFoodInText**](docs/Api/MiscApi.md#detectfoodintext) | **POST** /food/detect | Detect Food in Text
*MiscApi* | [**getARandomFoodJoke**](docs/Api/MiscApi.md#getarandomfoodjoke) | **GET** /food/jokes/random | Random Food Joke
*MiscApi* | [**getConversationSuggests**](docs/Api/MiscApi.md#getconversationsuggests) | **GET** /food/converse/suggest | Conversation Suggests
*MiscApi* | [**getRandomFoodTrivia**](docs/Api/MiscApi.md#getrandomfoodtrivia) | **GET** /food/trivia/random | Random Food Trivia
*MiscApi* | [**imageAnalysisByURL**](docs/Api/MiscApi.md#imageanalysisbyurl) | **GET** /food/images/analyze | Image Analysis by URL
*MiscApi* | [**imageClassificationByURL**](docs/Api/MiscApi.md#imageclassificationbyurl) | **GET** /food/images/classify | Image Classification by URL
*MiscApi* | [**searchAllFood**](docs/Api/MiscApi.md#searchallfood) | **GET** /food/search | Search All Food
*MiscApi* | [**searchCustomFoods**](docs/Api/MiscApi.md#searchcustomfoods) | **GET** /food/customFoods/search | Search Custom Foods
*MiscApi* | [**searchFoodVideos**](docs/Api/MiscApi.md#searchfoodvideos) | **GET** /food/videos/search | Search Food Videos
*MiscApi* | [**searchSiteContent**](docs/Api/MiscApi.md#searchsitecontent) | **GET** /food/site/search | Search Site Content
*MiscApi* | [**talkToChatbot**](docs/Api/MiscApi.md#talktochatbot) | **GET** /food/converse | Talk to Chatbot
*ProductsApi* | [**autocompleteProductSearch**](docs/Api/ProductsApi.md#autocompleteproductsearch) | **GET** /food/products/suggest | Autocomplete Product Search
*ProductsApi* | [**classifyGroceryProduct**](docs/Api/ProductsApi.md#classifygroceryproduct) | **POST** /food/products/classify | Classify Grocery Product
*ProductsApi* | [**classifyGroceryProductBulk**](docs/Api/ProductsApi.md#classifygroceryproductbulk) | **POST** /food/products/classifyBatch | Classify Grocery Product Bulk
*ProductsApi* | [**getComparableProducts**](docs/Api/ProductsApi.md#getcomparableproducts) | **GET** /food/products/upc/{upc}/comparable | Get Comparable Products
*ProductsApi* | [**getProductInformation**](docs/Api/ProductsApi.md#getproductinformation) | **GET** /food/products/{id} | Get Product Information
*ProductsApi* | [**productNutritionByIDImage**](docs/Api/ProductsApi.md#productnutritionbyidimage) | **GET** /food/products/{id}/nutritionWidget.png | Product Nutrition by ID Image
*ProductsApi* | [**productNutritionLabelImage**](docs/Api/ProductsApi.md#productnutritionlabelimage) | **GET** /food/products/{id}/nutritionLabel.png | Product Nutrition Label Image
*ProductsApi* | [**productNutritionLabelWidget**](docs/Api/ProductsApi.md#productnutritionlabelwidget) | **GET** /food/products/{id}/nutritionLabel | Product Nutrition Label Widget
*ProductsApi* | [**searchGroceryProducts**](docs/Api/ProductsApi.md#searchgroceryproducts) | **GET** /food/products/search | Search Grocery Products
*ProductsApi* | [**searchGroceryProductsByUPC**](docs/Api/ProductsApi.md#searchgroceryproductsbyupc) | **GET** /food/products/upc/{upc} | Search Grocery Products by UPC
*ProductsApi* | [**visualizeProductNutritionByID**](docs/Api/ProductsApi.md#visualizeproductnutritionbyid) | **GET** /food/products/{id}/nutritionWidget | Product Nutrition by ID Widget
*RecipesApi* | [**analyzeARecipeSearchQuery**](docs/Api/RecipesApi.md#analyzearecipesearchquery) | **GET** /recipes/queries/analyze | Analyze a Recipe Search Query
*RecipesApi* | [**analyzeRecipeInstructions**](docs/Api/RecipesApi.md#analyzerecipeinstructions) | **POST** /recipes/analyzeInstructions | Analyze Recipe Instructions
*RecipesApi* | [**autocompleteRecipeSearch**](docs/Api/RecipesApi.md#autocompleterecipesearch) | **GET** /recipes/autocomplete | Autocomplete Recipe Search
*RecipesApi* | [**classifyCuisine**](docs/Api/RecipesApi.md#classifycuisine) | **POST** /recipes/cuisine | Classify Cuisine
*RecipesApi* | [**computeGlycemicLoad**](docs/Api/RecipesApi.md#computeglycemicload) | **POST** /food/ingredients/glycemicLoad | Compute Glycemic Load
*RecipesApi* | [**convertAmounts**](docs/Api/RecipesApi.md#convertamounts) | **GET** /recipes/convert | Convert Amounts
*RecipesApi* | [**createRecipeCard**](docs/Api/RecipesApi.md#createrecipecard) | **POST** /recipes/visualizeRecipe | Create Recipe Card
*RecipesApi* | [**equipmentByIDImage**](docs/Api/RecipesApi.md#equipmentbyidimage) | **GET** /recipes/{id}/equipmentWidget.png | Equipment by ID Image
*RecipesApi* | [**extractRecipeFromWebsite**](docs/Api/RecipesApi.md#extractrecipefromwebsite) | **GET** /recipes/extract | Extract Recipe from Website
*RecipesApi* | [**getAnalyzedRecipeInstructions**](docs/Api/RecipesApi.md#getanalyzedrecipeinstructions) | **GET** /recipes/{id}/analyzedInstructions | Get Analyzed Recipe Instructions
*RecipesApi* | [**getRandomRecipes**](docs/Api/RecipesApi.md#getrandomrecipes) | **GET** /recipes/random | Get Random Recipes
*RecipesApi* | [**getRecipeEquipmentByID**](docs/Api/RecipesApi.md#getrecipeequipmentbyid) | **GET** /recipes/{id}/equipmentWidget.json | Equipment by ID
*RecipesApi* | [**getRecipeInformation**](docs/Api/RecipesApi.md#getrecipeinformation) | **GET** /recipes/{id}/information | Get Recipe Information
*RecipesApi* | [**getRecipeInformationBulk**](docs/Api/RecipesApi.md#getrecipeinformationbulk) | **GET** /recipes/informationBulk | Get Recipe Information Bulk
*RecipesApi* | [**getRecipeIngredientsByID**](docs/Api/RecipesApi.md#getrecipeingredientsbyid) | **GET** /recipes/{id}/ingredientWidget.json | Ingredients by ID
*RecipesApi* | [**getRecipeNutritionWidgetByID**](docs/Api/RecipesApi.md#getrecipenutritionwidgetbyid) | **GET** /recipes/{id}/nutritionWidget.json | Nutrition by ID
*RecipesApi* | [**getRecipePriceBreakdownByID**](docs/Api/RecipesApi.md#getrecipepricebreakdownbyid) | **GET** /recipes/{id}/priceBreakdownWidget.json | Price Breakdown by ID
*RecipesApi* | [**getRecipeTasteByID**](docs/Api/RecipesApi.md#getrecipetastebyid) | **GET** /recipes/{id}/tasteWidget.json | Taste by ID
*RecipesApi* | [**getSimilarRecipes**](docs/Api/RecipesApi.md#getsimilarrecipes) | **GET** /recipes/{id}/similar | Get Similar Recipes
*RecipesApi* | [**guessNutritionByDishName**](docs/Api/RecipesApi.md#guessnutritionbydishname) | **GET** /recipes/guessNutrition | Guess Nutrition by Dish Name
*RecipesApi* | [**ingredientsByIDImage**](docs/Api/RecipesApi.md#ingredientsbyidimage) | **GET** /recipes/{id}/ingredientWidget.png | Ingredients by ID Image
*RecipesApi* | [**parseIngredients**](docs/Api/RecipesApi.md#parseingredients) | **POST** /recipes/parseIngredients | Parse Ingredients
*RecipesApi* | [**priceBreakdownByIDImage**](docs/Api/RecipesApi.md#pricebreakdownbyidimage) | **GET** /recipes/{id}/priceBreakdownWidget.png | Price Breakdown by ID Image
*RecipesApi* | [**quickAnswer**](docs/Api/RecipesApi.md#quickanswer) | **GET** /recipes/quickAnswer | Quick Answer
*RecipesApi* | [**recipeNutritionByIDImage**](docs/Api/RecipesApi.md#recipenutritionbyidimage) | **GET** /recipes/{id}/nutritionWidget.png | Recipe Nutrition by ID Image
*RecipesApi* | [**recipeNutritionLabelImage**](docs/Api/RecipesApi.md#recipenutritionlabelimage) | **GET** /recipes/{id}/nutritionLabel.png | Recipe Nutrition Label Image
*RecipesApi* | [**recipeNutritionLabelWidget**](docs/Api/RecipesApi.md#recipenutritionlabelwidget) | **GET** /recipes/{id}/nutritionLabel | Recipe Nutrition Label Widget
*RecipesApi* | [**recipeTasteByIDImage**](docs/Api/RecipesApi.md#recipetastebyidimage) | **GET** /recipes/{id}/tasteWidget.png | Recipe Taste by ID Image
*RecipesApi* | [**searchRecipes**](docs/Api/RecipesApi.md#searchrecipes) | **GET** /recipes/complexSearch | Search Recipes
*RecipesApi* | [**searchRecipesByIngredients**](docs/Api/RecipesApi.md#searchrecipesbyingredients) | **GET** /recipes/findByIngredients | Search Recipes by Ingredients
*RecipesApi* | [**searchRecipesByNutrients**](docs/Api/RecipesApi.md#searchrecipesbynutrients) | **GET** /recipes/findByNutrients | Search Recipes by Nutrients
*RecipesApi* | [**summarizeRecipe**](docs/Api/RecipesApi.md#summarizerecipe) | **GET** /recipes/{id}/summary | Summarize Recipe
*RecipesApi* | [**visualizeEquipment**](docs/Api/RecipesApi.md#visualizeequipment) | **POST** /recipes/visualizeEquipment | Equipment Widget
*RecipesApi* | [**visualizePriceBreakdown**](docs/Api/RecipesApi.md#visualizepricebreakdown) | **POST** /recipes/visualizePriceEstimator | Price Breakdown Widget
*RecipesApi* | [**visualizeRecipeEquipmentByID**](docs/Api/RecipesApi.md#visualizerecipeequipmentbyid) | **GET** /recipes/{id}/equipmentWidget | Equipment by ID Widget
*RecipesApi* | [**visualizeRecipeIngredientsByID**](docs/Api/RecipesApi.md#visualizerecipeingredientsbyid) | **GET** /recipes/{id}/ingredientWidget | Ingredients by ID Widget
*RecipesApi* | [**visualizeRecipeNutrition**](docs/Api/RecipesApi.md#visualizerecipenutrition) | **POST** /recipes/visualizeNutrition | Recipe Nutrition Widget
*RecipesApi* | [**visualizeRecipeNutritionByID**](docs/Api/RecipesApi.md#visualizerecipenutritionbyid) | **GET** /recipes/{id}/nutritionWidget | Recipe Nutrition by ID Widget
*RecipesApi* | [**visualizeRecipePriceBreakdownByID**](docs/Api/RecipesApi.md#visualizerecipepricebreakdownbyid) | **GET** /recipes/{id}/priceBreakdownWidget | Price Breakdown by ID Widget
*RecipesApi* | [**visualizeRecipeTaste**](docs/Api/RecipesApi.md#visualizerecipetaste) | **POST** /recipes/visualizeTaste | Recipe Taste Widget
*RecipesApi* | [**visualizeRecipeTasteByID**](docs/Api/RecipesApi.md#visualizerecipetastebyid) | **GET** /recipes/{id}/tasteWidget | Recipe Taste by ID Widget
*WineApi* | [**getDishPairingForWine**](docs/Api/WineApi.md#getdishpairingforwine) | **GET** /food/wine/dishes | Dish Pairing for Wine
*WineApi* | [**getWineDescription**](docs/Api/WineApi.md#getwinedescription) | **GET** /food/wine/description | Wine Description
*WineApi* | [**getWinePairing**](docs/Api/WineApi.md#getwinepairing) | **GET** /food/wine/pairing | Wine Pairing
*WineApi* | [**getWineRecommendation**](docs/Api/WineApi.md#getwinerecommendation) | **GET** /food/wine/recommendation | Wine Recommendation

## Models

- [AddMealPlanTemplate200Response](docs/Model/AddMealPlanTemplate200Response.md)
- [AddMealPlanTemplate200ResponseItemsInner](docs/Model/AddMealPlanTemplate200ResponseItemsInner.md)
- [AddMealPlanTemplate200ResponseItemsInnerValue](docs/Model/AddMealPlanTemplate200ResponseItemsInnerValue.md)
- [AddToMealPlanRequest](docs/Model/AddToMealPlanRequest.md)
- [AddToMealPlanRequest1](docs/Model/AddToMealPlanRequest1.md)
- [AddToMealPlanRequest1Value](docs/Model/AddToMealPlanRequest1Value.md)
- [AddToMealPlanRequest1ValueIngredientsInner](docs/Model/AddToMealPlanRequest1ValueIngredientsInner.md)
- [AddToShoppingListRequest](docs/Model/AddToShoppingListRequest.md)
- [AnalyzeARecipeSearchQuery200Response](docs/Model/AnalyzeARecipeSearchQuery200Response.md)
- [AnalyzeARecipeSearchQuery200ResponseDishesInner](docs/Model/AnalyzeARecipeSearchQuery200ResponseDishesInner.md)
- [AnalyzeARecipeSearchQuery200ResponseIngredientsInner](docs/Model/AnalyzeARecipeSearchQuery200ResponseIngredientsInner.md)
- [AnalyzeRecipeInstructions200Response](docs/Model/AnalyzeRecipeInstructions200Response.md)
- [AnalyzeRecipeInstructions200ResponseIngredientsInner](docs/Model/AnalyzeRecipeInstructions200ResponseIngredientsInner.md)
- [AnalyzeRecipeInstructions200ResponseParsedInstructionsInner](docs/Model/AnalyzeRecipeInstructions200ResponseParsedInstructionsInner.md)
- [AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner](docs/Model/AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner.md)
- [AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner](docs/Model/AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner.md)
- [AnalyzeRecipeRequest](docs/Model/AnalyzeRecipeRequest.md)
- [AnalyzeRecipeRequest1](docs/Model/AnalyzeRecipeRequest1.md)
- [AutocompleteIngredientSearch200ResponseInner](docs/Model/AutocompleteIngredientSearch200ResponseInner.md)
- [AutocompleteMenuItemSearch200Response](docs/Model/AutocompleteMenuItemSearch200Response.md)
- [AutocompleteProductSearch200Response](docs/Model/AutocompleteProductSearch200Response.md)
- [AutocompleteProductSearch200ResponseResultsInner](docs/Model/AutocompleteProductSearch200ResponseResultsInner.md)
- [AutocompleteRecipeSearch200ResponseInner](docs/Model/AutocompleteRecipeSearch200ResponseInner.md)
- [ClassifyCuisine200Response](docs/Model/ClassifyCuisine200Response.md)
- [ClassifyGroceryProduct200Response](docs/Model/ClassifyGroceryProduct200Response.md)
- [ClassifyGroceryProductBulk200ResponseInner](docs/Model/ClassifyGroceryProductBulk200ResponseInner.md)
- [ClassifyGroceryProductBulkRequestInner](docs/Model/ClassifyGroceryProductBulkRequestInner.md)
- [ClassifyGroceryProductRequest](docs/Model/ClassifyGroceryProductRequest.md)
- [ClearMealPlanDayRequest](docs/Model/ClearMealPlanDayRequest.md)
- [ComputeGlycemicLoad200Response](docs/Model/ComputeGlycemicLoad200Response.md)
- [ComputeGlycemicLoad200ResponseIngredientsInner](docs/Model/ComputeGlycemicLoad200ResponseIngredientsInner.md)
- [ComputeGlycemicLoadRequest](docs/Model/ComputeGlycemicLoadRequest.md)
- [ComputeIngredientAmount200Response](docs/Model/ComputeIngredientAmount200Response.md)
- [ConnectUser200Response](docs/Model/ConnectUser200Response.md)
- [ConnectUserRequest](docs/Model/ConnectUserRequest.md)
- [ConvertAmounts200Response](docs/Model/ConvertAmounts200Response.md)
- [CreateRecipeCard200Response](docs/Model/CreateRecipeCard200Response.md)
- [DeleteFromMealPlanRequest](docs/Model/DeleteFromMealPlanRequest.md)
- [DetectFoodInText200Response](docs/Model/DetectFoodInText200Response.md)
- [DetectFoodInText200ResponseAnnotationsInner](docs/Model/DetectFoodInText200ResponseAnnotationsInner.md)
- [GenerateMealPlan200Response](docs/Model/GenerateMealPlan200Response.md)
- [GenerateMealPlan200ResponseNutrients](docs/Model/GenerateMealPlan200ResponseNutrients.md)
- [GenerateShoppingList200Response](docs/Model/GenerateShoppingList200Response.md)
- [GenerateShoppingListRequest](docs/Model/GenerateShoppingListRequest.md)
- [GetARandomFoodJoke200Response](docs/Model/GetARandomFoodJoke200Response.md)
- [GetAnalyzedRecipeInstructions200Response](docs/Model/GetAnalyzedRecipeInstructions200Response.md)
- [GetAnalyzedRecipeInstructions200ResponseIngredientsInner](docs/Model/GetAnalyzedRecipeInstructions200ResponseIngredientsInner.md)
- [GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInner](docs/Model/GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInner.md)
- [GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInner](docs/Model/GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInner.md)
- [GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner](docs/Model/GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner.md)
- [GetComparableProducts200Response](docs/Model/GetComparableProducts200Response.md)
- [GetComparableProducts200ResponseComparableProducts](docs/Model/GetComparableProducts200ResponseComparableProducts.md)
- [GetComparableProducts200ResponseComparableProductsProteinInner](docs/Model/GetComparableProducts200ResponseComparableProductsProteinInner.md)
- [GetConversationSuggests200Response](docs/Model/GetConversationSuggests200Response.md)
- [GetConversationSuggests200ResponseSuggests](docs/Model/GetConversationSuggests200ResponseSuggests.md)
- [GetConversationSuggests200ResponseSuggestsInner](docs/Model/GetConversationSuggests200ResponseSuggestsInner.md)
- [GetDishPairingForWine200Response](docs/Model/GetDishPairingForWine200Response.md)
- [GetIngredientInformation200Response](docs/Model/GetIngredientInformation200Response.md)
- [GetIngredientInformation200ResponseNutrition](docs/Model/GetIngredientInformation200ResponseNutrition.md)
- [GetIngredientSubstitutes200Response](docs/Model/GetIngredientSubstitutes200Response.md)
- [GetMealPlanTemplate200Response](docs/Model/GetMealPlanTemplate200Response.md)
- [GetMealPlanTemplate200ResponseDaysInner](docs/Model/GetMealPlanTemplate200ResponseDaysInner.md)
- [GetMealPlanTemplate200ResponseDaysInnerItemsInner](docs/Model/GetMealPlanTemplate200ResponseDaysInnerItemsInner.md)
- [GetMealPlanTemplate200ResponseDaysInnerItemsInnerValue](docs/Model/GetMealPlanTemplate200ResponseDaysInnerItemsInnerValue.md)
- [GetMealPlanTemplates200Response](docs/Model/GetMealPlanTemplates200Response.md)
- [GetMealPlanWeek200Response](docs/Model/GetMealPlanWeek200Response.md)
- [GetMealPlanWeek200ResponseDaysInner](docs/Model/GetMealPlanWeek200ResponseDaysInner.md)
- [GetMealPlanWeek200ResponseDaysInnerItemsInner](docs/Model/GetMealPlanWeek200ResponseDaysInnerItemsInner.md)
- [GetMealPlanWeek200ResponseDaysInnerItemsInnerValue](docs/Model/GetMealPlanWeek200ResponseDaysInnerItemsInnerValue.md)
- [GetMealPlanWeek200ResponseDaysInnerNutritionSummary](docs/Model/GetMealPlanWeek200ResponseDaysInnerNutritionSummary.md)
- [GetMealPlanWeek200ResponseDaysInnerNutritionSummaryNutrientsInner](docs/Model/GetMealPlanWeek200ResponseDaysInnerNutritionSummaryNutrientsInner.md)
- [GetMenuItemInformation200Response](docs/Model/GetMenuItemInformation200Response.md)
- [GetProductInformation200Response](docs/Model/GetProductInformation200Response.md)
- [GetProductInformation200ResponseIngredientsInner](docs/Model/GetProductInformation200ResponseIngredientsInner.md)
- [GetRandomFoodTrivia200Response](docs/Model/GetRandomFoodTrivia200Response.md)
- [GetRandomRecipes200Response](docs/Model/GetRandomRecipes200Response.md)
- [GetRandomRecipes200ResponseRecipesInner](docs/Model/GetRandomRecipes200ResponseRecipesInner.md)
- [GetRecipeEquipmentByID200Response](docs/Model/GetRecipeEquipmentByID200Response.md)
- [GetRecipeEquipmentByID200ResponseEquipmentInner](docs/Model/GetRecipeEquipmentByID200ResponseEquipmentInner.md)
- [GetRecipeInformation200Response](docs/Model/GetRecipeInformation200Response.md)
- [GetRecipeInformation200ResponseExtendedIngredientsInner](docs/Model/GetRecipeInformation200ResponseExtendedIngredientsInner.md)
- [GetRecipeInformation200ResponseExtendedIngredientsInnerMeasures](docs/Model/GetRecipeInformation200ResponseExtendedIngredientsInnerMeasures.md)
- [GetRecipeInformation200ResponseExtendedIngredientsInnerMeasuresMetric](docs/Model/GetRecipeInformation200ResponseExtendedIngredientsInnerMeasuresMetric.md)
- [GetRecipeInformation200ResponseWinePairing](docs/Model/GetRecipeInformation200ResponseWinePairing.md)
- [GetRecipeInformation200ResponseWinePairingProductMatchesInner](docs/Model/GetRecipeInformation200ResponseWinePairingProductMatchesInner.md)
- [GetRecipeInformationBulk200ResponseInner](docs/Model/GetRecipeInformationBulk200ResponseInner.md)
- [GetRecipeIngredientsByID200Response](docs/Model/GetRecipeIngredientsByID200Response.md)
- [GetRecipeIngredientsByID200ResponseIngredientsInner](docs/Model/GetRecipeIngredientsByID200ResponseIngredientsInner.md)
- [GetRecipeNutritionWidgetByID200Response](docs/Model/GetRecipeNutritionWidgetByID200Response.md)
- [GetRecipeNutritionWidgetByID200ResponseBadInner](docs/Model/GetRecipeNutritionWidgetByID200ResponseBadInner.md)
- [GetRecipeNutritionWidgetByID200ResponseGoodInner](docs/Model/GetRecipeNutritionWidgetByID200ResponseGoodInner.md)
- [GetRecipePriceBreakdownByID200Response](docs/Model/GetRecipePriceBreakdownByID200Response.md)
- [GetRecipePriceBreakdownByID200ResponseIngredientsInner](docs/Model/GetRecipePriceBreakdownByID200ResponseIngredientsInner.md)
- [GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount](docs/Model/GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount.md)
- [GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric](docs/Model/GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric.md)
- [GetRecipeTasteByID200Response](docs/Model/GetRecipeTasteByID200Response.md)
- [GetShoppingList200Response](docs/Model/GetShoppingList200Response.md)
- [GetShoppingList200ResponseAislesInner](docs/Model/GetShoppingList200ResponseAislesInner.md)
- [GetShoppingList200ResponseAislesInnerItemsInner](docs/Model/GetShoppingList200ResponseAislesInnerItemsInner.md)
- [GetShoppingList200ResponseAislesInnerItemsInnerMeasures](docs/Model/GetShoppingList200ResponseAislesInnerItemsInnerMeasures.md)
- [GetSimilarRecipes200ResponseInner](docs/Model/GetSimilarRecipes200ResponseInner.md)
- [GetWineDescription200Response](docs/Model/GetWineDescription200Response.md)
- [GetWinePairing200Response](docs/Model/GetWinePairing200Response.md)
- [GetWinePairing200ResponseProductMatchesInner](docs/Model/GetWinePairing200ResponseProductMatchesInner.md)
- [GetWineRecommendation200Response](docs/Model/GetWineRecommendation200Response.md)
- [GetWineRecommendation200ResponseRecommendedWinesInner](docs/Model/GetWineRecommendation200ResponseRecommendedWinesInner.md)
- [GuessNutritionByDishName200Response](docs/Model/GuessNutritionByDishName200Response.md)
- [GuessNutritionByDishName200ResponseCalories](docs/Model/GuessNutritionByDishName200ResponseCalories.md)
- [GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent](docs/Model/GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent.md)
- [ImageAnalysisByURL200Response](docs/Model/ImageAnalysisByURL200Response.md)
- [ImageAnalysisByURL200ResponseCategory](docs/Model/ImageAnalysisByURL200ResponseCategory.md)
- [ImageAnalysisByURL200ResponseNutrition](docs/Model/ImageAnalysisByURL200ResponseNutrition.md)
- [ImageAnalysisByURL200ResponseNutritionCalories](docs/Model/ImageAnalysisByURL200ResponseNutritionCalories.md)
- [ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent](docs/Model/ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent.md)
- [ImageAnalysisByURL200ResponseRecipesInner](docs/Model/ImageAnalysisByURL200ResponseRecipesInner.md)
- [ImageClassificationByURL200Response](docs/Model/ImageClassificationByURL200Response.md)
- [IngredientSearch200Response](docs/Model/IngredientSearch200Response.md)
- [IngredientSearch200ResponseResultsInner](docs/Model/IngredientSearch200ResponseResultsInner.md)
- [MapIngredientsToGroceryProducts200ResponseInner](docs/Model/MapIngredientsToGroceryProducts200ResponseInner.md)
- [MapIngredientsToGroceryProducts200ResponseInnerProductsInner](docs/Model/MapIngredientsToGroceryProducts200ResponseInnerProductsInner.md)
- [MapIngredientsToGroceryProductsRequest](docs/Model/MapIngredientsToGroceryProductsRequest.md)
- [ParseIngredients200ResponseInner](docs/Model/ParseIngredients200ResponseInner.md)
- [ParseIngredients200ResponseInnerEstimatedCost](docs/Model/ParseIngredients200ResponseInnerEstimatedCost.md)
- [ParseIngredients200ResponseInnerNutrition](docs/Model/ParseIngredients200ResponseInnerNutrition.md)
- [ParseIngredients200ResponseInnerNutritionCaloricBreakdown](docs/Model/ParseIngredients200ResponseInnerNutritionCaloricBreakdown.md)
- [ParseIngredients200ResponseInnerNutritionNutrientsInner](docs/Model/ParseIngredients200ResponseInnerNutritionNutrientsInner.md)
- [ParseIngredients200ResponseInnerNutritionPropertiesInner](docs/Model/ParseIngredients200ResponseInnerNutritionPropertiesInner.md)
- [ParseIngredients200ResponseInnerNutritionWeightPerServing](docs/Model/ParseIngredients200ResponseInnerNutritionWeightPerServing.md)
- [QuickAnswer200Response](docs/Model/QuickAnswer200Response.md)
- [SearchAllFood200Response](docs/Model/SearchAllFood200Response.md)
- [SearchAllFood200ResponseSearchResultsInner](docs/Model/SearchAllFood200ResponseSearchResultsInner.md)
- [SearchAllFood200ResponseSearchResultsInnerResultsInner](docs/Model/SearchAllFood200ResponseSearchResultsInnerResultsInner.md)
- [SearchCustomFoods200Response](docs/Model/SearchCustomFoods200Response.md)
- [SearchCustomFoods200ResponseCustomFoodsInner](docs/Model/SearchCustomFoods200ResponseCustomFoodsInner.md)
- [SearchFoodVideos200Response](docs/Model/SearchFoodVideos200Response.md)
- [SearchFoodVideos200ResponseVideosInner](docs/Model/SearchFoodVideos200ResponseVideosInner.md)
- [SearchGroceryProducts200Response](docs/Model/SearchGroceryProducts200Response.md)
- [SearchGroceryProductsByUPC200Response](docs/Model/SearchGroceryProductsByUPC200Response.md)
- [SearchGroceryProductsByUPC200ResponseIngredientsInner](docs/Model/SearchGroceryProductsByUPC200ResponseIngredientsInner.md)
- [SearchGroceryProductsByUPC200ResponseNutrition](docs/Model/SearchGroceryProductsByUPC200ResponseNutrition.md)
- [SearchGroceryProductsByUPC200ResponseServings](docs/Model/SearchGroceryProductsByUPC200ResponseServings.md)
- [SearchMenuItems200Response](docs/Model/SearchMenuItems200Response.md)
- [SearchMenuItems200ResponseMenuItemsInner](docs/Model/SearchMenuItems200ResponseMenuItemsInner.md)
- [SearchRecipes200Response](docs/Model/SearchRecipes200Response.md)
- [SearchRecipes200ResponseResultsInner](docs/Model/SearchRecipes200ResponseResultsInner.md)
- [SearchRecipesByIngredients200ResponseInner](docs/Model/SearchRecipesByIngredients200ResponseInner.md)
- [SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner](docs/Model/SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner.md)
- [SearchRecipesByNutrients200ResponseInner](docs/Model/SearchRecipesByNutrients200ResponseInner.md)
- [SearchRestaurants200Response](docs/Model/SearchRestaurants200Response.md)
- [SearchRestaurants200ResponseRestaurantsInner](docs/Model/SearchRestaurants200ResponseRestaurantsInner.md)
- [SearchRestaurants200ResponseRestaurantsInnerAddress](docs/Model/SearchRestaurants200ResponseRestaurantsInnerAddress.md)
- [SearchRestaurants200ResponseRestaurantsInnerLocalHours](docs/Model/SearchRestaurants200ResponseRestaurantsInnerLocalHours.md)
- [SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational](docs/Model/SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational.md)
- [SearchSiteContent200Response](docs/Model/SearchSiteContent200Response.md)
- [SearchSiteContent200ResponseArticlesInner](docs/Model/SearchSiteContent200ResponseArticlesInner.md)
- [SearchSiteContent200ResponseGroceryProductsInner](docs/Model/SearchSiteContent200ResponseGroceryProductsInner.md)
- [SearchSiteContent200ResponseGroceryProductsInnerDataPointsInner](docs/Model/SearchSiteContent200ResponseGroceryProductsInnerDataPointsInner.md)
- [SummarizeRecipe200Response](docs/Model/SummarizeRecipe200Response.md)
- [TalkToChatbot200Response](docs/Model/TalkToChatbot200Response.md)

## Authorization

Authentication schemes defined for the API:
### apiKeyScheme

- **Type**: API key
- **API key parameter name**: x-api-key
- **Location**: HTTP header


## Tests

To run the tests, use:

```bash
composer install
vendor/bin/phpunit
```

## Author

mail@spoonacular.com

## About this package

This PHP package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: `1.1`
    - Package version: `1.1.1`
- Build package: `org.openapitools.codegen.languages.PhpClientCodegen`
