//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for RecipesApi
void main() {
  // final instance = RecipesApi();

  group('tests for RecipesApi', () {
    // Analyze a Recipe Search Query
    //
    // Parse a recipe search query to find out its intention.
    //
    //Future<AnalyzeARecipeSearchQuery200Response> analyzeARecipeSearchQuery(String q) async
    test('test analyzeARecipeSearchQuery', () async {
      // TODO
    });

    // Analyze Recipe Instructions
    //
    // This endpoint allows you to break down instructions into atomic steps. Furthermore, each step will contain the ingredients and equipment required. Additionally, all ingredients and equipment from the recipe's instructions will be extracted independently of the step they're used in.
    //
    //Future<AnalyzeRecipeInstructions200Response> analyzeRecipeInstructions(String instructions) async
    test('test analyzeRecipeInstructions', () async {
      // TODO
    });

    // Autocomplete Recipe Search
    //
    // Autocomplete a partial input to suggest possible recipe names.
    //
    //Future<Set<AutocompleteRecipeSearch200ResponseInner>> autocompleteRecipeSearch(String query, { int number }) async
    test('test autocompleteRecipeSearch', () async {
      // TODO
    });

    // Classify Cuisine
    //
    // Classify the recipe's cuisine.
    //
    //Future<ClassifyCuisine200Response> classifyCuisine(String title, String ingredientList, { String language }) async
    test('test classifyCuisine', () async {
      // TODO
    });

    // Compute Glycemic Load
    //
    // Retrieve the glycemic index for a list of ingredients and compute the individual and total glycemic load.
    //
    //Future<ComputeGlycemicLoad200Response> computeGlycemicLoad(ComputeGlycemicLoadRequest computeGlycemicLoadRequest, { String language }) async
    test('test computeGlycemicLoad', () async {
      // TODO
    });

    // Convert Amounts
    //
    // Convert amounts like \"2 cups of flour to grams\".
    //
    //Future<ConvertAmounts200Response> convertAmounts(String ingredientName, num sourceAmount, String sourceUnit, String targetUnit) async
    test('test convertAmounts', () async {
      // TODO
    });

    // Create Recipe Card
    //
    // Generate a recipe card for a recipe.
    //
    //Future<CreateRecipeCard200Response> createRecipeCard(String title, String ingredients, String instructions, num readyInMinutes, num servings, String mask, String backgroundImage, { MultipartFile image, String imageUrl, String author, String backgroundColor, String fontColor, String source_ }) async
    test('test createRecipeCard', () async {
      // TODO
    });

    // Equipment by ID Image
    //
    // Visualize a recipe's equipment list as an image.
    //
    //Future<MultipartFile> equipmentByIDImage(int id) async
    test('test equipmentByIDImage', () async {
      // TODO
    });

    // Extract Recipe from Website
    //
    // This endpoint lets you extract recipe data such as title, ingredients, and instructions from any properly formatted Website.
    //
    //Future<RecipeInformation> extractRecipeFromWebsite(String url, { bool forceExtraction, bool analyze, bool includeNutrition, bool includeTaste }) async
    test('test extractRecipeFromWebsite', () async {
      // TODO
    });

    // Get Analyzed Recipe Instructions
    //
    // Get an analyzed breakdown of a recipe's instructions. Each step is enriched with the ingredients and equipment required.
    //
    //Future<List<GetAnalyzedRecipeInstructions200ResponseInner>> getAnalyzedRecipeInstructions(int id, { bool stepBreakdown }) async
    test('test getAnalyzedRecipeInstructions', () async {
      // TODO
    });

    // Get Random Recipes
    //
    // Find random (popular) recipes. If you need to filter recipes by diet, nutrition etc. you might want to consider using the complex recipe search endpoint and set the sort request parameter to random.
    //
    //Future<GetRandomRecipes200Response> getRandomRecipes({ bool includeNutrition, String includeTags, String excludeTags, int number }) async
    test('test getRandomRecipes', () async {
      // TODO
    });

    // Equipment by ID
    //
    // Get a recipe's equipment list.
    //
    //Future<GetRecipeEquipmentByID200Response> getRecipeEquipmentByID(int id) async
    test('test getRecipeEquipmentByID', () async {
      // TODO
    });

    // Get Recipe Information
    //
    // Use a recipe id to get full information about a recipe, such as ingredients, nutrition, diet and allergen information, etc.
    //
    //Future<RecipeInformation> getRecipeInformation(int id, { bool includeNutrition, bool addWinePairing, bool addTasteData }) async
    test('test getRecipeInformation', () async {
      // TODO
    });

    // Get Recipe Information Bulk
    //
    // Get information about multiple recipes at once. This is equivalent to calling the Get Recipe Information endpoint multiple times, but faster.
    //
    //Future<Set<RecipeInformation>> getRecipeInformationBulk(String ids, { bool includeNutrition }) async
    test('test getRecipeInformationBulk', () async {
      // TODO
    });

    // Ingredients by ID
    //
    // Get a recipe's ingredient list.
    //
    //Future<GetRecipeIngredientsByID200Response> getRecipeIngredientsByID(int id) async
    test('test getRecipeIngredientsByID', () async {
      // TODO
    });

    // Nutrition by ID
    //
    // Get a recipe's nutrition data.
    //
    //Future<GetRecipeNutritionWidgetByID200Response> getRecipeNutritionWidgetByID(int id) async
    test('test getRecipeNutritionWidgetByID', () async {
      // TODO
    });

    // Price Breakdown by ID
    //
    // Get a recipe's price breakdown data.
    //
    //Future<GetRecipePriceBreakdownByID200Response> getRecipePriceBreakdownByID(int id) async
    test('test getRecipePriceBreakdownByID', () async {
      // TODO
    });

    // Taste by ID
    //
    // Get a recipe's taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.
    //
    //Future<TasteInformation> getRecipeTasteByID(int id, { bool normalize }) async
    test('test getRecipeTasteByID', () async {
      // TODO
    });

    // Get Similar Recipes
    //
    // Find recipes which are similar to the given one.
    //
    //Future<Set<GetSimilarRecipes200ResponseInner>> getSimilarRecipes(int id, { int number }) async
    test('test getSimilarRecipes', () async {
      // TODO
    });

    // Guess Nutrition by Dish Name
    //
    // Estimate the macronutrients of a dish based on its title.
    //
    //Future<GuessNutritionByDishName200Response> guessNutritionByDishName(String title) async
    test('test guessNutritionByDishName', () async {
      // TODO
    });

    // Parse Ingredients
    //
    // Extract an ingredient from plain text.
    //
    //Future<Set<IngredientInformation>> parseIngredients(String ingredientList, num servings, { String language, bool includeNutrition }) async
    test('test parseIngredients', () async {
      // TODO
    });

    // Price Breakdown by ID Image
    //
    // Visualize a recipe's price breakdown.
    //
    //Future<MultipartFile> priceBreakdownByIDImage(int id) async
    test('test priceBreakdownByIDImage', () async {
      // TODO
    });

    // Quick Answer
    //
    // Answer a nutrition related natural language question.
    //
    //Future<QuickAnswer200Response> quickAnswer(String q) async
    test('test quickAnswer', () async {
      // TODO
    });

    // Recipe Nutrition by ID Image
    //
    // Visualize a recipe's nutritional information as an image.
    //
    //Future<MultipartFile> recipeNutritionByIDImage(int id) async
    test('test recipeNutritionByIDImage', () async {
      // TODO
    });

    // Recipe Nutrition Label Image
    //
    // Get a recipe's nutrition label as an image.
    //
    //Future<MultipartFile> recipeNutritionLabelImage(int id, { bool showOptionalNutrients, bool showZeroValues, bool showIngredients }) async
    test('test recipeNutritionLabelImage', () async {
      // TODO
    });

    // Recipe Nutrition Label Widget
    //
    // Get a recipe's nutrition label as an HTML widget.
    //
    //Future<String> recipeNutritionLabelWidget(int id, { bool defaultCss, bool showOptionalNutrients, bool showZeroValues, bool showIngredients }) async
    test('test recipeNutritionLabelWidget', () async {
      // TODO
    });

    // Recipe Taste by ID Image
    //
    // Get a recipe's taste as an image. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.
    //
    //Future<MultipartFile> recipeTasteByIDImage(int id, { bool normalize, String rgb }) async
    test('test recipeTasteByIDImage', () async {
      // TODO
    });

    // Search Recipes
    //
    // Search through hundreds of thousands of recipes using advanced filtering and ranking. NOTE: This method combines searching by query, by ingredients, and by nutrients into one endpoint.
    //
    //Future<SearchRecipes200Response> searchRecipes(String query, { String cuisine, String excludeCuisine, String diet, String intolerances, String equipment, String includeIngredients, String excludeIngredients, String type, bool instructionsRequired, bool fillIngredients, bool addRecipeInformation, bool addRecipeNutrition, String author, String tags, int recipeBoxId, String titleMatch, num maxReadyTime, num minServings, num maxServings, bool ignorePantry, String sort, String sortDirection, num minCarbs, num maxCarbs, num minProtein, num maxProtein, num minCalories, num maxCalories, num minFat, num maxFat, num minAlcohol, num maxAlcohol, num minCaffeine, num maxCaffeine, num minCopper, num maxCopper, num minCalcium, num maxCalcium, num minCholine, num maxCholine, num minCholesterol, num maxCholesterol, num minFluoride, num maxFluoride, num minSaturatedFat, num maxSaturatedFat, num minVitaminA, num maxVitaminA, num minVitaminC, num maxVitaminC, num minVitaminD, num maxVitaminD, num minVitaminE, num maxVitaminE, num minVitaminK, num maxVitaminK, num minVitaminB1, num maxVitaminB1, num minVitaminB2, num maxVitaminB2, num minVitaminB5, num maxVitaminB5, num minVitaminB3, num maxVitaminB3, num minVitaminB6, num maxVitaminB6, num minVitaminB12, num maxVitaminB12, num minFiber, num maxFiber, num minFolate, num maxFolate, num minFolicAcid, num maxFolicAcid, num minIodine, num maxIodine, num minIron, num maxIron, num minMagnesium, num maxMagnesium, num minManganese, num maxManganese, num minPhosphorus, num maxPhosphorus, num minPotassium, num maxPotassium, num minSelenium, num maxSelenium, num minSodium, num maxSodium, num minSugar, num maxSugar, num minZinc, num maxZinc, int offset, int number }) async
    test('test searchRecipes', () async {
      // TODO
    });

    // Search Recipes by Ingredients
    //
    //  Ever wondered what recipes you can cook with the ingredients you have in your fridge or pantry? This endpoint lets you find recipes that either maximize the usage of ingredients you have at hand (pre shopping) or minimize the ingredients that you don't currently have (post shopping).         
    //
    //Future<Set<SearchRecipesByIngredients200ResponseInner>> searchRecipesByIngredients(String ingredients, { int number, int ranking, bool ignorePantry }) async
    test('test searchRecipesByIngredients', () async {
      // TODO
    });

    // Search Recipes by Nutrients
    //
    // Find a set of recipes that adhere to the given nutritional limits. You may set limits for macronutrients (calories, protein, fat, and carbohydrate) and/or many micronutrients.
    //
    //Future<Set<SearchRecipesByNutrients200ResponseInner>> searchRecipesByNutrients({ num minCarbs, num maxCarbs, num minProtein, num maxProtein, num minCalories, num maxCalories, num minFat, num maxFat, num minAlcohol, num maxAlcohol, num minCaffeine, num maxCaffeine, num minCopper, num maxCopper, num minCalcium, num maxCalcium, num minCholine, num maxCholine, num minCholesterol, num maxCholesterol, num minFluoride, num maxFluoride, num minSaturatedFat, num maxSaturatedFat, num minVitaminA, num maxVitaminA, num minVitaminC, num maxVitaminC, num minVitaminD, num maxVitaminD, num minVitaminE, num maxVitaminE, num minVitaminK, num maxVitaminK, num minVitaminB1, num maxVitaminB1, num minVitaminB2, num maxVitaminB2, num minVitaminB5, num maxVitaminB5, num minVitaminB3, num maxVitaminB3, num minVitaminB6, num maxVitaminB6, num minVitaminB12, num maxVitaminB12, num minFiber, num maxFiber, num minFolate, num maxFolate, num minFolicAcid, num maxFolicAcid, num minIodine, num maxIodine, num minIron, num maxIron, num minMagnesium, num maxMagnesium, num minManganese, num maxManganese, num minPhosphorus, num maxPhosphorus, num minPotassium, num maxPotassium, num minSelenium, num maxSelenium, num minSodium, num maxSodium, num minSugar, num maxSugar, num minZinc, num maxZinc, int offset, int number, bool random }) async
    test('test searchRecipesByNutrients', () async {
      // TODO
    });

    // Summarize Recipe
    //
    // Automatically generate a short description that summarizes key information about the recipe.
    //
    //Future<SummarizeRecipe200Response> summarizeRecipe(int id) async
    test('test summarizeRecipe', () async {
      // TODO
    });

    // Equipment Widget
    //
    // Visualize the equipment used to make a recipe.
    //
    //Future<String> visualizeEquipment(String instructions, { String view, bool defaultCss, bool showBacklink }) async
    test('test visualizeEquipment', () async {
      // TODO
    });

    // Price Breakdown Widget
    //
    // Visualize the price breakdown of a recipe.
    //
    //Future<String> visualizePriceBreakdown(String ingredientList, num servings, { String language, num mode, bool defaultCss, bool showBacklink }) async
    test('test visualizePriceBreakdown', () async {
      // TODO
    });

    // Equipment by ID Widget
    //
    // Visualize a recipe's equipment list.
    //
    //Future<String> visualizeRecipeEquipmentByID(int id, { bool defaultCss }) async
    test('test visualizeRecipeEquipmentByID', () async {
      // TODO
    });

    // Ingredients by ID Widget
    //
    // Visualize a recipe's ingredient list.
    //
    //Future<String> visualizeRecipeIngredientsByID(int id, { bool defaultCss, String measure }) async
    test('test visualizeRecipeIngredientsByID', () async {
      // TODO
    });

    // Recipe Nutrition Widget
    //
    // Visualize a recipe's nutritional information as HTML including CSS.
    //
    //Future<String> visualizeRecipeNutrition(String ingredientList, num servings, { String language, bool defaultCss, bool showBacklink }) async
    test('test visualizeRecipeNutrition', () async {
      // TODO
    });

    // Recipe Nutrition by ID Widget
    //
    // Visualize a recipe's nutritional information as HTML including CSS.
    //
    //Future<String> visualizeRecipeNutritionByID(int id, { bool defaultCss }) async
    test('test visualizeRecipeNutritionByID', () async {
      // TODO
    });

    // Price Breakdown by ID Widget
    //
    // Visualize a recipe's price breakdown.
    //
    //Future<String> visualizeRecipePriceBreakdownByID(int id, { bool defaultCss }) async
    test('test visualizeRecipePriceBreakdownByID', () async {
      // TODO
    });

    // Recipe Taste Widget
    //
    // Visualize a recipe's taste information as HTML including CSS. You can play around with that endpoint!
    //
    //Future<String> visualizeRecipeTaste(String ingredientList, { String language, bool normalize, String rgb }) async
    test('test visualizeRecipeTaste', () async {
      // TODO
    });

    // Recipe Taste by ID Widget
    //
    // Get a recipe's taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.
    //
    //Future<String> visualizeRecipeTasteByID(int id, { bool normalize, String rgb }) async
    test('test visualizeRecipeTasteByID', () async {
      // TODO
    });

  });
}
