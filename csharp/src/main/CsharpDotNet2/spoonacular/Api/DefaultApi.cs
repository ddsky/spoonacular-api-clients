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
    public interface IDefaultApi
    {
        /// <summary>
        /// Add to Meal Plan Add an item to the user&#39;s meal plan.
        /// </summary>
        /// <param name="username">The username.</param>
        /// <param name="hash">The private hash for the username.</param>
        /// <param name="inlineObject9"></param>
        /// <returns>Object</returns>
        Object AddToMealPlan (string username, string hash, InlineObject9 inlineObject9);
        /// <summary>
        /// Add to Shopping List Add an item to the current shopping list of a user.
        /// </summary>
        /// <param name="username">The username.</param>
        /// <param name="hash">The private hash for the username.</param>
        /// <param name="inlineObject12"></param>
        /// <returns>Object</returns>
        Object AddToShoppingList (string username, string hash, InlineObject12 inlineObject12);
        /// <summary>
        /// Analyze a Recipe Search Query Parse a recipe search query to find out its intention.
        /// </summary>
        /// <param name="q">The recipe search query.</param>
        /// <returns>Object</returns>
        Object AnalyzeARecipeSearchQuery (string q);
        /// <summary>
        /// Analyze Recipe Instructions Extract ingredients and equipment from the recipe&#39;s instructions.
        /// </summary>
        /// <param name="instructions">The instructions to be analyzed.</param>
        /// <returns>Object</returns>
        Object AnalyzeRecipeInstructions (string instructions);
        /// <summary>
        /// Autocomplete Ingredient Search Autocomplete the entry of an ingredient.
        /// </summary>
        /// <param name="query">The partial or full ingredient name.</param>
        /// <param name="number">The number of results to return (between 1 and 100).</param>
        /// <param name="metaInformation">Whether to return more meta information about the ingredients.</param>
        /// <param name="intolerances">A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.</param>
        /// <returns>Object</returns>
        Object AutocompleteIngredientSearch (string query, decimal? number, bool? metaInformation, bool? intolerances);
        /// <summary>
        /// Autocomplete Menu Item Search Generate suggestions for menu items based on a (partial) query. The matches will be found by looking in the title only.
        /// </summary>
        /// <param name="query">The (partial) search query.</param>
        /// <param name="number">The number of results to return (between 1 and 25).</param>
        /// <returns>Object</returns>
        Object AutocompleteMenuItemSearch (string query, decimal? number);
        /// <summary>
        /// Autocomplete Product Search Generate suggestions for grocery products based on a (partial) query. The matches will be found by looking in the title only.
        /// </summary>
        /// <param name="query">The (partial) search query.</param>
        /// <param name="number">The number of results to return (between 1 and 25).</param>
        /// <returns>Object</returns>
        Object AutocompleteProductSearch (string query, decimal? number);
        /// <summary>
        /// Autocomplete Recipe Search Autocomplete a partial input to suggest possible recipe names.
        /// </summary>
        /// <param name="query">The query to be autocompleted.</param>
        /// <param name="number">The number of results to return (between 1 and 25).</param>
        /// <returns>Object</returns>
        Object AutocompleteRecipeSearch (string query, decimal? number);
        /// <summary>
        /// Classify Cuisine Classify the recipe&#39;s cuisine.
        /// </summary>
        /// <param name="title">The title of the recipe.</param>
        /// <param name="ingredientList">The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n).</param>
        /// <returns>Object</returns>
        Object ClassifyCuisine (string title, string ingredientList);
        /// <summary>
        /// Classify Grocery Product This endpoint allows you to match a packaged food to a basic category, e.g. a specific brand of milk to the category milk.
        /// </summary>
        /// <param name="inlineObject8"></param>
        /// <param name="locale">The display name of the returned category, supported is en_US (for American English) and en_GB (for British English).</param>
        /// <returns>Object</returns>
        Object ClassifyGroceryProduct (InlineObject8 inlineObject8, string locale);
        /// <summary>
        /// Classify Grocery Product Bulk Provide a set of product jsons, get back classified products.
        /// </summary>
        /// <param name="body"></param>
        /// <param name="locale">The display name of the returned category, supported is en_US (for American English) and en_GB (for British English).</param>
        /// <returns>Object</returns>
        Object ClassifyGroceryProductBulk (Object body, string locale);
        /// <summary>
        /// Convert Amounts Convert amounts like \&quot;2 cups of flour to grams\&quot;.
        /// </summary>
        /// <param name="ingredientName">The ingredient which you want to convert.</param>
        /// <param name="sourceAmount">The amount from which you want to convert, e.g. the 2.5 in \&quot;2.5 cups of flour to grams\&quot;.</param>
        /// <param name="sourceUnit">The unit from which you want to convert, e.g. the grams in \&quot;2.5 cups of flour to grams\&quot;. You can also use \&quot;piece\&quot;, e.g. \&quot;3.4 oz tomatoes to piece\&quot;</param>
        /// <param name="targetUnit">The unit to which you want to convert, e.g. the grams in \&quot;2.5 cups of flour to grams\&quot;. You can also use \&quot;piece\&quot;, e.g. \&quot;3.4 oz tomatoes to piece\&quot;</param>
        /// <returns>Object</returns>
        Object ConvertAmounts (string ingredientName, decimal? sourceAmount, string sourceUnit, string targetUnit);
        /// <summary>
        /// Create Recipe Card Generate a recipe card for a recipe.
        /// </summary>
        /// <param name="title">The title of the recipe.</param>
        /// <param name="image">The binary image of the recipe as jpg.</param>
        /// <param name="ingredients">The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n).</param>
        /// <param name="instructions">The instructions to make the recipe. One step per line (separate lines with \\\\n).</param>
        /// <param name="readyInMinutes">The number of minutes it takes to get the recipe on the table.</param>
        /// <param name="servings">The number of servings the recipe makes.</param>
        /// <param name="mask">The mask to put over the recipe image (\\\&quot;ellipseMask\\\&quot;, \\\&quot;diamondMask\\\&quot;, \\\&quot;starMask\\\&quot;, \\\&quot;heartMask\\\&quot;, \\\&quot;potMask\\\&quot;, \\\&quot;fishMask\\\&quot;).</param>
        /// <param name="backgroundImage">The background image (\\\&quot;none\\\&quot;,\\\&quot;background1\\\&quot;, or \\\&quot;background2\\\&quot;).</param>
        /// <param name="author">The author of the recipe.</param>
        /// <param name="backgroundColor">The background color for the recipe card as a hex-string.</param>
        /// <param name="fontColor">The font color for the recipe card as a hex-string.</param>
        /// <param name="source">The source of the recipe.</param>
        /// <returns>Object</returns>
        Object CreateRecipeCard (string title, System.IO.Stream image, string ingredients, string instructions, decimal? readyInMinutes, decimal? servings, string mask, string backgroundImage, string author, string backgroundColor, string fontColor, string source);
        /// <summary>
        /// Delete from Meal Plan Delete an item from the user&#39;s meal plan.
        /// </summary>
        /// <param name="username">The username.</param>
        /// <param name="id">The shopping list item id.</param>
        /// <param name="hash">The private hash for the username.</param>
        /// <param name="inlineObject10"></param>
        /// <returns>Object</returns>
        Object DeleteFromMealPlan (string username, decimal? id, string hash, InlineObject10 inlineObject10);
        /// <summary>
        /// Delete from Shopping List Delete an item from the current shopping list of the user.
        /// </summary>
        /// <param name="username">The username.</param>
        /// <param name="id">The shopping list item id.</param>
        /// <param name="hash">The private hash for the username.</param>
        /// <param name="inlineObject13"></param>
        /// <returns>Object</returns>
        Object DeleteFromShoppingList (string username, decimal? id, string hash, InlineObject13 inlineObject13);
        /// <summary>
        /// Detect Food in Text Take any text and find all mentions of food contained within it. This task is also called Named Entity Recognition (NER). In this case, the entities are foods. Either dishes, such as pizza or cheeseburger, or ingredients, such as cucumber or almonds.
        /// </summary>
        /// <param name="text">The text in which food items, such as dish names and ingredients, should be detected in.</param>
        /// <returns>Object</returns>
        Object DetectFoodInText (string text);
        /// <summary>
        /// Extract Recipe from Website This endpoint lets you extract recipe data such as title, ingredients, and instructions from any properly formatted Website.
        /// </summary>
        /// <param name="url">The URL of the recipe page.</param>
        /// <param name="forceExtraction">If true, the extraction will be triggered whether we already know the recipe or not. Use this only if information is missing as this operation is slower.</param>
        /// <param name="analyze">If true, the recipe will be analyzed and classified resolving in more data such as cuisines, dish types, and more.</param>
        /// <returns>Object</returns>
        Object ExtractRecipeFromWebsite (string url, bool? forceExtraction, bool? analyze);
        /// <summary>
        /// Generate Meal Plan Generate a meal plan with three meals per day (breakfast, lunch, and dinner).
        /// </summary>
        /// <param name="timeFrame">Either for one \&quot;day\&quot; or an entire \&quot;week\&quot;.</param>
        /// <param name="targetCalories">What is the caloric target for one day? The meal plan generator will try to get as close as possible to that goal.</param>
        /// <param name="diet">Enter a diet that the meal plan has to adhere to. See a full list of supported diets.</param>
        /// <param name="exclude">A comma-separated list of allergens or ingredients that must be excluded.</param>
        /// <returns>Object</returns>
        Object GenerateMealPlan (string timeFrame, decimal? targetCalories, string diet, string exclude);
        /// <summary>
        /// Generate Shopping List Generate the shopping list for a user from the meal planner in a given time frame.
        /// </summary>
        /// <param name="username">The username.</param>
        /// <param name="startDate">The start date in the format yyyy-mm-dd.</param>
        /// <param name="endDate">The end date in the format yyyy-mm-dd.</param>
        /// <param name="hash">The private hash for the username.</param>
        /// <param name="inlineObject11"></param>
        /// <returns>Object</returns>
        Object GenerateShoppingList (string username, string startDate, string endDate, string hash, InlineObject11 inlineObject11);
        /// <summary>
        /// Get a Random Food Joke Get a random joke that is related to food. Caution: this is an endpoint for adults!
        /// </summary>
        /// <returns>Object</returns>
        Object GetARandomFoodJoke ();
        /// <summary>
        /// Get Analyzed Recipe Instructions Get an analyzed breakdown of a recipe&#39;s instructions. Each step is enriched with the ingredients and equipment required.
        /// </summary>
        /// <param name="id">The recipe id.</param>
        /// <param name="stepBreakdown">Whether to break down the recipe steps even more.</param>
        /// <returns>Object</returns>
        Object GetAnalyzedRecipeInstructions (decimal? id, bool? stepBreakdown);
        /// <summary>
        /// Get Comparable Products Find comparable products to the given one.
        /// </summary>
        /// <param name="upc">The UPC of the product for which you want to find comparable products.</param>
        /// <returns>Object</returns>
        Object GetComparableProducts (decimal? upc);
        /// <summary>
        /// Get Conversation Suggests This endpoint returns suggestions for things the user can say or ask the chatbot.
        /// </summary>
        /// <param name="query">A (partial) query from the user. The endpoint will return if it matches topics it can talk about.</param>
        /// <param name="number">The number of suggestions to return (between 1 and 25).</param>
        /// <returns>Object</returns>
        Object GetConversationSuggests (string query, decimal? number);
        /// <summary>
        /// Get Dish Pairing for Wine Find a dish that goes well with a given wine.
        /// </summary>
        /// <param name="wine">The type of wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;.</param>
        /// <returns>Object</returns>
        Object GetDishPairingForWine (string wine);
        /// <summary>
        /// Get Ingredient Information Use an ingredient id to get all available information about an ingredient, such as its image and supermarket aisle.
        /// </summary>
        /// <param name="id">The ingredient id.</param>
        /// <param name="amount">The amount of this ingredient.</param>
        /// <param name="unit">The unit for the given amount.</param>
        /// <returns>Object</returns>
        Object GetIngredientInformation (decimal? id, decimal? amount, string unit);
        /// <summary>
        /// Get Ingredient Substitutes Search for substitutes for a given ingredient.
        /// </summary>
        /// <param name="ingredientName">The name of the ingredient you want to replace.</param>
        /// <returns>Object</returns>
        Object GetIngredientSubstitutes (string ingredientName);
        /// <summary>
        /// Get Ingredient Substitutes by ID Search for substitutes for a given ingredient.
        /// </summary>
        /// <param name="id">The id of the ingredient you want substitutes for.</param>
        /// <returns>Object</returns>
        Object GetIngredientSubstitutesByID (decimal? id);
        /// <summary>
        /// Get Meal Plan Template Get information about a meal plan template.
        /// </summary>
        /// <param name="username">The username.</param>
        /// <param name="id">The shopping list item id.</param>
        /// <param name="hash">The private hash for the username.</param>
        /// <returns>Object</returns>
        Object GetMealPlanTemplate (string username, decimal? id, string hash);
        /// <summary>
        /// Get Meal Plan Templates Get meal plan templates from user or public ones.
        /// </summary>
        /// <param name="username">The username.</param>
        /// <param name="hash">The private hash for the username.</param>
        /// <returns>Object</returns>
        Object GetMealPlanTemplates (string username, string hash);
        /// <summary>
        /// Get Meal Plan Week Retrieve a meal planned week for the given user. The username must be a spoonacular user and the hash must the the user&#39;s hash that can be found in his/her account.
        /// </summary>
        /// <param name="username">The username.</param>
        /// <param name="startDate">The start date of the meal planned week in the format yyyy-mm-dd.</param>
        /// <param name="hash">The private hash for the username.</param>
        /// <returns>Object</returns>
        Object GetMealPlanWeek (string username, string startDate, string hash);
        /// <summary>
        /// Get Menu Item Information Use a menu item id to get all available information about a menu item, such as nutrition.
        /// </summary>
        /// <param name="id">The menu item id.</param>
        /// <returns>Object</returns>
        Object GetMenuItemInformation (decimal? id);
        /// <summary>
        /// Get Product Information Use a product id to get full information about a product, such as ingredients, nutrition, etc. The nutritional information is per serving.
        /// </summary>
        /// <param name="id">The id of the packaged food.</param>
        /// <returns>Object</returns>
        Object GetProductInformation (decimal? id);
        /// <summary>
        /// Get Random Food Trivia Returns random food trivia.
        /// </summary>
        /// <returns>Object</returns>
        Object GetRandomFoodTrivia ();
        /// <summary>
        /// Get Random Recipes Find random (popular) recipes. If you need to filter recipes by diet, nutrition etc. you might want to consider using the complex recipe search endpoint and set the sort request parameter to random.
        /// </summary>
        /// <param name="limitLicense">Whether the recipes should have an open license that allows display with proper attribution.</param>
        /// <param name="tags">The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have.</param>
        /// <param name="number">The number of random recipes to be returned (between 1 and 100).</param>
        /// <returns>Object</returns>
        Object GetRandomRecipes (bool? limitLicense, string tags, decimal? number);
        /// <summary>
        /// Get Recipe Equipment by ID Get a recipe&#39;s equipment list.
        /// </summary>
        /// <param name="id">The recipe id.</param>
        /// <returns>Object</returns>
        Object GetRecipeEquipmentByID (decimal? id);
        /// <summary>
        /// Get Recipe Information Use a recipe id to get full information about a recipe, such as ingredients, nutrition, diet and allergen information, etc.
        /// </summary>
        /// <param name="id">The id of the recipe.</param>
        /// <param name="includeNutrition">Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings.</param>
        /// <returns>Object</returns>
        Object GetRecipeInformation (decimal? id, bool? includeNutrition);
        /// <summary>
        /// Get Recipe Information Bulk Get information about multiple recipes at once. This is equivalent to calling the Get Recipe Information endpoint multiple times, but faster.
        /// </summary>
        /// <param name="ids">A comma-separated list of recipe ids.</param>
        /// <param name="includeNutrition">Include nutrition data to the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings.</param>
        /// <returns>Object</returns>
        Object GetRecipeInformationBulk (string ids, bool? includeNutrition);
        /// <summary>
        /// Get Recipe Ingredients by ID Get a recipe&#39;s ingredient list.
        /// </summary>
        /// <param name="id">The recipe id.</param>
        /// <returns>Object</returns>
        Object GetRecipeIngredientsByID (decimal? id);
        /// <summary>
        /// Get Recipe Nutrition Widget by ID Get a recipe&#39;s nutrition widget data.
        /// </summary>
        /// <param name="id">The recipe id.</param>
        /// <returns>Object</returns>
        Object GetRecipeNutritionWidgetByID (decimal? id);
        /// <summary>
        /// Get Recipe Price Breakdown by ID Get a recipe&#39;s price breakdown data.
        /// </summary>
        /// <param name="id">The recipe id.</param>
        /// <returns>Object</returns>
        Object GetRecipePriceBreakdownByID (decimal? id);
        /// <summary>
        /// Get Shopping List Get the current shopping list for the given user.
        /// </summary>
        /// <param name="username">The username.</param>
        /// <param name="hash">The private hash for the username.</param>
        /// <returns>Object</returns>
        Object GetShoppingList (string username, string hash);
        /// <summary>
        /// Get Similar Recipes Find recipes which are similar to the given one.
        /// </summary>
        /// <param name="id">The id of the source recipe for which similar recipes should be found.</param>
        /// <param name="number">The number of random recipes to be returned (between 1 and 100).</param>
        /// <param name="limitLicense">Whether the recipes should have an open license that allows display with proper attribution.</param>
        /// <returns>Object</returns>
        Object GetSimilarRecipes (decimal? id, decimal? number, bool? limitLicense);
        /// <summary>
        /// Get Wine Description Get a simple description of a certain wine, e.g. \&quot;malbec\&quot;, \&quot;riesling\&quot;, or \&quot;merlot\&quot;.
        /// </summary>
        /// <param name="wine">The name of the wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;.</param>
        /// <returns>Object</returns>
        Object GetWineDescription (string wine);
        /// <summary>
        /// Get Wine Pairing Find a wine that goes well with a food. Food can be a dish name (\&quot;steak\&quot;), an ingredient name (\&quot;salmon\&quot;), or a cuisine (\&quot;italian\&quot;).
        /// </summary>
        /// <param name="food">The food to get a pairing for. This can be a dish (\&quot;steak\&quot;), an ingredient (\&quot;salmon\&quot;), or a cuisine (\&quot;italian\&quot;).</param>
        /// <param name="maxPrice">The maximum price for the specific wine recommendation in USD.</param>
        /// <returns>Object</returns>
        Object GetWinePairing (string food, decimal? maxPrice);
        /// <summary>
        /// Get Wine Recommendation Get a specific wine recommendation (concrete product) for a given wine type, e.g. \&quot;merlot\&quot;.
        /// </summary>
        /// <param name="wine">The type of wine to get a specific product recommendation for.</param>
        /// <param name="maxPrice">The maximum price for the specific wine recommendation in USD.</param>
        /// <param name="minRating">The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars.</param>
        /// <param name="number">The number of wine recommendations expected (between 1 and 100).</param>
        /// <returns>Object</returns>
        Object GetWineRecommendation (string wine, decimal? maxPrice, decimal? minRating, decimal? number);
        /// <summary>
        /// Guess Nutrition by Dish Name Estimate the macronutrients of a dish based on its title.
        /// </summary>
        /// <param name="title">The title of the dish.</param>
        /// <returns>Object</returns>
        Object GuessNutritionByDishName (string title);
        /// <summary>
        /// Image Analysis by URL Analyze a food image. The API tries to classify the image, guess the nutrition, and find a matching recipes. You can play around with that endpoint!
        /// </summary>
        /// <param name="imageUrl">The URL of the image to be analyzed.</param>
        /// <returns>Object</returns>
        Object ImageAnalysisByURL (string imageUrl);
        /// <summary>
        /// Image Classification by URL Classify a food image. You can play around with that endpoint!
        /// </summary>
        /// <param name="imageUrl">The URL of the image to be classified.</param>
        /// <returns>Object</returns>
        Object ImageClassificationByURL (string imageUrl);
        /// <summary>
        /// Map Ingredients to Grocery Products Map a set of ingredients to products you can buy in the grocery store.
        /// </summary>
        /// <param name="body"></param>
        /// <returns>Object</returns>
        Object MapIngredientsToGroceryProducts (Object body);
        /// <summary>
        /// Parse Ingredients Extract an ingredient from plain text.
        /// </summary>
        /// <param name="ingredientList">The ingredient list of the recipe, one ingredient per line.</param>
        /// <param name="servings">The number of servings that you can make from the ingredients.</param>
        /// <param name="includeNutrition">Whether nutrition data should be added to correctly parsed ingredients.</param>
        /// <returns>Object</returns>
        Object ParseIngredients (string ingredientList, decimal? servings, bool? includeNutrition);
        /// <summary>
        /// Quick Answer Answer a nutrition related natural language question.
        /// </summary>
        /// <param name="q">The nutrition related question.</param>
        /// <returns>Object</returns>
        Object QuickAnswer (string q);
        /// <summary>
        /// Search Custom Foods Search custom foods in a user&#39;s account.
        /// </summary>
        /// <param name="query">The search query.</param>
        /// <param name="username">The username.</param>
        /// <param name="hash">The private hash for the username.</param>
        /// <param name="offset">The number of results to skip (between 0 and 990).</param>
        /// <param name="number">The number of expected results (between 1 and 100).</param>
        /// <returns>Object</returns>
        Object SearchCustomFoods (string query, string username, string hash, decimal? offset, decimal? number);
        /// <summary>
        /// Search Food Videos Find recipe and other food related videos.
        /// </summary>
        /// <param name="query">The search query.</param>
        /// <param name="type">The type of the recipes. See a full list of supported meal types.</param>
        /// <param name="cuisine">The cuisine(s) of the recipes. One or more, comma separated. See a full list of supported cuisines.</param>
        /// <param name="diet">The diet for which the recipes must be suitable. See a full list of supported diets.</param>
        /// <param name="includeIngredients">A comma-separated list of ingredients that the recipes should contain.</param>
        /// <param name="excludeIngredients">A comma-separated list of ingredients or ingredient types that the recipes must not contain.</param>
        /// <param name="minLength">Minimum video length in seconds.</param>
        /// <param name="maxLength">Maximum video length in seconds.</param>
        /// <param name="offset">The number of results to skip (between 0 and 900).</param>
        /// <param name="number">The number of results to return (between 1 and 100).</param>
        /// <returns>Object</returns>
        Object SearchFoodVideos (string query, string type, string cuisine, string diet, string includeIngredients, string excludeIngredients, decimal? minLength, decimal? maxLength, decimal? offset, decimal? number);
        /// <summary>
        /// Search Grocery Products Search packaged food products, such as frozen pizza or Greek yogurt.
        /// </summary>
        /// <param name="query">The search query.</param>
        /// <param name="minCalories">The minimum amount of calories the product must have.</param>
        /// <param name="maxCalories">The maximum amount of calories the product can have.</param>
        /// <param name="minCarbs">The minimum amount of carbohydrates in grams the product must have.</param>
        /// <param name="maxCarbs">The maximum amount of carbohydrates in grams the product can have.</param>
        /// <param name="minProtein">The minimum amount of protein in grams the product must have.</param>
        /// <param name="maxProtein">The maximum amount of protein in grams the product can have.</param>
        /// <param name="minFat">The minimum amount of fat in grams the product must have.</param>
        /// <param name="maxFat">The maximum amount of fat in grams the product can have.</param>
        /// <param name="offset">The number of results to skip (between 0 and 990).</param>
        /// <param name="number">The number of expected results (between 1 and 100).</param>
        /// <returns>Object</returns>
        Object SearchGroceryProducts (string query, decimal? minCalories, decimal? maxCalories, decimal? minCarbs, decimal? maxCarbs, decimal? minProtein, decimal? maxProtein, decimal? minFat, decimal? maxFat, decimal? offset, decimal? number);
        /// <summary>
        /// Search Grocery Products by UPC Get information about a packaged food using its UPC.
        /// </summary>
        /// <param name="upc">The product&#39;s UPC.</param>
        /// <returns>Object</returns>
        Object SearchGroceryProductsByUPC (decimal? upc);
        /// <summary>
        /// Search Menu Items Search over 115,000 menu items from over 800 fast food and chain restaurants. For example, McDonald&#39;s Big Mac or Starbucks Mocha.
        /// </summary>
        /// <param name="query">The search query.</param>
        /// <param name="minCalories">The minimum amount of calories the menu item must have.</param>
        /// <param name="maxCalories">The maximum amount of calories the menu item can have.</param>
        /// <param name="minCarbs">The minimum amount of carbohydrates in grams the menu item must have.</param>
        /// <param name="maxCarbs">The maximum amount of carbohydrates in grams the menu item can have.</param>
        /// <param name="minProtein">The minimum amount of protein in grams the menu item must have.</param>
        /// <param name="maxProtein">The maximum amount of protein in grams the menu item can have.</param>
        /// <param name="minFat">The minimum amount of fat in grams the menu item must have.</param>
        /// <param name="maxFat">The maximum amount of fat in grams the menu item can have.</param>
        /// <param name="offset">The offset number for paging (between 0 and 990).</param>
        /// <param name="number">The number of expected results (between 1 and 10).</param>
        /// <returns>Object</returns>
        Object SearchMenuItems (string query, decimal? minCalories, decimal? maxCalories, decimal? minCarbs, decimal? maxCarbs, decimal? minProtein, decimal? maxProtein, decimal? minFat, decimal? maxFat, decimal? offset, decimal? number);
        /// <summary>
        /// Search Recipes Our recipe API includes over 360,000 recipes as well as an open source recipe database. Consider using the \&quot;Search Recipes Complex\&quot; endpoint for much more flexibility.
        /// </summary>
        /// <param name="query">The (natural language) recipe search query.</param>
        /// <param name="cuisine">The cuisine(s) of the recipes. One or more comma separated. See a full list of supported cuisines.</param>
        /// <param name="diet">The diet for which the recipes must be suitable. See a full list of supported diets.</param>
        /// <param name="excludeIngredients">A comma-separated list of ingredients or ingredient types that the recipes must not contain.</param>
        /// <param name="intolerances">A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. Please note: due to the automatic nature of the recipe analysis, the API cannot be 100% accurate in all cases. Please advise your users to seek professional help with medical issues.</param>
        /// <param name="offset">The number of results to skip (between 0 and 900).</param>
        /// <param name="number">The number of results to return (between 1 and 100).</param>
        /// <param name="limitLicense">Whether the recipes should have an open license that allows display with proper attribution.</param>
        /// <param name="instructionsRequired">Whether the recipes must have instructions.</param>
        /// <returns>Object</returns>
        Object SearchRecipes (string query, string cuisine, string diet, string excludeIngredients, string intolerances, decimal? offset, decimal? number, bool? limitLicense, bool? instructionsRequired);
        /// <summary>
        /// Search Recipes by Ingredients              Ever wondered what recipes you can cook with the ingredients you have in your fridge or pantry? This endpoint lets you find recipes that either maximize the usage of ingredients you have at hand (pre shopping) or minimize the ingredients that you don&#39;t currently have (post shopping).         
        /// </summary>
        /// <param name="ingredients">A comma-separated list of ingredients that the recipes should contain.</param>
        /// <param name="number">The maximum number of recipes to return (between 1 and 100). Defaults to 10.</param>
        /// <param name="limitLicense">Whether the recipes should have an open license that allows display with proper attribution.</param>
        /// <param name="ranking">Whether to maximize used ingredients (1) or minimize missing ingredients (2) first.</param>
        /// <param name="ignorePantry">Whether to ignore typical pantry items, such as water, salt, flour, etc.</param>
        /// <returns>Object</returns>
        Object SearchRecipesByIngredients (string ingredients, decimal? number, bool? limitLicense, decimal? ranking, bool? ignorePantry);
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
        /// <param name="minFolate">The minimum amount of folate in grams the recipe must have.</param>
        /// <param name="maxFolate">The maximum amount of folate in grams the recipe can have.</param>
        /// <param name="minFolicAcid">The minimum amount of folic acid in grams the recipe must have.</param>
        /// <param name="maxFolicAcid">The maximum amount of folic acid in grams the recipe can have.</param>
        /// <param name="minIodine">The minimum amount of iodine in grams the recipe must have.</param>
        /// <param name="maxIodine">The maximum amount of iodine in grams the recipe can have.</param>
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
        /// <param name="minSelenium">The minimum amount of selenium in grams the recipe must have.</param>
        /// <param name="maxSelenium">The maximum amount of selenium in grams the recipe can have.</param>
        /// <param name="minSodium">The minimum amount of sodium in milligrams the recipe must have.</param>
        /// <param name="maxSodium">The maximum amount of sodium in milligrams the recipe can have.</param>
        /// <param name="minSugar">The minimum amount of sugar in grams the recipe must have.</param>
        /// <param name="maxSugar">The maximum amount of sugar in grams the recipe can have.</param>
        /// <param name="minZinc">The minimum amount of zinc in milligrams the recipe must have.</param>
        /// <param name="maxZinc">The maximum amount of zinc in milligrams the recipe can have.</param>
        /// <param name="offset">The number of results to skip (between 0 and 900).</param>
        /// <param name="number">The number of expected results (between 1 and 100).</param>
        /// <param name="random">If true, every request will give you a random set of recipes within the requested limits.</param>
        /// <param name="limitLicense">Whether the recipes should have an open license that allows display with proper attribution.</param>
        /// <returns>Object</returns>
        Object SearchRecipesByNutrients (decimal? minCarbs, decimal? maxCarbs, decimal? minProtein, decimal? maxProtein, decimal? minCalories, decimal? maxCalories, decimal? minFat, decimal? maxFat, decimal? minAlcohol, decimal? maxAlcohol, decimal? minCaffeine, decimal? maxCaffeine, decimal? minCopper, decimal? maxCopper, decimal? minCalcium, decimal? maxCalcium, decimal? minCholine, decimal? maxCholine, decimal? minCholesterol, decimal? maxCholesterol, decimal? minFluoride, decimal? maxFluoride, decimal? minSaturatedFat, decimal? maxSaturatedFat, decimal? minVitaminA, decimal? maxVitaminA, decimal? minVitaminC, decimal? maxVitaminC, decimal? minVitaminD, decimal? maxVitaminD, decimal? minVitaminE, decimal? maxVitaminE, decimal? minVitaminK, decimal? maxVitaminK, decimal? minVitaminB1, decimal? maxVitaminB1, decimal? minVitaminB2, decimal? maxVitaminB2, decimal? minVitaminB5, decimal? maxVitaminB5, decimal? minVitaminB3, decimal? maxVitaminB3, decimal? minVitaminB6, decimal? maxVitaminB6, decimal? minVitaminB12, decimal? maxVitaminB12, decimal? minFiber, decimal? maxFiber, decimal? minFolate, decimal? maxFolate, decimal? minFolicAcid, decimal? maxFolicAcid, decimal? minIodine, decimal? maxIodine, decimal? minIron, decimal? maxIron, decimal? minMagnesium, decimal? maxMagnesium, decimal? minManganese, decimal? maxManganese, decimal? minPhosphorus, decimal? maxPhosphorus, decimal? minPotassium, decimal? maxPotassium, decimal? minSelenium, decimal? maxSelenium, decimal? minSodium, decimal? maxSodium, decimal? minSugar, decimal? maxSugar, decimal? minZinc, decimal? maxZinc, decimal? offset, decimal? number, bool? random, bool? limitLicense);
        /// <summary>
        /// Search Recipes Complex Search through hundreds of thousands of recipes using advanced filtering and ranking. NOTE: This method combines searching by query, by ingredients, and by nutrients into one endpoint.
        /// </summary>
        /// <param name="query">The (natural language) recipe search query.</param>
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
        /// <param name="tags">User defined tags that have to match. The author param has to be set.</param>
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
        /// <param name="minFolate">The minimum amount of folate in grams the recipe must have.</param>
        /// <param name="maxFolate">The maximum amount of folate in grams the recipe can have.</param>
        /// <param name="minFolicAcid">The minimum amount of folic acid in grams the recipe must have.</param>
        /// <param name="maxFolicAcid">The maximum amount of folic acid in grams the recipe can have.</param>
        /// <param name="minIodine">The minimum amount of iodine in grams the recipe must have.</param>
        /// <param name="maxIodine">The maximum amount of iodine in grams the recipe can have.</param>
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
        /// <param name="minSelenium">The minimum amount of selenium in grams the recipe must have.</param>
        /// <param name="maxSelenium">The maximum amount of selenium in grams the recipe can have.</param>
        /// <param name="minSodium">The minimum amount of sodium in milligrams the recipe must have.</param>
        /// <param name="maxSodium">The maximum amount of sodium in milligrams the recipe can have.</param>
        /// <param name="minSugar">The minimum amount of sugar in grams the recipe must have.</param>
        /// <param name="maxSugar">The maximum amount of sugar in grams the recipe can have.</param>
        /// <param name="minZinc">The minimum amount of zinc in milligrams the recipe must have.</param>
        /// <param name="maxZinc">The maximum amount of zinc in milligrams the recipe can have.</param>
        /// <param name="offset">The number of results to skip (between 0 and 900).</param>
        /// <param name="number">The number of expected results (between 1 and 100).</param>
        /// <param name="limitLicense">Whether the recipes should have an open license that allows display with proper attribution.</param>
        /// <returns>Object</returns>
        Object SearchRecipesComplex (string query, string cuisine, string excludeCuisine, string diet, string intolerances, string equipment, string includeIngredients, string excludeIngredients, string type, bool? instructionsRequired, bool? fillIngredients, bool? addRecipeInformation, bool? addRecipeNutrition, string author, string tags, decimal? recipeBoxId, string titleMatch, decimal? maxReadyTime, bool? ignorePantry, string sort, string sortDirection, decimal? minCarbs, decimal? maxCarbs, decimal? minProtein, decimal? maxProtein, decimal? minCalories, decimal? maxCalories, decimal? minFat, decimal? maxFat, decimal? minAlcohol, decimal? maxAlcohol, decimal? minCaffeine, decimal? maxCaffeine, decimal? minCopper, decimal? maxCopper, decimal? minCalcium, decimal? maxCalcium, decimal? minCholine, decimal? maxCholine, decimal? minCholesterol, decimal? maxCholesterol, decimal? minFluoride, decimal? maxFluoride, decimal? minSaturatedFat, decimal? maxSaturatedFat, decimal? minVitaminA, decimal? maxVitaminA, decimal? minVitaminC, decimal? maxVitaminC, decimal? minVitaminD, decimal? maxVitaminD, decimal? minVitaminE, decimal? maxVitaminE, decimal? minVitaminK, decimal? maxVitaminK, decimal? minVitaminB1, decimal? maxVitaminB1, decimal? minVitaminB2, decimal? maxVitaminB2, decimal? minVitaminB5, decimal? maxVitaminB5, decimal? minVitaminB3, decimal? maxVitaminB3, decimal? minVitaminB6, decimal? maxVitaminB6, decimal? minVitaminB12, decimal? maxVitaminB12, decimal? minFiber, decimal? maxFiber, decimal? minFolate, decimal? maxFolate, decimal? minFolicAcid, decimal? maxFolicAcid, decimal? minIodine, decimal? maxIodine, decimal? minIron, decimal? maxIron, decimal? minMagnesium, decimal? maxMagnesium, decimal? minManganese, decimal? maxManganese, decimal? minPhosphorus, decimal? maxPhosphorus, decimal? minPotassium, decimal? maxPotassium, decimal? minSelenium, decimal? maxSelenium, decimal? minSodium, decimal? maxSodium, decimal? minSugar, decimal? maxSugar, decimal? minZinc, decimal? maxZinc, decimal? offset, decimal? number, bool? limitLicense);
        /// <summary>
        /// Search Site Content Search spoonacular&#39;s site content. You&#39;ll be able to find everything that you could also find using the search suggestions on spoonacular.com. This is a suggest API so you can send partial strings as queries.
        /// </summary>
        /// <param name="query">The query to search for. You can also use partial queries such as \&quot;spagh\&quot; to already find spaghetti recipes, articles, grocery products, and other content.</param>
        /// <returns>Object</returns>
        Object SearchSiteContent (string query);
        /// <summary>
        /// Summarize Recipe Automatically generate a short description that summarizes key information about the recipe.
        /// </summary>
        /// <param name="id">The recipe id.</param>
        /// <returns>Object</returns>
        Object SummarizeRecipe (decimal? id);
        /// <summary>
        /// Talk to Chatbot This endpoint can be used to have a conversation about food with the spoonacular chatbot. Use the \&quot;Get Conversation Suggests\&quot; endpoint to show your user what he or she can say.
        /// </summary>
        /// <param name="text">The request / question / answer from the user to the chatbot.</param>
        /// <param name="contextId">An arbitrary globally unique id for your conversation. The conversation can contain states so you should pass your context id if you want the bot to be able to remember the conversation.</param>
        /// <returns>Object</returns>
        Object TalkToChatbot (string text, string contextId);
        /// <summary>
        /// Visualize Equipment Visualize the equipment used to make a recipe.
        /// </summary>
        /// <param name="ingredientList">The ingredient list of the recipe, one ingredient per line.</param>
        /// <param name="servings">The number of servings.</param>
        /// <param name="view">How to visualize the equipment, either \\\&quot;grid\\\&quot; or \\\&quot;list\\\&quot;.</param>
        /// <param name="defaultCss">Whether the default CSS should be added to the response.</param>
        /// <param name="showBacklink">Whether to show a backlink to spoonacular. If set false, this call counts against your quota.</param>
        /// <returns>string</returns>
        string VisualizeEquipment (string ingredientList, decimal? servings, string view, bool? defaultCss, bool? showBacklink);
        /// <summary>
        /// Visualize Ingredients Visualize ingredients of a recipe.
        /// </summary>
        /// <param name="ingredientList">The ingredient list of the recipe, one ingredient per line.</param>
        /// <param name="servings">The number of servings.</param>
        /// <param name="measure">The original system of measurement, either \\\&quot;metric\\\&quot; or \\\&quot;us\\\&quot;.</param>
        /// <param name="view">How to visualize the ingredients, either \\\&quot;grid\\\&quot; or \\\&quot;list\\\&quot;.</param>
        /// <param name="defaultCss">Whether the default CSS should be added to the response.</param>
        /// <param name="showBacklink">Whether to show a backlink to spoonacular. If set false, this call counts against your quota.</param>
        /// <returns>string</returns>
        string VisualizeIngredients (string ingredientList, decimal? servings, string measure, string view, bool? defaultCss, bool? showBacklink);
        /// <summary>
        /// Visualize Menu Item Nutrition by ID Visualize a menu item&#39;s nutritional information as HTML including CSS.
        /// </summary>
        /// <param name="id">The menu item id.</param>
        /// <param name="defaultCss">Whether the default CSS should be added to the response.</param>
        /// <returns>string</returns>
        string VisualizeMenuItemNutritionByID (decimal? id, bool? defaultCss);
        /// <summary>
        /// Visualize Price Breakdown Visualize the price breakdown of a recipe.
        /// </summary>
        /// <param name="ingredientList">The ingredient list of the recipe, one ingredient per line.</param>
        /// <param name="servings">The number of servings.</param>
        /// <param name="mode">The mode in which the widget should be delivered. 1 &#x3D; separate views (compact), 2 &#x3D; all in one view (full).</param>
        /// <param name="defaultCss">Whether the default CSS should be added to the response.</param>
        /// <param name="showBacklink">Whether to show a backlink to spoonacular. If set false, this call counts against your quota.</param>
        /// <returns>string</returns>
        string VisualizePriceBreakdown (string ingredientList, decimal? servings, decimal? mode, bool? defaultCss, bool? showBacklink);
        /// <summary>
        /// Visualize Product Nutrition by ID Visualize a product&#39;s nutritional information as HTML including CSS.
        /// </summary>
        /// <param name="id">The id of the product.</param>
        /// <param name="defaultCss">Whether the default CSS should be added to the response.</param>
        /// <returns>string</returns>
        string VisualizeProductNutritionByID (decimal? id, bool? defaultCss);
        /// <summary>
        /// Visualize Recipe Equipment by ID Visualize a recipe&#39;s equipment list.
        /// </summary>
        /// <param name="id">The recipe id.</param>
        /// <param name="defaultCss">Whether the default CSS should be added to the response.</param>
        /// <returns>string</returns>
        string VisualizeRecipeEquipmentByID (decimal? id, bool? defaultCss);
        /// <summary>
        /// Visualize Recipe Ingredients by ID Visualize a recipe&#39;s ingredient list.
        /// </summary>
        /// <param name="id">The recipe id.</param>
        /// <param name="defaultCss">Whether the default CSS should be added to the response.</param>
        /// <returns>string</returns>
        string VisualizeRecipeIngredientsByID (decimal? id, bool? defaultCss);
        /// <summary>
        /// Visualize Recipe Nutrition Visualize a recipe&#39;s nutritional information as HTML including CSS
        /// </summary>
        /// <param name="ingredientList">The ingredient list of the recipe, one ingredient per line.</param>
        /// <param name="servings">The number of servings.</param>
        /// <param name="defaultCss">Whether the default CSS should be added to the response.</param>
        /// <param name="showBacklink">Whether to show a backlink to spoonacular. If set false, this call counts against your quota.</param>
        /// <returns>string</returns>
        string VisualizeRecipeNutrition (string ingredientList, decimal? servings, bool? defaultCss, bool? showBacklink);
        /// <summary>
        /// Visualize Recipe Nutrition by ID Visualize a recipe&#39;s nutritional information as HTML including CSS.
        /// </summary>
        /// <param name="id">The recipe id.</param>
        /// <param name="defaultCss">Whether the default CSS should be added to the response.</param>
        /// <returns>string</returns>
        string VisualizeRecipeNutritionByID (decimal? id, bool? defaultCss);
        /// <summary>
        /// Visualize Recipe Price Breakdown by ID Visualize a recipe&#39;s price breakdown.
        /// </summary>
        /// <param name="id">The recipe id.</param>
        /// <param name="defaultCss">Whether the default CSS should be added to the response.</param>
        /// <returns>string</returns>
        string VisualizeRecipePriceBreakdownByID (decimal? id, bool? defaultCss);
    }
  
    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public class DefaultApi : IDefaultApi
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="DefaultApi"/> class.
        /// </summary>
        /// <param name="apiClient"> an instance of ApiClient (optional)</param>
        /// <returns></returns>
        public DefaultApi(ApiClient apiClient = null)
        {
            if (apiClient == null) // use the default one in Configuration
                this.ApiClient = Configuration.DefaultApiClient; 
            else
                this.ApiClient = apiClient;
        }
    
        /// <summary>
        /// Initializes a new instance of the <see cref="DefaultApi"/> class.
        /// </summary>
        /// <returns></returns>
        public DefaultApi(String basePath)
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
        /// Add to Meal Plan Add an item to the user&#39;s meal plan.
        /// </summary>
        /// <param name="username">The username.</param> 
        /// <param name="hash">The private hash for the username.</param> 
        /// <param name="inlineObject9"></param> 
        /// <returns>Object</returns>            
        public Object AddToMealPlan (string username, string hash, InlineObject9 inlineObject9)
        {
            
            // verify the required parameter 'username' is set
            if (username == null) throw new ApiException(400, "Missing required parameter 'username' when calling AddToMealPlan");
            
            // verify the required parameter 'hash' is set
            if (hash == null) throw new ApiException(400, "Missing required parameter 'hash' when calling AddToMealPlan");
            
            // verify the required parameter 'inlineObject9' is set
            if (inlineObject9 == null) throw new ApiException(400, "Missing required parameter 'inlineObject9' when calling AddToMealPlan");
            
    
            var path = "/mealplanner/{username}/items";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "username" + "}", ApiClient.ParameterToString(username));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (hash != null) queryParams.Add("hash", ApiClient.ParameterToString(hash)); // query parameter
                                    postBody = ApiClient.Serialize(inlineObject9); // http body (model) parameter
    
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling AddToMealPlan: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling AddToMealPlan: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Add to Shopping List Add an item to the current shopping list of a user.
        /// </summary>
        /// <param name="username">The username.</param> 
        /// <param name="hash">The private hash for the username.</param> 
        /// <param name="inlineObject12"></param> 
        /// <returns>Object</returns>            
        public Object AddToShoppingList (string username, string hash, InlineObject12 inlineObject12)
        {
            
            // verify the required parameter 'username' is set
            if (username == null) throw new ApiException(400, "Missing required parameter 'username' when calling AddToShoppingList");
            
            // verify the required parameter 'hash' is set
            if (hash == null) throw new ApiException(400, "Missing required parameter 'hash' when calling AddToShoppingList");
            
            // verify the required parameter 'inlineObject12' is set
            if (inlineObject12 == null) throw new ApiException(400, "Missing required parameter 'inlineObject12' when calling AddToShoppingList");
            
    
            var path = "/mealplanner/{username}/shopping-list/items";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "username" + "}", ApiClient.ParameterToString(username));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (hash != null) queryParams.Add("hash", ApiClient.ParameterToString(hash)); // query parameter
                                    postBody = ApiClient.Serialize(inlineObject12); // http body (model) parameter
    
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling AddToShoppingList: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling AddToShoppingList: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Analyze a Recipe Search Query Parse a recipe search query to find out its intention.
        /// </summary>
        /// <param name="q">The recipe search query.</param> 
        /// <returns>Object</returns>            
        public Object AnalyzeARecipeSearchQuery (string q)
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
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling AnalyzeARecipeSearchQuery: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling AnalyzeARecipeSearchQuery: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Analyze Recipe Instructions Extract ingredients and equipment from the recipe&#39;s instructions.
        /// </summary>
        /// <param name="instructions">The instructions to be analyzed.</param> 
        /// <returns>Object</returns>            
        public Object AnalyzeRecipeInstructions (string instructions)
        {
            
            // verify the required parameter 'instructions' is set
            if (instructions == null) throw new ApiException(400, "Missing required parameter 'instructions' when calling AnalyzeRecipeInstructions");
            
    
            var path = "/recipes/analyzeInstructions";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    if (instructions != null) formParams.Add("instructions", ApiClient.ParameterToString(instructions)); // form parameter
                
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling AnalyzeRecipeInstructions: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling AnalyzeRecipeInstructions: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Autocomplete Ingredient Search Autocomplete the entry of an ingredient.
        /// </summary>
        /// <param name="query">The partial or full ingredient name.</param> 
        /// <param name="number">The number of results to return (between 1 and 100).</param> 
        /// <param name="metaInformation">Whether to return more meta information about the ingredients.</param> 
        /// <param name="intolerances">A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.</param> 
        /// <returns>Object</returns>            
        public Object AutocompleteIngredientSearch (string query, decimal? number, bool? metaInformation, bool? intolerances)
        {
            
            // verify the required parameter 'query' is set
            if (query == null) throw new ApiException(400, "Missing required parameter 'query' when calling AutocompleteIngredientSearch");
            
    
            var path = "/food/ingredients/autocomplete";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (query != null) queryParams.Add("query", ApiClient.ParameterToString(query)); // query parameter
 if (number != null) queryParams.Add("number", ApiClient.ParameterToString(number)); // query parameter
 if (metaInformation != null) queryParams.Add("metaInformation", ApiClient.ParameterToString(metaInformation)); // query parameter
 if (intolerances != null) queryParams.Add("intolerances", ApiClient.ParameterToString(intolerances)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling AutocompleteIngredientSearch: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling AutocompleteIngredientSearch: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Autocomplete Menu Item Search Generate suggestions for menu items based on a (partial) query. The matches will be found by looking in the title only.
        /// </summary>
        /// <param name="query">The (partial) search query.</param> 
        /// <param name="number">The number of results to return (between 1 and 25).</param> 
        /// <returns>Object</returns>            
        public Object AutocompleteMenuItemSearch (string query, decimal? number)
        {
            
            // verify the required parameter 'query' is set
            if (query == null) throw new ApiException(400, "Missing required parameter 'query' when calling AutocompleteMenuItemSearch");
            
    
            var path = "/food/menuItems/suggest";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (query != null) queryParams.Add("query", ApiClient.ParameterToString(query)); // query parameter
 if (number != null) queryParams.Add("number", ApiClient.ParameterToString(number)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling AutocompleteMenuItemSearch: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling AutocompleteMenuItemSearch: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Autocomplete Product Search Generate suggestions for grocery products based on a (partial) query. The matches will be found by looking in the title only.
        /// </summary>
        /// <param name="query">The (partial) search query.</param> 
        /// <param name="number">The number of results to return (between 1 and 25).</param> 
        /// <returns>Object</returns>            
        public Object AutocompleteProductSearch (string query, decimal? number)
        {
            
            // verify the required parameter 'query' is set
            if (query == null) throw new ApiException(400, "Missing required parameter 'query' when calling AutocompleteProductSearch");
            
    
            var path = "/food/products/suggest";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (query != null) queryParams.Add("query", ApiClient.ParameterToString(query)); // query parameter
 if (number != null) queryParams.Add("number", ApiClient.ParameterToString(number)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling AutocompleteProductSearch: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling AutocompleteProductSearch: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Autocomplete Recipe Search Autocomplete a partial input to suggest possible recipe names.
        /// </summary>
        /// <param name="query">The query to be autocompleted.</param> 
        /// <param name="number">The number of results to return (between 1 and 25).</param> 
        /// <returns>Object</returns>            
        public Object AutocompleteRecipeSearch (string query, decimal? number)
        {
            
            // verify the required parameter 'query' is set
            if (query == null) throw new ApiException(400, "Missing required parameter 'query' when calling AutocompleteRecipeSearch");
            
    
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
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling AutocompleteRecipeSearch: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling AutocompleteRecipeSearch: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Classify Cuisine Classify the recipe&#39;s cuisine.
        /// </summary>
        /// <param name="title">The title of the recipe.</param> 
        /// <param name="ingredientList">The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n).</param> 
        /// <returns>Object</returns>            
        public Object ClassifyCuisine (string title, string ingredientList)
        {
            
            // verify the required parameter 'title' is set
            if (title == null) throw new ApiException(400, "Missing required parameter 'title' when calling ClassifyCuisine");
            
            // verify the required parameter 'ingredientList' is set
            if (ingredientList == null) throw new ApiException(400, "Missing required parameter 'ingredientList' when calling ClassifyCuisine");
            
    
            var path = "/recipes/cuisine";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    if (title != null) formParams.Add("title", ApiClient.ParameterToString(title)); // form parameter
if (ingredientList != null) formParams.Add("ingredientList", ApiClient.ParameterToString(ingredientList)); // form parameter
                
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling ClassifyCuisine: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling ClassifyCuisine: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Classify Grocery Product This endpoint allows you to match a packaged food to a basic category, e.g. a specific brand of milk to the category milk.
        /// </summary>
        /// <param name="inlineObject8"></param> 
        /// <param name="locale">The display name of the returned category, supported is en_US (for American English) and en_GB (for British English).</param> 
        /// <returns>Object</returns>            
        public Object ClassifyGroceryProduct (InlineObject8 inlineObject8, string locale)
        {
            
            // verify the required parameter 'inlineObject8' is set
            if (inlineObject8 == null) throw new ApiException(400, "Missing required parameter 'inlineObject8' when calling ClassifyGroceryProduct");
            
    
            var path = "/food/products/classify";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (locale != null) queryParams.Add("locale", ApiClient.ParameterToString(locale)); // query parameter
                                    postBody = ApiClient.Serialize(inlineObject8); // http body (model) parameter
    
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling ClassifyGroceryProduct: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling ClassifyGroceryProduct: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Classify Grocery Product Bulk Provide a set of product jsons, get back classified products.
        /// </summary>
        /// <param name="body"></param> 
        /// <param name="locale">The display name of the returned category, supported is en_US (for American English) and en_GB (for British English).</param> 
        /// <returns>Object</returns>            
        public Object ClassifyGroceryProductBulk (Object body, string locale)
        {
            
            // verify the required parameter 'body' is set
            if (body == null) throw new ApiException(400, "Missing required parameter 'body' when calling ClassifyGroceryProductBulk");
            
    
            var path = "/food/products/classifyBatch";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (locale != null) queryParams.Add("locale", ApiClient.ParameterToString(locale)); // query parameter
                                    postBody = ApiClient.Serialize(body); // http body (model) parameter
    
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling ClassifyGroceryProductBulk: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling ClassifyGroceryProductBulk: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Convert Amounts Convert amounts like \&quot;2 cups of flour to grams\&quot;.
        /// </summary>
        /// <param name="ingredientName">The ingredient which you want to convert.</param> 
        /// <param name="sourceAmount">The amount from which you want to convert, e.g. the 2.5 in \&quot;2.5 cups of flour to grams\&quot;.</param> 
        /// <param name="sourceUnit">The unit from which you want to convert, e.g. the grams in \&quot;2.5 cups of flour to grams\&quot;. You can also use \&quot;piece\&quot;, e.g. \&quot;3.4 oz tomatoes to piece\&quot;</param> 
        /// <param name="targetUnit">The unit to which you want to convert, e.g. the grams in \&quot;2.5 cups of flour to grams\&quot;. You can also use \&quot;piece\&quot;, e.g. \&quot;3.4 oz tomatoes to piece\&quot;</param> 
        /// <returns>Object</returns>            
        public Object ConvertAmounts (string ingredientName, decimal? sourceAmount, string sourceUnit, string targetUnit)
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
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling ConvertAmounts: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling ConvertAmounts: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Create Recipe Card Generate a recipe card for a recipe.
        /// </summary>
        /// <param name="title">The title of the recipe.</param> 
        /// <param name="image">The binary image of the recipe as jpg.</param> 
        /// <param name="ingredients">The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n).</param> 
        /// <param name="instructions">The instructions to make the recipe. One step per line (separate lines with \\\\n).</param> 
        /// <param name="readyInMinutes">The number of minutes it takes to get the recipe on the table.</param> 
        /// <param name="servings">The number of servings the recipe makes.</param> 
        /// <param name="mask">The mask to put over the recipe image (\\\&quot;ellipseMask\\\&quot;, \\\&quot;diamondMask\\\&quot;, \\\&quot;starMask\\\&quot;, \\\&quot;heartMask\\\&quot;, \\\&quot;potMask\\\&quot;, \\\&quot;fishMask\\\&quot;).</param> 
        /// <param name="backgroundImage">The background image (\\\&quot;none\\\&quot;,\\\&quot;background1\\\&quot;, or \\\&quot;background2\\\&quot;).</param> 
        /// <param name="author">The author of the recipe.</param> 
        /// <param name="backgroundColor">The background color for the recipe card as a hex-string.</param> 
        /// <param name="fontColor">The font color for the recipe card as a hex-string.</param> 
        /// <param name="source">The source of the recipe.</param> 
        /// <returns>Object</returns>            
        public Object CreateRecipeCard (string title, System.IO.Stream image, string ingredients, string instructions, decimal? readyInMinutes, decimal? servings, string mask, string backgroundImage, string author, string backgroundColor, string fontColor, string source)
        {
            
            // verify the required parameter 'title' is set
            if (title == null) throw new ApiException(400, "Missing required parameter 'title' when calling CreateRecipeCard");
            
            // verify the required parameter 'image' is set
            if (image == null) throw new ApiException(400, "Missing required parameter 'image' when calling CreateRecipeCard");
            
            // verify the required parameter 'ingredients' is set
            if (ingredients == null) throw new ApiException(400, "Missing required parameter 'ingredients' when calling CreateRecipeCard");
            
            // verify the required parameter 'instructions' is set
            if (instructions == null) throw new ApiException(400, "Missing required parameter 'instructions' when calling CreateRecipeCard");
            
            // verify the required parameter 'readyInMinutes' is set
            if (readyInMinutes == null) throw new ApiException(400, "Missing required parameter 'readyInMinutes' when calling CreateRecipeCard");
            
            // verify the required parameter 'servings' is set
            if (servings == null) throw new ApiException(400, "Missing required parameter 'servings' when calling CreateRecipeCard");
            
            // verify the required parameter 'mask' is set
            if (mask == null) throw new ApiException(400, "Missing required parameter 'mask' when calling CreateRecipeCard");
            
            // verify the required parameter 'backgroundImage' is set
            if (backgroundImage == null) throw new ApiException(400, "Missing required parameter 'backgroundImage' when calling CreateRecipeCard");
            
    
            var path = "/recipes/visualizeRecipe";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    if (title != null) formParams.Add("title", ApiClient.ParameterToString(title)); // form parameter
if (image != null) fileParams.Add("image", ApiClient.ParameterToFile("image", image));
if (ingredients != null) formParams.Add("ingredients", ApiClient.ParameterToString(ingredients)); // form parameter
if (instructions != null) formParams.Add("instructions", ApiClient.ParameterToString(instructions)); // form parameter
if (readyInMinutes != null) formParams.Add("readyInMinutes", ApiClient.ParameterToString(readyInMinutes)); // form parameter
if (servings != null) formParams.Add("servings", ApiClient.ParameterToString(servings)); // form parameter
if (mask != null) formParams.Add("mask", ApiClient.ParameterToString(mask)); // form parameter
if (backgroundImage != null) formParams.Add("backgroundImage", ApiClient.ParameterToString(backgroundImage)); // form parameter
if (author != null) formParams.Add("author", ApiClient.ParameterToString(author)); // form parameter
if (backgroundColor != null) formParams.Add("backgroundColor", ApiClient.ParameterToString(backgroundColor)); // form parameter
if (fontColor != null) formParams.Add("fontColor", ApiClient.ParameterToString(fontColor)); // form parameter
if (source != null) formParams.Add("source", ApiClient.ParameterToString(source)); // form parameter
                
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling CreateRecipeCard: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling CreateRecipeCard: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Delete from Meal Plan Delete an item from the user&#39;s meal plan.
        /// </summary>
        /// <param name="username">The username.</param> 
        /// <param name="id">The shopping list item id.</param> 
        /// <param name="hash">The private hash for the username.</param> 
        /// <param name="inlineObject10"></param> 
        /// <returns>Object</returns>            
        public Object DeleteFromMealPlan (string username, decimal? id, string hash, InlineObject10 inlineObject10)
        {
            
            // verify the required parameter 'username' is set
            if (username == null) throw new ApiException(400, "Missing required parameter 'username' when calling DeleteFromMealPlan");
            
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling DeleteFromMealPlan");
            
            // verify the required parameter 'hash' is set
            if (hash == null) throw new ApiException(400, "Missing required parameter 'hash' when calling DeleteFromMealPlan");
            
            // verify the required parameter 'inlineObject10' is set
            if (inlineObject10 == null) throw new ApiException(400, "Missing required parameter 'inlineObject10' when calling DeleteFromMealPlan");
            
    
            var path = "/mealplanner/{username}/items/{id}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "username" + "}", ApiClient.ParameterToString(username));
path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (hash != null) queryParams.Add("hash", ApiClient.ParameterToString(hash)); // query parameter
                                    postBody = ApiClient.Serialize(inlineObject10); // http body (model) parameter
    
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.DELETE, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling DeleteFromMealPlan: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling DeleteFromMealPlan: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Delete from Shopping List Delete an item from the current shopping list of the user.
        /// </summary>
        /// <param name="username">The username.</param> 
        /// <param name="id">The shopping list item id.</param> 
        /// <param name="hash">The private hash for the username.</param> 
        /// <param name="inlineObject13"></param> 
        /// <returns>Object</returns>            
        public Object DeleteFromShoppingList (string username, decimal? id, string hash, InlineObject13 inlineObject13)
        {
            
            // verify the required parameter 'username' is set
            if (username == null) throw new ApiException(400, "Missing required parameter 'username' when calling DeleteFromShoppingList");
            
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling DeleteFromShoppingList");
            
            // verify the required parameter 'hash' is set
            if (hash == null) throw new ApiException(400, "Missing required parameter 'hash' when calling DeleteFromShoppingList");
            
            // verify the required parameter 'inlineObject13' is set
            if (inlineObject13 == null) throw new ApiException(400, "Missing required parameter 'inlineObject13' when calling DeleteFromShoppingList");
            
    
            var path = "/mealplanner/{username}/shopping-list/items/{id}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "username" + "}", ApiClient.ParameterToString(username));
path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (hash != null) queryParams.Add("hash", ApiClient.ParameterToString(hash)); // query parameter
                                    postBody = ApiClient.Serialize(inlineObject13); // http body (model) parameter
    
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.DELETE, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling DeleteFromShoppingList: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling DeleteFromShoppingList: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Detect Food in Text Take any text and find all mentions of food contained within it. This task is also called Named Entity Recognition (NER). In this case, the entities are foods. Either dishes, such as pizza or cheeseburger, or ingredients, such as cucumber or almonds.
        /// </summary>
        /// <param name="text">The text in which food items, such as dish names and ingredients, should be detected in.</param> 
        /// <returns>Object</returns>            
        public Object DetectFoodInText (string text)
        {
            
            // verify the required parameter 'text' is set
            if (text == null) throw new ApiException(400, "Missing required parameter 'text' when calling DetectFoodInText");
            
    
            var path = "/food/detect";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    if (text != null) formParams.Add("text", ApiClient.ParameterToString(text)); // form parameter
                
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling DetectFoodInText: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling DetectFoodInText: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Extract Recipe from Website This endpoint lets you extract recipe data such as title, ingredients, and instructions from any properly formatted Website.
        /// </summary>
        /// <param name="url">The URL of the recipe page.</param> 
        /// <param name="forceExtraction">If true, the extraction will be triggered whether we already know the recipe or not. Use this only if information is missing as this operation is slower.</param> 
        /// <param name="analyze">If true, the recipe will be analyzed and classified resolving in more data such as cuisines, dish types, and more.</param> 
        /// <returns>Object</returns>            
        public Object ExtractRecipeFromWebsite (string url, bool? forceExtraction, bool? analyze)
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
                                        
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling ExtractRecipeFromWebsite: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling ExtractRecipeFromWebsite: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Generate Meal Plan Generate a meal plan with three meals per day (breakfast, lunch, and dinner).
        /// </summary>
        /// <param name="timeFrame">Either for one \&quot;day\&quot; or an entire \&quot;week\&quot;.</param> 
        /// <param name="targetCalories">What is the caloric target for one day? The meal plan generator will try to get as close as possible to that goal.</param> 
        /// <param name="diet">Enter a diet that the meal plan has to adhere to. See a full list of supported diets.</param> 
        /// <param name="exclude">A comma-separated list of allergens or ingredients that must be excluded.</param> 
        /// <returns>Object</returns>            
        public Object GenerateMealPlan (string timeFrame, decimal? targetCalories, string diet, string exclude)
        {
            
    
            var path = "/mealplanner/generate";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (timeFrame != null) queryParams.Add("timeFrame", ApiClient.ParameterToString(timeFrame)); // query parameter
 if (targetCalories != null) queryParams.Add("targetCalories", ApiClient.ParameterToString(targetCalories)); // query parameter
 if (diet != null) queryParams.Add("diet", ApiClient.ParameterToString(diet)); // query parameter
 if (exclude != null) queryParams.Add("exclude", ApiClient.ParameterToString(exclude)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GenerateMealPlan: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GenerateMealPlan: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Generate Shopping List Generate the shopping list for a user from the meal planner in a given time frame.
        /// </summary>
        /// <param name="username">The username.</param> 
        /// <param name="startDate">The start date in the format yyyy-mm-dd.</param> 
        /// <param name="endDate">The end date in the format yyyy-mm-dd.</param> 
        /// <param name="hash">The private hash for the username.</param> 
        /// <param name="inlineObject11"></param> 
        /// <returns>Object</returns>            
        public Object GenerateShoppingList (string username, string startDate, string endDate, string hash, InlineObject11 inlineObject11)
        {
            
            // verify the required parameter 'username' is set
            if (username == null) throw new ApiException(400, "Missing required parameter 'username' when calling GenerateShoppingList");
            
            // verify the required parameter 'startDate' is set
            if (startDate == null) throw new ApiException(400, "Missing required parameter 'startDate' when calling GenerateShoppingList");
            
            // verify the required parameter 'endDate' is set
            if (endDate == null) throw new ApiException(400, "Missing required parameter 'endDate' when calling GenerateShoppingList");
            
            // verify the required parameter 'hash' is set
            if (hash == null) throw new ApiException(400, "Missing required parameter 'hash' when calling GenerateShoppingList");
            
            // verify the required parameter 'inlineObject11' is set
            if (inlineObject11 == null) throw new ApiException(400, "Missing required parameter 'inlineObject11' when calling GenerateShoppingList");
            
    
            var path = "/mealplanner/{username}/shopping-list/{start-date}/{end-date}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "username" + "}", ApiClient.ParameterToString(username));
path = path.Replace("{" + "start-date" + "}", ApiClient.ParameterToString(startDate));
path = path.Replace("{" + "end-date" + "}", ApiClient.ParameterToString(endDate));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (hash != null) queryParams.Add("hash", ApiClient.ParameterToString(hash)); // query parameter
                                    postBody = ApiClient.Serialize(inlineObject11); // http body (model) parameter
    
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GenerateShoppingList: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GenerateShoppingList: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Get a Random Food Joke Get a random joke that is related to food. Caution: this is an endpoint for adults!
        /// </summary>
        /// <returns>Object</returns>            
        public Object GetARandomFoodJoke ()
        {
            
    
            var path = "/food/jokes/random";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                                    
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetARandomFoodJoke: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetARandomFoodJoke: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Get Analyzed Recipe Instructions Get an analyzed breakdown of a recipe&#39;s instructions. Each step is enriched with the ingredients and equipment required.
        /// </summary>
        /// <param name="id">The recipe id.</param> 
        /// <param name="stepBreakdown">Whether to break down the recipe steps even more.</param> 
        /// <returns>Object</returns>            
        public Object GetAnalyzedRecipeInstructions (decimal? id, bool? stepBreakdown)
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
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetAnalyzedRecipeInstructions: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetAnalyzedRecipeInstructions: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Get Comparable Products Find comparable products to the given one.
        /// </summary>
        /// <param name="upc">The UPC of the product for which you want to find comparable products.</param> 
        /// <returns>Object</returns>            
        public Object GetComparableProducts (decimal? upc)
        {
            
            // verify the required parameter 'upc' is set
            if (upc == null) throw new ApiException(400, "Missing required parameter 'upc' when calling GetComparableProducts");
            
    
            var path = "/food/products/upc/{upc}/comparable";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "upc" + "}", ApiClient.ParameterToString(upc));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                                    
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetComparableProducts: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetComparableProducts: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Get Conversation Suggests This endpoint returns suggestions for things the user can say or ask the chatbot.
        /// </summary>
        /// <param name="query">A (partial) query from the user. The endpoint will return if it matches topics it can talk about.</param> 
        /// <param name="number">The number of suggestions to return (between 1 and 25).</param> 
        /// <returns>Object</returns>            
        public Object GetConversationSuggests (string query, decimal? number)
        {
            
            // verify the required parameter 'query' is set
            if (query == null) throw new ApiException(400, "Missing required parameter 'query' when calling GetConversationSuggests");
            
    
            var path = "/food/converse/suggest";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (query != null) queryParams.Add("query", ApiClient.ParameterToString(query)); // query parameter
 if (number != null) queryParams.Add("number", ApiClient.ParameterToString(number)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetConversationSuggests: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetConversationSuggests: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Get Dish Pairing for Wine Find a dish that goes well with a given wine.
        /// </summary>
        /// <param name="wine">The type of wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;.</param> 
        /// <returns>Object</returns>            
        public Object GetDishPairingForWine (string wine)
        {
            
            // verify the required parameter 'wine' is set
            if (wine == null) throw new ApiException(400, "Missing required parameter 'wine' when calling GetDishPairingForWine");
            
    
            var path = "/food/wine/dishes";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (wine != null) queryParams.Add("wine", ApiClient.ParameterToString(wine)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetDishPairingForWine: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetDishPairingForWine: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Get Ingredient Information Use an ingredient id to get all available information about an ingredient, such as its image and supermarket aisle.
        /// </summary>
        /// <param name="id">The ingredient id.</param> 
        /// <param name="amount">The amount of this ingredient.</param> 
        /// <param name="unit">The unit for the given amount.</param> 
        /// <returns>Object</returns>            
        public Object GetIngredientInformation (decimal? id, decimal? amount, string unit)
        {
            
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling GetIngredientInformation");
            
    
            var path = "/food/ingredients/{id}/information";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (amount != null) queryParams.Add("amount", ApiClient.ParameterToString(amount)); // query parameter
 if (unit != null) queryParams.Add("unit", ApiClient.ParameterToString(unit)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetIngredientInformation: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetIngredientInformation: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Get Ingredient Substitutes Search for substitutes for a given ingredient.
        /// </summary>
        /// <param name="ingredientName">The name of the ingredient you want to replace.</param> 
        /// <returns>Object</returns>            
        public Object GetIngredientSubstitutes (string ingredientName)
        {
            
            // verify the required parameter 'ingredientName' is set
            if (ingredientName == null) throw new ApiException(400, "Missing required parameter 'ingredientName' when calling GetIngredientSubstitutes");
            
    
            var path = "/food/ingredients/substitutes";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (ingredientName != null) queryParams.Add("ingredientName", ApiClient.ParameterToString(ingredientName)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetIngredientSubstitutes: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetIngredientSubstitutes: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Get Ingredient Substitutes by ID Search for substitutes for a given ingredient.
        /// </summary>
        /// <param name="id">The id of the ingredient you want substitutes for.</param> 
        /// <returns>Object</returns>            
        public Object GetIngredientSubstitutesByID (decimal? id)
        {
            
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling GetIngredientSubstitutesByID");
            
    
            var path = "/food/ingredients/{id}/substitutes";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                                    
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetIngredientSubstitutesByID: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetIngredientSubstitutesByID: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Get Meal Plan Template Get information about a meal plan template.
        /// </summary>
        /// <param name="username">The username.</param> 
        /// <param name="id">The shopping list item id.</param> 
        /// <param name="hash">The private hash for the username.</param> 
        /// <returns>Object</returns>            
        public Object GetMealPlanTemplate (string username, decimal? id, string hash)
        {
            
            // verify the required parameter 'username' is set
            if (username == null) throw new ApiException(400, "Missing required parameter 'username' when calling GetMealPlanTemplate");
            
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling GetMealPlanTemplate");
            
            // verify the required parameter 'hash' is set
            if (hash == null) throw new ApiException(400, "Missing required parameter 'hash' when calling GetMealPlanTemplate");
            
    
            var path = "/mealplanner/{username}/templates/{id}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "username" + "}", ApiClient.ParameterToString(username));
path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (hash != null) queryParams.Add("hash", ApiClient.ParameterToString(hash)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetMealPlanTemplate: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetMealPlanTemplate: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Get Meal Plan Templates Get meal plan templates from user or public ones.
        /// </summary>
        /// <param name="username">The username.</param> 
        /// <param name="hash">The private hash for the username.</param> 
        /// <returns>Object</returns>            
        public Object GetMealPlanTemplates (string username, string hash)
        {
            
            // verify the required parameter 'username' is set
            if (username == null) throw new ApiException(400, "Missing required parameter 'username' when calling GetMealPlanTemplates");
            
            // verify the required parameter 'hash' is set
            if (hash == null) throw new ApiException(400, "Missing required parameter 'hash' when calling GetMealPlanTemplates");
            
    
            var path = "/mealplanner/{username}/templates";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "username" + "}", ApiClient.ParameterToString(username));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (hash != null) queryParams.Add("hash", ApiClient.ParameterToString(hash)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetMealPlanTemplates: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetMealPlanTemplates: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Get Meal Plan Week Retrieve a meal planned week for the given user. The username must be a spoonacular user and the hash must the the user&#39;s hash that can be found in his/her account.
        /// </summary>
        /// <param name="username">The username.</param> 
        /// <param name="startDate">The start date of the meal planned week in the format yyyy-mm-dd.</param> 
        /// <param name="hash">The private hash for the username.</param> 
        /// <returns>Object</returns>            
        public Object GetMealPlanWeek (string username, string startDate, string hash)
        {
            
            // verify the required parameter 'username' is set
            if (username == null) throw new ApiException(400, "Missing required parameter 'username' when calling GetMealPlanWeek");
            
            // verify the required parameter 'startDate' is set
            if (startDate == null) throw new ApiException(400, "Missing required parameter 'startDate' when calling GetMealPlanWeek");
            
            // verify the required parameter 'hash' is set
            if (hash == null) throw new ApiException(400, "Missing required parameter 'hash' when calling GetMealPlanWeek");
            
    
            var path = "/mealplanner/{username}/week/{start-date}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "username" + "}", ApiClient.ParameterToString(username));
path = path.Replace("{" + "start-date" + "}", ApiClient.ParameterToString(startDate));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (hash != null) queryParams.Add("hash", ApiClient.ParameterToString(hash)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetMealPlanWeek: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetMealPlanWeek: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Get Menu Item Information Use a menu item id to get all available information about a menu item, such as nutrition.
        /// </summary>
        /// <param name="id">The menu item id.</param> 
        /// <returns>Object</returns>            
        public Object GetMenuItemInformation (decimal? id)
        {
            
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling GetMenuItemInformation");
            
    
            var path = "/food/menuItems/{id}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                                    
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetMenuItemInformation: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetMenuItemInformation: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Get Product Information Use a product id to get full information about a product, such as ingredients, nutrition, etc. The nutritional information is per serving.
        /// </summary>
        /// <param name="id">The id of the packaged food.</param> 
        /// <returns>Object</returns>            
        public Object GetProductInformation (decimal? id)
        {
            
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling GetProductInformation");
            
    
            var path = "/food/products/{id}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                                    
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetProductInformation: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetProductInformation: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Get Random Food Trivia Returns random food trivia.
        /// </summary>
        /// <returns>Object</returns>            
        public Object GetRandomFoodTrivia ()
        {
            
    
            var path = "/food/trivia/random";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                                    
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetRandomFoodTrivia: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetRandomFoodTrivia: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Get Random Recipes Find random (popular) recipes. If you need to filter recipes by diet, nutrition etc. you might want to consider using the complex recipe search endpoint and set the sort request parameter to random.
        /// </summary>
        /// <param name="limitLicense">Whether the recipes should have an open license that allows display with proper attribution.</param> 
        /// <param name="tags">The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have.</param> 
        /// <param name="number">The number of random recipes to be returned (between 1 and 100).</param> 
        /// <returns>Object</returns>            
        public Object GetRandomRecipes (bool? limitLicense, string tags, decimal? number)
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
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetRandomRecipes: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetRandomRecipes: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Get Recipe Equipment by ID Get a recipe&#39;s equipment list.
        /// </summary>
        /// <param name="id">The recipe id.</param> 
        /// <returns>Object</returns>            
        public Object GetRecipeEquipmentByID (decimal? id)
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
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetRecipeEquipmentByID: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetRecipeEquipmentByID: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Get Recipe Information Use a recipe id to get full information about a recipe, such as ingredients, nutrition, diet and allergen information, etc.
        /// </summary>
        /// <param name="id">The id of the recipe.</param> 
        /// <param name="includeNutrition">Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings.</param> 
        /// <returns>Object</returns>            
        public Object GetRecipeInformation (decimal? id, bool? includeNutrition)
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
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetRecipeInformation: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetRecipeInformation: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Get Recipe Information Bulk Get information about multiple recipes at once. This is equivalent to calling the Get Recipe Information endpoint multiple times, but faster.
        /// </summary>
        /// <param name="ids">A comma-separated list of recipe ids.</param> 
        /// <param name="includeNutrition">Include nutrition data to the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings.</param> 
        /// <returns>Object</returns>            
        public Object GetRecipeInformationBulk (string ids, bool? includeNutrition)
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
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetRecipeInformationBulk: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetRecipeInformationBulk: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Get Recipe Ingredients by ID Get a recipe&#39;s ingredient list.
        /// </summary>
        /// <param name="id">The recipe id.</param> 
        /// <returns>Object</returns>            
        public Object GetRecipeIngredientsByID (decimal? id)
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
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetRecipeIngredientsByID: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetRecipeIngredientsByID: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Get Recipe Nutrition Widget by ID Get a recipe&#39;s nutrition widget data.
        /// </summary>
        /// <param name="id">The recipe id.</param> 
        /// <returns>Object</returns>            
        public Object GetRecipeNutritionWidgetByID (decimal? id)
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
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetRecipeNutritionWidgetByID: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetRecipeNutritionWidgetByID: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Get Recipe Price Breakdown by ID Get a recipe&#39;s price breakdown data.
        /// </summary>
        /// <param name="id">The recipe id.</param> 
        /// <returns>Object</returns>            
        public Object GetRecipePriceBreakdownByID (decimal? id)
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
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetRecipePriceBreakdownByID: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetRecipePriceBreakdownByID: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Get Shopping List Get the current shopping list for the given user.
        /// </summary>
        /// <param name="username">The username.</param> 
        /// <param name="hash">The private hash for the username.</param> 
        /// <returns>Object</returns>            
        public Object GetShoppingList (string username, string hash)
        {
            
            // verify the required parameter 'username' is set
            if (username == null) throw new ApiException(400, "Missing required parameter 'username' when calling GetShoppingList");
            
            // verify the required parameter 'hash' is set
            if (hash == null) throw new ApiException(400, "Missing required parameter 'hash' when calling GetShoppingList");
            
    
            var path = "/mealplanner/{username}/shopping-list";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "username" + "}", ApiClient.ParameterToString(username));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (hash != null) queryParams.Add("hash", ApiClient.ParameterToString(hash)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetShoppingList: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetShoppingList: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Get Similar Recipes Find recipes which are similar to the given one.
        /// </summary>
        /// <param name="id">The id of the source recipe for which similar recipes should be found.</param> 
        /// <param name="number">The number of random recipes to be returned (between 1 and 100).</param> 
        /// <param name="limitLicense">Whether the recipes should have an open license that allows display with proper attribution.</param> 
        /// <returns>Object</returns>            
        public Object GetSimilarRecipes (decimal? id, decimal? number, bool? limitLicense)
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
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetSimilarRecipes: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetSimilarRecipes: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Get Wine Description Get a simple description of a certain wine, e.g. \&quot;malbec\&quot;, \&quot;riesling\&quot;, or \&quot;merlot\&quot;.
        /// </summary>
        /// <param name="wine">The name of the wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;.</param> 
        /// <returns>Object</returns>            
        public Object GetWineDescription (string wine)
        {
            
            // verify the required parameter 'wine' is set
            if (wine == null) throw new ApiException(400, "Missing required parameter 'wine' when calling GetWineDescription");
            
    
            var path = "/food/wine/description";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (wine != null) queryParams.Add("wine", ApiClient.ParameterToString(wine)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetWineDescription: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetWineDescription: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Get Wine Pairing Find a wine that goes well with a food. Food can be a dish name (\&quot;steak\&quot;), an ingredient name (\&quot;salmon\&quot;), or a cuisine (\&quot;italian\&quot;).
        /// </summary>
        /// <param name="food">The food to get a pairing for. This can be a dish (\&quot;steak\&quot;), an ingredient (\&quot;salmon\&quot;), or a cuisine (\&quot;italian\&quot;).</param> 
        /// <param name="maxPrice">The maximum price for the specific wine recommendation in USD.</param> 
        /// <returns>Object</returns>            
        public Object GetWinePairing (string food, decimal? maxPrice)
        {
            
            // verify the required parameter 'food' is set
            if (food == null) throw new ApiException(400, "Missing required parameter 'food' when calling GetWinePairing");
            
    
            var path = "/food/wine/pairing";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (food != null) queryParams.Add("food", ApiClient.ParameterToString(food)); // query parameter
 if (maxPrice != null) queryParams.Add("maxPrice", ApiClient.ParameterToString(maxPrice)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetWinePairing: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetWinePairing: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Get Wine Recommendation Get a specific wine recommendation (concrete product) for a given wine type, e.g. \&quot;merlot\&quot;.
        /// </summary>
        /// <param name="wine">The type of wine to get a specific product recommendation for.</param> 
        /// <param name="maxPrice">The maximum price for the specific wine recommendation in USD.</param> 
        /// <param name="minRating">The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars.</param> 
        /// <param name="number">The number of wine recommendations expected (between 1 and 100).</param> 
        /// <returns>Object</returns>            
        public Object GetWineRecommendation (string wine, decimal? maxPrice, decimal? minRating, decimal? number)
        {
            
            // verify the required parameter 'wine' is set
            if (wine == null) throw new ApiException(400, "Missing required parameter 'wine' when calling GetWineRecommendation");
            
    
            var path = "/food/wine/recommendation";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (wine != null) queryParams.Add("wine", ApiClient.ParameterToString(wine)); // query parameter
 if (maxPrice != null) queryParams.Add("maxPrice", ApiClient.ParameterToString(maxPrice)); // query parameter
 if (minRating != null) queryParams.Add("minRating", ApiClient.ParameterToString(minRating)); // query parameter
 if (number != null) queryParams.Add("number", ApiClient.ParameterToString(number)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetWineRecommendation: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetWineRecommendation: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Guess Nutrition by Dish Name Estimate the macronutrients of a dish based on its title.
        /// </summary>
        /// <param name="title">The title of the dish.</param> 
        /// <returns>Object</returns>            
        public Object GuessNutritionByDishName (string title)
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
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GuessNutritionByDishName: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GuessNutritionByDishName: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Image Analysis by URL Analyze a food image. The API tries to classify the image, guess the nutrition, and find a matching recipes. You can play around with that endpoint!
        /// </summary>
        /// <param name="imageUrl">The URL of the image to be analyzed.</param> 
        /// <returns>Object</returns>            
        public Object ImageAnalysisByURL (string imageUrl)
        {
            
            // verify the required parameter 'imageUrl' is set
            if (imageUrl == null) throw new ApiException(400, "Missing required parameter 'imageUrl' when calling ImageAnalysisByURL");
            
    
            var path = "/food/images/analyze";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (imageUrl != null) queryParams.Add("imageUrl", ApiClient.ParameterToString(imageUrl)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling ImageAnalysisByURL: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling ImageAnalysisByURL: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Image Classification by URL Classify a food image. You can play around with that endpoint!
        /// </summary>
        /// <param name="imageUrl">The URL of the image to be classified.</param> 
        /// <returns>Object</returns>            
        public Object ImageClassificationByURL (string imageUrl)
        {
            
            // verify the required parameter 'imageUrl' is set
            if (imageUrl == null) throw new ApiException(400, "Missing required parameter 'imageUrl' when calling ImageClassificationByURL");
            
    
            var path = "/food/images/classify";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (imageUrl != null) queryParams.Add("imageUrl", ApiClient.ParameterToString(imageUrl)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling ImageClassificationByURL: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling ImageClassificationByURL: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Map Ingredients to Grocery Products Map a set of ingredients to products you can buy in the grocery store.
        /// </summary>
        /// <param name="body"></param> 
        /// <returns>Object</returns>            
        public Object MapIngredientsToGroceryProducts (Object body)
        {
            
            // verify the required parameter 'body' is set
            if (body == null) throw new ApiException(400, "Missing required parameter 'body' when calling MapIngredientsToGroceryProducts");
            
    
            var path = "/food/ingredients/map";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                                postBody = ApiClient.Serialize(body); // http body (model) parameter
    
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling MapIngredientsToGroceryProducts: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling MapIngredientsToGroceryProducts: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Parse Ingredients Extract an ingredient from plain text.
        /// </summary>
        /// <param name="ingredientList">The ingredient list of the recipe, one ingredient per line.</param> 
        /// <param name="servings">The number of servings that you can make from the ingredients.</param> 
        /// <param name="includeNutrition">Whether nutrition data should be added to correctly parsed ingredients.</param> 
        /// <returns>Object</returns>            
        public Object ParseIngredients (string ingredientList, decimal? servings, bool? includeNutrition)
        {
            
            // verify the required parameter 'ingredientList' is set
            if (ingredientList == null) throw new ApiException(400, "Missing required parameter 'ingredientList' when calling ParseIngredients");
            
            // verify the required parameter 'servings' is set
            if (servings == null) throw new ApiException(400, "Missing required parameter 'servings' when calling ParseIngredients");
            
    
            var path = "/recipes/parseIngredients";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    if (ingredientList != null) formParams.Add("ingredientList", ApiClient.ParameterToString(ingredientList)); // form parameter
if (servings != null) formParams.Add("servings", ApiClient.ParameterToString(servings)); // form parameter
if (includeNutrition != null) formParams.Add("includeNutrition", ApiClient.ParameterToString(includeNutrition)); // form parameter
                
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling ParseIngredients: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling ParseIngredients: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Quick Answer Answer a nutrition related natural language question.
        /// </summary>
        /// <param name="q">The nutrition related question.</param> 
        /// <returns>Object</returns>            
        public Object QuickAnswer (string q)
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
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling QuickAnswer: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling QuickAnswer: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Search Custom Foods Search custom foods in a user&#39;s account.
        /// </summary>
        /// <param name="query">The search query.</param> 
        /// <param name="username">The username.</param> 
        /// <param name="hash">The private hash for the username.</param> 
        /// <param name="offset">The number of results to skip (between 0 and 990).</param> 
        /// <param name="number">The number of expected results (between 1 and 100).</param> 
        /// <returns>Object</returns>            
        public Object SearchCustomFoods (string query, string username, string hash, decimal? offset, decimal? number)
        {
            
            // verify the required parameter 'query' is set
            if (query == null) throw new ApiException(400, "Missing required parameter 'query' when calling SearchCustomFoods");
            
            // verify the required parameter 'username' is set
            if (username == null) throw new ApiException(400, "Missing required parameter 'username' when calling SearchCustomFoods");
            
            // verify the required parameter 'hash' is set
            if (hash == null) throw new ApiException(400, "Missing required parameter 'hash' when calling SearchCustomFoods");
            
    
            var path = "/food/customFoods/search";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (query != null) queryParams.Add("query", ApiClient.ParameterToString(query)); // query parameter
 if (username != null) queryParams.Add("username", ApiClient.ParameterToString(username)); // query parameter
 if (hash != null) queryParams.Add("hash", ApiClient.ParameterToString(hash)); // query parameter
 if (offset != null) queryParams.Add("offset", ApiClient.ParameterToString(offset)); // query parameter
 if (number != null) queryParams.Add("number", ApiClient.ParameterToString(number)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling SearchCustomFoods: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling SearchCustomFoods: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Search Food Videos Find recipe and other food related videos.
        /// </summary>
        /// <param name="query">The search query.</param> 
        /// <param name="type">The type of the recipes. See a full list of supported meal types.</param> 
        /// <param name="cuisine">The cuisine(s) of the recipes. One or more, comma separated. See a full list of supported cuisines.</param> 
        /// <param name="diet">The diet for which the recipes must be suitable. See a full list of supported diets.</param> 
        /// <param name="includeIngredients">A comma-separated list of ingredients that the recipes should contain.</param> 
        /// <param name="excludeIngredients">A comma-separated list of ingredients or ingredient types that the recipes must not contain.</param> 
        /// <param name="minLength">Minimum video length in seconds.</param> 
        /// <param name="maxLength">Maximum video length in seconds.</param> 
        /// <param name="offset">The number of results to skip (between 0 and 900).</param> 
        /// <param name="number">The number of results to return (between 1 and 100).</param> 
        /// <returns>Object</returns>            
        public Object SearchFoodVideos (string query, string type, string cuisine, string diet, string includeIngredients, string excludeIngredients, decimal? minLength, decimal? maxLength, decimal? offset, decimal? number)
        {
            
            // verify the required parameter 'query' is set
            if (query == null) throw new ApiException(400, "Missing required parameter 'query' when calling SearchFoodVideos");
            
    
            var path = "/food/videos/search";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (query != null) queryParams.Add("query", ApiClient.ParameterToString(query)); // query parameter
 if (type != null) queryParams.Add("type", ApiClient.ParameterToString(type)); // query parameter
 if (cuisine != null) queryParams.Add("cuisine", ApiClient.ParameterToString(cuisine)); // query parameter
 if (diet != null) queryParams.Add("diet", ApiClient.ParameterToString(diet)); // query parameter
 if (includeIngredients != null) queryParams.Add("includeIngredients", ApiClient.ParameterToString(includeIngredients)); // query parameter
 if (excludeIngredients != null) queryParams.Add("excludeIngredients", ApiClient.ParameterToString(excludeIngredients)); // query parameter
 if (minLength != null) queryParams.Add("minLength", ApiClient.ParameterToString(minLength)); // query parameter
 if (maxLength != null) queryParams.Add("maxLength", ApiClient.ParameterToString(maxLength)); // query parameter
 if (offset != null) queryParams.Add("offset", ApiClient.ParameterToString(offset)); // query parameter
 if (number != null) queryParams.Add("number", ApiClient.ParameterToString(number)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling SearchFoodVideos: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling SearchFoodVideos: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Search Grocery Products Search packaged food products, such as frozen pizza or Greek yogurt.
        /// </summary>
        /// <param name="query">The search query.</param> 
        /// <param name="minCalories">The minimum amount of calories the product must have.</param> 
        /// <param name="maxCalories">The maximum amount of calories the product can have.</param> 
        /// <param name="minCarbs">The minimum amount of carbohydrates in grams the product must have.</param> 
        /// <param name="maxCarbs">The maximum amount of carbohydrates in grams the product can have.</param> 
        /// <param name="minProtein">The minimum amount of protein in grams the product must have.</param> 
        /// <param name="maxProtein">The maximum amount of protein in grams the product can have.</param> 
        /// <param name="minFat">The minimum amount of fat in grams the product must have.</param> 
        /// <param name="maxFat">The maximum amount of fat in grams the product can have.</param> 
        /// <param name="offset">The number of results to skip (between 0 and 990).</param> 
        /// <param name="number">The number of expected results (between 1 and 100).</param> 
        /// <returns>Object</returns>            
        public Object SearchGroceryProducts (string query, decimal? minCalories, decimal? maxCalories, decimal? minCarbs, decimal? maxCarbs, decimal? minProtein, decimal? maxProtein, decimal? minFat, decimal? maxFat, decimal? offset, decimal? number)
        {
            
            // verify the required parameter 'query' is set
            if (query == null) throw new ApiException(400, "Missing required parameter 'query' when calling SearchGroceryProducts");
            
    
            var path = "/food/products/search";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (query != null) queryParams.Add("query", ApiClient.ParameterToString(query)); // query parameter
 if (minCalories != null) queryParams.Add("minCalories", ApiClient.ParameterToString(minCalories)); // query parameter
 if (maxCalories != null) queryParams.Add("maxCalories", ApiClient.ParameterToString(maxCalories)); // query parameter
 if (minCarbs != null) queryParams.Add("minCarbs", ApiClient.ParameterToString(minCarbs)); // query parameter
 if (maxCarbs != null) queryParams.Add("maxCarbs", ApiClient.ParameterToString(maxCarbs)); // query parameter
 if (minProtein != null) queryParams.Add("minProtein", ApiClient.ParameterToString(minProtein)); // query parameter
 if (maxProtein != null) queryParams.Add("maxProtein", ApiClient.ParameterToString(maxProtein)); // query parameter
 if (minFat != null) queryParams.Add("minFat", ApiClient.ParameterToString(minFat)); // query parameter
 if (maxFat != null) queryParams.Add("maxFat", ApiClient.ParameterToString(maxFat)); // query parameter
 if (offset != null) queryParams.Add("offset", ApiClient.ParameterToString(offset)); // query parameter
 if (number != null) queryParams.Add("number", ApiClient.ParameterToString(number)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling SearchGroceryProducts: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling SearchGroceryProducts: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Search Grocery Products by UPC Get information about a packaged food using its UPC.
        /// </summary>
        /// <param name="upc">The product&#39;s UPC.</param> 
        /// <returns>Object</returns>            
        public Object SearchGroceryProductsByUPC (decimal? upc)
        {
            
            // verify the required parameter 'upc' is set
            if (upc == null) throw new ApiException(400, "Missing required parameter 'upc' when calling SearchGroceryProductsByUPC");
            
    
            var path = "/food/products/upc/{upc}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "upc" + "}", ApiClient.ParameterToString(upc));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                                    
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling SearchGroceryProductsByUPC: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling SearchGroceryProductsByUPC: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Search Menu Items Search over 115,000 menu items from over 800 fast food and chain restaurants. For example, McDonald&#39;s Big Mac or Starbucks Mocha.
        /// </summary>
        /// <param name="query">The search query.</param> 
        /// <param name="minCalories">The minimum amount of calories the menu item must have.</param> 
        /// <param name="maxCalories">The maximum amount of calories the menu item can have.</param> 
        /// <param name="minCarbs">The minimum amount of carbohydrates in grams the menu item must have.</param> 
        /// <param name="maxCarbs">The maximum amount of carbohydrates in grams the menu item can have.</param> 
        /// <param name="minProtein">The minimum amount of protein in grams the menu item must have.</param> 
        /// <param name="maxProtein">The maximum amount of protein in grams the menu item can have.</param> 
        /// <param name="minFat">The minimum amount of fat in grams the menu item must have.</param> 
        /// <param name="maxFat">The maximum amount of fat in grams the menu item can have.</param> 
        /// <param name="offset">The offset number for paging (between 0 and 990).</param> 
        /// <param name="number">The number of expected results (between 1 and 10).</param> 
        /// <returns>Object</returns>            
        public Object SearchMenuItems (string query, decimal? minCalories, decimal? maxCalories, decimal? minCarbs, decimal? maxCarbs, decimal? minProtein, decimal? maxProtein, decimal? minFat, decimal? maxFat, decimal? offset, decimal? number)
        {
            
            // verify the required parameter 'query' is set
            if (query == null) throw new ApiException(400, "Missing required parameter 'query' when calling SearchMenuItems");
            
    
            var path = "/food/menuItems/search";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (query != null) queryParams.Add("query", ApiClient.ParameterToString(query)); // query parameter
 if (minCalories != null) queryParams.Add("minCalories", ApiClient.ParameterToString(minCalories)); // query parameter
 if (maxCalories != null) queryParams.Add("maxCalories", ApiClient.ParameterToString(maxCalories)); // query parameter
 if (minCarbs != null) queryParams.Add("minCarbs", ApiClient.ParameterToString(minCarbs)); // query parameter
 if (maxCarbs != null) queryParams.Add("maxCarbs", ApiClient.ParameterToString(maxCarbs)); // query parameter
 if (minProtein != null) queryParams.Add("minProtein", ApiClient.ParameterToString(minProtein)); // query parameter
 if (maxProtein != null) queryParams.Add("maxProtein", ApiClient.ParameterToString(maxProtein)); // query parameter
 if (minFat != null) queryParams.Add("minFat", ApiClient.ParameterToString(minFat)); // query parameter
 if (maxFat != null) queryParams.Add("maxFat", ApiClient.ParameterToString(maxFat)); // query parameter
 if (offset != null) queryParams.Add("offset", ApiClient.ParameterToString(offset)); // query parameter
 if (number != null) queryParams.Add("number", ApiClient.ParameterToString(number)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling SearchMenuItems: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling SearchMenuItems: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Search Recipes Our recipe API includes over 360,000 recipes as well as an open source recipe database. Consider using the \&quot;Search Recipes Complex\&quot; endpoint for much more flexibility.
        /// </summary>
        /// <param name="query">The (natural language) recipe search query.</param> 
        /// <param name="cuisine">The cuisine(s) of the recipes. One or more comma separated. See a full list of supported cuisines.</param> 
        /// <param name="diet">The diet for which the recipes must be suitable. See a full list of supported diets.</param> 
        /// <param name="excludeIngredients">A comma-separated list of ingredients or ingredient types that the recipes must not contain.</param> 
        /// <param name="intolerances">A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. Please note: due to the automatic nature of the recipe analysis, the API cannot be 100% accurate in all cases. Please advise your users to seek professional help with medical issues.</param> 
        /// <param name="offset">The number of results to skip (between 0 and 900).</param> 
        /// <param name="number">The number of results to return (between 1 and 100).</param> 
        /// <param name="limitLicense">Whether the recipes should have an open license that allows display with proper attribution.</param> 
        /// <param name="instructionsRequired">Whether the recipes must have instructions.</param> 
        /// <returns>Object</returns>            
        public Object SearchRecipes (string query, string cuisine, string diet, string excludeIngredients, string intolerances, decimal? offset, decimal? number, bool? limitLicense, bool? instructionsRequired)
        {
            
            // verify the required parameter 'query' is set
            if (query == null) throw new ApiException(400, "Missing required parameter 'query' when calling SearchRecipes");
            
    
            var path = "/recipes/search";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (query != null) queryParams.Add("query", ApiClient.ParameterToString(query)); // query parameter
 if (cuisine != null) queryParams.Add("cuisine", ApiClient.ParameterToString(cuisine)); // query parameter
 if (diet != null) queryParams.Add("diet", ApiClient.ParameterToString(diet)); // query parameter
 if (excludeIngredients != null) queryParams.Add("excludeIngredients", ApiClient.ParameterToString(excludeIngredients)); // query parameter
 if (intolerances != null) queryParams.Add("intolerances", ApiClient.ParameterToString(intolerances)); // query parameter
 if (offset != null) queryParams.Add("offset", ApiClient.ParameterToString(offset)); // query parameter
 if (number != null) queryParams.Add("number", ApiClient.ParameterToString(number)); // query parameter
 if (limitLicense != null) queryParams.Add("limitLicense", ApiClient.ParameterToString(limitLicense)); // query parameter
 if (instructionsRequired != null) queryParams.Add("instructionsRequired", ApiClient.ParameterToString(instructionsRequired)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling SearchRecipes: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling SearchRecipes: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Search Recipes by Ingredients              Ever wondered what recipes you can cook with the ingredients you have in your fridge or pantry? This endpoint lets you find recipes that either maximize the usage of ingredients you have at hand (pre shopping) or minimize the ingredients that you don&#39;t currently have (post shopping).         
        /// </summary>
        /// <param name="ingredients">A comma-separated list of ingredients that the recipes should contain.</param> 
        /// <param name="number">The maximum number of recipes to return (between 1 and 100). Defaults to 10.</param> 
        /// <param name="limitLicense">Whether the recipes should have an open license that allows display with proper attribution.</param> 
        /// <param name="ranking">Whether to maximize used ingredients (1) or minimize missing ingredients (2) first.</param> 
        /// <param name="ignorePantry">Whether to ignore typical pantry items, such as water, salt, flour, etc.</param> 
        /// <returns>Object</returns>            
        public Object SearchRecipesByIngredients (string ingredients, decimal? number, bool? limitLicense, decimal? ranking, bool? ignorePantry)
        {
            
            // verify the required parameter 'ingredients' is set
            if (ingredients == null) throw new ApiException(400, "Missing required parameter 'ingredients' when calling SearchRecipesByIngredients");
            
    
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
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling SearchRecipesByIngredients: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling SearchRecipesByIngredients: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
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
        /// <param name="minFolate">The minimum amount of folate in grams the recipe must have.</param> 
        /// <param name="maxFolate">The maximum amount of folate in grams the recipe can have.</param> 
        /// <param name="minFolicAcid">The minimum amount of folic acid in grams the recipe must have.</param> 
        /// <param name="maxFolicAcid">The maximum amount of folic acid in grams the recipe can have.</param> 
        /// <param name="minIodine">The minimum amount of iodine in grams the recipe must have.</param> 
        /// <param name="maxIodine">The maximum amount of iodine in grams the recipe can have.</param> 
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
        /// <param name="minSelenium">The minimum amount of selenium in grams the recipe must have.</param> 
        /// <param name="maxSelenium">The maximum amount of selenium in grams the recipe can have.</param> 
        /// <param name="minSodium">The minimum amount of sodium in milligrams the recipe must have.</param> 
        /// <param name="maxSodium">The maximum amount of sodium in milligrams the recipe can have.</param> 
        /// <param name="minSugar">The minimum amount of sugar in grams the recipe must have.</param> 
        /// <param name="maxSugar">The maximum amount of sugar in grams the recipe can have.</param> 
        /// <param name="minZinc">The minimum amount of zinc in milligrams the recipe must have.</param> 
        /// <param name="maxZinc">The maximum amount of zinc in milligrams the recipe can have.</param> 
        /// <param name="offset">The number of results to skip (between 0 and 900).</param> 
        /// <param name="number">The number of expected results (between 1 and 100).</param> 
        /// <param name="random">If true, every request will give you a random set of recipes within the requested limits.</param> 
        /// <param name="limitLicense">Whether the recipes should have an open license that allows display with proper attribution.</param> 
        /// <returns>Object</returns>            
        public Object SearchRecipesByNutrients (decimal? minCarbs, decimal? maxCarbs, decimal? minProtein, decimal? maxProtein, decimal? minCalories, decimal? maxCalories, decimal? minFat, decimal? maxFat, decimal? minAlcohol, decimal? maxAlcohol, decimal? minCaffeine, decimal? maxCaffeine, decimal? minCopper, decimal? maxCopper, decimal? minCalcium, decimal? maxCalcium, decimal? minCholine, decimal? maxCholine, decimal? minCholesterol, decimal? maxCholesterol, decimal? minFluoride, decimal? maxFluoride, decimal? minSaturatedFat, decimal? maxSaturatedFat, decimal? minVitaminA, decimal? maxVitaminA, decimal? minVitaminC, decimal? maxVitaminC, decimal? minVitaminD, decimal? maxVitaminD, decimal? minVitaminE, decimal? maxVitaminE, decimal? minVitaminK, decimal? maxVitaminK, decimal? minVitaminB1, decimal? maxVitaminB1, decimal? minVitaminB2, decimal? maxVitaminB2, decimal? minVitaminB5, decimal? maxVitaminB5, decimal? minVitaminB3, decimal? maxVitaminB3, decimal? minVitaminB6, decimal? maxVitaminB6, decimal? minVitaminB12, decimal? maxVitaminB12, decimal? minFiber, decimal? maxFiber, decimal? minFolate, decimal? maxFolate, decimal? minFolicAcid, decimal? maxFolicAcid, decimal? minIodine, decimal? maxIodine, decimal? minIron, decimal? maxIron, decimal? minMagnesium, decimal? maxMagnesium, decimal? minManganese, decimal? maxManganese, decimal? minPhosphorus, decimal? maxPhosphorus, decimal? minPotassium, decimal? maxPotassium, decimal? minSelenium, decimal? maxSelenium, decimal? minSodium, decimal? maxSodium, decimal? minSugar, decimal? maxSugar, decimal? minZinc, decimal? maxZinc, decimal? offset, decimal? number, bool? random, bool? limitLicense)
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
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling SearchRecipesByNutrients: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling SearchRecipesByNutrients: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Search Recipes Complex Search through hundreds of thousands of recipes using advanced filtering and ranking. NOTE: This method combines searching by query, by ingredients, and by nutrients into one endpoint.
        /// </summary>
        /// <param name="query">The (natural language) recipe search query.</param> 
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
        /// <param name="tags">User defined tags that have to match. The author param has to be set.</param> 
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
        /// <param name="minFolate">The minimum amount of folate in grams the recipe must have.</param> 
        /// <param name="maxFolate">The maximum amount of folate in grams the recipe can have.</param> 
        /// <param name="minFolicAcid">The minimum amount of folic acid in grams the recipe must have.</param> 
        /// <param name="maxFolicAcid">The maximum amount of folic acid in grams the recipe can have.</param> 
        /// <param name="minIodine">The minimum amount of iodine in grams the recipe must have.</param> 
        /// <param name="maxIodine">The maximum amount of iodine in grams the recipe can have.</param> 
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
        /// <param name="minSelenium">The minimum amount of selenium in grams the recipe must have.</param> 
        /// <param name="maxSelenium">The maximum amount of selenium in grams the recipe can have.</param> 
        /// <param name="minSodium">The minimum amount of sodium in milligrams the recipe must have.</param> 
        /// <param name="maxSodium">The maximum amount of sodium in milligrams the recipe can have.</param> 
        /// <param name="minSugar">The minimum amount of sugar in grams the recipe must have.</param> 
        /// <param name="maxSugar">The maximum amount of sugar in grams the recipe can have.</param> 
        /// <param name="minZinc">The minimum amount of zinc in milligrams the recipe must have.</param> 
        /// <param name="maxZinc">The maximum amount of zinc in milligrams the recipe can have.</param> 
        /// <param name="offset">The number of results to skip (between 0 and 900).</param> 
        /// <param name="number">The number of expected results (between 1 and 100).</param> 
        /// <param name="limitLicense">Whether the recipes should have an open license that allows display with proper attribution.</param> 
        /// <returns>Object</returns>            
        public Object SearchRecipesComplex (string query, string cuisine, string excludeCuisine, string diet, string intolerances, string equipment, string includeIngredients, string excludeIngredients, string type, bool? instructionsRequired, bool? fillIngredients, bool? addRecipeInformation, bool? addRecipeNutrition, string author, string tags, decimal? recipeBoxId, string titleMatch, decimal? maxReadyTime, bool? ignorePantry, string sort, string sortDirection, decimal? minCarbs, decimal? maxCarbs, decimal? minProtein, decimal? maxProtein, decimal? minCalories, decimal? maxCalories, decimal? minFat, decimal? maxFat, decimal? minAlcohol, decimal? maxAlcohol, decimal? minCaffeine, decimal? maxCaffeine, decimal? minCopper, decimal? maxCopper, decimal? minCalcium, decimal? maxCalcium, decimal? minCholine, decimal? maxCholine, decimal? minCholesterol, decimal? maxCholesterol, decimal? minFluoride, decimal? maxFluoride, decimal? minSaturatedFat, decimal? maxSaturatedFat, decimal? minVitaminA, decimal? maxVitaminA, decimal? minVitaminC, decimal? maxVitaminC, decimal? minVitaminD, decimal? maxVitaminD, decimal? minVitaminE, decimal? maxVitaminE, decimal? minVitaminK, decimal? maxVitaminK, decimal? minVitaminB1, decimal? maxVitaminB1, decimal? minVitaminB2, decimal? maxVitaminB2, decimal? minVitaminB5, decimal? maxVitaminB5, decimal? minVitaminB3, decimal? maxVitaminB3, decimal? minVitaminB6, decimal? maxVitaminB6, decimal? minVitaminB12, decimal? maxVitaminB12, decimal? minFiber, decimal? maxFiber, decimal? minFolate, decimal? maxFolate, decimal? minFolicAcid, decimal? maxFolicAcid, decimal? minIodine, decimal? maxIodine, decimal? minIron, decimal? maxIron, decimal? minMagnesium, decimal? maxMagnesium, decimal? minManganese, decimal? maxManganese, decimal? minPhosphorus, decimal? maxPhosphorus, decimal? minPotassium, decimal? maxPotassium, decimal? minSelenium, decimal? maxSelenium, decimal? minSodium, decimal? maxSodium, decimal? minSugar, decimal? maxSugar, decimal? minZinc, decimal? maxZinc, decimal? offset, decimal? number, bool? limitLicense)
        {
            
            // verify the required parameter 'query' is set
            if (query == null) throw new ApiException(400, "Missing required parameter 'query' when calling SearchRecipesComplex");
            
    
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
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling SearchRecipesComplex: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling SearchRecipesComplex: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Search Site Content Search spoonacular&#39;s site content. You&#39;ll be able to find everything that you could also find using the search suggestions on spoonacular.com. This is a suggest API so you can send partial strings as queries.
        /// </summary>
        /// <param name="query">The query to search for. You can also use partial queries such as \&quot;spagh\&quot; to already find spaghetti recipes, articles, grocery products, and other content.</param> 
        /// <returns>Object</returns>            
        public Object SearchSiteContent (string query)
        {
            
            // verify the required parameter 'query' is set
            if (query == null) throw new ApiException(400, "Missing required parameter 'query' when calling SearchSiteContent");
            
    
            var path = "/food/site/search";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (query != null) queryParams.Add("query", ApiClient.ParameterToString(query)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling SearchSiteContent: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling SearchSiteContent: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Summarize Recipe Automatically generate a short description that summarizes key information about the recipe.
        /// </summary>
        /// <param name="id">The recipe id.</param> 
        /// <returns>Object</returns>            
        public Object SummarizeRecipe (decimal? id)
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
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling SummarizeRecipe: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling SummarizeRecipe: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Talk to Chatbot This endpoint can be used to have a conversation about food with the spoonacular chatbot. Use the \&quot;Get Conversation Suggests\&quot; endpoint to show your user what he or she can say.
        /// </summary>
        /// <param name="text">The request / question / answer from the user to the chatbot.</param> 
        /// <param name="contextId">An arbitrary globally unique id for your conversation. The conversation can contain states so you should pass your context id if you want the bot to be able to remember the conversation.</param> 
        /// <returns>Object</returns>            
        public Object TalkToChatbot (string text, string contextId)
        {
            
            // verify the required parameter 'text' is set
            if (text == null) throw new ApiException(400, "Missing required parameter 'text' when calling TalkToChatbot");
            
    
            var path = "/food/converse";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (text != null) queryParams.Add("text", ApiClient.ParameterToString(text)); // query parameter
 if (contextId != null) queryParams.Add("contextId", ApiClient.ParameterToString(contextId)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling TalkToChatbot: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling TalkToChatbot: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Visualize Equipment Visualize the equipment used to make a recipe.
        /// </summary>
        /// <param name="ingredientList">The ingredient list of the recipe, one ingredient per line.</param> 
        /// <param name="servings">The number of servings.</param> 
        /// <param name="view">How to visualize the equipment, either \\\&quot;grid\\\&quot; or \\\&quot;list\\\&quot;.</param> 
        /// <param name="defaultCss">Whether the default CSS should be added to the response.</param> 
        /// <param name="showBacklink">Whether to show a backlink to spoonacular. If set false, this call counts against your quota.</param> 
        /// <returns>string</returns>            
        public string VisualizeEquipment (string ingredientList, decimal? servings, string view, bool? defaultCss, bool? showBacklink)
        {
            
            // verify the required parameter 'ingredientList' is set
            if (ingredientList == null) throw new ApiException(400, "Missing required parameter 'ingredientList' when calling VisualizeEquipment");
            
            // verify the required parameter 'servings' is set
            if (servings == null) throw new ApiException(400, "Missing required parameter 'servings' when calling VisualizeEquipment");
            
    
            var path = "/recipes/visualizeEquipment";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    if (ingredientList != null) formParams.Add("ingredientList", ApiClient.ParameterToString(ingredientList)); // form parameter
if (servings != null) formParams.Add("servings", ApiClient.ParameterToString(servings)); // form parameter
if (view != null) formParams.Add("view", ApiClient.ParameterToString(view)); // form parameter
if (defaultCss != null) formParams.Add("defaultCss", ApiClient.ParameterToString(defaultCss)); // form parameter
if (showBacklink != null) formParams.Add("showBacklink", ApiClient.ParameterToString(showBacklink)); // form parameter
                
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling VisualizeEquipment: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling VisualizeEquipment: " + response.ErrorMessage, response.ErrorMessage);
    
            return (string) ApiClient.Deserialize(response.Content, typeof(string), response.Headers);
        }
    
        /// <summary>
        /// Visualize Ingredients Visualize ingredients of a recipe.
        /// </summary>
        /// <param name="ingredientList">The ingredient list of the recipe, one ingredient per line.</param> 
        /// <param name="servings">The number of servings.</param> 
        /// <param name="measure">The original system of measurement, either \\\&quot;metric\\\&quot; or \\\&quot;us\\\&quot;.</param> 
        /// <param name="view">How to visualize the ingredients, either \\\&quot;grid\\\&quot; or \\\&quot;list\\\&quot;.</param> 
        /// <param name="defaultCss">Whether the default CSS should be added to the response.</param> 
        /// <param name="showBacklink">Whether to show a backlink to spoonacular. If set false, this call counts against your quota.</param> 
        /// <returns>string</returns>            
        public string VisualizeIngredients (string ingredientList, decimal? servings, string measure, string view, bool? defaultCss, bool? showBacklink)
        {
            
            // verify the required parameter 'ingredientList' is set
            if (ingredientList == null) throw new ApiException(400, "Missing required parameter 'ingredientList' when calling VisualizeIngredients");
            
            // verify the required parameter 'servings' is set
            if (servings == null) throw new ApiException(400, "Missing required parameter 'servings' when calling VisualizeIngredients");
            
    
            var path = "/recipes/visualizeIngredients";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    if (ingredientList != null) formParams.Add("ingredientList", ApiClient.ParameterToString(ingredientList)); // form parameter
if (servings != null) formParams.Add("servings", ApiClient.ParameterToString(servings)); // form parameter
if (measure != null) formParams.Add("measure", ApiClient.ParameterToString(measure)); // form parameter
if (view != null) formParams.Add("view", ApiClient.ParameterToString(view)); // form parameter
if (defaultCss != null) formParams.Add("defaultCss", ApiClient.ParameterToString(defaultCss)); // form parameter
if (showBacklink != null) formParams.Add("showBacklink", ApiClient.ParameterToString(showBacklink)); // form parameter
                
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling VisualizeIngredients: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling VisualizeIngredients: " + response.ErrorMessage, response.ErrorMessage);
    
            return (string) ApiClient.Deserialize(response.Content, typeof(string), response.Headers);
        }
    
        /// <summary>
        /// Visualize Menu Item Nutrition by ID Visualize a menu item&#39;s nutritional information as HTML including CSS.
        /// </summary>
        /// <param name="id">The menu item id.</param> 
        /// <param name="defaultCss">Whether the default CSS should be added to the response.</param> 
        /// <returns>string</returns>            
        public string VisualizeMenuItemNutritionByID (decimal? id, bool? defaultCss)
        {
            
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling VisualizeMenuItemNutritionByID");
            
    
            var path = "/food/menuItems/{id}/nutritionWidget";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (defaultCss != null) queryParams.Add("defaultCss", ApiClient.ParameterToString(defaultCss)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling VisualizeMenuItemNutritionByID: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling VisualizeMenuItemNutritionByID: " + response.ErrorMessage, response.ErrorMessage);
    
            return (string) ApiClient.Deserialize(response.Content, typeof(string), response.Headers);
        }
    
        /// <summary>
        /// Visualize Price Breakdown Visualize the price breakdown of a recipe.
        /// </summary>
        /// <param name="ingredientList">The ingredient list of the recipe, one ingredient per line.</param> 
        /// <param name="servings">The number of servings.</param> 
        /// <param name="mode">The mode in which the widget should be delivered. 1 &#x3D; separate views (compact), 2 &#x3D; all in one view (full).</param> 
        /// <param name="defaultCss">Whether the default CSS should be added to the response.</param> 
        /// <param name="showBacklink">Whether to show a backlink to spoonacular. If set false, this call counts against your quota.</param> 
        /// <returns>string</returns>            
        public string VisualizePriceBreakdown (string ingredientList, decimal? servings, decimal? mode, bool? defaultCss, bool? showBacklink)
        {
            
            // verify the required parameter 'ingredientList' is set
            if (ingredientList == null) throw new ApiException(400, "Missing required parameter 'ingredientList' when calling VisualizePriceBreakdown");
            
            // verify the required parameter 'servings' is set
            if (servings == null) throw new ApiException(400, "Missing required parameter 'servings' when calling VisualizePriceBreakdown");
            
    
            var path = "/recipes/visualizePriceEstimator";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    if (ingredientList != null) formParams.Add("ingredientList", ApiClient.ParameterToString(ingredientList)); // form parameter
if (servings != null) formParams.Add("servings", ApiClient.ParameterToString(servings)); // form parameter
if (mode != null) formParams.Add("mode", ApiClient.ParameterToString(mode)); // form parameter
if (defaultCss != null) formParams.Add("defaultCss", ApiClient.ParameterToString(defaultCss)); // form parameter
if (showBacklink != null) formParams.Add("showBacklink", ApiClient.ParameterToString(showBacklink)); // form parameter
                
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling VisualizePriceBreakdown: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling VisualizePriceBreakdown: " + response.ErrorMessage, response.ErrorMessage);
    
            return (string) ApiClient.Deserialize(response.Content, typeof(string), response.Headers);
        }
    
        /// <summary>
        /// Visualize Product Nutrition by ID Visualize a product&#39;s nutritional information as HTML including CSS.
        /// </summary>
        /// <param name="id">The id of the product.</param> 
        /// <param name="defaultCss">Whether the default CSS should be added to the response.</param> 
        /// <returns>string</returns>            
        public string VisualizeProductNutritionByID (decimal? id, bool? defaultCss)
        {
            
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling VisualizeProductNutritionByID");
            
    
            var path = "/food/products/{id}/nutritionWidget";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (defaultCss != null) queryParams.Add("defaultCss", ApiClient.ParameterToString(defaultCss)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling VisualizeProductNutritionByID: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling VisualizeProductNutritionByID: " + response.ErrorMessage, response.ErrorMessage);
    
            return (string) ApiClient.Deserialize(response.Content, typeof(string), response.Headers);
        }
    
        /// <summary>
        /// Visualize Recipe Equipment by ID Visualize a recipe&#39;s equipment list.
        /// </summary>
        /// <param name="id">The recipe id.</param> 
        /// <param name="defaultCss">Whether the default CSS should be added to the response.</param> 
        /// <returns>string</returns>            
        public string VisualizeRecipeEquipmentByID (decimal? id, bool? defaultCss)
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
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling VisualizeRecipeEquipmentByID: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling VisualizeRecipeEquipmentByID: " + response.ErrorMessage, response.ErrorMessage);
    
            return (string) ApiClient.Deserialize(response.Content, typeof(string), response.Headers);
        }
    
        /// <summary>
        /// Visualize Recipe Ingredients by ID Visualize a recipe&#39;s ingredient list.
        /// </summary>
        /// <param name="id">The recipe id.</param> 
        /// <param name="defaultCss">Whether the default CSS should be added to the response.</param> 
        /// <returns>string</returns>            
        public string VisualizeRecipeIngredientsByID (decimal? id, bool? defaultCss)
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
                                        
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling VisualizeRecipeIngredientsByID: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling VisualizeRecipeIngredientsByID: " + response.ErrorMessage, response.ErrorMessage);
    
            return (string) ApiClient.Deserialize(response.Content, typeof(string), response.Headers);
        }
    
        /// <summary>
        /// Visualize Recipe Nutrition Visualize a recipe&#39;s nutritional information as HTML including CSS
        /// </summary>
        /// <param name="ingredientList">The ingredient list of the recipe, one ingredient per line.</param> 
        /// <param name="servings">The number of servings.</param> 
        /// <param name="defaultCss">Whether the default CSS should be added to the response.</param> 
        /// <param name="showBacklink">Whether to show a backlink to spoonacular. If set false, this call counts against your quota.</param> 
        /// <returns>string</returns>            
        public string VisualizeRecipeNutrition (string ingredientList, decimal? servings, bool? defaultCss, bool? showBacklink)
        {
            
            // verify the required parameter 'ingredientList' is set
            if (ingredientList == null) throw new ApiException(400, "Missing required parameter 'ingredientList' when calling VisualizeRecipeNutrition");
            
            // verify the required parameter 'servings' is set
            if (servings == null) throw new ApiException(400, "Missing required parameter 'servings' when calling VisualizeRecipeNutrition");
            
    
            var path = "/recipes/visualizeNutrition";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    if (ingredientList != null) formParams.Add("ingredientList", ApiClient.ParameterToString(ingredientList)); // form parameter
if (servings != null) formParams.Add("servings", ApiClient.ParameterToString(servings)); // form parameter
if (defaultCss != null) formParams.Add("defaultCss", ApiClient.ParameterToString(defaultCss)); // form parameter
if (showBacklink != null) formParams.Add("showBacklink", ApiClient.ParameterToString(showBacklink)); // form parameter
                
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling VisualizeRecipeNutrition: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling VisualizeRecipeNutrition: " + response.ErrorMessage, response.ErrorMessage);
    
            return (string) ApiClient.Deserialize(response.Content, typeof(string), response.Headers);
        }
    
        /// <summary>
        /// Visualize Recipe Nutrition by ID Visualize a recipe&#39;s nutritional information as HTML including CSS.
        /// </summary>
        /// <param name="id">The recipe id.</param> 
        /// <param name="defaultCss">Whether the default CSS should be added to the response.</param> 
        /// <returns>string</returns>            
        public string VisualizeRecipeNutritionByID (decimal? id, bool? defaultCss)
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
                                        
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling VisualizeRecipeNutritionByID: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling VisualizeRecipeNutritionByID: " + response.ErrorMessage, response.ErrorMessage);
    
            return (string) ApiClient.Deserialize(response.Content, typeof(string), response.Headers);
        }
    
        /// <summary>
        /// Visualize Recipe Price Breakdown by ID Visualize a recipe&#39;s price breakdown.
        /// </summary>
        /// <param name="id">The recipe id.</param> 
        /// <param name="defaultCss">Whether the default CSS should be added to the response.</param> 
        /// <returns>string</returns>            
        public string VisualizeRecipePriceBreakdownByID (decimal? id, bool? defaultCss)
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
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling VisualizeRecipePriceBreakdownByID: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling VisualizeRecipePriceBreakdownByID: " + response.ErrorMessage, response.ErrorMessage);
    
            return (string) ApiClient.Deserialize(response.Content, typeof(string), response.Headers);
        }
    
    }
}
