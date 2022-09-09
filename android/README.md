# android-client

## Requirements

Building the API client library requires [Maven](https://maven.apache.org/) to be installed.

## Installation

To install the API client library to your local Maven repository, simply execute:

```shell
mvn install
```

To deploy it to a remote Maven repository instead, configure the settings of the repository and execute:

```shell
mvn deploy
```

Refer to the [official documentation](https://maven.apache.org/plugins/maven-deploy-plugin/usage.html) for more information.

### Maven users

Add this dependency to your project's POM:

```xml
<dependency>
    <groupId>com.spoonacular</groupId>
    <artifactId>android-client</artifactId>
    <version>1.1</version>
    <scope>compile</scope>
</dependency>
```

### Gradle users

Add this dependency to your project's build file:

```groovy
compile "com.spoonacular:android-client:1.1"
```

### Others

At first generate the JAR by executing:

    mvn package

Then manually install the following JARs:

- target/android-client-1.1.jar
- target/lib/*.jar

## Getting Started

Please follow the [installation](#installation) instruction and execute the following Java code:

```java

import com.spoonacular.IngredientsApi;

public class IngredientsApiExample {

    public static void main(String[] args) {
        IngredientsApi apiInstance = new IngredientsApi();
        String query = burger; // String | The (natural language) search query.
        Integer number = 10; // Integer | The maximum number of items to return (between 1 and 100). Defaults to 10.
        Boolean metaInformation = false; // Boolean | Whether to return more meta information about the ingredients.
        String intolerances = egg; // String | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.
        try {
            Set<AutocompleteIngredientSearch200ResponseInner> result = apiInstance.autocompleteIngredientSearch(query, number, metaInformation, intolerances);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling IngredientsApi#autocompleteIngredientSearch");
            e.printStackTrace();
        }
    }
}

```

## Documentation for API Endpoints

All URIs are relative to *https://api.spoonacular.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*IngredientsApi* | [**autocompleteIngredientSearch**](docs/IngredientsApi.md#autocompleteIngredientSearch) | **GET** /food/ingredients/autocomplete | Autocomplete Ingredient Search
*IngredientsApi* | [**computeIngredientAmount**](docs/IngredientsApi.md#computeIngredientAmount) | **GET** /food/ingredients/{id}/amount | Compute Ingredient Amount
*IngredientsApi* | [**getIngredientInformation**](docs/IngredientsApi.md#getIngredientInformation) | **GET** /food/ingredients/{id}/information | Get Ingredient Information
*IngredientsApi* | [**getIngredientSubstitutes**](docs/IngredientsApi.md#getIngredientSubstitutes) | **GET** /food/ingredients/substitutes | Get Ingredient Substitutes
*IngredientsApi* | [**getIngredientSubstitutesByID**](docs/IngredientsApi.md#getIngredientSubstitutesByID) | **GET** /food/ingredients/{id}/substitutes | Get Ingredient Substitutes by ID
*IngredientsApi* | [**ingredientSearch**](docs/IngredientsApi.md#ingredientSearch) | **GET** /food/ingredients/search | Ingredient Search
*IngredientsApi* | [**ingredientsByIDImage**](docs/IngredientsApi.md#ingredientsByIDImage) | **GET** /recipes/{id}/ingredientWidget.png | Ingredients by ID Image
*IngredientsApi* | [**mapIngredientsToGroceryProducts**](docs/IngredientsApi.md#mapIngredientsToGroceryProducts) | **POST** /food/ingredients/map | Map Ingredients to Grocery Products
*IngredientsApi* | [**visualizeIngredients**](docs/IngredientsApi.md#visualizeIngredients) | **POST** /recipes/visualizeIngredients | Ingredients Widget
*MealPlanningApi* | [**addMealPlanTemplate**](docs/MealPlanningApi.md#addMealPlanTemplate) | **POST** /mealplanner/{username}/templates | Add Meal Plan Template
*MealPlanningApi* | [**addToMealPlan**](docs/MealPlanningApi.md#addToMealPlan) | **POST** /mealplanner/{username}/items | Add to Meal Plan
*MealPlanningApi* | [**addToShoppingList**](docs/MealPlanningApi.md#addToShoppingList) | **POST** /mealplanner/{username}/shopping-list/items | Add to Shopping List
*MealPlanningApi* | [**clearMealPlanDay**](docs/MealPlanningApi.md#clearMealPlanDay) | **DELETE** /mealplanner/{username}/day/{date} | Clear Meal Plan Day
*MealPlanningApi* | [**connectUser**](docs/MealPlanningApi.md#connectUser) | **POST** /users/connect | Connect User
*MealPlanningApi* | [**deleteFromMealPlan**](docs/MealPlanningApi.md#deleteFromMealPlan) | **DELETE** /mealplanner/{username}/items/{id} | Delete from Meal Plan
*MealPlanningApi* | [**deleteFromShoppingList**](docs/MealPlanningApi.md#deleteFromShoppingList) | **DELETE** /mealplanner/{username}/shopping-list/items/{id} | Delete from Shopping List
*MealPlanningApi* | [**deleteMealPlanTemplate**](docs/MealPlanningApi.md#deleteMealPlanTemplate) | **DELETE** /mealplanner/{username}/templates/{id} | Delete Meal Plan Template
*MealPlanningApi* | [**generateMealPlan**](docs/MealPlanningApi.md#generateMealPlan) | **GET** /mealplanner/generate | Generate Meal Plan
*MealPlanningApi* | [**generateShoppingList**](docs/MealPlanningApi.md#generateShoppingList) | **POST** /mealplanner/{username}/shopping-list/{start-date}/{end-date} | Generate Shopping List
*MealPlanningApi* | [**getMealPlanTemplate**](docs/MealPlanningApi.md#getMealPlanTemplate) | **GET** /mealplanner/{username}/templates/{id} | Get Meal Plan Template
*MealPlanningApi* | [**getMealPlanTemplates**](docs/MealPlanningApi.md#getMealPlanTemplates) | **GET** /mealplanner/{username}/templates | Get Meal Plan Templates
*MealPlanningApi* | [**getMealPlanWeek**](docs/MealPlanningApi.md#getMealPlanWeek) | **GET** /mealplanner/{username}/week/{start-date} | Get Meal Plan Week
*MealPlanningApi* | [**getShoppingList**](docs/MealPlanningApi.md#getShoppingList) | **GET** /mealplanner/{username}/shopping-list | Get Shopping List
*MenuItemsApi* | [**autocompleteMenuItemSearch**](docs/MenuItemsApi.md#autocompleteMenuItemSearch) | **GET** /food/menuItems/suggest | Autocomplete Menu Item Search
*MenuItemsApi* | [**getMenuItemInformation**](docs/MenuItemsApi.md#getMenuItemInformation) | **GET** /food/menuItems/{id} | Get Menu Item Information
*MenuItemsApi* | [**menuItemNutritionByIDImage**](docs/MenuItemsApi.md#menuItemNutritionByIDImage) | **GET** /food/menuItems/{id}/nutritionWidget.png | Menu Item Nutrition by ID Image
*MenuItemsApi* | [**menuItemNutritionLabelImage**](docs/MenuItemsApi.md#menuItemNutritionLabelImage) | **GET** /food/menuItems/{id}/nutritionLabel.png | Menu Item Nutrition Label Image
*MenuItemsApi* | [**menuItemNutritionLabelWidget**](docs/MenuItemsApi.md#menuItemNutritionLabelWidget) | **GET** /food/menuItems/{id}/nutritionLabel | Menu Item Nutrition Label Widget
*MenuItemsApi* | [**searchMenuItems**](docs/MenuItemsApi.md#searchMenuItems) | **GET** /food/menuItems/search | Search Menu Items
*MenuItemsApi* | [**visualizeMenuItemNutritionByID**](docs/MenuItemsApi.md#visualizeMenuItemNutritionByID) | **GET** /food/menuItems/{id}/nutritionWidget | Menu Item Nutrition by ID Widget
*MiscApi* | [**detectFoodInText**](docs/MiscApi.md#detectFoodInText) | **POST** /food/detect | Detect Food in Text
*MiscApi* | [**getARandomFoodJoke**](docs/MiscApi.md#getARandomFoodJoke) | **GET** /food/jokes/random | Random Food Joke
*MiscApi* | [**getConversationSuggests**](docs/MiscApi.md#getConversationSuggests) | **GET** /food/converse/suggest | Conversation Suggests
*MiscApi* | [**getRandomFoodTrivia**](docs/MiscApi.md#getRandomFoodTrivia) | **GET** /food/trivia/random | Random Food Trivia
*MiscApi* | [**imageAnalysisByURL**](docs/MiscApi.md#imageAnalysisByURL) | **GET** /food/images/analyze | Image Analysis by URL
*MiscApi* | [**imageClassificationByURL**](docs/MiscApi.md#imageClassificationByURL) | **GET** /food/images/classify | Image Classification by URL
*MiscApi* | [**searchAllFood**](docs/MiscApi.md#searchAllFood) | **GET** /food/search | Search All Food
*MiscApi* | [**searchCustomFoods**](docs/MiscApi.md#searchCustomFoods) | **GET** /food/customFoods/search | Search Custom Foods
*MiscApi* | [**searchFoodVideos**](docs/MiscApi.md#searchFoodVideos) | **GET** /food/videos/search | Search Food Videos
*MiscApi* | [**searchSiteContent**](docs/MiscApi.md#searchSiteContent) | **GET** /food/site/search | Search Site Content
*MiscApi* | [**talkToChatbot**](docs/MiscApi.md#talkToChatbot) | **GET** /food/converse | Talk to Chatbot
*ProductsApi* | [**autocompleteProductSearch**](docs/ProductsApi.md#autocompleteProductSearch) | **GET** /food/products/suggest | Autocomplete Product Search
*ProductsApi* | [**classifyGroceryProduct**](docs/ProductsApi.md#classifyGroceryProduct) | **POST** /food/products/classify | Classify Grocery Product
*ProductsApi* | [**classifyGroceryProductBulk**](docs/ProductsApi.md#classifyGroceryProductBulk) | **POST** /food/products/classifyBatch | Classify Grocery Product Bulk
*ProductsApi* | [**getComparableProducts**](docs/ProductsApi.md#getComparableProducts) | **GET** /food/products/upc/{upc}/comparable | Get Comparable Products
*ProductsApi* | [**getProductInformation**](docs/ProductsApi.md#getProductInformation) | **GET** /food/products/{id} | Get Product Information
*ProductsApi* | [**productNutritionByIDImage**](docs/ProductsApi.md#productNutritionByIDImage) | **GET** /food/products/{id}/nutritionWidget.png | Product Nutrition by ID Image
*ProductsApi* | [**productNutritionLabelImage**](docs/ProductsApi.md#productNutritionLabelImage) | **GET** /food/products/{id}/nutritionLabel.png | Product Nutrition Label Image
*ProductsApi* | [**productNutritionLabelWidget**](docs/ProductsApi.md#productNutritionLabelWidget) | **GET** /food/products/{id}/nutritionLabel | Product Nutrition Label Widget
*ProductsApi* | [**searchGroceryProducts**](docs/ProductsApi.md#searchGroceryProducts) | **GET** /food/products/search | Search Grocery Products
*ProductsApi* | [**searchGroceryProductsByUPC**](docs/ProductsApi.md#searchGroceryProductsByUPC) | **GET** /food/products/upc/{upc} | Search Grocery Products by UPC
*ProductsApi* | [**visualizeProductNutritionByID**](docs/ProductsApi.md#visualizeProductNutritionByID) | **GET** /food/products/{id}/nutritionWidget | Product Nutrition by ID Widget
*RecipesApi* | [**analyzeARecipeSearchQuery**](docs/RecipesApi.md#analyzeARecipeSearchQuery) | **GET** /recipes/queries/analyze | Analyze a Recipe Search Query
*RecipesApi* | [**analyzeRecipeInstructions**](docs/RecipesApi.md#analyzeRecipeInstructions) | **POST** /recipes/analyzeInstructions | Analyze Recipe Instructions
*RecipesApi* | [**autocompleteRecipeSearch**](docs/RecipesApi.md#autocompleteRecipeSearch) | **GET** /recipes/autocomplete | Autocomplete Recipe Search
*RecipesApi* | [**classifyCuisine**](docs/RecipesApi.md#classifyCuisine) | **POST** /recipes/cuisine | Classify Cuisine
*RecipesApi* | [**computeGlycemicLoad**](docs/RecipesApi.md#computeGlycemicLoad) | **POST** /food/ingredients/glycemicLoad | Compute Glycemic Load
*RecipesApi* | [**convertAmounts**](docs/RecipesApi.md#convertAmounts) | **GET** /recipes/convert | Convert Amounts
*RecipesApi* | [**createRecipeCard**](docs/RecipesApi.md#createRecipeCard) | **POST** /recipes/visualizeRecipe | Create Recipe Card
*RecipesApi* | [**equipmentByIDImage**](docs/RecipesApi.md#equipmentByIDImage) | **GET** /recipes/{id}/equipmentWidget.png | Equipment by ID Image
*RecipesApi* | [**extractRecipeFromWebsite**](docs/RecipesApi.md#extractRecipeFromWebsite) | **GET** /recipes/extract | Extract Recipe from Website
*RecipesApi* | [**getAnalyzedRecipeInstructions**](docs/RecipesApi.md#getAnalyzedRecipeInstructions) | **GET** /recipes/{id}/analyzedInstructions | Get Analyzed Recipe Instructions
*RecipesApi* | [**getRandomRecipes**](docs/RecipesApi.md#getRandomRecipes) | **GET** /recipes/random | Get Random Recipes
*RecipesApi* | [**getRecipeEquipmentByID**](docs/RecipesApi.md#getRecipeEquipmentByID) | **GET** /recipes/{id}/equipmentWidget.json | Equipment by ID
*RecipesApi* | [**getRecipeInformation**](docs/RecipesApi.md#getRecipeInformation) | **GET** /recipes/{id}/information | Get Recipe Information
*RecipesApi* | [**getRecipeInformationBulk**](docs/RecipesApi.md#getRecipeInformationBulk) | **GET** /recipes/informationBulk | Get Recipe Information Bulk
*RecipesApi* | [**getRecipeIngredientsByID**](docs/RecipesApi.md#getRecipeIngredientsByID) | **GET** /recipes/{id}/ingredientWidget.json | Ingredients by ID
*RecipesApi* | [**getRecipeNutritionWidgetByID**](docs/RecipesApi.md#getRecipeNutritionWidgetByID) | **GET** /recipes/{id}/nutritionWidget.json | Nutrition by ID
*RecipesApi* | [**getRecipePriceBreakdownByID**](docs/RecipesApi.md#getRecipePriceBreakdownByID) | **GET** /recipes/{id}/priceBreakdownWidget.json | Price Breakdown by ID
*RecipesApi* | [**getRecipeTasteByID**](docs/RecipesApi.md#getRecipeTasteByID) | **GET** /recipes/{id}/tasteWidget.json | Taste by ID
*RecipesApi* | [**getSimilarRecipes**](docs/RecipesApi.md#getSimilarRecipes) | **GET** /recipes/{id}/similar | Get Similar Recipes
*RecipesApi* | [**guessNutritionByDishName**](docs/RecipesApi.md#guessNutritionByDishName) | **GET** /recipes/guessNutrition | Guess Nutrition by Dish Name
*RecipesApi* | [**ingredientsByIDImage**](docs/RecipesApi.md#ingredientsByIDImage) | **GET** /recipes/{id}/ingredientWidget.png | Ingredients by ID Image
*RecipesApi* | [**parseIngredients**](docs/RecipesApi.md#parseIngredients) | **POST** /recipes/parseIngredients | Parse Ingredients
*RecipesApi* | [**priceBreakdownByIDImage**](docs/RecipesApi.md#priceBreakdownByIDImage) | **GET** /recipes/{id}/priceBreakdownWidget.png | Price Breakdown by ID Image
*RecipesApi* | [**quickAnswer**](docs/RecipesApi.md#quickAnswer) | **GET** /recipes/quickAnswer | Quick Answer
*RecipesApi* | [**recipeNutritionByIDImage**](docs/RecipesApi.md#recipeNutritionByIDImage) | **GET** /recipes/{id}/nutritionWidget.png | Recipe Nutrition by ID Image
*RecipesApi* | [**recipeNutritionLabelImage**](docs/RecipesApi.md#recipeNutritionLabelImage) | **GET** /recipes/{id}/nutritionLabel.png | Recipe Nutrition Label Image
*RecipesApi* | [**recipeNutritionLabelWidget**](docs/RecipesApi.md#recipeNutritionLabelWidget) | **GET** /recipes/{id}/nutritionLabel | Recipe Nutrition Label Widget
*RecipesApi* | [**recipeTasteByIDImage**](docs/RecipesApi.md#recipeTasteByIDImage) | **GET** /recipes/{id}/tasteWidget.png | Recipe Taste by ID Image
*RecipesApi* | [**searchRecipes**](docs/RecipesApi.md#searchRecipes) | **GET** /recipes/complexSearch | Search Recipes
*RecipesApi* | [**searchRecipesByIngredients**](docs/RecipesApi.md#searchRecipesByIngredients) | **GET** /recipes/findByIngredients | Search Recipes by Ingredients
*RecipesApi* | [**searchRecipesByNutrients**](docs/RecipesApi.md#searchRecipesByNutrients) | **GET** /recipes/findByNutrients | Search Recipes by Nutrients
*RecipesApi* | [**summarizeRecipe**](docs/RecipesApi.md#summarizeRecipe) | **GET** /recipes/{id}/summary | Summarize Recipe
*RecipesApi* | [**visualizeEquipment**](docs/RecipesApi.md#visualizeEquipment) | **POST** /recipes/visualizeEquipment | Equipment Widget
*RecipesApi* | [**visualizePriceBreakdown**](docs/RecipesApi.md#visualizePriceBreakdown) | **POST** /recipes/visualizePriceEstimator | Price Breakdown Widget
*RecipesApi* | [**visualizeRecipeEquipmentByID**](docs/RecipesApi.md#visualizeRecipeEquipmentByID) | **GET** /recipes/{id}/equipmentWidget | Equipment by ID Widget
*RecipesApi* | [**visualizeRecipeIngredientsByID**](docs/RecipesApi.md#visualizeRecipeIngredientsByID) | **GET** /recipes/{id}/ingredientWidget | Ingredients by ID Widget
*RecipesApi* | [**visualizeRecipeNutrition**](docs/RecipesApi.md#visualizeRecipeNutrition) | **POST** /recipes/visualizeNutrition | Recipe Nutrition Widget
*RecipesApi* | [**visualizeRecipeNutritionByID**](docs/RecipesApi.md#visualizeRecipeNutritionByID) | **GET** /recipes/{id}/nutritionWidget | Recipe Nutrition by ID Widget
*RecipesApi* | [**visualizeRecipePriceBreakdownByID**](docs/RecipesApi.md#visualizeRecipePriceBreakdownByID) | **GET** /recipes/{id}/priceBreakdownWidget | Price Breakdown by ID Widget
*RecipesApi* | [**visualizeRecipeTaste**](docs/RecipesApi.md#visualizeRecipeTaste) | **POST** /recipes/visualizeTaste | Recipe Taste Widget
*RecipesApi* | [**visualizeRecipeTasteByID**](docs/RecipesApi.md#visualizeRecipeTasteByID) | **GET** /recipes/{id}/tasteWidget | Recipe Taste by ID Widget
*WineApi* | [**getDishPairingForWine**](docs/WineApi.md#getDishPairingForWine) | **GET** /food/wine/dishes | Dish Pairing for Wine
*WineApi* | [**getWineDescription**](docs/WineApi.md#getWineDescription) | **GET** /food/wine/description | Wine Description
*WineApi* | [**getWinePairing**](docs/WineApi.md#getWinePairing) | **GET** /food/wine/pairing | Wine Pairing
*WineApi* | [**getWineRecommendation**](docs/WineApi.md#getWineRecommendation) | **GET** /food/wine/recommendation | Wine Recommendation


## Documentation for Models

 - [AddMealPlanTemplate200Response](docs/AddMealPlanTemplate200Response.md)
 - [AddMealPlanTemplate200ResponseItemsInner](docs/AddMealPlanTemplate200ResponseItemsInner.md)
 - [AddMealPlanTemplate200ResponseItemsInnerValue](docs/AddMealPlanTemplate200ResponseItemsInnerValue.md)
 - [AddToMealPlanRequest](docs/AddToMealPlanRequest.md)
 - [AddToMealPlanRequest1](docs/AddToMealPlanRequest1.md)
 - [AddToMealPlanRequest1Value](docs/AddToMealPlanRequest1Value.md)
 - [AddToMealPlanRequest1ValueIngredientsInner](docs/AddToMealPlanRequest1ValueIngredientsInner.md)
 - [AddToShoppingListRequest](docs/AddToShoppingListRequest.md)
 - [AnalyzeARecipeSearchQuery200Response](docs/AnalyzeARecipeSearchQuery200Response.md)
 - [AnalyzeARecipeSearchQuery200ResponseDishesInner](docs/AnalyzeARecipeSearchQuery200ResponseDishesInner.md)
 - [AnalyzeARecipeSearchQuery200ResponseIngredientsInner](docs/AnalyzeARecipeSearchQuery200ResponseIngredientsInner.md)
 - [AnalyzeRecipeInstructions200Response](docs/AnalyzeRecipeInstructions200Response.md)
 - [AnalyzeRecipeInstructions200ResponseIngredientsInner](docs/AnalyzeRecipeInstructions200ResponseIngredientsInner.md)
 - [AnalyzeRecipeInstructions200ResponseParsedInstructionsInner](docs/AnalyzeRecipeInstructions200ResponseParsedInstructionsInner.md)
 - [AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner](docs/AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner.md)
 - [AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner](docs/AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner.md)
 - [AutocompleteIngredientSearch200ResponseInner](docs/AutocompleteIngredientSearch200ResponseInner.md)
 - [AutocompleteMenuItemSearch200Response](docs/AutocompleteMenuItemSearch200Response.md)
 - [AutocompleteProductSearch200Response](docs/AutocompleteProductSearch200Response.md)
 - [AutocompleteProductSearch200ResponseResultsInner](docs/AutocompleteProductSearch200ResponseResultsInner.md)
 - [AutocompleteRecipeSearch200ResponseInner](docs/AutocompleteRecipeSearch200ResponseInner.md)
 - [ClassifyCuisine200Response](docs/ClassifyCuisine200Response.md)
 - [ClassifyGroceryProduct200Response](docs/ClassifyGroceryProduct200Response.md)
 - [ClassifyGroceryProductBulk200ResponseInner](docs/ClassifyGroceryProductBulk200ResponseInner.md)
 - [ClassifyGroceryProductBulkRequestInner](docs/ClassifyGroceryProductBulkRequestInner.md)
 - [ClassifyGroceryProductRequest](docs/ClassifyGroceryProductRequest.md)
 - [ClearMealPlanDayRequest](docs/ClearMealPlanDayRequest.md)
 - [ComputeGlycemicLoad200Response](docs/ComputeGlycemicLoad200Response.md)
 - [ComputeGlycemicLoad200ResponseIngredientsInner](docs/ComputeGlycemicLoad200ResponseIngredientsInner.md)
 - [ComputeGlycemicLoadRequest](docs/ComputeGlycemicLoadRequest.md)
 - [ComputeIngredientAmount200Response](docs/ComputeIngredientAmount200Response.md)
 - [ConnectUser200Response](docs/ConnectUser200Response.md)
 - [ConnectUserRequest](docs/ConnectUserRequest.md)
 - [ConvertAmounts200Response](docs/ConvertAmounts200Response.md)
 - [CreateRecipeCard200Response](docs/CreateRecipeCard200Response.md)
 - [DeleteFromMealPlanRequest](docs/DeleteFromMealPlanRequest.md)
 - [DetectFoodInText200Response](docs/DetectFoodInText200Response.md)
 - [DetectFoodInText200ResponseAnnotationsInner](docs/DetectFoodInText200ResponseAnnotationsInner.md)
 - [GenerateMealPlan200Response](docs/GenerateMealPlan200Response.md)
 - [GenerateMealPlan200ResponseNutrients](docs/GenerateMealPlan200ResponseNutrients.md)
 - [GenerateShoppingList200Response](docs/GenerateShoppingList200Response.md)
 - [GenerateShoppingListRequest](docs/GenerateShoppingListRequest.md)
 - [GetARandomFoodJoke200Response](docs/GetARandomFoodJoke200Response.md)
 - [GetAnalyzedRecipeInstructions200Response](docs/GetAnalyzedRecipeInstructions200Response.md)
 - [GetAnalyzedRecipeInstructions200ResponseIngredientsInner](docs/GetAnalyzedRecipeInstructions200ResponseIngredientsInner.md)
 - [GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInner](docs/GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInner.md)
 - [GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInner](docs/GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInner.md)
 - [GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner](docs/GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner.md)
 - [GetComparableProducts200Response](docs/GetComparableProducts200Response.md)
 - [GetComparableProducts200ResponseComparableProducts](docs/GetComparableProducts200ResponseComparableProducts.md)
 - [GetComparableProducts200ResponseComparableProductsProteinInner](docs/GetComparableProducts200ResponseComparableProductsProteinInner.md)
 - [GetConversationSuggests200Response](docs/GetConversationSuggests200Response.md)
 - [GetConversationSuggests200ResponseSuggests](docs/GetConversationSuggests200ResponseSuggests.md)
 - [GetConversationSuggests200ResponseSuggestsInner](docs/GetConversationSuggests200ResponseSuggestsInner.md)
 - [GetDishPairingForWine200Response](docs/GetDishPairingForWine200Response.md)
 - [GetIngredientInformation200Response](docs/GetIngredientInformation200Response.md)
 - [GetIngredientInformation200ResponseNutrition](docs/GetIngredientInformation200ResponseNutrition.md)
 - [GetIngredientSubstitutes200Response](docs/GetIngredientSubstitutes200Response.md)
 - [GetMealPlanTemplate200Response](docs/GetMealPlanTemplate200Response.md)
 - [GetMealPlanTemplate200ResponseDaysInner](docs/GetMealPlanTemplate200ResponseDaysInner.md)
 - [GetMealPlanTemplate200ResponseDaysInnerItemsInner](docs/GetMealPlanTemplate200ResponseDaysInnerItemsInner.md)
 - [GetMealPlanTemplate200ResponseDaysInnerItemsInnerValue](docs/GetMealPlanTemplate200ResponseDaysInnerItemsInnerValue.md)
 - [GetMealPlanTemplates200Response](docs/GetMealPlanTemplates200Response.md)
 - [GetMealPlanWeek200Response](docs/GetMealPlanWeek200Response.md)
 - [GetMealPlanWeek200ResponseDaysInner](docs/GetMealPlanWeek200ResponseDaysInner.md)
 - [GetMealPlanWeek200ResponseDaysInnerItemsInner](docs/GetMealPlanWeek200ResponseDaysInnerItemsInner.md)
 - [GetMealPlanWeek200ResponseDaysInnerItemsInnerValue](docs/GetMealPlanWeek200ResponseDaysInnerItemsInnerValue.md)
 - [GetMealPlanWeek200ResponseDaysInnerNutritionSummary](docs/GetMealPlanWeek200ResponseDaysInnerNutritionSummary.md)
 - [GetMealPlanWeek200ResponseDaysInnerNutritionSummaryNutrientsInner](docs/GetMealPlanWeek200ResponseDaysInnerNutritionSummaryNutrientsInner.md)
 - [GetMenuItemInformation200Response](docs/GetMenuItemInformation200Response.md)
 - [GetProductInformation200Response](docs/GetProductInformation200Response.md)
 - [GetProductInformation200ResponseIngredientsInner](docs/GetProductInformation200ResponseIngredientsInner.md)
 - [GetRandomFoodTrivia200Response](docs/GetRandomFoodTrivia200Response.md)
 - [GetRandomRecipes200Response](docs/GetRandomRecipes200Response.md)
 - [GetRandomRecipes200ResponseRecipesInner](docs/GetRandomRecipes200ResponseRecipesInner.md)
 - [GetRecipeEquipmentByID200Response](docs/GetRecipeEquipmentByID200Response.md)
 - [GetRecipeEquipmentByID200ResponseEquipmentInner](docs/GetRecipeEquipmentByID200ResponseEquipmentInner.md)
 - [GetRecipeInformation200Response](docs/GetRecipeInformation200Response.md)
 - [GetRecipeInformation200ResponseExtendedIngredientsInner](docs/GetRecipeInformation200ResponseExtendedIngredientsInner.md)
 - [GetRecipeInformation200ResponseExtendedIngredientsInnerMeasures](docs/GetRecipeInformation200ResponseExtendedIngredientsInnerMeasures.md)
 - [GetRecipeInformation200ResponseExtendedIngredientsInnerMeasuresMetric](docs/GetRecipeInformation200ResponseExtendedIngredientsInnerMeasuresMetric.md)
 - [GetRecipeInformation200ResponseWinePairing](docs/GetRecipeInformation200ResponseWinePairing.md)
 - [GetRecipeInformation200ResponseWinePairingProductMatchesInner](docs/GetRecipeInformation200ResponseWinePairingProductMatchesInner.md)
 - [GetRecipeInformationBulk200ResponseInner](docs/GetRecipeInformationBulk200ResponseInner.md)
 - [GetRecipeIngredientsByID200Response](docs/GetRecipeIngredientsByID200Response.md)
 - [GetRecipeIngredientsByID200ResponseIngredientsInner](docs/GetRecipeIngredientsByID200ResponseIngredientsInner.md)
 - [GetRecipeNutritionWidgetByID200Response](docs/GetRecipeNutritionWidgetByID200Response.md)
 - [GetRecipeNutritionWidgetByID200ResponseBadInner](docs/GetRecipeNutritionWidgetByID200ResponseBadInner.md)
 - [GetRecipeNutritionWidgetByID200ResponseGoodInner](docs/GetRecipeNutritionWidgetByID200ResponseGoodInner.md)
 - [GetRecipePriceBreakdownByID200Response](docs/GetRecipePriceBreakdownByID200Response.md)
 - [GetRecipePriceBreakdownByID200ResponseIngredientsInner](docs/GetRecipePriceBreakdownByID200ResponseIngredientsInner.md)
 - [GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount](docs/GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount.md)
 - [GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric](docs/GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric.md)
 - [GetRecipeTasteByID200Response](docs/GetRecipeTasteByID200Response.md)
 - [GetShoppingList200Response](docs/GetShoppingList200Response.md)
 - [GetShoppingList200ResponseAislesInner](docs/GetShoppingList200ResponseAislesInner.md)
 - [GetShoppingList200ResponseAislesInnerItemsInner](docs/GetShoppingList200ResponseAislesInnerItemsInner.md)
 - [GetShoppingList200ResponseAislesInnerItemsInnerMeasures](docs/GetShoppingList200ResponseAislesInnerItemsInnerMeasures.md)
 - [GetSimilarRecipes200ResponseInner](docs/GetSimilarRecipes200ResponseInner.md)
 - [GetWineDescription200Response](docs/GetWineDescription200Response.md)
 - [GetWinePairing200Response](docs/GetWinePairing200Response.md)
 - [GetWinePairing200ResponseProductMatchesInner](docs/GetWinePairing200ResponseProductMatchesInner.md)
 - [GetWineRecommendation200Response](docs/GetWineRecommendation200Response.md)
 - [GetWineRecommendation200ResponseRecommendedWinesInner](docs/GetWineRecommendation200ResponseRecommendedWinesInner.md)
 - [GuessNutritionByDishName200Response](docs/GuessNutritionByDishName200Response.md)
 - [GuessNutritionByDishName200ResponseCalories](docs/GuessNutritionByDishName200ResponseCalories.md)
 - [GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent](docs/GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent.md)
 - [ImageAnalysisByURL200Response](docs/ImageAnalysisByURL200Response.md)
 - [ImageAnalysisByURL200ResponseCategory](docs/ImageAnalysisByURL200ResponseCategory.md)
 - [ImageAnalysisByURL200ResponseNutrition](docs/ImageAnalysisByURL200ResponseNutrition.md)
 - [ImageAnalysisByURL200ResponseNutritionCalories](docs/ImageAnalysisByURL200ResponseNutritionCalories.md)
 - [ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent](docs/ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent.md)
 - [ImageAnalysisByURL200ResponseRecipesInner](docs/ImageAnalysisByURL200ResponseRecipesInner.md)
 - [ImageClassificationByURL200Response](docs/ImageClassificationByURL200Response.md)
 - [IngredientSearch200Response](docs/IngredientSearch200Response.md)
 - [IngredientSearch200ResponseResultsInner](docs/IngredientSearch200ResponseResultsInner.md)
 - [MapIngredientsToGroceryProducts200ResponseInner](docs/MapIngredientsToGroceryProducts200ResponseInner.md)
 - [MapIngredientsToGroceryProducts200ResponseInnerProductsInner](docs/MapIngredientsToGroceryProducts200ResponseInnerProductsInner.md)
 - [MapIngredientsToGroceryProductsRequest](docs/MapIngredientsToGroceryProductsRequest.md)
 - [ParseIngredients200ResponseInner](docs/ParseIngredients200ResponseInner.md)
 - [ParseIngredients200ResponseInnerEstimatedCost](docs/ParseIngredients200ResponseInnerEstimatedCost.md)
 - [ParseIngredients200ResponseInnerNutrition](docs/ParseIngredients200ResponseInnerNutrition.md)
 - [ParseIngredients200ResponseInnerNutritionCaloricBreakdown](docs/ParseIngredients200ResponseInnerNutritionCaloricBreakdown.md)
 - [ParseIngredients200ResponseInnerNutritionNutrientsInner](docs/ParseIngredients200ResponseInnerNutritionNutrientsInner.md)
 - [ParseIngredients200ResponseInnerNutritionPropertiesInner](docs/ParseIngredients200ResponseInnerNutritionPropertiesInner.md)
 - [ParseIngredients200ResponseInnerNutritionWeightPerServing](docs/ParseIngredients200ResponseInnerNutritionWeightPerServing.md)
 - [QuickAnswer200Response](docs/QuickAnswer200Response.md)
 - [SearchAllFood200Response](docs/SearchAllFood200Response.md)
 - [SearchAllFood200ResponseSearchResultsInner](docs/SearchAllFood200ResponseSearchResultsInner.md)
 - [SearchAllFood200ResponseSearchResultsInnerResultsInner](docs/SearchAllFood200ResponseSearchResultsInnerResultsInner.md)
 - [SearchCustomFoods200Response](docs/SearchCustomFoods200Response.md)
 - [SearchCustomFoods200ResponseCustomFoodsInner](docs/SearchCustomFoods200ResponseCustomFoodsInner.md)
 - [SearchFoodVideos200Response](docs/SearchFoodVideos200Response.md)
 - [SearchFoodVideos200ResponseVideosInner](docs/SearchFoodVideos200ResponseVideosInner.md)
 - [SearchGroceryProducts200Response](docs/SearchGroceryProducts200Response.md)
 - [SearchGroceryProductsByUPC200Response](docs/SearchGroceryProductsByUPC200Response.md)
 - [SearchGroceryProductsByUPC200ResponseIngredientsInner](docs/SearchGroceryProductsByUPC200ResponseIngredientsInner.md)
 - [SearchGroceryProductsByUPC200ResponseNutrition](docs/SearchGroceryProductsByUPC200ResponseNutrition.md)
 - [SearchGroceryProductsByUPC200ResponseServings](docs/SearchGroceryProductsByUPC200ResponseServings.md)
 - [SearchMenuItems200Response](docs/SearchMenuItems200Response.md)
 - [SearchMenuItems200ResponseMenuItemsInner](docs/SearchMenuItems200ResponseMenuItemsInner.md)
 - [SearchRecipes200Response](docs/SearchRecipes200Response.md)
 - [SearchRecipes200ResponseResultsInner](docs/SearchRecipes200ResponseResultsInner.md)
 - [SearchRecipesByIngredients200ResponseInner](docs/SearchRecipesByIngredients200ResponseInner.md)
 - [SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner](docs/SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner.md)
 - [SearchRecipesByNutrients200ResponseInner](docs/SearchRecipesByNutrients200ResponseInner.md)
 - [SearchSiteContent200Response](docs/SearchSiteContent200Response.md)
 - [SearchSiteContent200ResponseArticlesInner](docs/SearchSiteContent200ResponseArticlesInner.md)
 - [SearchSiteContent200ResponseGroceryProductsInner](docs/SearchSiteContent200ResponseGroceryProductsInner.md)
 - [SearchSiteContent200ResponseGroceryProductsInnerDataPointsInner](docs/SearchSiteContent200ResponseGroceryProductsInnerDataPointsInner.md)
 - [SummarizeRecipe200Response](docs/SummarizeRecipe200Response.md)
 - [TalkToChatbot200Response](docs/TalkToChatbot200Response.md)


## Documentation for Authorization

Authentication schemes defined for the API:
### apiKeyScheme

- **Type**: API key

- **API key parameter name**: x-api-key
- **Location**: HTTP header


## Recommendation

It's recommended to create an instance of `ApiClient` per thread in a multithreaded environment to avoid any potential issues.

## Author

mail@spoonacular.com

