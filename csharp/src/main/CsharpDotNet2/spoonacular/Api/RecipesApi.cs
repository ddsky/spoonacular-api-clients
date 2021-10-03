using System;
using System.Collections.Generic;
using RestSharp;
using Org.OpenAPITools.Client;
using com.spoonacular.client.model;

namespace com.spoonacular
{
    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public interface IRecipesApi
    {
        /// <summary>
        /// Analyze a Recipe Search Query Parse a recipe search query to find out its intention.
        /// </summary>
        /// <param name="q">The recipe search query.</param>
        /// <returns>InlineResponse20018</returns>
        InlineResponse20018 AnalyzeARecipeSearchQuery (string q);
        /// <summary>
        /// Analyze Recipe Instructions This endpoint allows you to break down instructions into atomic steps. Furthermore, each step will contain the ingredients and equipment required. Additionally, all ingredients and equipment from the recipe&#39;s instructions will be extracted independently of the step they&#39;re used in.
        /// </summary>
        /// <param name="contentType">The content type.</param>
        /// <returns>InlineResponse20016</returns>
        InlineResponse20016 AnalyzeRecipeInstructions (string contentType);
        /// <summary>
        /// Autocomplete Recipe Search Autocomplete a partial input to suggest possible recipe names.
        /// </summary>
        /// <param name="query">The (natural language) search query.</param>
        /// <param name="number">The maximum number of items to return (between 1 and 100). Defaults to 10.</param>
        /// <returns>List&lt;InlineResponse2007&gt;</returns>
        List<InlineResponse2007> AutocompleteRecipeSearch (string query, int? number);
        /// <summary>
        /// Classify Cuisine Classify the recipe&#39;s cuisine.
        /// </summary>
        /// <param name="contentType">The content type.</param>
        /// <returns>InlineResponse20017</returns>
        InlineResponse20017 ClassifyCuisine (string contentType);
        /// <summary>
        /// Compute Glycemic Load Retrieve the glycemic index for a list of ingredients and compute the individual and total glycemic load.
        /// </summary>
        /// <param name="inlineObject"></param>
        /// <param name="language">The language of the input. Either &#39;en&#39; or &#39;de&#39;.</param>
        /// <returns>InlineResponse20023</returns>
        InlineResponse20023 ComputeGlycemicLoad (InlineObject inlineObject, string language);
        /// <summary>
        /// Convert Amounts Convert amounts like \&quot;2 cups of flour to grams\&quot;.
        /// </summary>
        /// <param name="ingredientName">The ingredient which you want to convert.</param>
        /// <param name="sourceAmount">The amount from which you want to convert, e.g. the 2.5 in \&quot;2.5 cups of flour to grams\&quot;.</param>
        /// <param name="sourceUnit">The unit from which you want to convert, e.g. the grams in \&quot;2.5 cups of flour to grams\&quot;. You can also use \&quot;piece\&quot;, e.g. \&quot;3.4 oz tomatoes to piece\&quot;</param>
        /// <param name="targetUnit">The unit to which you want to convert, e.g. the grams in \&quot;2.5 cups of flour to grams\&quot;. You can also use \&quot;piece\&quot;, e.g. \&quot;3.4 oz tomatoes to piece\&quot;</param>
        /// <returns>InlineResponse20019</returns>
        InlineResponse20019 ConvertAmounts (string ingredientName, decimal? sourceAmount, string sourceUnit, string targetUnit);
        /// <summary>
        /// Create Recipe Card Generate a recipe card for a recipe.
        /// </summary>
        /// <param name="contentType">The content type.</param>
        /// <returns>InlineResponse20015</returns>
        InlineResponse20015 CreateRecipeCard (string contentType);
        /// <summary>
        /// Equipment by ID Image Visualize a recipe&#39;s equipment list as an image.
        /// </summary>
        /// <param name="id">The recipe id.</param>
        /// <returns>Object</returns>
        Object EquipmentByIDImage (decimal? id);
        /// <summary>
        /// Extract Recipe from Website This endpoint lets you extract recipe data such as title, ingredients, and instructions from any properly formatted Website.
        /// </summary>
        /// <param name="url">The URL of the recipe page.</param>
        /// <param name="forceExtraction">If true, the extraction will be triggered whether we already know the recipe or not. Use this only if information is missing as this operation is slower.</param>
        /// <param name="analyze">If true, the recipe will be analyzed and classified resolving in more data such as cuisines, dish types, and more.</param>
        /// <param name="includeNutrition">Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings.</param>
        /// <param name="includeTaste">Whether taste data should be added to correctly parsed ingredients.</param>
        /// <returns>InlineResponse2003</returns>
        InlineResponse2003 ExtractRecipeFromWebsite (string url, bool? forceExtraction, bool? analyze, bool? includeNutrition, bool? includeTaste);
        /// <summary>
        /// Get Analyzed Recipe Instructions Get an analyzed breakdown of a recipe&#39;s instructions. Each step is enriched with the ingredients and equipment required.
        /// </summary>
        /// <param name="id">The item&#39;s id.</param>
        /// <param name="stepBreakdown">Whether to break down the recipe steps even more.</param>
        /// <returns>InlineResponse20013</returns>
        InlineResponse20013 GetAnalyzedRecipeInstructions (int? id, bool? stepBreakdown);
        /// <summary>
        /// Get Random Recipes Find random (popular) recipes. If you need to filter recipes by diet, nutrition etc. you might want to consider using the complex recipe search endpoint and set the sort request parameter to random.
        /// </summary>
        /// <param name="limitLicense">Whether the recipes should have an open license that allows display with proper attribution.</param>
        /// <param name="tags">The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have.</param>
        /// <param name="number">The maximum number of items to return (between 1 and 100). Defaults to 10.</param>
        /// <returns>InlineResponse2006</returns>
        InlineResponse2006 GetRandomRecipes (bool? limitLicense, string tags, int? number);
        /// <summary>
        /// Equipment by ID Get a recipe&#39;s equipment list.
        /// </summary>
        /// <param name="id">The item&#39;s id.</param>
        /// <returns>InlineResponse2009</returns>
        InlineResponse2009 GetRecipeEquipmentByID (int? id);
        /// <summary>
        /// Get Recipe Information Use a recipe id to get full information about a recipe, such as ingredients, nutrition, diet and allergen information, etc.
        /// </summary>
        /// <param name="id">The item&#39;s id.</param>
        /// <param name="includeNutrition">Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings.</param>
        /// <returns>InlineResponse2003</returns>
        InlineResponse2003 GetRecipeInformation (int? id, bool? includeNutrition);
        /// <summary>
        /// Get Recipe Information Bulk Get information about multiple recipes at once. This is equivalent to calling the Get Recipe Information endpoint multiple times, but faster.
        /// </summary>
        /// <param name="ids">A comma-separated list of recipe ids.</param>
        /// <param name="includeNutrition">Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings.</param>
        /// <returns>List&lt;InlineResponse2004&gt;</returns>
        List<InlineResponse2004> GetRecipeInformationBulk (string ids, bool? includeNutrition);
        /// <summary>
        /// Ingredients by ID Get a recipe&#39;s ingredient list.
        /// </summary>
        /// <param name="id">The item&#39;s id.</param>
        /// <returns>InlineResponse20011</returns>
        InlineResponse20011 GetRecipeIngredientsByID (int? id);
        /// <summary>
        /// Nutrition by ID Get a recipe&#39;s nutrition data.
        /// </summary>
        /// <param name="id">The item&#39;s id.</param>
        /// <returns>InlineResponse20012</returns>
        InlineResponse20012 GetRecipeNutritionWidgetByID (int? id);
        /// <summary>
        /// Price Breakdown by ID Get a recipe&#39;s price breakdown data.
        /// </summary>
        /// <param name="id">The item&#39;s id.</param>
        /// <returns>InlineResponse20010</returns>
        InlineResponse20010 GetRecipePriceBreakdownByID (int? id);
        /// <summary>
        /// Taste by ID Get a recipe&#39;s taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.
        /// </summary>
        /// <param name="id">The item&#39;s id.</param>
        /// <param name="normalize">Normalize to the strongest taste.</param>
        /// <returns>InlineResponse2008</returns>
        InlineResponse2008 GetRecipeTasteByID (int? id, bool? normalize);
        /// <summary>
        /// Get Similar Recipes Find recipes which are similar to the given one.
        /// </summary>
        /// <param name="id">The item&#39;s id.</param>
        /// <param name="number">The maximum number of items to return (between 1 and 100). Defaults to 10.</param>
        /// <param name="limitLicense">Whether the recipes should have an open license that allows display with proper attribution.</param>
        /// <returns>List&lt;InlineResponse2005&gt;</returns>
        List<InlineResponse2005> GetSimilarRecipes (int? id, int? number, bool? limitLicense);
        /// <summary>
        /// Guess Nutrition by Dish Name Estimate the macronutrients of a dish based on its title.
        /// </summary>
        /// <param name="title">The title of the dish.</param>
        /// <returns>InlineResponse20021</returns>
        InlineResponse20021 GuessNutritionByDishName (string title);
        /// <summary>
        /// Ingredients by ID Image Visualize a recipe&#39;s ingredient list.
        /// </summary>
        /// <param name="id">The recipe id.</param>
        /// <param name="measure">Whether the the measures should be &#39;us&#39; or &#39;metric&#39;.</param>
        /// <returns>Object</returns>
        Object IngredientsByIDImage (decimal? id, string measure);
        /// <summary>
        /// Parse Ingredients Extract an ingredient from plain text.
        /// </summary>
        /// <param name="contentType">The content type.</param>
        /// <param name="language">The language of the input. Either &#39;en&#39; or &#39;de&#39;.</param>
        /// <returns>List&lt;InlineResponse20020&gt;</returns>
        List<InlineResponse20020> ParseIngredients (string contentType, string language);
        /// <summary>
        /// Price Breakdown by ID Image Visualize a recipe&#39;s price breakdown.
        /// </summary>
        /// <param name="id">The recipe id.</param>
        /// <returns>Object</returns>
        Object PriceBreakdownByIDImage (decimal? id);
        /// <summary>
        /// Quick Answer Answer a nutrition related natural language question.
        /// </summary>
        /// <param name="q">The nutrition related question.</param>
        /// <returns>InlineResponse20050</returns>
        InlineResponse20050 QuickAnswer (string q);
        /// <summary>
        /// Recipe Nutrition by ID Image Visualize a recipe&#39;s nutritional information as an image.
        /// </summary>
        /// <param name="id">The recipe id.</param>
        /// <returns>Object</returns>
        Object RecipeNutritionByIDImage (decimal? id);
        /// <summary>
        /// Recipe Nutrition Label Image Get a recipe&#39;s nutrition label as an image.
        /// </summary>
        /// <param name="id">The recipe id.</param>
        /// <param name="showOptionalNutrients">Whether to show optional nutrients.</param>
        /// <param name="showZeroValues">Whether to show zero values.</param>
        /// <param name="showIngredients">Whether to show a list of ingredients.</param>
        /// <returns>Object</returns>
        Object RecipeNutritionLabelImage (decimal? id, bool? showOptionalNutrients, bool? showZeroValues, bool? showIngredients);
        /// <summary>
        /// Recipe Nutrition Label Widget Get a recipe&#39;s nutrition label as an HTML widget.
        /// </summary>
        /// <param name="id">The recipe id.</param>
        /// <param name="defaultCss">Whether the default CSS should be added to the response.</param>
        /// <param name="showOptionalNutrients">Whether to show optional nutrients.</param>
        /// <param name="showZeroValues">Whether to show zero values.</param>
        /// <param name="showIngredients">Whether to show a list of ingredients.</param>
        /// <returns>string</returns>
        string RecipeNutritionLabelWidget (decimal? id, bool? defaultCss, bool? showOptionalNutrients, bool? showZeroValues, bool? showIngredients);
        /// <summary>
        /// Recipe Taste by ID Image Get a recipe&#39;s taste as an image. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.
        /// </summary>
        /// <param name="id">The recipe id.</param>
        /// <param name="normalize">Normalize to the strongest taste.</param>
        /// <param name="rgb">Red, green, blue values for the chart color.</param>
        /// <returns>Object</returns>
        Object RecipeTasteByIDImage (decimal? id, bool? normalize, string rgb);
        /// <summary>
        /// Search Recipes Search through hundreds of thousands of recipes using advanced filtering and ranking. NOTE: This method combines searching by query, by ingredients, and by nutrients into one endpoint.
        /// </summary>
        /// <param name="query">The (natural language) search query.</param>
        /// <param name="cuisine">The cuisine(s) of the recipes. One or more, comma separated (will be interpreted as &#39;OR&#39;). See a full list of supported cuisines.</param>
        /// <param name="excludeCuisine">The cuisine(s) the recipes must not match. One or more, comma separated (will be interpreted as &#39;AND&#39;). See a full list of supported cuisines.</param>
        /// <param name="diet">The diet for which the recipes must be suitable. See a full list of supported diets.</param>
        /// <param name="intolerances">A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.</param>
        /// <param name="equipment">The equipment required. Multiple values will be interpreted as &#39;or&#39;. For example, value could be \&quot;blender, frying pan, bowl\&quot;.</param>
        /// <param name="includeIngredients">A comma-separated list of ingredients that should/must be used in the recipes.</param>
        /// <param name="excludeIngredients">A comma-separated list of ingredients or ingredient types that the recipes must not contain.</param>
        /// <param name="type">The type of recipe. See a full list of supported meal types.</param>
        /// <param name="instructionsRequired">Whether the recipes must have instructions.</param>
        /// <param name="fillIngredients">Add information about the ingredients and whether they are used or missing in relation to the query.</param>
        /// <param name="addRecipeInformation">If set to true, you get more information about the recipes returned.</param>
        /// <param name="addRecipeNutrition">If set to true, you get nutritional information about each recipes returned.</param>
        /// <param name="author">The username of the recipe author.</param>
        /// <param name="tags">The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have.</param>
        /// <param name="recipeBoxId">The id of the recipe box to which the search should be limited to.</param>
        /// <param name="titleMatch">Enter text that must be found in the title of the recipes.</param>
        /// <param name="maxReadyTime">The maximum time in minutes it should take to prepare and cook the recipe.</param>
        /// <param name="ignorePantry">Whether to ignore typical pantry items, such as water, salt, flour, etc.</param>
        /// <param name="sort">The strategy to sort recipes by. See a full list of supported sorting options.</param>
        /// <param name="sortDirection">The direction in which to sort. Must be either &#39;asc&#39; (ascending) or &#39;desc&#39; (descending).</param>
        /// <param name="minCarbs">The minimum amount of carbohydrates in grams the recipe must have.</param>
        /// <param name="maxCarbs">The maximum amount of carbohydrates in grams the recipe can have.</param>
        /// <param name="minProtein">The minimum amount of protein in grams the recipe must have.</param>
        /// <param name="maxProtein">The maximum amount of protein in grams the recipe can have.</param>
        /// <param name="minCalories">The minimum amount of calories the recipe must have.</param>
        /// <param name="maxCalories">The maximum amount of calories the recipe can have.</param>
        /// <param name="minFat">The minimum amount of fat in grams the recipe must have.</param>
        /// <param name="maxFat">The maximum amount of fat in grams the recipe can have.</param>
        /// <param name="minAlcohol">The minimum amount of alcohol in grams the recipe must have.</param>
        /// <param name="maxAlcohol">The maximum amount of alcohol in grams the recipe can have.</param>
        /// <param name="minCaffeine">The minimum amount of caffeine in milligrams the recipe must have.</param>
        /// <param name="maxCaffeine">The maximum amount of caffeine in milligrams the recipe can have.</param>
        /// <param name="minCopper">The minimum amount of copper in milligrams the recipe must have.</param>
        /// <param name="maxCopper">The maximum amount of copper in milligrams the recipe can have.</param>
        /// <param name="minCalcium">The minimum amount of calcium in milligrams the recipe must have.</param>
        /// <param name="maxCalcium">The maximum amount of calcium in milligrams the recipe can have.</param>
        /// <param name="minCholine">The minimum amount of choline in milligrams the recipe must have.</param>
        /// <param name="maxCholine">The maximum amount of choline in milligrams the recipe can have.</param>
        /// <param name="minCholesterol">The minimum amount of cholesterol in milligrams the recipe must have.</param>
        /// <param name="maxCholesterol">The maximum amount of cholesterol in milligrams the recipe can have.</param>
        /// <param name="minFluoride">The minimum amount of fluoride in milligrams the recipe must have.</param>
        /// <param name="maxFluoride">The maximum amount of fluoride in milligrams the recipe can have.</param>
        /// <param name="minSaturatedFat">The minimum amount of saturated fat in grams the recipe must have.</param>
        /// <param name="maxSaturatedFat">The maximum amount of saturated fat in grams the recipe can have.</param>
        /// <param name="minVitaminA">The minimum amount of Vitamin A in IU the recipe must have.</param>
        /// <param name="maxVitaminA">The maximum amount of Vitamin A in IU the recipe can have.</param>
        /// <param name="minVitaminC">The minimum amount of Vitamin C milligrams the recipe must have.</param>
        /// <param name="maxVitaminC">The maximum amount of Vitamin C in milligrams the recipe can have.</param>
        /// <param name="minVitaminD">The minimum amount of Vitamin D in micrograms the recipe must have.</param>
        /// <param name="maxVitaminD">The maximum amount of Vitamin D in micrograms the recipe can have.</param>
        /// <param name="minVitaminE">The minimum amount of Vitamin E in milligrams the recipe must have.</param>
        /// <param name="maxVitaminE">The maximum amount of Vitamin E in milligrams the recipe can have.</param>
        /// <param name="minVitaminK">The minimum amount of Vitamin K in micrograms the recipe must have.</param>
        /// <param name="maxVitaminK">The maximum amount of Vitamin K in micrograms the recipe can have.</param>
        /// <param name="minVitaminB1">The minimum amount of Vitamin B1 in milligrams the recipe must have.</param>
        /// <param name="maxVitaminB1">The maximum amount of Vitamin B1 in milligrams the recipe can have.</param>
        /// <param name="minVitaminB2">The minimum amount of Vitamin B2 in milligrams the recipe must have.</param>
        /// <param name="maxVitaminB2">The maximum amount of Vitamin B2 in milligrams the recipe can have.</param>
        /// <param name="minVitaminB5">The minimum amount of Vitamin B5 in milligrams the recipe must have.</param>
        /// <param name="maxVitaminB5">The maximum amount of Vitamin B5 in milligrams the recipe can have.</param>
        /// <param name="minVitaminB3">The minimum amount of Vitamin B3 in milligrams the recipe must have.</param>
        /// <param name="maxVitaminB3">The maximum amount of Vitamin B3 in milligrams the recipe can have.</param>
        /// <param name="minVitaminB6">The minimum amount of Vitamin B6 in milligrams the recipe must have.</param>
        /// <param name="maxVitaminB6">The maximum amount of Vitamin B6 in milligrams the recipe can have.</param>
        /// <param name="minVitaminB12">The minimum amount of Vitamin B12 in micrograms the recipe must have.</param>
        /// <param name="maxVitaminB12">The maximum amount of Vitamin B12 in micrograms the recipe can have.</param>
        /// <param name="minFiber">The minimum amount of fiber in grams the recipe must have.</param>
        /// <param name="maxFiber">The maximum amount of fiber in grams the recipe can have.</param>
        /// <param name="minFolate">The minimum amount of folate in micrograms the recipe must have.</param>
        /// <param name="maxFolate">The maximum amount of folate in micrograms the recipe can have.</param>
        /// <param name="minFolicAcid">The minimum amount of folic acid in micrograms the recipe must have.</param>
        /// <param name="maxFolicAcid">The maximum amount of folic acid in micrograms the recipe can have.</param>
        /// <param name="minIodine">The minimum amount of iodine in micrograms the recipe must have.</param>
        /// <param name="maxIodine">The maximum amount of iodine in micrograms the recipe can have.</param>
        /// <param name="minIron">The minimum amount of iron in milligrams the recipe must have.</param>
        /// <param name="maxIron">The maximum amount of iron in milligrams the recipe can have.</param>
        /// <param name="minMagnesium">The minimum amount of magnesium in milligrams the recipe must have.</param>
        /// <param name="maxMagnesium">The maximum amount of magnesium in milligrams the recipe can have.</param>
        /// <param name="minManganese">The minimum amount of manganese in milligrams the recipe must have.</param>
        /// <param name="maxManganese">The maximum amount of manganese in milligrams the recipe can have.</param>
        /// <param name="minPhosphorus">The minimum amount of phosphorus in milligrams the recipe must have.</param>
        /// <param name="maxPhosphorus">The maximum amount of phosphorus in milligrams the recipe can have.</param>
        /// <param name="minPotassium">The minimum amount of potassium in milligrams the recipe must have.</param>
        /// <param name="maxPotassium">The maximum amount of potassium in milligrams the recipe can have.</param>
        /// <param name="minSelenium">The minimum amount of selenium in micrograms the recipe must have.</param>
        /// <param name="maxSelenium">The maximum amount of selenium in micrograms the recipe can have.</param>
        /// <param name="minSodium">The minimum amount of sodium in milligrams the recipe must have.</param>
        /// <param name="maxSodium">The maximum amount of sodium in milligrams the recipe can have.</param>
        /// <param name="minSugar">The minimum amount of sugar in grams the recipe must have.</param>
        /// <param name="maxSugar">The maximum amount of sugar in grams the recipe can have.</param>
        /// <param name="minZinc">The minimum amount of zinc in milligrams the recipe must have.</param>
        /// <param name="maxZinc">The maximum amount of zinc in milligrams the recipe can have.</param>
        /// <param name="offset">The number of results to skip (between 0 and 900).</param>
        /// <param name="number">The maximum number of items to return (between 1 and 100). Defaults to 10.</param>
        /// <param name="limitLicense">Whether the recipes should have an open license that allows display with proper attribution.</param>
        /// <returns>InlineResponse200</returns>
        InlineResponse200 SearchRecipes (string query, string cuisine, string excludeCuisine, string diet, string intolerances, string equipment, string includeIngredients, string excludeIngredients, string type, bool? instructionsRequired, bool? fillIngredients, bool? addRecipeInformation, bool? addRecipeNutrition, string author, string tags, decimal? recipeBoxId, string titleMatch, decimal? maxReadyTime, bool? ignorePantry, string sort, string sortDirection, decimal? minCarbs, decimal? maxCarbs, decimal? minProtein, decimal? maxProtein, decimal? minCalories, decimal? maxCalories, decimal? minFat, decimal? maxFat, decimal? minAlcohol, decimal? maxAlcohol, decimal? minCaffeine, decimal? maxCaffeine, decimal? minCopper, decimal? maxCopper, decimal? minCalcium, decimal? maxCalcium, decimal? minCholine, decimal? maxCholine, decimal? minCholesterol, decimal? maxCholesterol, decimal? minFluoride, decimal? maxFluoride, decimal? minSaturatedFat, decimal? maxSaturatedFat, decimal? minVitaminA, decimal? maxVitaminA, decimal? minVitaminC, decimal? maxVitaminC, decimal? minVitaminD, decimal? maxVitaminD, decimal? minVitaminE, decimal? maxVitaminE, decimal? minVitaminK, decimal? maxVitaminK, decimal? minVitaminB1, decimal? maxVitaminB1, decimal? minVitaminB2, decimal? maxVitaminB2, decimal? minVitaminB5, decimal? maxVitaminB5, decimal? minVitaminB3, decimal? maxVitaminB3, decimal? minVitaminB6, decimal? maxVitaminB6, decimal? minVitaminB12, decimal? maxVitaminB12, decimal? minFiber, decimal? maxFiber, decimal? minFolate, decimal? maxFolate, decimal? minFolicAcid, decimal? maxFolicAcid, decimal? minIodine, decimal? maxIodine, decimal? minIron, decimal? maxIron, decimal? minMagnesium, decimal? maxMagnesium, decimal? minManganese, decimal? maxManganese, decimal? minPhosphorus, decimal? maxPhosphorus, decimal? minPotassium, decimal? maxPotassium, decimal? minSelenium, decimal? maxSelenium, decimal? minSodium, decimal? maxSodium, decimal? minSugar, decimal? maxSugar, decimal? minZinc, decimal? maxZinc, int? offset, int? number, bool? limitLicense);
        /// <summary>
        /// Search Recipes by Ingredients  Ever wondered what recipes you can cook with the ingredients you have in your fridge or pantry? This endpoint lets you find recipes that either maximize the usage of ingredients you have at hand (pre shopping) or minimize the ingredients that you don&#39;t currently have (post shopping).         
        /// </summary>
        /// <param name="ingredients">A comma-separated list of ingredients that the recipes should contain.</param>
        /// <param name="number">The maximum number of items to return (between 1 and 100). Defaults to 10.</param>
        /// <param name="limitLicense">Whether the recipes should have an open license that allows display with proper attribution.</param>
        /// <param name="ranking">Whether to maximize used ingredients (1) or minimize missing ingredients (2) first.</param>
        /// <param name="ignorePantry">Whether to ignore typical pantry items, such as water, salt, flour, etc.</param>
        /// <returns>List&lt;InlineResponse2001&gt;</returns>
        List<InlineResponse2001> SearchRecipesByIngredients (string ingredients, int? number, bool? limitLicense, decimal? ranking, bool? ignorePantry);
        /// <summary>
        /// Search Recipes by Nutrients Find a set of recipes that adhere to the given nutritional limits. You may set limits for macronutrients (calories, protein, fat, and carbohydrate) and/or many micronutrients.
        /// </summary>
        /// <param name="minCarbs">The minimum amount of carbohydrates in grams the recipe must have.</param>
        /// <param name="maxCarbs">The maximum amount of carbohydrates in grams the recipe can have.</param>
        /// <param name="minProtein">The minimum amount of protein in grams the recipe must have.</param>
        /// <param name="maxProtein">The maximum amount of protein in grams the recipe can have.</param>
        /// <param name="minCalories">The minimum amount of calories the recipe must have.</param>
        /// <param name="maxCalories">The maximum amount of calories the recipe can have.</param>
        /// <param name="minFat">The minimum amount of fat in grams the recipe must have.</param>
        /// <param name="maxFat">The maximum amount of fat in grams the recipe can have.</param>
        /// <param name="minAlcohol">The minimum amount of alcohol in grams the recipe must have.</param>
        /// <param name="maxAlcohol">The maximum amount of alcohol in grams the recipe can have.</param>
        /// <param name="minCaffeine">The minimum amount of caffeine in milligrams the recipe must have.</param>
        /// <param name="maxCaffeine">The maximum amount of caffeine in milligrams the recipe can have.</param>
        /// <param name="minCopper">The minimum amount of copper in milligrams the recipe must have.</param>
        /// <param name="maxCopper">The maximum amount of copper in milligrams the recipe can have.</param>
        /// <param name="minCalcium">The minimum amount of calcium in milligrams the recipe must have.</param>
        /// <param name="maxCalcium">The maximum amount of calcium in milligrams the recipe can have.</param>
        /// <param name="minCholine">The minimum amount of choline in milligrams the recipe must have.</param>
        /// <param name="maxCholine">The maximum amount of choline in milligrams the recipe can have.</param>
        /// <param name="minCholesterol">The minimum amount of cholesterol in milligrams the recipe must have.</param>
        /// <param name="maxCholesterol">The maximum amount of cholesterol in milligrams the recipe can have.</param>
        /// <param name="minFluoride">The minimum amount of fluoride in milligrams the recipe must have.</param>
        /// <param name="maxFluoride">The maximum amount of fluoride in milligrams the recipe can have.</param>
        /// <param name="minSaturatedFat">The minimum amount of saturated fat in grams the recipe must have.</param>
        /// <param name="maxSaturatedFat">The maximum amount of saturated fat in grams the recipe can have.</param>
        /// <param name="minVitaminA">The minimum amount of Vitamin A in IU the recipe must have.</param>
        /// <param name="maxVitaminA">The maximum amount of Vitamin A in IU the recipe can have.</param>
        /// <param name="minVitaminC">The minimum amount of Vitamin C in milligrams the recipe must have.</param>
        /// <param name="maxVitaminC">The maximum amount of Vitamin C in milligrams the recipe can have.</param>
        /// <param name="minVitaminD">The minimum amount of Vitamin D in micrograms the recipe must have.</param>
        /// <param name="maxVitaminD">The maximum amount of Vitamin D in micrograms the recipe can have.</param>
        /// <param name="minVitaminE">The minimum amount of Vitamin E in milligrams the recipe must have.</param>
        /// <param name="maxVitaminE">The maximum amount of Vitamin E in milligrams the recipe can have.</param>
        /// <param name="minVitaminK">The minimum amount of Vitamin K in micrograms the recipe must have.</param>
        /// <param name="maxVitaminK">The maximum amount of Vitamin K in micrograms the recipe can have.</param>
        /// <param name="minVitaminB1">The minimum amount of Vitamin B1 in milligrams the recipe must have.</param>
        /// <param name="maxVitaminB1">The maximum amount of Vitamin B1 in milligrams the recipe can have.</param>
        /// <param name="minVitaminB2">The minimum amount of Vitamin B2 in milligrams the recipe must have.</param>
        /// <param name="maxVitaminB2">The maximum amount of Vitamin B2 in milligrams the recipe can have.</param>
        /// <param name="minVitaminB5">The minimum amount of Vitamin B5 in milligrams the recipe must have.</param>
        /// <param name="maxVitaminB5">The maximum amount of Vitamin B5 in milligrams the recipe can have.</param>
        /// <param name="minVitaminB3">The minimum amount of Vitamin B3 in milligrams the recipe must have.</param>
        /// <param name="maxVitaminB3">The maximum amount of Vitamin B3 in milligrams the recipe can have.</param>
        /// <param name="minVitaminB6">The minimum amount of Vitamin B6 in milligrams the recipe must have.</param>
        /// <param name="maxVitaminB6">The maximum amount of Vitamin B6 in milligrams the recipe can have.</param>
        /// <param name="minVitaminB12">The minimum amount of Vitamin B12 in micrograms the recipe must have.</param>
        /// <param name="maxVitaminB12">The maximum amount of Vitamin B12 in micrograms the recipe can have.</param>
        /// <param name="minFiber">The minimum amount of fiber in grams the recipe must have.</param>
        /// <param name="maxFiber">The maximum amount of fiber in grams the recipe can have.</param>
        /// <param name="minFolate">The minimum amount of folate in micrograms the recipe must have.</param>
        /// <param name="maxFolate">The maximum amount of folate in micrograms the recipe can have.</param>
        /// <param name="minFolicAcid">The minimum amount of folic acid in micrograms the recipe must have.</param>
        /// <param name="maxFolicAcid">The maximum amount of folic acid in micrograms the recipe can have.</param>
        /// <param name="minIodine">The minimum amount of iodine in micrograms the recipe must have.</param>
        /// <param name="maxIodine">The maximum amount of iodine in micrograms the recipe can have.</param>
        /// <param name="minIron">The minimum amount of iron in milligrams the recipe must have.</param>
        /// <param name="maxIron">The maximum amount of iron in milligrams the recipe can have.</param>
        /// <param name="minMagnesium">The minimum amount of magnesium in milligrams the recipe must have.</param>
        /// <param name="maxMagnesium">The maximum amount of magnesium in milligrams the recipe can have.</param>
        /// <param name="minManganese">The minimum amount of manganese in milligrams the recipe must have.</param>
        /// <param name="maxManganese">The maximum amount of manganese in milligrams the recipe can have.</param>
        /// <param name="minPhosphorus">The minimum amount of phosphorus in milligrams the recipe must have.</param>
        /// <param name="maxPhosphorus">The maximum amount of phosphorus in milligrams the recipe can have.</param>
        /// <param name="minPotassium">The minimum amount of potassium in milligrams the recipe must have.</param>
        /// <param name="maxPotassium">The maximum amount of potassium in milligrams the recipe can have.</param>
        /// <param name="minSelenium">The minimum amount of selenium in micrograms the recipe must have.</param>
        /// <param name="maxSelenium">The maximum amount of selenium in micrograms the recipe can have.</param>
        /// <param name="minSodium">The minimum amount of sodium in milligrams the recipe must have.</param>
        /// <param name="maxSodium">The maximum amount of sodium in milligrams the recipe can have.</param>
        /// <param name="minSugar">The minimum amount of sugar in grams the recipe must have.</param>
        /// <param name="maxSugar">The maximum amount of sugar in grams the recipe can have.</param>
        /// <param name="minZinc">The minimum amount of zinc in milligrams the recipe must have.</param>
        /// <param name="maxZinc">The maximum amount of zinc in milligrams the recipe can have.</param>
        /// <param name="offset">The number of results to skip (between 0 and 900).</param>
        /// <param name="number">The maximum number of items to return (between 1 and 100). Defaults to 10.</param>
        /// <param name="random">If true, every request will give you a random set of recipes within the requested limits.</param>
        /// <param name="limitLicense">Whether the recipes should have an open license that allows display with proper attribution.</param>
        /// <returns>List&lt;InlineResponse2002&gt;</returns>
        List<InlineResponse2002> SearchRecipesByNutrients (decimal? minCarbs, decimal? maxCarbs, decimal? minProtein, decimal? maxProtein, decimal? minCalories, decimal? maxCalories, decimal? minFat, decimal? maxFat, decimal? minAlcohol, decimal? maxAlcohol, decimal? minCaffeine, decimal? maxCaffeine, decimal? minCopper, decimal? maxCopper, decimal? minCalcium, decimal? maxCalcium, decimal? minCholine, decimal? maxCholine, decimal? minCholesterol, decimal? maxCholesterol, decimal? minFluoride, decimal? maxFluoride, decimal? minSaturatedFat, decimal? maxSaturatedFat, decimal? minVitaminA, decimal? maxVitaminA, decimal? minVitaminC, decimal? maxVitaminC, decimal? minVitaminD, decimal? maxVitaminD, decimal? minVitaminE, decimal? maxVitaminE, decimal? minVitaminK, decimal? maxVitaminK, decimal? minVitaminB1, decimal? maxVitaminB1, decimal? minVitaminB2, decimal? maxVitaminB2, decimal? minVitaminB5, decimal? maxVitaminB5, decimal? minVitaminB3, decimal? maxVitaminB3, decimal? minVitaminB6, decimal? maxVitaminB6, decimal? minVitaminB12, decimal? maxVitaminB12, decimal? minFiber, decimal? maxFiber, decimal? minFolate, decimal? maxFolate, decimal? minFolicAcid, decimal? maxFolicAcid, decimal? minIodine, decimal? maxIodine, decimal? minIron, decimal? maxIron, decimal? minMagnesium, decimal? maxMagnesium, decimal? minManganese, decimal? maxManganese, decimal? minPhosphorus, decimal? maxPhosphorus, decimal? minPotassium, decimal? maxPotassium, decimal? minSelenium, decimal? maxSelenium, decimal? minSodium, decimal? maxSodium, decimal? minSugar, decimal? maxSugar, decimal? minZinc, decimal? maxZinc, int? offset, int? number, bool? random, bool? limitLicense);
        /// <summary>
        /// Summarize Recipe Automatically generate a short description that summarizes key information about the recipe.
        /// </summary>
        /// <param name="id">The item&#39;s id.</param>
        /// <returns>InlineResponse20014</returns>
        InlineResponse20014 SummarizeRecipe (int? id);
        /// <summary>
        /// Equipment Widget Visualize the equipment used to make a recipe.
        /// </summary>
        /// <param name="contentType">The content type.</param>
        /// <param name="accept">Accept header.</param>
        /// <returns>string</returns>
        string VisualizeEquipment (string contentType, string accept);
        /// <summary>
        /// Price Breakdown Widget Visualize the price breakdown of a recipe.
        /// </summary>
        /// <param name="contentType">The content type.</param>
        /// <param name="accept">Accept header.</param>
        /// <param name="language">The language of the input. Either &#39;en&#39; or &#39;de&#39;.</param>
        /// <returns>string</returns>
        string VisualizePriceBreakdown (string contentType, string accept, string language);
        /// <summary>
        /// Equipment by ID Widget Visualize a recipe&#39;s equipment list.
        /// </summary>
        /// <param name="id">The item&#39;s id.</param>
        /// <param name="defaultCss">Whether the default CSS should be added to the response.</param>
        /// <returns>string</returns>
        string VisualizeRecipeEquipmentByID (int? id, bool? defaultCss);
        /// <summary>
        /// Ingredients by ID Widget Visualize a recipe&#39;s ingredient list.
        /// </summary>
        /// <param name="id">The item&#39;s id.</param>
        /// <param name="defaultCss">Whether the default CSS should be added to the response.</param>
        /// <param name="measure">Whether the the measures should be &#39;us&#39; or &#39;metric&#39;.</param>
        /// <returns>string</returns>
        string VisualizeRecipeIngredientsByID (int? id, bool? defaultCss, string measure);
        /// <summary>
        /// Recipe Nutrition Widget Visualize a recipe&#39;s nutritional information as HTML including CSS.
        /// </summary>
        /// <param name="contentType">The content type.</param>
        /// <param name="accept">Accept header.</param>
        /// <param name="language">The language of the input. Either &#39;en&#39; or &#39;de&#39;.</param>
        /// <returns>string</returns>
        string VisualizeRecipeNutrition (string contentType, string accept, string language);
        /// <summary>
        /// Recipe Nutrition by ID Widget Visualize a recipe&#39;s nutritional information as HTML including CSS.
        /// </summary>
        /// <param name="id">The item&#39;s id.</param>
        /// <param name="defaultCss">Whether the default CSS should be added to the response.</param>
        /// <param name="accept">Accept header.</param>
        /// <returns>string</returns>
        string VisualizeRecipeNutritionByID (int? id, bool? defaultCss, string accept);
        /// <summary>
        /// Price Breakdown by ID Widget Visualize a recipe&#39;s price breakdown.
        /// </summary>
        /// <param name="id">The item&#39;s id.</param>
        /// <param name="defaultCss">Whether the default CSS should be added to the response.</param>
        /// <returns>string</returns>
        string VisualizeRecipePriceBreakdownByID (int? id, bool? defaultCss);
        /// <summary>
        /// Recipe Taste Widget Visualize a recipe&#39;s taste information as HTML including CSS. You can play around with that endpoint!
        /// </summary>
        /// <param name="language">The language of the input. Either &#39;en&#39; or &#39;de&#39;.</param>
        /// <param name="contentType">The content type.</param>
        /// <param name="accept">Accept header.</param>
        /// <param name="normalize">Whether to normalize to the strongest taste.</param>
        /// <param name="rgb">Red, green, blue values for the chart color.</param>
        /// <returns>string</returns>
        string VisualizeRecipeTaste (string language, string contentType, string accept, bool? normalize, string rgb);
        /// <summary>
        /// Recipe Taste by ID Widget Get a recipe&#39;s taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.
        /// </summary>
        /// <param name="id">The item&#39;s id.</param>
        /// <param name="normalize">Whether to normalize to the strongest taste.</param>
        /// <param name="rgb">Red, green, blue values for the chart color.</param>
        /// <returns>string</returns>
        string VisualizeRecipeTasteByID (int? id, bool? normalize, string rgb);
    }
  
    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public class RecipesApi : IRecipesApi
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="RecipesApi"/> class.
        /// </summary>
        /// <param name="apiClient"> an instance of ApiClient (optional)</param>
        /// <returns></returns>
        public RecipesApi(ApiClient apiClient = null)
        {
            if (apiClient == null) // use the default one in Configuration
                this.ApiClient = Configuration.DefaultApiClient; 
            else
                this.ApiClient = apiClient;
        }
    
        /// <summary>
        /// Initializes a new instance of the <see cref="RecipesApi"/> class.
        /// </summary>
        /// <returns></returns>
        public RecipesApi(String basePath)
        {
            this.ApiClient = new ApiClient(basePath);
        }
    
        /// <summary>
        /// Sets the base path of the API client.
        /// </summary>
        /// <param name="basePath">The base path</param>
        /// <value>The base path</value>
        public void SetBasePath(String basePath)
        {
            this.ApiClient.BasePath = basePath;
        }
    
        /// <summary>
        /// Gets the base path of the API client.
        /// </summary>
        /// <param name="basePath">The base path</param>
        /// <value>The base path</value>
        public String GetBasePath(String basePath)
        {
            return this.ApiClient.BasePath;
        }
    
        /// <summary>
        /// Gets or sets the API client.
        /// </summary>
        /// <value>An instance of the ApiClient</value>
        public ApiClient ApiClient {get; set;}
    
        /// <summary>
        /// Analyze a Recipe Search Query Parse a recipe search query to find out its intention.
        /// </summary>
        /// <param name="q">The recipe search query.</param> 
        /// <returns>InlineResponse20018</returns>            
        public InlineResponse20018 AnalyzeARecipeSearchQuery (string q)
        {
            
            // verify the required parameter 'q' is set
            if (q == null) throw new ApiException(400, "Missing required parameter 'q' when calling AnalyzeARecipeSearchQuery");
            
    
            var path = "/recipes/queries/analyze";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (q != null) queryParams.Add("q", ApiClient.ParameterToString(q)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling AnalyzeARecipeSearchQuery: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling AnalyzeARecipeSearchQuery: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse20018) ApiClient.Deserialize(response.Content, typeof(InlineResponse20018), response.Headers);
        }
    
        /// <summary>
        /// Analyze Recipe Instructions This endpoint allows you to break down instructions into atomic steps. Furthermore, each step will contain the ingredients and equipment required. Additionally, all ingredients and equipment from the recipe&#39;s instructions will be extracted independently of the step they&#39;re used in.
        /// </summary>
        /// <param name="contentType">The content type.</param> 
        /// <returns>InlineResponse20016</returns>            
        public InlineResponse20016 AnalyzeRecipeInstructions (string contentType)
        {
            
    
            var path = "/recipes/analyzeInstructions";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                         if (contentType != null) headerParams.Add("Content-Type", ApiClient.ParameterToString(contentType)); // header parameter
                            
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling AnalyzeRecipeInstructions: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling AnalyzeRecipeInstructions: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse20016) ApiClient.Deserialize(response.Content, typeof(InlineResponse20016), response.Headers);
        }
    
        /// <summary>
        /// Autocomplete Recipe Search Autocomplete a partial input to suggest possible recipe names.
        /// </summary>
        /// <param name="query">The (natural language) search query.</param> 
        /// <param name="number">The maximum number of items to return (between 1 and 100). Defaults to 10.</param> 
        /// <returns>List&lt;InlineResponse2007&gt;</returns>            
        public List<InlineResponse2007> AutocompleteRecipeSearch (string query, int? number)
        {
            
    
            var path = "/recipes/autocomplete";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (query != null) queryParams.Add("query", ApiClient.ParameterToString(query)); // query parameter
 if (number != null) queryParams.Add("number", ApiClient.ParameterToString(number)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling AutocompleteRecipeSearch: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling AutocompleteRecipeSearch: " + response.ErrorMessage, response.ErrorMessage);
    
            return (List<InlineResponse2007>) ApiClient.Deserialize(response.Content, typeof(List<InlineResponse2007>), response.Headers);
        }
    
        /// <summary>
        /// Classify Cuisine Classify the recipe&#39;s cuisine.
        /// </summary>
        /// <param name="contentType">The content type.</param> 
        /// <returns>InlineResponse20017</returns>            
        public InlineResponse20017 ClassifyCuisine (string contentType)
        {
            
    
            var path = "/recipes/cuisine";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                         if (contentType != null) headerParams.Add("Content-Type", ApiClient.ParameterToString(contentType)); // header parameter
                            
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling ClassifyCuisine: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling ClassifyCuisine: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse20017) ApiClient.Deserialize(response.Content, typeof(InlineResponse20017), response.Headers);
        }
    
        /// <summary>
        /// Compute Glycemic Load Retrieve the glycemic index for a list of ingredients and compute the individual and total glycemic load.
        /// </summary>
        /// <param name="inlineObject"></param> 
        /// <param name="language">The language of the input. Either &#39;en&#39; or &#39;de&#39;.</param> 
        /// <returns>InlineResponse20023</returns>            
        public InlineResponse20023 ComputeGlycemicLoad (InlineObject inlineObject, string language)
        {
            
            // verify the required parameter 'inlineObject' is set
            if (inlineObject == null) throw new ApiException(400, "Missing required parameter 'inlineObject' when calling ComputeGlycemicLoad");
            
    
            var path = "/food/ingredients/glycemicLoad";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (language != null) queryParams.Add("language", ApiClient.ParameterToString(language)); // query parameter
                                    postBody = ApiClient.Serialize(inlineObject); // http body (model) parameter
    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling ComputeGlycemicLoad: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling ComputeGlycemicLoad: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse20023) ApiClient.Deserialize(response.Content, typeof(InlineResponse20023), response.Headers);
        }
    
        /// <summary>
        /// Convert Amounts Convert amounts like \&quot;2 cups of flour to grams\&quot;.
        /// </summary>
        /// <param name="ingredientName">The ingredient which you want to convert.</param> 
        /// <param name="sourceAmount">The amount from which you want to convert, e.g. the 2.5 in \&quot;2.5 cups of flour to grams\&quot;.</param> 
        /// <param name="sourceUnit">The unit from which you want to convert, e.g. the grams in \&quot;2.5 cups of flour to grams\&quot;. You can also use \&quot;piece\&quot;, e.g. \&quot;3.4 oz tomatoes to piece\&quot;</param> 
        /// <param name="targetUnit">The unit to which you want to convert, e.g. the grams in \&quot;2.5 cups of flour to grams\&quot;. You can also use \&quot;piece\&quot;, e.g. \&quot;3.4 oz tomatoes to piece\&quot;</param> 
        /// <returns>InlineResponse20019</returns>            
        public InlineResponse20019 ConvertAmounts (string ingredientName, decimal? sourceAmount, string sourceUnit, string targetUnit)
        {
            
            // verify the required parameter 'ingredientName' is set
            if (ingredientName == null) throw new ApiException(400, "Missing required parameter 'ingredientName' when calling ConvertAmounts");
            
            // verify the required parameter 'sourceAmount' is set
            if (sourceAmount == null) throw new ApiException(400, "Missing required parameter 'sourceAmount' when calling ConvertAmounts");
            
            // verify the required parameter 'sourceUnit' is set
            if (sourceUnit == null) throw new ApiException(400, "Missing required parameter 'sourceUnit' when calling ConvertAmounts");
            
            // verify the required parameter 'targetUnit' is set
            if (targetUnit == null) throw new ApiException(400, "Missing required parameter 'targetUnit' when calling ConvertAmounts");
            
    
            var path = "/recipes/convert";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (ingredientName != null) queryParams.Add("ingredientName", ApiClient.ParameterToString(ingredientName)); // query parameter
 if (sourceAmount != null) queryParams.Add("sourceAmount", ApiClient.ParameterToString(sourceAmount)); // query parameter
 if (sourceUnit != null) queryParams.Add("sourceUnit", ApiClient.ParameterToString(sourceUnit)); // query parameter
 if (targetUnit != null) queryParams.Add("targetUnit", ApiClient.ParameterToString(targetUnit)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling ConvertAmounts: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling ConvertAmounts: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse20019) ApiClient.Deserialize(response.Content, typeof(InlineResponse20019), response.Headers);
        }
    
        /// <summary>
        /// Create Recipe Card Generate a recipe card for a recipe.
        /// </summary>
        /// <param name="contentType">The content type.</param> 
        /// <returns>InlineResponse20015</returns>            
        public InlineResponse20015 CreateRecipeCard (string contentType)
        {
            
    
            var path = "/recipes/visualizeRecipe";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                         if (contentType != null) headerParams.Add("Content-Type", ApiClient.ParameterToString(contentType)); // header parameter
                            
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling CreateRecipeCard: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling CreateRecipeCard: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse20015) ApiClient.Deserialize(response.Content, typeof(InlineResponse20015), response.Headers);
        }
    
        /// <summary>
        /// Equipment by ID Image Visualize a recipe&#39;s equipment list as an image.
        /// </summary>
        /// <param name="id">The recipe id.</param> 
        /// <returns>Object</returns>            
        public Object EquipmentByIDImage (decimal? id)
        {
            
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling EquipmentByIDImage");
            
    
            var path = "/recipes/{id}/equipmentWidget.png";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling EquipmentByIDImage: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling EquipmentByIDImage: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Extract Recipe from Website This endpoint lets you extract recipe data such as title, ingredients, and instructions from any properly formatted Website.
        /// </summary>
        /// <param name="url">The URL of the recipe page.</param> 
        /// <param name="forceExtraction">If true, the extraction will be triggered whether we already know the recipe or not. Use this only if information is missing as this operation is slower.</param> 
        /// <param name="analyze">If true, the recipe will be analyzed and classified resolving in more data such as cuisines, dish types, and more.</param> 
        /// <param name="includeNutrition">Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings.</param> 
        /// <param name="includeTaste">Whether taste data should be added to correctly parsed ingredients.</param> 
        /// <returns>InlineResponse2003</returns>            
        public InlineResponse2003 ExtractRecipeFromWebsite (string url, bool? forceExtraction, bool? analyze, bool? includeNutrition, bool? includeTaste)
        {
            
            // verify the required parameter 'url' is set
            if (url == null) throw new ApiException(400, "Missing required parameter 'url' when calling ExtractRecipeFromWebsite");
            
    
            var path = "/recipes/extract";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (url != null) queryParams.Add("url", ApiClient.ParameterToString(url)); // query parameter
 if (forceExtraction != null) queryParams.Add("forceExtraction", ApiClient.ParameterToString(forceExtraction)); // query parameter
 if (analyze != null) queryParams.Add("analyze", ApiClient.ParameterToString(analyze)); // query parameter
 if (includeNutrition != null) queryParams.Add("includeNutrition", ApiClient.ParameterToString(includeNutrition)); // query parameter
 if (includeTaste != null) queryParams.Add("includeTaste", ApiClient.ParameterToString(includeTaste)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling ExtractRecipeFromWebsite: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling ExtractRecipeFromWebsite: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse2003) ApiClient.Deserialize(response.Content, typeof(InlineResponse2003), response.Headers);
        }
    
        /// <summary>
        /// Get Analyzed Recipe Instructions Get an analyzed breakdown of a recipe&#39;s instructions. Each step is enriched with the ingredients and equipment required.
        /// </summary>
        /// <param name="id">The item&#39;s id.</param> 
        /// <param name="stepBreakdown">Whether to break down the recipe steps even more.</param> 
        /// <returns>InlineResponse20013</returns>            
        public InlineResponse20013 GetAnalyzedRecipeInstructions (int? id, bool? stepBreakdown)
        {
            
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling GetAnalyzedRecipeInstructions");
            
    
            var path = "/recipes/{id}/analyzedInstructions";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (stepBreakdown != null) queryParams.Add("stepBreakdown", ApiClient.ParameterToString(stepBreakdown)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetAnalyzedRecipeInstructions: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetAnalyzedRecipeInstructions: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse20013) ApiClient.Deserialize(response.Content, typeof(InlineResponse20013), response.Headers);
        }
    
        /// <summary>
        /// Get Random Recipes Find random (popular) recipes. If you need to filter recipes by diet, nutrition etc. you might want to consider using the complex recipe search endpoint and set the sort request parameter to random.
        /// </summary>
        /// <param name="limitLicense">Whether the recipes should have an open license that allows display with proper attribution.</param> 
        /// <param name="tags">The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have.</param> 
        /// <param name="number">The maximum number of items to return (between 1 and 100). Defaults to 10.</param> 
        /// <returns>InlineResponse2006</returns>            
        public InlineResponse2006 GetRandomRecipes (bool? limitLicense, string tags, int? number)
        {
            
    
            var path = "/recipes/random";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (limitLicense != null) queryParams.Add("limitLicense", ApiClient.ParameterToString(limitLicense)); // query parameter
 if (tags != null) queryParams.Add("tags", ApiClient.ParameterToString(tags)); // query parameter
 if (number != null) queryParams.Add("number", ApiClient.ParameterToString(number)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetRandomRecipes: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetRandomRecipes: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse2006) ApiClient.Deserialize(response.Content, typeof(InlineResponse2006), response.Headers);
        }
    
        /// <summary>
        /// Equipment by ID Get a recipe&#39;s equipment list.
        /// </summary>
        /// <param name="id">The item&#39;s id.</param> 
        /// <returns>InlineResponse2009</returns>            
        public InlineResponse2009 GetRecipeEquipmentByID (int? id)
        {
            
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling GetRecipeEquipmentByID");
            
    
            var path = "/recipes/{id}/equipmentWidget.json";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetRecipeEquipmentByID: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetRecipeEquipmentByID: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse2009) ApiClient.Deserialize(response.Content, typeof(InlineResponse2009), response.Headers);
        }
    
        /// <summary>
        /// Get Recipe Information Use a recipe id to get full information about a recipe, such as ingredients, nutrition, diet and allergen information, etc.
        /// </summary>
        /// <param name="id">The item&#39;s id.</param> 
        /// <param name="includeNutrition">Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings.</param> 
        /// <returns>InlineResponse2003</returns>            
        public InlineResponse2003 GetRecipeInformation (int? id, bool? includeNutrition)
        {
            
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling GetRecipeInformation");
            
    
            var path = "/recipes/{id}/information";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (includeNutrition != null) queryParams.Add("includeNutrition", ApiClient.ParameterToString(includeNutrition)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetRecipeInformation: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetRecipeInformation: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse2003) ApiClient.Deserialize(response.Content, typeof(InlineResponse2003), response.Headers);
        }
    
        /// <summary>
        /// Get Recipe Information Bulk Get information about multiple recipes at once. This is equivalent to calling the Get Recipe Information endpoint multiple times, but faster.
        /// </summary>
        /// <param name="ids">A comma-separated list of recipe ids.</param> 
        /// <param name="includeNutrition">Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings.</param> 
        /// <returns>List&lt;InlineResponse2004&gt;</returns>            
        public List<InlineResponse2004> GetRecipeInformationBulk (string ids, bool? includeNutrition)
        {
            
            // verify the required parameter 'ids' is set
            if (ids == null) throw new ApiException(400, "Missing required parameter 'ids' when calling GetRecipeInformationBulk");
            
    
            var path = "/recipes/informationBulk";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (ids != null) queryParams.Add("ids", ApiClient.ParameterToString(ids)); // query parameter
 if (includeNutrition != null) queryParams.Add("includeNutrition", ApiClient.ParameterToString(includeNutrition)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetRecipeInformationBulk: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetRecipeInformationBulk: " + response.ErrorMessage, response.ErrorMessage);
    
            return (List<InlineResponse2004>) ApiClient.Deserialize(response.Content, typeof(List<InlineResponse2004>), response.Headers);
        }
    
        /// <summary>
        /// Ingredients by ID Get a recipe&#39;s ingredient list.
        /// </summary>
        /// <param name="id">The item&#39;s id.</param> 
        /// <returns>InlineResponse20011</returns>            
        public InlineResponse20011 GetRecipeIngredientsByID (int? id)
        {
            
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling GetRecipeIngredientsByID");
            
    
            var path = "/recipes/{id}/ingredientWidget.json";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetRecipeIngredientsByID: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetRecipeIngredientsByID: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse20011) ApiClient.Deserialize(response.Content, typeof(InlineResponse20011), response.Headers);
        }
    
        /// <summary>
        /// Nutrition by ID Get a recipe&#39;s nutrition data.
        /// </summary>
        /// <param name="id">The item&#39;s id.</param> 
        /// <returns>InlineResponse20012</returns>            
        public InlineResponse20012 GetRecipeNutritionWidgetByID (int? id)
        {
            
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling GetRecipeNutritionWidgetByID");
            
    
            var path = "/recipes/{id}/nutritionWidget.json";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetRecipeNutritionWidgetByID: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetRecipeNutritionWidgetByID: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse20012) ApiClient.Deserialize(response.Content, typeof(InlineResponse20012), response.Headers);
        }
    
        /// <summary>
        /// Price Breakdown by ID Get a recipe&#39;s price breakdown data.
        /// </summary>
        /// <param name="id">The item&#39;s id.</param> 
        /// <returns>InlineResponse20010</returns>            
        public InlineResponse20010 GetRecipePriceBreakdownByID (int? id)
        {
            
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling GetRecipePriceBreakdownByID");
            
    
            var path = "/recipes/{id}/priceBreakdownWidget.json";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetRecipePriceBreakdownByID: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetRecipePriceBreakdownByID: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse20010) ApiClient.Deserialize(response.Content, typeof(InlineResponse20010), response.Headers);
        }
    
        /// <summary>
        /// Taste by ID Get a recipe&#39;s taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.
        /// </summary>
        /// <param name="id">The item&#39;s id.</param> 
        /// <param name="normalize">Normalize to the strongest taste.</param> 
        /// <returns>InlineResponse2008</returns>            
        public InlineResponse2008 GetRecipeTasteByID (int? id, bool? normalize)
        {
            
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling GetRecipeTasteByID");
            
    
            var path = "/recipes/{id}/tasteWidget.json";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (normalize != null) queryParams.Add("normalize", ApiClient.ParameterToString(normalize)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetRecipeTasteByID: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetRecipeTasteByID: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse2008) ApiClient.Deserialize(response.Content, typeof(InlineResponse2008), response.Headers);
        }
    
        /// <summary>
        /// Get Similar Recipes Find recipes which are similar to the given one.
        /// </summary>
        /// <param name="id">The item&#39;s id.</param> 
        /// <param name="number">The maximum number of items to return (between 1 and 100). Defaults to 10.</param> 
        /// <param name="limitLicense">Whether the recipes should have an open license that allows display with proper attribution.</param> 
        /// <returns>List&lt;InlineResponse2005&gt;</returns>            
        public List<InlineResponse2005> GetSimilarRecipes (int? id, int? number, bool? limitLicense)
        {
            
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling GetSimilarRecipes");
            
    
            var path = "/recipes/{id}/similar";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (number != null) queryParams.Add("number", ApiClient.ParameterToString(number)); // query parameter
 if (limitLicense != null) queryParams.Add("limitLicense", ApiClient.ParameterToString(limitLicense)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetSimilarRecipes: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetSimilarRecipes: " + response.ErrorMessage, response.ErrorMessage);
    
            return (List<InlineResponse2005>) ApiClient.Deserialize(response.Content, typeof(List<InlineResponse2005>), response.Headers);
        }
    
        /// <summary>
        /// Guess Nutrition by Dish Name Estimate the macronutrients of a dish based on its title.
        /// </summary>
        /// <param name="title">The title of the dish.</param> 
        /// <returns>InlineResponse20021</returns>            
        public InlineResponse20021 GuessNutritionByDishName (string title)
        {
            
            // verify the required parameter 'title' is set
            if (title == null) throw new ApiException(400, "Missing required parameter 'title' when calling GuessNutritionByDishName");
            
    
            var path = "/recipes/guessNutrition";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (title != null) queryParams.Add("title", ApiClient.ParameterToString(title)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GuessNutritionByDishName: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GuessNutritionByDishName: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse20021) ApiClient.Deserialize(response.Content, typeof(InlineResponse20021), response.Headers);
        }
    
        /// <summary>
        /// Ingredients by ID Image Visualize a recipe&#39;s ingredient list.
        /// </summary>
        /// <param name="id">The recipe id.</param> 
        /// <param name="measure">Whether the the measures should be &#39;us&#39; or &#39;metric&#39;.</param> 
        /// <returns>Object</returns>            
        public Object IngredientsByIDImage (decimal? id, string measure)
        {
            
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling IngredientsByIDImage");
            
    
            var path = "/recipes/{id}/ingredientWidget.png";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (measure != null) queryParams.Add("measure", ApiClient.ParameterToString(measure)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling IngredientsByIDImage: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling IngredientsByIDImage: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Parse Ingredients Extract an ingredient from plain text.
        /// </summary>
        /// <param name="contentType">The content type.</param> 
        /// <param name="language">The language of the input. Either &#39;en&#39; or &#39;de&#39;.</param> 
        /// <returns>List&lt;InlineResponse20020&gt;</returns>            
        public List<InlineResponse20020> ParseIngredients (string contentType, string language)
        {
            
    
            var path = "/recipes/parseIngredients";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (language != null) queryParams.Add("language", ApiClient.ParameterToString(language)); // query parameter
             if (contentType != null) headerParams.Add("Content-Type", ApiClient.ParameterToString(contentType)); // header parameter
                            
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling ParseIngredients: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling ParseIngredients: " + response.ErrorMessage, response.ErrorMessage);
    
            return (List<InlineResponse20020>) ApiClient.Deserialize(response.Content, typeof(List<InlineResponse20020>), response.Headers);
        }
    
        /// <summary>
        /// Price Breakdown by ID Image Visualize a recipe&#39;s price breakdown.
        /// </summary>
        /// <param name="id">The recipe id.</param> 
        /// <returns>Object</returns>            
        public Object PriceBreakdownByIDImage (decimal? id)
        {
            
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling PriceBreakdownByIDImage");
            
    
            var path = "/recipes/{id}/priceBreakdownWidget.png";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling PriceBreakdownByIDImage: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling PriceBreakdownByIDImage: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Quick Answer Answer a nutrition related natural language question.
        /// </summary>
        /// <param name="q">The nutrition related question.</param> 
        /// <returns>InlineResponse20050</returns>            
        public InlineResponse20050 QuickAnswer (string q)
        {
            
            // verify the required parameter 'q' is set
            if (q == null) throw new ApiException(400, "Missing required parameter 'q' when calling QuickAnswer");
            
    
            var path = "/recipes/quickAnswer";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (q != null) queryParams.Add("q", ApiClient.ParameterToString(q)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling QuickAnswer: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling QuickAnswer: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse20050) ApiClient.Deserialize(response.Content, typeof(InlineResponse20050), response.Headers);
        }
    
        /// <summary>
        /// Recipe Nutrition by ID Image Visualize a recipe&#39;s nutritional information as an image.
        /// </summary>
        /// <param name="id">The recipe id.</param> 
        /// <returns>Object</returns>            
        public Object RecipeNutritionByIDImage (decimal? id)
        {
            
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling RecipeNutritionByIDImage");
            
    
            var path = "/recipes/{id}/nutritionWidget.png";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling RecipeNutritionByIDImage: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling RecipeNutritionByIDImage: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Recipe Nutrition Label Image Get a recipe&#39;s nutrition label as an image.
        /// </summary>
        /// <param name="id">The recipe id.</param> 
        /// <param name="showOptionalNutrients">Whether to show optional nutrients.</param> 
        /// <param name="showZeroValues">Whether to show zero values.</param> 
        /// <param name="showIngredients">Whether to show a list of ingredients.</param> 
        /// <returns>Object</returns>            
        public Object RecipeNutritionLabelImage (decimal? id, bool? showOptionalNutrients, bool? showZeroValues, bool? showIngredients)
        {
            
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling RecipeNutritionLabelImage");
            
    
            var path = "/recipes/{id}/nutritionLabel.png";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (showOptionalNutrients != null) queryParams.Add("showOptionalNutrients", ApiClient.ParameterToString(showOptionalNutrients)); // query parameter
 if (showZeroValues != null) queryParams.Add("showZeroValues", ApiClient.ParameterToString(showZeroValues)); // query parameter
 if (showIngredients != null) queryParams.Add("showIngredients", ApiClient.ParameterToString(showIngredients)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling RecipeNutritionLabelImage: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling RecipeNutritionLabelImage: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Recipe Nutrition Label Widget Get a recipe&#39;s nutrition label as an HTML widget.
        /// </summary>
        /// <param name="id">The recipe id.</param> 
        /// <param name="defaultCss">Whether the default CSS should be added to the response.</param> 
        /// <param name="showOptionalNutrients">Whether to show optional nutrients.</param> 
        /// <param name="showZeroValues">Whether to show zero values.</param> 
        /// <param name="showIngredients">Whether to show a list of ingredients.</param> 
        /// <returns>string</returns>            
        public string RecipeNutritionLabelWidget (decimal? id, bool? defaultCss, bool? showOptionalNutrients, bool? showZeroValues, bool? showIngredients)
        {
            
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling RecipeNutritionLabelWidget");
            
    
            var path = "/recipes/{id}/nutritionLabel";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (defaultCss != null) queryParams.Add("defaultCss", ApiClient.ParameterToString(defaultCss)); // query parameter
 if (showOptionalNutrients != null) queryParams.Add("showOptionalNutrients", ApiClient.ParameterToString(showOptionalNutrients)); // query parameter
 if (showZeroValues != null) queryParams.Add("showZeroValues", ApiClient.ParameterToString(showZeroValues)); // query parameter
 if (showIngredients != null) queryParams.Add("showIngredients", ApiClient.ParameterToString(showIngredients)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling RecipeNutritionLabelWidget: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling RecipeNutritionLabelWidget: " + response.ErrorMessage, response.ErrorMessage);
    
            return (string) ApiClient.Deserialize(response.Content, typeof(string), response.Headers);
        }
    
        /// <summary>
        /// Recipe Taste by ID Image Get a recipe&#39;s taste as an image. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.
        /// </summary>
        /// <param name="id">The recipe id.</param> 
        /// <param name="normalize">Normalize to the strongest taste.</param> 
        /// <param name="rgb">Red, green, blue values for the chart color.</param> 
        /// <returns>Object</returns>            
        public Object RecipeTasteByIDImage (decimal? id, bool? normalize, string rgb)
        {
            
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling RecipeTasteByIDImage");
            
    
            var path = "/recipes/{id}/tasteWidget.png";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (normalize != null) queryParams.Add("normalize", ApiClient.ParameterToString(normalize)); // query parameter
 if (rgb != null) queryParams.Add("rgb", ApiClient.ParameterToString(rgb)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling RecipeTasteByIDImage: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling RecipeTasteByIDImage: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Search Recipes Search through hundreds of thousands of recipes using advanced filtering and ranking. NOTE: This method combines searching by query, by ingredients, and by nutrients into one endpoint.
        /// </summary>
        /// <param name="query">The (natural language) search query.</param> 
        /// <param name="cuisine">The cuisine(s) of the recipes. One or more, comma separated (will be interpreted as &#39;OR&#39;). See a full list of supported cuisines.</param> 
        /// <param name="excludeCuisine">The cuisine(s) the recipes must not match. One or more, comma separated (will be interpreted as &#39;AND&#39;). See a full list of supported cuisines.</param> 
        /// <param name="diet">The diet for which the recipes must be suitable. See a full list of supported diets.</param> 
        /// <param name="intolerances">A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.</param> 
        /// <param name="equipment">The equipment required. Multiple values will be interpreted as &#39;or&#39;. For example, value could be \&quot;blender, frying pan, bowl\&quot;.</param> 
        /// <param name="includeIngredients">A comma-separated list of ingredients that should/must be used in the recipes.</param> 
        /// <param name="excludeIngredients">A comma-separated list of ingredients or ingredient types that the recipes must not contain.</param> 
        /// <param name="type">The type of recipe. See a full list of supported meal types.</param> 
        /// <param name="instructionsRequired">Whether the recipes must have instructions.</param> 
        /// <param name="fillIngredients">Add information about the ingredients and whether they are used or missing in relation to the query.</param> 
        /// <param name="addRecipeInformation">If set to true, you get more information about the recipes returned.</param> 
        /// <param name="addRecipeNutrition">If set to true, you get nutritional information about each recipes returned.</param> 
        /// <param name="author">The username of the recipe author.</param> 
        /// <param name="tags">The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have.</param> 
        /// <param name="recipeBoxId">The id of the recipe box to which the search should be limited to.</param> 
        /// <param name="titleMatch">Enter text that must be found in the title of the recipes.</param> 
        /// <param name="maxReadyTime">The maximum time in minutes it should take to prepare and cook the recipe.</param> 
        /// <param name="ignorePantry">Whether to ignore typical pantry items, such as water, salt, flour, etc.</param> 
        /// <param name="sort">The strategy to sort recipes by. See a full list of supported sorting options.</param> 
        /// <param name="sortDirection">The direction in which to sort. Must be either &#39;asc&#39; (ascending) or &#39;desc&#39; (descending).</param> 
        /// <param name="minCarbs">The minimum amount of carbohydrates in grams the recipe must have.</param> 
        /// <param name="maxCarbs">The maximum amount of carbohydrates in grams the recipe can have.</param> 
        /// <param name="minProtein">The minimum amount of protein in grams the recipe must have.</param> 
        /// <param name="maxProtein">The maximum amount of protein in grams the recipe can have.</param> 
        /// <param name="minCalories">The minimum amount of calories the recipe must have.</param> 
        /// <param name="maxCalories">The maximum amount of calories the recipe can have.</param> 
        /// <param name="minFat">The minimum amount of fat in grams the recipe must have.</param> 
        /// <param name="maxFat">The maximum amount of fat in grams the recipe can have.</param> 
        /// <param name="minAlcohol">The minimum amount of alcohol in grams the recipe must have.</param> 
        /// <param name="maxAlcohol">The maximum amount of alcohol in grams the recipe can have.</param> 
        /// <param name="minCaffeine">The minimum amount of caffeine in milligrams the recipe must have.</param> 
        /// <param name="maxCaffeine">The maximum amount of caffeine in milligrams the recipe can have.</param> 
        /// <param name="minCopper">The minimum amount of copper in milligrams the recipe must have.</param> 
        /// <param name="maxCopper">The maximum amount of copper in milligrams the recipe can have.</param> 
        /// <param name="minCalcium">The minimum amount of calcium in milligrams the recipe must have.</param> 
        /// <param name="maxCalcium">The maximum amount of calcium in milligrams the recipe can have.</param> 
        /// <param name="minCholine">The minimum amount of choline in milligrams the recipe must have.</param> 
        /// <param name="maxCholine">The maximum amount of choline in milligrams the recipe can have.</param> 
        /// <param name="minCholesterol">The minimum amount of cholesterol in milligrams the recipe must have.</param> 
        /// <param name="maxCholesterol">The maximum amount of cholesterol in milligrams the recipe can have.</param> 
        /// <param name="minFluoride">The minimum amount of fluoride in milligrams the recipe must have.</param> 
        /// <param name="maxFluoride">The maximum amount of fluoride in milligrams the recipe can have.</param> 
        /// <param name="minSaturatedFat">The minimum amount of saturated fat in grams the recipe must have.</param> 
        /// <param name="maxSaturatedFat">The maximum amount of saturated fat in grams the recipe can have.</param> 
        /// <param name="minVitaminA">The minimum amount of Vitamin A in IU the recipe must have.</param> 
        /// <param name="maxVitaminA">The maximum amount of Vitamin A in IU the recipe can have.</param> 
        /// <param name="minVitaminC">The minimum amount of Vitamin C milligrams the recipe must have.</param> 
        /// <param name="maxVitaminC">The maximum amount of Vitamin C in milligrams the recipe can have.</param> 
        /// <param name="minVitaminD">The minimum amount of Vitamin D in micrograms the recipe must have.</param> 
        /// <param name="maxVitaminD">The maximum amount of Vitamin D in micrograms the recipe can have.</param> 
        /// <param name="minVitaminE">The minimum amount of Vitamin E in milligrams the recipe must have.</param> 
        /// <param name="maxVitaminE">The maximum amount of Vitamin E in milligrams the recipe can have.</param> 
        /// <param name="minVitaminK">The minimum amount of Vitamin K in micrograms the recipe must have.</param> 
        /// <param name="maxVitaminK">The maximum amount of Vitamin K in micrograms the recipe can have.</param> 
        /// <param name="minVitaminB1">The minimum amount of Vitamin B1 in milligrams the recipe must have.</param> 
        /// <param name="maxVitaminB1">The maximum amount of Vitamin B1 in milligrams the recipe can have.</param> 
        /// <param name="minVitaminB2">The minimum amount of Vitamin B2 in milligrams the recipe must have.</param> 
        /// <param name="maxVitaminB2">The maximum amount of Vitamin B2 in milligrams the recipe can have.</param> 
        /// <param name="minVitaminB5">The minimum amount of Vitamin B5 in milligrams the recipe must have.</param> 
        /// <param name="maxVitaminB5">The maximum amount of Vitamin B5 in milligrams the recipe can have.</param> 
        /// <param name="minVitaminB3">The minimum amount of Vitamin B3 in milligrams the recipe must have.</param> 
        /// <param name="maxVitaminB3">The maximum amount of Vitamin B3 in milligrams the recipe can have.</param> 
        /// <param name="minVitaminB6">The minimum amount of Vitamin B6 in milligrams the recipe must have.</param> 
        /// <param name="maxVitaminB6">The maximum amount of Vitamin B6 in milligrams the recipe can have.</param> 
        /// <param name="minVitaminB12">The minimum amount of Vitamin B12 in micrograms the recipe must have.</param> 
        /// <param name="maxVitaminB12">The maximum amount of Vitamin B12 in micrograms the recipe can have.</param> 
        /// <param name="minFiber">The minimum amount of fiber in grams the recipe must have.</param> 
        /// <param name="maxFiber">The maximum amount of fiber in grams the recipe can have.</param> 
        /// <param name="minFolate">The minimum amount of folate in micrograms the recipe must have.</param> 
        /// <param name="maxFolate">The maximum amount of folate in micrograms the recipe can have.</param> 
        /// <param name="minFolicAcid">The minimum amount of folic acid in micrograms the recipe must have.</param> 
        /// <param name="maxFolicAcid">The maximum amount of folic acid in micrograms the recipe can have.</param> 
        /// <param name="minIodine">The minimum amount of iodine in micrograms the recipe must have.</param> 
        /// <param name="maxIodine">The maximum amount of iodine in micrograms the recipe can have.</param> 
        /// <param name="minIron">The minimum amount of iron in milligrams the recipe must have.</param> 
        /// <param name="maxIron">The maximum amount of iron in milligrams the recipe can have.</param> 
        /// <param name="minMagnesium">The minimum amount of magnesium in milligrams the recipe must have.</param> 
        /// <param name="maxMagnesium">The maximum amount of magnesium in milligrams the recipe can have.</param> 
        /// <param name="minManganese">The minimum amount of manganese in milligrams the recipe must have.</param> 
        /// <param name="maxManganese">The maximum amount of manganese in milligrams the recipe can have.</param> 
        /// <param name="minPhosphorus">The minimum amount of phosphorus in milligrams the recipe must have.</param> 
        /// <param name="maxPhosphorus">The maximum amount of phosphorus in milligrams the recipe can have.</param> 
        /// <param name="minPotassium">The minimum amount of potassium in milligrams the recipe must have.</param> 
        /// <param name="maxPotassium">The maximum amount of potassium in milligrams the recipe can have.</param> 
        /// <param name="minSelenium">The minimum amount of selenium in micrograms the recipe must have.</param> 
        /// <param name="maxSelenium">The maximum amount of selenium in micrograms the recipe can have.</param> 
        /// <param name="minSodium">The minimum amount of sodium in milligrams the recipe must have.</param> 
        /// <param name="maxSodium">The maximum amount of sodium in milligrams the recipe can have.</param> 
        /// <param name="minSugar">The minimum amount of sugar in grams the recipe must have.</param> 
        /// <param name="maxSugar">The maximum amount of sugar in grams the recipe can have.</param> 
        /// <param name="minZinc">The minimum amount of zinc in milligrams the recipe must have.</param> 
        /// <param name="maxZinc">The maximum amount of zinc in milligrams the recipe can have.</param> 
        /// <param name="offset">The number of results to skip (between 0 and 900).</param> 
        /// <param name="number">The maximum number of items to return (between 1 and 100). Defaults to 10.</param> 
        /// <param name="limitLicense">Whether the recipes should have an open license that allows display with proper attribution.</param> 
        /// <returns>InlineResponse200</returns>            
        public InlineResponse200 SearchRecipes (string query, string cuisine, string excludeCuisine, string diet, string intolerances, string equipment, string includeIngredients, string excludeIngredients, string type, bool? instructionsRequired, bool? fillIngredients, bool? addRecipeInformation, bool? addRecipeNutrition, string author, string tags, decimal? recipeBoxId, string titleMatch, decimal? maxReadyTime, bool? ignorePantry, string sort, string sortDirection, decimal? minCarbs, decimal? maxCarbs, decimal? minProtein, decimal? maxProtein, decimal? minCalories, decimal? maxCalories, decimal? minFat, decimal? maxFat, decimal? minAlcohol, decimal? maxAlcohol, decimal? minCaffeine, decimal? maxCaffeine, decimal? minCopper, decimal? maxCopper, decimal? minCalcium, decimal? maxCalcium, decimal? minCholine, decimal? maxCholine, decimal? minCholesterol, decimal? maxCholesterol, decimal? minFluoride, decimal? maxFluoride, decimal? minSaturatedFat, decimal? maxSaturatedFat, decimal? minVitaminA, decimal? maxVitaminA, decimal? minVitaminC, decimal? maxVitaminC, decimal? minVitaminD, decimal? maxVitaminD, decimal? minVitaminE, decimal? maxVitaminE, decimal? minVitaminK, decimal? maxVitaminK, decimal? minVitaminB1, decimal? maxVitaminB1, decimal? minVitaminB2, decimal? maxVitaminB2, decimal? minVitaminB5, decimal? maxVitaminB5, decimal? minVitaminB3, decimal? maxVitaminB3, decimal? minVitaminB6, decimal? maxVitaminB6, decimal? minVitaminB12, decimal? maxVitaminB12, decimal? minFiber, decimal? maxFiber, decimal? minFolate, decimal? maxFolate, decimal? minFolicAcid, decimal? maxFolicAcid, decimal? minIodine, decimal? maxIodine, decimal? minIron, decimal? maxIron, decimal? minMagnesium, decimal? maxMagnesium, decimal? minManganese, decimal? maxManganese, decimal? minPhosphorus, decimal? maxPhosphorus, decimal? minPotassium, decimal? maxPotassium, decimal? minSelenium, decimal? maxSelenium, decimal? minSodium, decimal? maxSodium, decimal? minSugar, decimal? maxSugar, decimal? minZinc, decimal? maxZinc, int? offset, int? number, bool? limitLicense)
        {
            
    
            var path = "/recipes/complexSearch";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (query != null) queryParams.Add("query", ApiClient.ParameterToString(query)); // query parameter
 if (cuisine != null) queryParams.Add("cuisine", ApiClient.ParameterToString(cuisine)); // query parameter
 if (excludeCuisine != null) queryParams.Add("excludeCuisine", ApiClient.ParameterToString(excludeCuisine)); // query parameter
 if (diet != null) queryParams.Add("diet", ApiClient.ParameterToString(diet)); // query parameter
 if (intolerances != null) queryParams.Add("intolerances", ApiClient.ParameterToString(intolerances)); // query parameter
 if (equipment != null) queryParams.Add("equipment", ApiClient.ParameterToString(equipment)); // query parameter
 if (includeIngredients != null) queryParams.Add("includeIngredients", ApiClient.ParameterToString(includeIngredients)); // query parameter
 if (excludeIngredients != null) queryParams.Add("excludeIngredients", ApiClient.ParameterToString(excludeIngredients)); // query parameter
 if (type != null) queryParams.Add("type", ApiClient.ParameterToString(type)); // query parameter
 if (instructionsRequired != null) queryParams.Add("instructionsRequired", ApiClient.ParameterToString(instructionsRequired)); // query parameter
 if (fillIngredients != null) queryParams.Add("fillIngredients", ApiClient.ParameterToString(fillIngredients)); // query parameter
 if (addRecipeInformation != null) queryParams.Add("addRecipeInformation", ApiClient.ParameterToString(addRecipeInformation)); // query parameter
 if (addRecipeNutrition != null) queryParams.Add("addRecipeNutrition", ApiClient.ParameterToString(addRecipeNutrition)); // query parameter
 if (author != null) queryParams.Add("author", ApiClient.ParameterToString(author)); // query parameter
 if (tags != null) queryParams.Add("tags", ApiClient.ParameterToString(tags)); // query parameter
 if (recipeBoxId != null) queryParams.Add("recipeBoxId", ApiClient.ParameterToString(recipeBoxId)); // query parameter
 if (titleMatch != null) queryParams.Add("titleMatch", ApiClient.ParameterToString(titleMatch)); // query parameter
 if (maxReadyTime != null) queryParams.Add("maxReadyTime", ApiClient.ParameterToString(maxReadyTime)); // query parameter
 if (ignorePantry != null) queryParams.Add("ignorePantry", ApiClient.ParameterToString(ignorePantry)); // query parameter
 if (sort != null) queryParams.Add("sort", ApiClient.ParameterToString(sort)); // query parameter
 if (sortDirection != null) queryParams.Add("sortDirection", ApiClient.ParameterToString(sortDirection)); // query parameter
 if (minCarbs != null) queryParams.Add("minCarbs", ApiClient.ParameterToString(minCarbs)); // query parameter
 if (maxCarbs != null) queryParams.Add("maxCarbs", ApiClient.ParameterToString(maxCarbs)); // query parameter
 if (minProtein != null) queryParams.Add("minProtein", ApiClient.ParameterToString(minProtein)); // query parameter
 if (maxProtein != null) queryParams.Add("maxProtein", ApiClient.ParameterToString(maxProtein)); // query parameter
 if (minCalories != null) queryParams.Add("minCalories", ApiClient.ParameterToString(minCalories)); // query parameter
 if (maxCalories != null) queryParams.Add("maxCalories", ApiClient.ParameterToString(maxCalories)); // query parameter
 if (minFat != null) queryParams.Add("minFat", ApiClient.ParameterToString(minFat)); // query parameter
 if (maxFat != null) queryParams.Add("maxFat", ApiClient.ParameterToString(maxFat)); // query parameter
 if (minAlcohol != null) queryParams.Add("minAlcohol", ApiClient.ParameterToString(minAlcohol)); // query parameter
 if (maxAlcohol != null) queryParams.Add("maxAlcohol", ApiClient.ParameterToString(maxAlcohol)); // query parameter
 if (minCaffeine != null) queryParams.Add("minCaffeine", ApiClient.ParameterToString(minCaffeine)); // query parameter
 if (maxCaffeine != null) queryParams.Add("maxCaffeine", ApiClient.ParameterToString(maxCaffeine)); // query parameter
 if (minCopper != null) queryParams.Add("minCopper", ApiClient.ParameterToString(minCopper)); // query parameter
 if (maxCopper != null) queryParams.Add("maxCopper", ApiClient.ParameterToString(maxCopper)); // query parameter
 if (minCalcium != null) queryParams.Add("minCalcium", ApiClient.ParameterToString(minCalcium)); // query parameter
 if (maxCalcium != null) queryParams.Add("maxCalcium", ApiClient.ParameterToString(maxCalcium)); // query parameter
 if (minCholine != null) queryParams.Add("minCholine", ApiClient.ParameterToString(minCholine)); // query parameter
 if (maxCholine != null) queryParams.Add("maxCholine", ApiClient.ParameterToString(maxCholine)); // query parameter
 if (minCholesterol != null) queryParams.Add("minCholesterol", ApiClient.ParameterToString(minCholesterol)); // query parameter
 if (maxCholesterol != null) queryParams.Add("maxCholesterol", ApiClient.ParameterToString(maxCholesterol)); // query parameter
 if (minFluoride != null) queryParams.Add("minFluoride", ApiClient.ParameterToString(minFluoride)); // query parameter
 if (maxFluoride != null) queryParams.Add("maxFluoride", ApiClient.ParameterToString(maxFluoride)); // query parameter
 if (minSaturatedFat != null) queryParams.Add("minSaturatedFat", ApiClient.ParameterToString(minSaturatedFat)); // query parameter
 if (maxSaturatedFat != null) queryParams.Add("maxSaturatedFat", ApiClient.ParameterToString(maxSaturatedFat)); // query parameter
 if (minVitaminA != null) queryParams.Add("minVitaminA", ApiClient.ParameterToString(minVitaminA)); // query parameter
 if (maxVitaminA != null) queryParams.Add("maxVitaminA", ApiClient.ParameterToString(maxVitaminA)); // query parameter
 if (minVitaminC != null) queryParams.Add("minVitaminC", ApiClient.ParameterToString(minVitaminC)); // query parameter
 if (maxVitaminC != null) queryParams.Add("maxVitaminC", ApiClient.ParameterToString(maxVitaminC)); // query parameter
 if (minVitaminD != null) queryParams.Add("minVitaminD", ApiClient.ParameterToString(minVitaminD)); // query parameter
 if (maxVitaminD != null) queryParams.Add("maxVitaminD", ApiClient.ParameterToString(maxVitaminD)); // query parameter
 if (minVitaminE != null) queryParams.Add("minVitaminE", ApiClient.ParameterToString(minVitaminE)); // query parameter
 if (maxVitaminE != null) queryParams.Add("maxVitaminE", ApiClient.ParameterToString(maxVitaminE)); // query parameter
 if (minVitaminK != null) queryParams.Add("minVitaminK", ApiClient.ParameterToString(minVitaminK)); // query parameter
 if (maxVitaminK != null) queryParams.Add("maxVitaminK", ApiClient.ParameterToString(maxVitaminK)); // query parameter
 if (minVitaminB1 != null) queryParams.Add("minVitaminB1", ApiClient.ParameterToString(minVitaminB1)); // query parameter
 if (maxVitaminB1 != null) queryParams.Add("maxVitaminB1", ApiClient.ParameterToString(maxVitaminB1)); // query parameter
 if (minVitaminB2 != null) queryParams.Add("minVitaminB2", ApiClient.ParameterToString(minVitaminB2)); // query parameter
 if (maxVitaminB2 != null) queryParams.Add("maxVitaminB2", ApiClient.ParameterToString(maxVitaminB2)); // query parameter
 if (minVitaminB5 != null) queryParams.Add("minVitaminB5", ApiClient.ParameterToString(minVitaminB5)); // query parameter
 if (maxVitaminB5 != null) queryParams.Add("maxVitaminB5", ApiClient.ParameterToString(maxVitaminB5)); // query parameter
 if (minVitaminB3 != null) queryParams.Add("minVitaminB3", ApiClient.ParameterToString(minVitaminB3)); // query parameter
 if (maxVitaminB3 != null) queryParams.Add("maxVitaminB3", ApiClient.ParameterToString(maxVitaminB3)); // query parameter
 if (minVitaminB6 != null) queryParams.Add("minVitaminB6", ApiClient.ParameterToString(minVitaminB6)); // query parameter
 if (maxVitaminB6 != null) queryParams.Add("maxVitaminB6", ApiClient.ParameterToString(maxVitaminB6)); // query parameter
 if (minVitaminB12 != null) queryParams.Add("minVitaminB12", ApiClient.ParameterToString(minVitaminB12)); // query parameter
 if (maxVitaminB12 != null) queryParams.Add("maxVitaminB12", ApiClient.ParameterToString(maxVitaminB12)); // query parameter
 if (minFiber != null) queryParams.Add("minFiber", ApiClient.ParameterToString(minFiber)); // query parameter
 if (maxFiber != null) queryParams.Add("maxFiber", ApiClient.ParameterToString(maxFiber)); // query parameter
 if (minFolate != null) queryParams.Add("minFolate", ApiClient.ParameterToString(minFolate)); // query parameter
 if (maxFolate != null) queryParams.Add("maxFolate", ApiClient.ParameterToString(maxFolate)); // query parameter
 if (minFolicAcid != null) queryParams.Add("minFolicAcid", ApiClient.ParameterToString(minFolicAcid)); // query parameter
 if (maxFolicAcid != null) queryParams.Add("maxFolicAcid", ApiClient.ParameterToString(maxFolicAcid)); // query parameter
 if (minIodine != null) queryParams.Add("minIodine", ApiClient.ParameterToString(minIodine)); // query parameter
 if (maxIodine != null) queryParams.Add("maxIodine", ApiClient.ParameterToString(maxIodine)); // query parameter
 if (minIron != null) queryParams.Add("minIron", ApiClient.ParameterToString(minIron)); // query parameter
 if (maxIron != null) queryParams.Add("maxIron", ApiClient.ParameterToString(maxIron)); // query parameter
 if (minMagnesium != null) queryParams.Add("minMagnesium", ApiClient.ParameterToString(minMagnesium)); // query parameter
 if (maxMagnesium != null) queryParams.Add("maxMagnesium", ApiClient.ParameterToString(maxMagnesium)); // query parameter
 if (minManganese != null) queryParams.Add("minManganese", ApiClient.ParameterToString(minManganese)); // query parameter
 if (maxManganese != null) queryParams.Add("maxManganese", ApiClient.ParameterToString(maxManganese)); // query parameter
 if (minPhosphorus != null) queryParams.Add("minPhosphorus", ApiClient.ParameterToString(minPhosphorus)); // query parameter
 if (maxPhosphorus != null) queryParams.Add("maxPhosphorus", ApiClient.ParameterToString(maxPhosphorus)); // query parameter
 if (minPotassium != null) queryParams.Add("minPotassium", ApiClient.ParameterToString(minPotassium)); // query parameter
 if (maxPotassium != null) queryParams.Add("maxPotassium", ApiClient.ParameterToString(maxPotassium)); // query parameter
 if (minSelenium != null) queryParams.Add("minSelenium", ApiClient.ParameterToString(minSelenium)); // query parameter
 if (maxSelenium != null) queryParams.Add("maxSelenium", ApiClient.ParameterToString(maxSelenium)); // query parameter
 if (minSodium != null) queryParams.Add("minSodium", ApiClient.ParameterToString(minSodium)); // query parameter
 if (maxSodium != null) queryParams.Add("maxSodium", ApiClient.ParameterToString(maxSodium)); // query parameter
 if (minSugar != null) queryParams.Add("minSugar", ApiClient.ParameterToString(minSugar)); // query parameter
 if (maxSugar != null) queryParams.Add("maxSugar", ApiClient.ParameterToString(maxSugar)); // query parameter
 if (minZinc != null) queryParams.Add("minZinc", ApiClient.ParameterToString(minZinc)); // query parameter
 if (maxZinc != null) queryParams.Add("maxZinc", ApiClient.ParameterToString(maxZinc)); // query parameter
 if (offset != null) queryParams.Add("offset", ApiClient.ParameterToString(offset)); // query parameter
 if (number != null) queryParams.Add("number", ApiClient.ParameterToString(number)); // query parameter
 if (limitLicense != null) queryParams.Add("limitLicense", ApiClient.ParameterToString(limitLicense)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling SearchRecipes: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling SearchRecipes: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse200) ApiClient.Deserialize(response.Content, typeof(InlineResponse200), response.Headers);
        }
    
        /// <summary>
        /// Search Recipes by Ingredients  Ever wondered what recipes you can cook with the ingredients you have in your fridge or pantry? This endpoint lets you find recipes that either maximize the usage of ingredients you have at hand (pre shopping) or minimize the ingredients that you don&#39;t currently have (post shopping).         
        /// </summary>
        /// <param name="ingredients">A comma-separated list of ingredients that the recipes should contain.</param> 
        /// <param name="number">The maximum number of items to return (between 1 and 100). Defaults to 10.</param> 
        /// <param name="limitLicense">Whether the recipes should have an open license that allows display with proper attribution.</param> 
        /// <param name="ranking">Whether to maximize used ingredients (1) or minimize missing ingredients (2) first.</param> 
        /// <param name="ignorePantry">Whether to ignore typical pantry items, such as water, salt, flour, etc.</param> 
        /// <returns>List&lt;InlineResponse2001&gt;</returns>            
        public List<InlineResponse2001> SearchRecipesByIngredients (string ingredients, int? number, bool? limitLicense, decimal? ranking, bool? ignorePantry)
        {
            
    
            var path = "/recipes/findByIngredients";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (ingredients != null) queryParams.Add("ingredients", ApiClient.ParameterToString(ingredients)); // query parameter
 if (number != null) queryParams.Add("number", ApiClient.ParameterToString(number)); // query parameter
 if (limitLicense != null) queryParams.Add("limitLicense", ApiClient.ParameterToString(limitLicense)); // query parameter
 if (ranking != null) queryParams.Add("ranking", ApiClient.ParameterToString(ranking)); // query parameter
 if (ignorePantry != null) queryParams.Add("ignorePantry", ApiClient.ParameterToString(ignorePantry)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling SearchRecipesByIngredients: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling SearchRecipesByIngredients: " + response.ErrorMessage, response.ErrorMessage);
    
            return (List<InlineResponse2001>) ApiClient.Deserialize(response.Content, typeof(List<InlineResponse2001>), response.Headers);
        }
    
        /// <summary>
        /// Search Recipes by Nutrients Find a set of recipes that adhere to the given nutritional limits. You may set limits for macronutrients (calories, protein, fat, and carbohydrate) and/or many micronutrients.
        /// </summary>
        /// <param name="minCarbs">The minimum amount of carbohydrates in grams the recipe must have.</param> 
        /// <param name="maxCarbs">The maximum amount of carbohydrates in grams the recipe can have.</param> 
        /// <param name="minProtein">The minimum amount of protein in grams the recipe must have.</param> 
        /// <param name="maxProtein">The maximum amount of protein in grams the recipe can have.</param> 
        /// <param name="minCalories">The minimum amount of calories the recipe must have.</param> 
        /// <param name="maxCalories">The maximum amount of calories the recipe can have.</param> 
        /// <param name="minFat">The minimum amount of fat in grams the recipe must have.</param> 
        /// <param name="maxFat">The maximum amount of fat in grams the recipe can have.</param> 
        /// <param name="minAlcohol">The minimum amount of alcohol in grams the recipe must have.</param> 
        /// <param name="maxAlcohol">The maximum amount of alcohol in grams the recipe can have.</param> 
        /// <param name="minCaffeine">The minimum amount of caffeine in milligrams the recipe must have.</param> 
        /// <param name="maxCaffeine">The maximum amount of caffeine in milligrams the recipe can have.</param> 
        /// <param name="minCopper">The minimum amount of copper in milligrams the recipe must have.</param> 
        /// <param name="maxCopper">The maximum amount of copper in milligrams the recipe can have.</param> 
        /// <param name="minCalcium">The minimum amount of calcium in milligrams the recipe must have.</param> 
        /// <param name="maxCalcium">The maximum amount of calcium in milligrams the recipe can have.</param> 
        /// <param name="minCholine">The minimum amount of choline in milligrams the recipe must have.</param> 
        /// <param name="maxCholine">The maximum amount of choline in milligrams the recipe can have.</param> 
        /// <param name="minCholesterol">The minimum amount of cholesterol in milligrams the recipe must have.</param> 
        /// <param name="maxCholesterol">The maximum amount of cholesterol in milligrams the recipe can have.</param> 
        /// <param name="minFluoride">The minimum amount of fluoride in milligrams the recipe must have.</param> 
        /// <param name="maxFluoride">The maximum amount of fluoride in milligrams the recipe can have.</param> 
        /// <param name="minSaturatedFat">The minimum amount of saturated fat in grams the recipe must have.</param> 
        /// <param name="maxSaturatedFat">The maximum amount of saturated fat in grams the recipe can have.</param> 
        /// <param name="minVitaminA">The minimum amount of Vitamin A in IU the recipe must have.</param> 
        /// <param name="maxVitaminA">The maximum amount of Vitamin A in IU the recipe can have.</param> 
        /// <param name="minVitaminC">The minimum amount of Vitamin C in milligrams the recipe must have.</param> 
        /// <param name="maxVitaminC">The maximum amount of Vitamin C in milligrams the recipe can have.</param> 
        /// <param name="minVitaminD">The minimum amount of Vitamin D in micrograms the recipe must have.</param> 
        /// <param name="maxVitaminD">The maximum amount of Vitamin D in micrograms the recipe can have.</param> 
        /// <param name="minVitaminE">The minimum amount of Vitamin E in milligrams the recipe must have.</param> 
        /// <param name="maxVitaminE">The maximum amount of Vitamin E in milligrams the recipe can have.</param> 
        /// <param name="minVitaminK">The minimum amount of Vitamin K in micrograms the recipe must have.</param> 
        /// <param name="maxVitaminK">The maximum amount of Vitamin K in micrograms the recipe can have.</param> 
        /// <param name="minVitaminB1">The minimum amount of Vitamin B1 in milligrams the recipe must have.</param> 
        /// <param name="maxVitaminB1">The maximum amount of Vitamin B1 in milligrams the recipe can have.</param> 
        /// <param name="minVitaminB2">The minimum amount of Vitamin B2 in milligrams the recipe must have.</param> 
        /// <param name="maxVitaminB2">The maximum amount of Vitamin B2 in milligrams the recipe can have.</param> 
        /// <param name="minVitaminB5">The minimum amount of Vitamin B5 in milligrams the recipe must have.</param> 
        /// <param name="maxVitaminB5">The maximum amount of Vitamin B5 in milligrams the recipe can have.</param> 
        /// <param name="minVitaminB3">The minimum amount of Vitamin B3 in milligrams the recipe must have.</param> 
        /// <param name="maxVitaminB3">The maximum amount of Vitamin B3 in milligrams the recipe can have.</param> 
        /// <param name="minVitaminB6">The minimum amount of Vitamin B6 in milligrams the recipe must have.</param> 
        /// <param name="maxVitaminB6">The maximum amount of Vitamin B6 in milligrams the recipe can have.</param> 
        /// <param name="minVitaminB12">The minimum amount of Vitamin B12 in micrograms the recipe must have.</param> 
        /// <param name="maxVitaminB12">The maximum amount of Vitamin B12 in micrograms the recipe can have.</param> 
        /// <param name="minFiber">The minimum amount of fiber in grams the recipe must have.</param> 
        /// <param name="maxFiber">The maximum amount of fiber in grams the recipe can have.</param> 
        /// <param name="minFolate">The minimum amount of folate in micrograms the recipe must have.</param> 
        /// <param name="maxFolate">The maximum amount of folate in micrograms the recipe can have.</param> 
        /// <param name="minFolicAcid">The minimum amount of folic acid in micrograms the recipe must have.</param> 
        /// <param name="maxFolicAcid">The maximum amount of folic acid in micrograms the recipe can have.</param> 
        /// <param name="minIodine">The minimum amount of iodine in micrograms the recipe must have.</param> 
        /// <param name="maxIodine">The maximum amount of iodine in micrograms the recipe can have.</param> 
        /// <param name="minIron">The minimum amount of iron in milligrams the recipe must have.</param> 
        /// <param name="maxIron">The maximum amount of iron in milligrams the recipe can have.</param> 
        /// <param name="minMagnesium">The minimum amount of magnesium in milligrams the recipe must have.</param> 
        /// <param name="maxMagnesium">The maximum amount of magnesium in milligrams the recipe can have.</param> 
        /// <param name="minManganese">The minimum amount of manganese in milligrams the recipe must have.</param> 
        /// <param name="maxManganese">The maximum amount of manganese in milligrams the recipe can have.</param> 
        /// <param name="minPhosphorus">The minimum amount of phosphorus in milligrams the recipe must have.</param> 
        /// <param name="maxPhosphorus">The maximum amount of phosphorus in milligrams the recipe can have.</param> 
        /// <param name="minPotassium">The minimum amount of potassium in milligrams the recipe must have.</param> 
        /// <param name="maxPotassium">The maximum amount of potassium in milligrams the recipe can have.</param> 
        /// <param name="minSelenium">The minimum amount of selenium in micrograms the recipe must have.</param> 
        /// <param name="maxSelenium">The maximum amount of selenium in micrograms the recipe can have.</param> 
        /// <param name="minSodium">The minimum amount of sodium in milligrams the recipe must have.</param> 
        /// <param name="maxSodium">The maximum amount of sodium in milligrams the recipe can have.</param> 
        /// <param name="minSugar">The minimum amount of sugar in grams the recipe must have.</param> 
        /// <param name="maxSugar">The maximum amount of sugar in grams the recipe can have.</param> 
        /// <param name="minZinc">The minimum amount of zinc in milligrams the recipe must have.</param> 
        /// <param name="maxZinc">The maximum amount of zinc in milligrams the recipe can have.</param> 
        /// <param name="offset">The number of results to skip (between 0 and 900).</param> 
        /// <param name="number">The maximum number of items to return (between 1 and 100). Defaults to 10.</param> 
        /// <param name="random">If true, every request will give you a random set of recipes within the requested limits.</param> 
        /// <param name="limitLicense">Whether the recipes should have an open license that allows display with proper attribution.</param> 
        /// <returns>List&lt;InlineResponse2002&gt;</returns>            
        public List<InlineResponse2002> SearchRecipesByNutrients (decimal? minCarbs, decimal? maxCarbs, decimal? minProtein, decimal? maxProtein, decimal? minCalories, decimal? maxCalories, decimal? minFat, decimal? maxFat, decimal? minAlcohol, decimal? maxAlcohol, decimal? minCaffeine, decimal? maxCaffeine, decimal? minCopper, decimal? maxCopper, decimal? minCalcium, decimal? maxCalcium, decimal? minCholine, decimal? maxCholine, decimal? minCholesterol, decimal? maxCholesterol, decimal? minFluoride, decimal? maxFluoride, decimal? minSaturatedFat, decimal? maxSaturatedFat, decimal? minVitaminA, decimal? maxVitaminA, decimal? minVitaminC, decimal? maxVitaminC, decimal? minVitaminD, decimal? maxVitaminD, decimal? minVitaminE, decimal? maxVitaminE, decimal? minVitaminK, decimal? maxVitaminK, decimal? minVitaminB1, decimal? maxVitaminB1, decimal? minVitaminB2, decimal? maxVitaminB2, decimal? minVitaminB5, decimal? maxVitaminB5, decimal? minVitaminB3, decimal? maxVitaminB3, decimal? minVitaminB6, decimal? maxVitaminB6, decimal? minVitaminB12, decimal? maxVitaminB12, decimal? minFiber, decimal? maxFiber, decimal? minFolate, decimal? maxFolate, decimal? minFolicAcid, decimal? maxFolicAcid, decimal? minIodine, decimal? maxIodine, decimal? minIron, decimal? maxIron, decimal? minMagnesium, decimal? maxMagnesium, decimal? minManganese, decimal? maxManganese, decimal? minPhosphorus, decimal? maxPhosphorus, decimal? minPotassium, decimal? maxPotassium, decimal? minSelenium, decimal? maxSelenium, decimal? minSodium, decimal? maxSodium, decimal? minSugar, decimal? maxSugar, decimal? minZinc, decimal? maxZinc, int? offset, int? number, bool? random, bool? limitLicense)
        {
            
    
            var path = "/recipes/findByNutrients";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (minCarbs != null) queryParams.Add("minCarbs", ApiClient.ParameterToString(minCarbs)); // query parameter
 if (maxCarbs != null) queryParams.Add("maxCarbs", ApiClient.ParameterToString(maxCarbs)); // query parameter
 if (minProtein != null) queryParams.Add("minProtein", ApiClient.ParameterToString(minProtein)); // query parameter
 if (maxProtein != null) queryParams.Add("maxProtein", ApiClient.ParameterToString(maxProtein)); // query parameter
 if (minCalories != null) queryParams.Add("minCalories", ApiClient.ParameterToString(minCalories)); // query parameter
 if (maxCalories != null) queryParams.Add("maxCalories", ApiClient.ParameterToString(maxCalories)); // query parameter
 if (minFat != null) queryParams.Add("minFat", ApiClient.ParameterToString(minFat)); // query parameter
 if (maxFat != null) queryParams.Add("maxFat", ApiClient.ParameterToString(maxFat)); // query parameter
 if (minAlcohol != null) queryParams.Add("minAlcohol", ApiClient.ParameterToString(minAlcohol)); // query parameter
 if (maxAlcohol != null) queryParams.Add("maxAlcohol", ApiClient.ParameterToString(maxAlcohol)); // query parameter
 if (minCaffeine != null) queryParams.Add("minCaffeine", ApiClient.ParameterToString(minCaffeine)); // query parameter
 if (maxCaffeine != null) queryParams.Add("maxCaffeine", ApiClient.ParameterToString(maxCaffeine)); // query parameter
 if (minCopper != null) queryParams.Add("minCopper", ApiClient.ParameterToString(minCopper)); // query parameter
 if (maxCopper != null) queryParams.Add("maxCopper", ApiClient.ParameterToString(maxCopper)); // query parameter
 if (minCalcium != null) queryParams.Add("minCalcium", ApiClient.ParameterToString(minCalcium)); // query parameter
 if (maxCalcium != null) queryParams.Add("maxCalcium", ApiClient.ParameterToString(maxCalcium)); // query parameter
 if (minCholine != null) queryParams.Add("minCholine", ApiClient.ParameterToString(minCholine)); // query parameter
 if (maxCholine != null) queryParams.Add("maxCholine", ApiClient.ParameterToString(maxCholine)); // query parameter
 if (minCholesterol != null) queryParams.Add("minCholesterol", ApiClient.ParameterToString(minCholesterol)); // query parameter
 if (maxCholesterol != null) queryParams.Add("maxCholesterol", ApiClient.ParameterToString(maxCholesterol)); // query parameter
 if (minFluoride != null) queryParams.Add("minFluoride", ApiClient.ParameterToString(minFluoride)); // query parameter
 if (maxFluoride != null) queryParams.Add("maxFluoride", ApiClient.ParameterToString(maxFluoride)); // query parameter
 if (minSaturatedFat != null) queryParams.Add("minSaturatedFat", ApiClient.ParameterToString(minSaturatedFat)); // query parameter
 if (maxSaturatedFat != null) queryParams.Add("maxSaturatedFat", ApiClient.ParameterToString(maxSaturatedFat)); // query parameter
 if (minVitaminA != null) queryParams.Add("minVitaminA", ApiClient.ParameterToString(minVitaminA)); // query parameter
 if (maxVitaminA != null) queryParams.Add("maxVitaminA", ApiClient.ParameterToString(maxVitaminA)); // query parameter
 if (minVitaminC != null) queryParams.Add("minVitaminC", ApiClient.ParameterToString(minVitaminC)); // query parameter
 if (maxVitaminC != null) queryParams.Add("maxVitaminC", ApiClient.ParameterToString(maxVitaminC)); // query parameter
 if (minVitaminD != null) queryParams.Add("minVitaminD", ApiClient.ParameterToString(minVitaminD)); // query parameter
 if (maxVitaminD != null) queryParams.Add("maxVitaminD", ApiClient.ParameterToString(maxVitaminD)); // query parameter
 if (minVitaminE != null) queryParams.Add("minVitaminE", ApiClient.ParameterToString(minVitaminE)); // query parameter
 if (maxVitaminE != null) queryParams.Add("maxVitaminE", ApiClient.ParameterToString(maxVitaminE)); // query parameter
 if (minVitaminK != null) queryParams.Add("minVitaminK", ApiClient.ParameterToString(minVitaminK)); // query parameter
 if (maxVitaminK != null) queryParams.Add("maxVitaminK", ApiClient.ParameterToString(maxVitaminK)); // query parameter
 if (minVitaminB1 != null) queryParams.Add("minVitaminB1", ApiClient.ParameterToString(minVitaminB1)); // query parameter
 if (maxVitaminB1 != null) queryParams.Add("maxVitaminB1", ApiClient.ParameterToString(maxVitaminB1)); // query parameter
 if (minVitaminB2 != null) queryParams.Add("minVitaminB2", ApiClient.ParameterToString(minVitaminB2)); // query parameter
 if (maxVitaminB2 != null) queryParams.Add("maxVitaminB2", ApiClient.ParameterToString(maxVitaminB2)); // query parameter
 if (minVitaminB5 != null) queryParams.Add("minVitaminB5", ApiClient.ParameterToString(minVitaminB5)); // query parameter
 if (maxVitaminB5 != null) queryParams.Add("maxVitaminB5", ApiClient.ParameterToString(maxVitaminB5)); // query parameter
 if (minVitaminB3 != null) queryParams.Add("minVitaminB3", ApiClient.ParameterToString(minVitaminB3)); // query parameter
 if (maxVitaminB3 != null) queryParams.Add("maxVitaminB3", ApiClient.ParameterToString(maxVitaminB3)); // query parameter
 if (minVitaminB6 != null) queryParams.Add("minVitaminB6", ApiClient.ParameterToString(minVitaminB6)); // query parameter
 if (maxVitaminB6 != null) queryParams.Add("maxVitaminB6", ApiClient.ParameterToString(maxVitaminB6)); // query parameter
 if (minVitaminB12 != null) queryParams.Add("minVitaminB12", ApiClient.ParameterToString(minVitaminB12)); // query parameter
 if (maxVitaminB12 != null) queryParams.Add("maxVitaminB12", ApiClient.ParameterToString(maxVitaminB12)); // query parameter
 if (minFiber != null) queryParams.Add("minFiber", ApiClient.ParameterToString(minFiber)); // query parameter
 if (maxFiber != null) queryParams.Add("maxFiber", ApiClient.ParameterToString(maxFiber)); // query parameter
 if (minFolate != null) queryParams.Add("minFolate", ApiClient.ParameterToString(minFolate)); // query parameter
 if (maxFolate != null) queryParams.Add("maxFolate", ApiClient.ParameterToString(maxFolate)); // query parameter
 if (minFolicAcid != null) queryParams.Add("minFolicAcid", ApiClient.ParameterToString(minFolicAcid)); // query parameter
 if (maxFolicAcid != null) queryParams.Add("maxFolicAcid", ApiClient.ParameterToString(maxFolicAcid)); // query parameter
 if (minIodine != null) queryParams.Add("minIodine", ApiClient.ParameterToString(minIodine)); // query parameter
 if (maxIodine != null) queryParams.Add("maxIodine", ApiClient.ParameterToString(maxIodine)); // query parameter
 if (minIron != null) queryParams.Add("minIron", ApiClient.ParameterToString(minIron)); // query parameter
 if (maxIron != null) queryParams.Add("maxIron", ApiClient.ParameterToString(maxIron)); // query parameter
 if (minMagnesium != null) queryParams.Add("minMagnesium", ApiClient.ParameterToString(minMagnesium)); // query parameter
 if (maxMagnesium != null) queryParams.Add("maxMagnesium", ApiClient.ParameterToString(maxMagnesium)); // query parameter
 if (minManganese != null) queryParams.Add("minManganese", ApiClient.ParameterToString(minManganese)); // query parameter
 if (maxManganese != null) queryParams.Add("maxManganese", ApiClient.ParameterToString(maxManganese)); // query parameter
 if (minPhosphorus != null) queryParams.Add("minPhosphorus", ApiClient.ParameterToString(minPhosphorus)); // query parameter
 if (maxPhosphorus != null) queryParams.Add("maxPhosphorus", ApiClient.ParameterToString(maxPhosphorus)); // query parameter
 if (minPotassium != null) queryParams.Add("minPotassium", ApiClient.ParameterToString(minPotassium)); // query parameter
 if (maxPotassium != null) queryParams.Add("maxPotassium", ApiClient.ParameterToString(maxPotassium)); // query parameter
 if (minSelenium != null) queryParams.Add("minSelenium", ApiClient.ParameterToString(minSelenium)); // query parameter
 if (maxSelenium != null) queryParams.Add("maxSelenium", ApiClient.ParameterToString(maxSelenium)); // query parameter
 if (minSodium != null) queryParams.Add("minSodium", ApiClient.ParameterToString(minSodium)); // query parameter
 if (maxSodium != null) queryParams.Add("maxSodium", ApiClient.ParameterToString(maxSodium)); // query parameter
 if (minSugar != null) queryParams.Add("minSugar", ApiClient.ParameterToString(minSugar)); // query parameter
 if (maxSugar != null) queryParams.Add("maxSugar", ApiClient.ParameterToString(maxSugar)); // query parameter
 if (minZinc != null) queryParams.Add("minZinc", ApiClient.ParameterToString(minZinc)); // query parameter
 if (maxZinc != null) queryParams.Add("maxZinc", ApiClient.ParameterToString(maxZinc)); // query parameter
 if (offset != null) queryParams.Add("offset", ApiClient.ParameterToString(offset)); // query parameter
 if (number != null) queryParams.Add("number", ApiClient.ParameterToString(number)); // query parameter
 if (random != null) queryParams.Add("random", ApiClient.ParameterToString(random)); // query parameter
 if (limitLicense != null) queryParams.Add("limitLicense", ApiClient.ParameterToString(limitLicense)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling SearchRecipesByNutrients: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling SearchRecipesByNutrients: " + response.ErrorMessage, response.ErrorMessage);
    
            return (List<InlineResponse2002>) ApiClient.Deserialize(response.Content, typeof(List<InlineResponse2002>), response.Headers);
        }
    
        /// <summary>
        /// Summarize Recipe Automatically generate a short description that summarizes key information about the recipe.
        /// </summary>
        /// <param name="id">The item&#39;s id.</param> 
        /// <returns>InlineResponse20014</returns>            
        public InlineResponse20014 SummarizeRecipe (int? id)
        {
            
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling SummarizeRecipe");
            
    
            var path = "/recipes/{id}/summary";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling SummarizeRecipe: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling SummarizeRecipe: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse20014) ApiClient.Deserialize(response.Content, typeof(InlineResponse20014), response.Headers);
        }
    
        /// <summary>
        /// Equipment Widget Visualize the equipment used to make a recipe.
        /// </summary>
        /// <param name="contentType">The content type.</param> 
        /// <param name="accept">Accept header.</param> 
        /// <returns>string</returns>            
        public string VisualizeEquipment (string contentType, string accept)
        {
            
    
            var path = "/recipes/visualizeEquipment";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                         if (contentType != null) headerParams.Add("Content-Type", ApiClient.ParameterToString(contentType)); // header parameter
 if (accept != null) headerParams.Add("Accept", ApiClient.ParameterToString(accept)); // header parameter
                            
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling VisualizeEquipment: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling VisualizeEquipment: " + response.ErrorMessage, response.ErrorMessage);
    
            return (string) ApiClient.Deserialize(response.Content, typeof(string), response.Headers);
        }
    
        /// <summary>
        /// Price Breakdown Widget Visualize the price breakdown of a recipe.
        /// </summary>
        /// <param name="contentType">The content type.</param> 
        /// <param name="accept">Accept header.</param> 
        /// <param name="language">The language of the input. Either &#39;en&#39; or &#39;de&#39;.</param> 
        /// <returns>string</returns>            
        public string VisualizePriceBreakdown (string contentType, string accept, string language)
        {
            
    
            var path = "/recipes/visualizePriceEstimator";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (language != null) queryParams.Add("language", ApiClient.ParameterToString(language)); // query parameter
             if (contentType != null) headerParams.Add("Content-Type", ApiClient.ParameterToString(contentType)); // header parameter
 if (accept != null) headerParams.Add("Accept", ApiClient.ParameterToString(accept)); // header parameter
                            
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling VisualizePriceBreakdown: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling VisualizePriceBreakdown: " + response.ErrorMessage, response.ErrorMessage);
    
            return (string) ApiClient.Deserialize(response.Content, typeof(string), response.Headers);
        }
    
        /// <summary>
        /// Equipment by ID Widget Visualize a recipe&#39;s equipment list.
        /// </summary>
        /// <param name="id">The item&#39;s id.</param> 
        /// <param name="defaultCss">Whether the default CSS should be added to the response.</param> 
        /// <returns>string</returns>            
        public string VisualizeRecipeEquipmentByID (int? id, bool? defaultCss)
        {
            
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling VisualizeRecipeEquipmentByID");
            
    
            var path = "/recipes/{id}/equipmentWidget";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (defaultCss != null) queryParams.Add("defaultCss", ApiClient.ParameterToString(defaultCss)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling VisualizeRecipeEquipmentByID: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling VisualizeRecipeEquipmentByID: " + response.ErrorMessage, response.ErrorMessage);
    
            return (string) ApiClient.Deserialize(response.Content, typeof(string), response.Headers);
        }
    
        /// <summary>
        /// Ingredients by ID Widget Visualize a recipe&#39;s ingredient list.
        /// </summary>
        /// <param name="id">The item&#39;s id.</param> 
        /// <param name="defaultCss">Whether the default CSS should be added to the response.</param> 
        /// <param name="measure">Whether the the measures should be &#39;us&#39; or &#39;metric&#39;.</param> 
        /// <returns>string</returns>            
        public string VisualizeRecipeIngredientsByID (int? id, bool? defaultCss, string measure)
        {
            
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling VisualizeRecipeIngredientsByID");
            
    
            var path = "/recipes/{id}/ingredientWidget";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (defaultCss != null) queryParams.Add("defaultCss", ApiClient.ParameterToString(defaultCss)); // query parameter
 if (measure != null) queryParams.Add("measure", ApiClient.ParameterToString(measure)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling VisualizeRecipeIngredientsByID: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling VisualizeRecipeIngredientsByID: " + response.ErrorMessage, response.ErrorMessage);
    
            return (string) ApiClient.Deserialize(response.Content, typeof(string), response.Headers);
        }
    
        /// <summary>
        /// Recipe Nutrition Widget Visualize a recipe&#39;s nutritional information as HTML including CSS.
        /// </summary>
        /// <param name="contentType">The content type.</param> 
        /// <param name="accept">Accept header.</param> 
        /// <param name="language">The language of the input. Either &#39;en&#39; or &#39;de&#39;.</param> 
        /// <returns>string</returns>            
        public string VisualizeRecipeNutrition (string contentType, string accept, string language)
        {
            
    
            var path = "/recipes/visualizeNutrition";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (language != null) queryParams.Add("language", ApiClient.ParameterToString(language)); // query parameter
             if (contentType != null) headerParams.Add("Content-Type", ApiClient.ParameterToString(contentType)); // header parameter
 if (accept != null) headerParams.Add("Accept", ApiClient.ParameterToString(accept)); // header parameter
                            
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling VisualizeRecipeNutrition: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling VisualizeRecipeNutrition: " + response.ErrorMessage, response.ErrorMessage);
    
            return (string) ApiClient.Deserialize(response.Content, typeof(string), response.Headers);
        }
    
        /// <summary>
        /// Recipe Nutrition by ID Widget Visualize a recipe&#39;s nutritional information as HTML including CSS.
        /// </summary>
        /// <param name="id">The item&#39;s id.</param> 
        /// <param name="defaultCss">Whether the default CSS should be added to the response.</param> 
        /// <param name="accept">Accept header.</param> 
        /// <returns>string</returns>            
        public string VisualizeRecipeNutritionByID (int? id, bool? defaultCss, string accept)
        {
            
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling VisualizeRecipeNutritionByID");
            
    
            var path = "/recipes/{id}/nutritionWidget";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (defaultCss != null) queryParams.Add("defaultCss", ApiClient.ParameterToString(defaultCss)); // query parameter
             if (accept != null) headerParams.Add("Accept", ApiClient.ParameterToString(accept)); // header parameter
                            
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling VisualizeRecipeNutritionByID: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling VisualizeRecipeNutritionByID: " + response.ErrorMessage, response.ErrorMessage);
    
            return (string) ApiClient.Deserialize(response.Content, typeof(string), response.Headers);
        }
    
        /// <summary>
        /// Price Breakdown by ID Widget Visualize a recipe&#39;s price breakdown.
        /// </summary>
        /// <param name="id">The item&#39;s id.</param> 
        /// <param name="defaultCss">Whether the default CSS should be added to the response.</param> 
        /// <returns>string</returns>            
        public string VisualizeRecipePriceBreakdownByID (int? id, bool? defaultCss)
        {
            
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling VisualizeRecipePriceBreakdownByID");
            
    
            var path = "/recipes/{id}/priceBreakdownWidget";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (defaultCss != null) queryParams.Add("defaultCss", ApiClient.ParameterToString(defaultCss)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling VisualizeRecipePriceBreakdownByID: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling VisualizeRecipePriceBreakdownByID: " + response.ErrorMessage, response.ErrorMessage);
    
            return (string) ApiClient.Deserialize(response.Content, typeof(string), response.Headers);
        }
    
        /// <summary>
        /// Recipe Taste Widget Visualize a recipe&#39;s taste information as HTML including CSS. You can play around with that endpoint!
        /// </summary>
        /// <param name="language">The language of the input. Either &#39;en&#39; or &#39;de&#39;.</param> 
        /// <param name="contentType">The content type.</param> 
        /// <param name="accept">Accept header.</param> 
        /// <param name="normalize">Whether to normalize to the strongest taste.</param> 
        /// <param name="rgb">Red, green, blue values for the chart color.</param> 
        /// <returns>string</returns>            
        public string VisualizeRecipeTaste (string language, string contentType, string accept, bool? normalize, string rgb)
        {
            
    
            var path = "/recipes/visualizeTaste";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (language != null) queryParams.Add("language", ApiClient.ParameterToString(language)); // query parameter
 if (normalize != null) queryParams.Add("normalize", ApiClient.ParameterToString(normalize)); // query parameter
 if (rgb != null) queryParams.Add("rgb", ApiClient.ParameterToString(rgb)); // query parameter
             if (contentType != null) headerParams.Add("Content-Type", ApiClient.ParameterToString(contentType)); // header parameter
 if (accept != null) headerParams.Add("Accept", ApiClient.ParameterToString(accept)); // header parameter
                            
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling VisualizeRecipeTaste: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling VisualizeRecipeTaste: " + response.ErrorMessage, response.ErrorMessage);
    
            return (string) ApiClient.Deserialize(response.Content, typeof(string), response.Headers);
        }
    
        /// <summary>
        /// Recipe Taste by ID Widget Get a recipe&#39;s taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.
        /// </summary>
        /// <param name="id">The item&#39;s id.</param> 
        /// <param name="normalize">Whether to normalize to the strongest taste.</param> 
        /// <param name="rgb">Red, green, blue values for the chart color.</param> 
        /// <returns>string</returns>            
        public string VisualizeRecipeTasteByID (int? id, bool? normalize, string rgb)
        {
            
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling VisualizeRecipeTasteByID");
            
    
            var path = "/recipes/{id}/tasteWidget";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (normalize != null) queryParams.Add("normalize", ApiClient.ParameterToString(normalize)); // query parameter
 if (rgb != null) queryParams.Add("rgb", ApiClient.ParameterToString(rgb)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyScheme" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling VisualizeRecipeTasteByID: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling VisualizeRecipeTasteByID: " + response.ErrorMessage, response.ErrorMessage);
    
            return (string) ApiClient.Deserialize(response.Content, typeof(string), response.Headers);
        }
    
    }
}
