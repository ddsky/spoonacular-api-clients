/*
 * spoonacular API
 *
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
 *
 * The version of the OpenAPI document: 1.1
 * Contact: mail@spoonacular.com
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */

using System;
using System.IO;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Reflection;
using RestSharp;
using Xunit;

using spoonacular.Client;
using spoonacular.Api;
// uncomment below to import models
//using spoonacular.Model;

namespace spoonacular.Test.Api
{
    /// <summary>
    ///  Class for testing RecipesApi
    /// </summary>
    /// <remarks>
    /// This file is automatically generated by OpenAPI Generator (https://openapi-generator.tech).
    /// Please update the test case below to test the API endpoint.
    /// </remarks>
    public class RecipesApiTests : IDisposable
    {
        private RecipesApi instance;

        public RecipesApiTests()
        {
            instance = new RecipesApi();
        }

        public void Dispose()
        {
            // Cleanup when everything is done.
        }

        /// <summary>
        /// Test an instance of RecipesApi
        /// </summary>
        [Fact]
        public void InstanceTest()
        {
            // TODO uncomment below to test 'IsType' RecipesApi
            //Assert.IsType<RecipesApi>(instance);
        }

        /// <summary>
        /// Test AnalyzeARecipeSearchQuery
        /// </summary>
        [Fact]
        public void AnalyzeARecipeSearchQueryTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string q = null;
            //var response = instance.AnalyzeARecipeSearchQuery(q);
            //Assert.IsType<AnalyzeARecipeSearchQuery200Response>(response);
        }

        /// <summary>
        /// Test AnalyzeRecipeInstructions
        /// </summary>
        [Fact]
        public void AnalyzeRecipeInstructionsTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string instructions = null;
            //var response = instance.AnalyzeRecipeInstructions(instructions);
            //Assert.IsType<AnalyzeRecipeInstructions200Response>(response);
        }

        /// <summary>
        /// Test AutocompleteRecipeSearch
        /// </summary>
        [Fact]
        public void AutocompleteRecipeSearchTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string? query = null;
            //int? number = null;
            //var response = instance.AutocompleteRecipeSearch(query, number);
            //Assert.IsType<List<AutocompleteRecipeSearch200ResponseInner>>(response);
        }

        /// <summary>
        /// Test ClassifyCuisine
        /// </summary>
        [Fact]
        public void ClassifyCuisineTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string title = null;
            //string ingredientList = null;
            //string? language = null;
            //var response = instance.ClassifyCuisine(title, ingredientList, language);
            //Assert.IsType<ClassifyCuisine200Response>(response);
        }

        /// <summary>
        /// Test ComputeGlycemicLoad
        /// </summary>
        [Fact]
        public void ComputeGlycemicLoadTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //ComputeGlycemicLoadRequest computeGlycemicLoadRequest = null;
            //string? language = null;
            //var response = instance.ComputeGlycemicLoad(computeGlycemicLoadRequest, language);
            //Assert.IsType<ComputeGlycemicLoad200Response>(response);
        }

        /// <summary>
        /// Test ConvertAmounts
        /// </summary>
        [Fact]
        public void ConvertAmountsTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string ingredientName = null;
            //decimal sourceAmount = null;
            //string sourceUnit = null;
            //string targetUnit = null;
            //var response = instance.ConvertAmounts(ingredientName, sourceAmount, sourceUnit, targetUnit);
            //Assert.IsType<ConvertAmounts200Response>(response);
        }

        /// <summary>
        /// Test CreateRecipeCard
        /// </summary>
        [Fact]
        public void CreateRecipeCardTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string title = null;
            //string ingredients = null;
            //string instructions = null;
            //decimal readyInMinutes = null;
            //decimal servings = null;
            //string mask = null;
            //string backgroundImage = null;
            //System.IO.Stream? image = null;
            //string? imageUrl = null;
            //string? author = null;
            //string? backgroundColor = null;
            //string? fontColor = null;
            //string? source = null;
            //var response = instance.CreateRecipeCard(title, ingredients, instructions, readyInMinutes, servings, mask, backgroundImage, image, imageUrl, author, backgroundColor, fontColor, source);
            //Assert.IsType<CreateRecipeCard200Response>(response);
        }

        /// <summary>
        /// Test EquipmentByIDImage
        /// </summary>
        [Fact]
        public void EquipmentByIDImageTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //decimal id = null;
            //var response = instance.EquipmentByIDImage(id);
            //Assert.IsType<System.IO.Stream>(response);
        }

        /// <summary>
        /// Test ExtractRecipeFromWebsite
        /// </summary>
        [Fact]
        public void ExtractRecipeFromWebsiteTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string url = null;
            //bool? forceExtraction = null;
            //bool? analyze = null;
            //bool? includeNutrition = null;
            //bool? includeTaste = null;
            //var response = instance.ExtractRecipeFromWebsite(url, forceExtraction, analyze, includeNutrition, includeTaste);
            //Assert.IsType<GetRecipeInformation200Response>(response);
        }

        /// <summary>
        /// Test GetAnalyzedRecipeInstructions
        /// </summary>
        [Fact]
        public void GetAnalyzedRecipeInstructionsTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //int id = null;
            //bool? stepBreakdown = null;
            //var response = instance.GetAnalyzedRecipeInstructions(id, stepBreakdown);
            //Assert.IsType<GetAnalyzedRecipeInstructions200Response>(response);
        }

        /// <summary>
        /// Test GetRandomRecipes
        /// </summary>
        [Fact]
        public void GetRandomRecipesTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //bool? includeNutrition = null;
            //string? includeTags = null;
            //string? excludeTags = null;
            //int? number = null;
            //var response = instance.GetRandomRecipes(includeNutrition, includeTags, excludeTags, number);
            //Assert.IsType<GetRandomRecipes200Response>(response);
        }

        /// <summary>
        /// Test GetRecipeEquipmentByID
        /// </summary>
        [Fact]
        public void GetRecipeEquipmentByIDTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //int id = null;
            //var response = instance.GetRecipeEquipmentByID(id);
            //Assert.IsType<GetRecipeEquipmentByID200Response>(response);
        }

        /// <summary>
        /// Test GetRecipeInformation
        /// </summary>
        [Fact]
        public void GetRecipeInformationTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //int id = null;
            //bool? includeNutrition = null;
            //var response = instance.GetRecipeInformation(id, includeNutrition);
            //Assert.IsType<GetRecipeInformation200Response>(response);
        }

        /// <summary>
        /// Test GetRecipeInformationBulk
        /// </summary>
        [Fact]
        public void GetRecipeInformationBulkTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string ids = null;
            //bool? includeNutrition = null;
            //var response = instance.GetRecipeInformationBulk(ids, includeNutrition);
            //Assert.IsType<List<GetRecipeInformationBulk200ResponseInner>>(response);
        }

        /// <summary>
        /// Test GetRecipeIngredientsByID
        /// </summary>
        [Fact]
        public void GetRecipeIngredientsByIDTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //int id = null;
            //var response = instance.GetRecipeIngredientsByID(id);
            //Assert.IsType<GetRecipeIngredientsByID200Response>(response);
        }

        /// <summary>
        /// Test GetRecipeNutritionWidgetByID
        /// </summary>
        [Fact]
        public void GetRecipeNutritionWidgetByIDTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //int id = null;
            //var response = instance.GetRecipeNutritionWidgetByID(id);
            //Assert.IsType<GetRecipeNutritionWidgetByID200Response>(response);
        }

        /// <summary>
        /// Test GetRecipePriceBreakdownByID
        /// </summary>
        [Fact]
        public void GetRecipePriceBreakdownByIDTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //int id = null;
            //var response = instance.GetRecipePriceBreakdownByID(id);
            //Assert.IsType<GetRecipePriceBreakdownByID200Response>(response);
        }

        /// <summary>
        /// Test GetRecipeTasteByID
        /// </summary>
        [Fact]
        public void GetRecipeTasteByIDTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //int id = null;
            //bool? normalize = null;
            //var response = instance.GetRecipeTasteByID(id, normalize);
            //Assert.IsType<GetRecipeTasteByID200Response>(response);
        }

        /// <summary>
        /// Test GetSimilarRecipes
        /// </summary>
        [Fact]
        public void GetSimilarRecipesTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //int id = null;
            //int? number = null;
            //var response = instance.GetSimilarRecipes(id, number);
            //Assert.IsType<List<GetSimilarRecipes200ResponseInner>>(response);
        }

        /// <summary>
        /// Test GuessNutritionByDishName
        /// </summary>
        [Fact]
        public void GuessNutritionByDishNameTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string title = null;
            //var response = instance.GuessNutritionByDishName(title);
            //Assert.IsType<GuessNutritionByDishName200Response>(response);
        }

        /// <summary>
        /// Test ParseIngredients
        /// </summary>
        [Fact]
        public void ParseIngredientsTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string ingredientList = null;
            //decimal servings = null;
            //string? language = null;
            //bool? includeNutrition = null;
            //var response = instance.ParseIngredients(ingredientList, servings, language, includeNutrition);
            //Assert.IsType<List<ParseIngredients200ResponseInner>>(response);
        }

        /// <summary>
        /// Test PriceBreakdownByIDImage
        /// </summary>
        [Fact]
        public void PriceBreakdownByIDImageTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //decimal id = null;
            //var response = instance.PriceBreakdownByIDImage(id);
            //Assert.IsType<System.IO.Stream>(response);
        }

        /// <summary>
        /// Test QuickAnswer
        /// </summary>
        [Fact]
        public void QuickAnswerTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string q = null;
            //var response = instance.QuickAnswer(q);
            //Assert.IsType<QuickAnswer200Response>(response);
        }

        /// <summary>
        /// Test RecipeNutritionByIDImage
        /// </summary>
        [Fact]
        public void RecipeNutritionByIDImageTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //decimal id = null;
            //var response = instance.RecipeNutritionByIDImage(id);
            //Assert.IsType<System.IO.Stream>(response);
        }

        /// <summary>
        /// Test RecipeNutritionLabelImage
        /// </summary>
        [Fact]
        public void RecipeNutritionLabelImageTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //decimal id = null;
            //bool? showOptionalNutrients = null;
            //bool? showZeroValues = null;
            //bool? showIngredients = null;
            //var response = instance.RecipeNutritionLabelImage(id, showOptionalNutrients, showZeroValues, showIngredients);
            //Assert.IsType<System.IO.Stream>(response);
        }

        /// <summary>
        /// Test RecipeNutritionLabelWidget
        /// </summary>
        [Fact]
        public void RecipeNutritionLabelWidgetTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //decimal id = null;
            //bool? defaultCss = null;
            //bool? showOptionalNutrients = null;
            //bool? showZeroValues = null;
            //bool? showIngredients = null;
            //var response = instance.RecipeNutritionLabelWidget(id, defaultCss, showOptionalNutrients, showZeroValues, showIngredients);
            //Assert.IsType<string>(response);
        }

        /// <summary>
        /// Test RecipeTasteByIDImage
        /// </summary>
        [Fact]
        public void RecipeTasteByIDImageTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //decimal id = null;
            //bool? normalize = null;
            //string? rgb = null;
            //var response = instance.RecipeTasteByIDImage(id, normalize, rgb);
            //Assert.IsType<System.IO.Stream>(response);
        }

        /// <summary>
        /// Test SearchRecipes
        /// </summary>
        [Fact]
        public void SearchRecipesTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string? query = null;
            //string? cuisine = null;
            //string? excludeCuisine = null;
            //string? diet = null;
            //string? intolerances = null;
            //string? equipment = null;
            //string? includeIngredients = null;
            //string? excludeIngredients = null;
            //string? type = null;
            //bool? instructionsRequired = null;
            //bool? fillIngredients = null;
            //bool? addRecipeInformation = null;
            //bool? addRecipeNutrition = null;
            //string? author = null;
            //string? tags = null;
            //decimal? recipeBoxId = null;
            //string? titleMatch = null;
            //decimal? maxReadyTime = null;
            //decimal? minServings = null;
            //decimal? maxServings = null;
            //bool? ignorePantry = null;
            //string? sort = null;
            //string? sortDirection = null;
            //decimal? minCarbs = null;
            //decimal? maxCarbs = null;
            //decimal? minProtein = null;
            //decimal? maxProtein = null;
            //decimal? minCalories = null;
            //decimal? maxCalories = null;
            //decimal? minFat = null;
            //decimal? maxFat = null;
            //decimal? minAlcohol = null;
            //decimal? maxAlcohol = null;
            //decimal? minCaffeine = null;
            //decimal? maxCaffeine = null;
            //decimal? minCopper = null;
            //decimal? maxCopper = null;
            //decimal? minCalcium = null;
            //decimal? maxCalcium = null;
            //decimal? minCholine = null;
            //decimal? maxCholine = null;
            //decimal? minCholesterol = null;
            //decimal? maxCholesterol = null;
            //decimal? minFluoride = null;
            //decimal? maxFluoride = null;
            //decimal? minSaturatedFat = null;
            //decimal? maxSaturatedFat = null;
            //decimal? minVitaminA = null;
            //decimal? maxVitaminA = null;
            //decimal? minVitaminC = null;
            //decimal? maxVitaminC = null;
            //decimal? minVitaminD = null;
            //decimal? maxVitaminD = null;
            //decimal? minVitaminE = null;
            //decimal? maxVitaminE = null;
            //decimal? minVitaminK = null;
            //decimal? maxVitaminK = null;
            //decimal? minVitaminB1 = null;
            //decimal? maxVitaminB1 = null;
            //decimal? minVitaminB2 = null;
            //decimal? maxVitaminB2 = null;
            //decimal? minVitaminB5 = null;
            //decimal? maxVitaminB5 = null;
            //decimal? minVitaminB3 = null;
            //decimal? maxVitaminB3 = null;
            //decimal? minVitaminB6 = null;
            //decimal? maxVitaminB6 = null;
            //decimal? minVitaminB12 = null;
            //decimal? maxVitaminB12 = null;
            //decimal? minFiber = null;
            //decimal? maxFiber = null;
            //decimal? minFolate = null;
            //decimal? maxFolate = null;
            //decimal? minFolicAcid = null;
            //decimal? maxFolicAcid = null;
            //decimal? minIodine = null;
            //decimal? maxIodine = null;
            //decimal? minIron = null;
            //decimal? maxIron = null;
            //decimal? minMagnesium = null;
            //decimal? maxMagnesium = null;
            //decimal? minManganese = null;
            //decimal? maxManganese = null;
            //decimal? minPhosphorus = null;
            //decimal? maxPhosphorus = null;
            //decimal? minPotassium = null;
            //decimal? maxPotassium = null;
            //decimal? minSelenium = null;
            //decimal? maxSelenium = null;
            //decimal? minSodium = null;
            //decimal? maxSodium = null;
            //decimal? minSugar = null;
            //decimal? maxSugar = null;
            //decimal? minZinc = null;
            //decimal? maxZinc = null;
            //int? offset = null;
            //int? number = null;
            //var response = instance.SearchRecipes(query, cuisine, excludeCuisine, diet, intolerances, equipment, includeIngredients, excludeIngredients, type, instructionsRequired, fillIngredients, addRecipeInformation, addRecipeNutrition, author, tags, recipeBoxId, titleMatch, maxReadyTime, minServings, maxServings, ignorePantry, sort, sortDirection, minCarbs, maxCarbs, minProtein, maxProtein, minCalories, maxCalories, minFat, maxFat, minAlcohol, maxAlcohol, minCaffeine, maxCaffeine, minCopper, maxCopper, minCalcium, maxCalcium, minCholine, maxCholine, minCholesterol, maxCholesterol, minFluoride, maxFluoride, minSaturatedFat, maxSaturatedFat, minVitaminA, maxVitaminA, minVitaminC, maxVitaminC, minVitaminD, maxVitaminD, minVitaminE, maxVitaminE, minVitaminK, maxVitaminK, minVitaminB1, maxVitaminB1, minVitaminB2, maxVitaminB2, minVitaminB5, maxVitaminB5, minVitaminB3, maxVitaminB3, minVitaminB6, maxVitaminB6, minVitaminB12, maxVitaminB12, minFiber, maxFiber, minFolate, maxFolate, minFolicAcid, maxFolicAcid, minIodine, maxIodine, minIron, maxIron, minMagnesium, maxMagnesium, minManganese, maxManganese, minPhosphorus, maxPhosphorus, minPotassium, maxPotassium, minSelenium, maxSelenium, minSodium, maxSodium, minSugar, maxSugar, minZinc, maxZinc, offset, number);
            //Assert.IsType<SearchRecipes200Response>(response);
        }

        /// <summary>
        /// Test SearchRecipesByIngredients
        /// </summary>
        [Fact]
        public void SearchRecipesByIngredientsTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string? ingredients = null;
            //int? number = null;
            //decimal? ranking = null;
            //bool? ignorePantry = null;
            //var response = instance.SearchRecipesByIngredients(ingredients, number, ranking, ignorePantry);
            //Assert.IsType<List<SearchRecipesByIngredients200ResponseInner>>(response);
        }

        /// <summary>
        /// Test SearchRecipesByNutrients
        /// </summary>
        [Fact]
        public void SearchRecipesByNutrientsTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //decimal? minCarbs = null;
            //decimal? maxCarbs = null;
            //decimal? minProtein = null;
            //decimal? maxProtein = null;
            //decimal? minCalories = null;
            //decimal? maxCalories = null;
            //decimal? minFat = null;
            //decimal? maxFat = null;
            //decimal? minAlcohol = null;
            //decimal? maxAlcohol = null;
            //decimal? minCaffeine = null;
            //decimal? maxCaffeine = null;
            //decimal? minCopper = null;
            //decimal? maxCopper = null;
            //decimal? minCalcium = null;
            //decimal? maxCalcium = null;
            //decimal? minCholine = null;
            //decimal? maxCholine = null;
            //decimal? minCholesterol = null;
            //decimal? maxCholesterol = null;
            //decimal? minFluoride = null;
            //decimal? maxFluoride = null;
            //decimal? minSaturatedFat = null;
            //decimal? maxSaturatedFat = null;
            //decimal? minVitaminA = null;
            //decimal? maxVitaminA = null;
            //decimal? minVitaminC = null;
            //decimal? maxVitaminC = null;
            //decimal? minVitaminD = null;
            //decimal? maxVitaminD = null;
            //decimal? minVitaminE = null;
            //decimal? maxVitaminE = null;
            //decimal? minVitaminK = null;
            //decimal? maxVitaminK = null;
            //decimal? minVitaminB1 = null;
            //decimal? maxVitaminB1 = null;
            //decimal? minVitaminB2 = null;
            //decimal? maxVitaminB2 = null;
            //decimal? minVitaminB5 = null;
            //decimal? maxVitaminB5 = null;
            //decimal? minVitaminB3 = null;
            //decimal? maxVitaminB3 = null;
            //decimal? minVitaminB6 = null;
            //decimal? maxVitaminB6 = null;
            //decimal? minVitaminB12 = null;
            //decimal? maxVitaminB12 = null;
            //decimal? minFiber = null;
            //decimal? maxFiber = null;
            //decimal? minFolate = null;
            //decimal? maxFolate = null;
            //decimal? minFolicAcid = null;
            //decimal? maxFolicAcid = null;
            //decimal? minIodine = null;
            //decimal? maxIodine = null;
            //decimal? minIron = null;
            //decimal? maxIron = null;
            //decimal? minMagnesium = null;
            //decimal? maxMagnesium = null;
            //decimal? minManganese = null;
            //decimal? maxManganese = null;
            //decimal? minPhosphorus = null;
            //decimal? maxPhosphorus = null;
            //decimal? minPotassium = null;
            //decimal? maxPotassium = null;
            //decimal? minSelenium = null;
            //decimal? maxSelenium = null;
            //decimal? minSodium = null;
            //decimal? maxSodium = null;
            //decimal? minSugar = null;
            //decimal? maxSugar = null;
            //decimal? minZinc = null;
            //decimal? maxZinc = null;
            //int? offset = null;
            //int? number = null;
            //bool? random = null;
            //var response = instance.SearchRecipesByNutrients(minCarbs, maxCarbs, minProtein, maxProtein, minCalories, maxCalories, minFat, maxFat, minAlcohol, maxAlcohol, minCaffeine, maxCaffeine, minCopper, maxCopper, minCalcium, maxCalcium, minCholine, maxCholine, minCholesterol, maxCholesterol, minFluoride, maxFluoride, minSaturatedFat, maxSaturatedFat, minVitaminA, maxVitaminA, minVitaminC, maxVitaminC, minVitaminD, maxVitaminD, minVitaminE, maxVitaminE, minVitaminK, maxVitaminK, minVitaminB1, maxVitaminB1, minVitaminB2, maxVitaminB2, minVitaminB5, maxVitaminB5, minVitaminB3, maxVitaminB3, minVitaminB6, maxVitaminB6, minVitaminB12, maxVitaminB12, minFiber, maxFiber, minFolate, maxFolate, minFolicAcid, maxFolicAcid, minIodine, maxIodine, minIron, maxIron, minMagnesium, maxMagnesium, minManganese, maxManganese, minPhosphorus, maxPhosphorus, minPotassium, maxPotassium, minSelenium, maxSelenium, minSodium, maxSodium, minSugar, maxSugar, minZinc, maxZinc, offset, number, random);
            //Assert.IsType<List<SearchRecipesByNutrients200ResponseInner>>(response);
        }

        /// <summary>
        /// Test SummarizeRecipe
        /// </summary>
        [Fact]
        public void SummarizeRecipeTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //int id = null;
            //var response = instance.SummarizeRecipe(id);
            //Assert.IsType<SummarizeRecipe200Response>(response);
        }

        /// <summary>
        /// Test VisualizeEquipment
        /// </summary>
        [Fact]
        public void VisualizeEquipmentTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string instructions = null;
            //string? view = null;
            //bool? defaultCss = null;
            //bool? showBacklink = null;
            //var response = instance.VisualizeEquipment(instructions, view, defaultCss, showBacklink);
            //Assert.IsType<string>(response);
        }

        /// <summary>
        /// Test VisualizePriceBreakdown
        /// </summary>
        [Fact]
        public void VisualizePriceBreakdownTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string ingredientList = null;
            //decimal servings = null;
            //string? language = null;
            //decimal? mode = null;
            //bool? defaultCss = null;
            //bool? showBacklink = null;
            //var response = instance.VisualizePriceBreakdown(ingredientList, servings, language, mode, defaultCss, showBacklink);
            //Assert.IsType<string>(response);
        }

        /// <summary>
        /// Test VisualizeRecipeEquipmentByID
        /// </summary>
        [Fact]
        public void VisualizeRecipeEquipmentByIDTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //int id = null;
            //bool? defaultCss = null;
            //var response = instance.VisualizeRecipeEquipmentByID(id, defaultCss);
            //Assert.IsType<string>(response);
        }

        /// <summary>
        /// Test VisualizeRecipeIngredientsByID
        /// </summary>
        [Fact]
        public void VisualizeRecipeIngredientsByIDTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //int id = null;
            //bool? defaultCss = null;
            //string? measure = null;
            //var response = instance.VisualizeRecipeIngredientsByID(id, defaultCss, measure);
            //Assert.IsType<string>(response);
        }

        /// <summary>
        /// Test VisualizeRecipeNutrition
        /// </summary>
        [Fact]
        public void VisualizeRecipeNutritionTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string ingredientList = null;
            //decimal servings = null;
            //string? language = null;
            //bool? defaultCss = null;
            //bool? showBacklink = null;
            //var response = instance.VisualizeRecipeNutrition(ingredientList, servings, language, defaultCss, showBacklink);
            //Assert.IsType<string>(response);
        }

        /// <summary>
        /// Test VisualizeRecipeNutritionByID
        /// </summary>
        [Fact]
        public void VisualizeRecipeNutritionByIDTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //int id = null;
            //bool? defaultCss = null;
            //var response = instance.VisualizeRecipeNutritionByID(id, defaultCss);
            //Assert.IsType<string>(response);
        }

        /// <summary>
        /// Test VisualizeRecipePriceBreakdownByID
        /// </summary>
        [Fact]
        public void VisualizeRecipePriceBreakdownByIDTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //int id = null;
            //bool? defaultCss = null;
            //var response = instance.VisualizeRecipePriceBreakdownByID(id, defaultCss);
            //Assert.IsType<string>(response);
        }

        /// <summary>
        /// Test VisualizeRecipeTaste
        /// </summary>
        [Fact]
        public void VisualizeRecipeTasteTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string ingredientList = null;
            //string? language = null;
            //bool? normalize = null;
            //string? rgb = null;
            //var response = instance.VisualizeRecipeTaste(ingredientList, language, normalize, rgb);
            //Assert.IsType<string>(response);
        }

        /// <summary>
        /// Test VisualizeRecipeTasteByID
        /// </summary>
        [Fact]
        public void VisualizeRecipeTasteByIDTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //int id = null;
            //bool? normalize = null;
            //string? rgb = null;
            //var response = instance.VisualizeRecipeTasteByID(id, normalize, rgb);
            //Assert.IsType<string>(response);
        }
    }
}
