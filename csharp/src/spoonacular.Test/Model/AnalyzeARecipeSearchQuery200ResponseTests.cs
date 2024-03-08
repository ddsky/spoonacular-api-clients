/*
 * spoonacular API
 *
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
 *
 * The version of the OpenAPI document: 1.1
 * Contact: mail@spoonacular.com
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */


using Xunit;

using System;
using System.Linq;
using System.IO;
using System.Collections.Generic;
using spoonacular.Model;
using spoonacular.Client;
using System.Reflection;
using Newtonsoft.Json;

namespace spoonacular.Test.Model
{
    /// <summary>
    ///  Class for testing AnalyzeARecipeSearchQuery200Response
    /// </summary>
    /// <remarks>
    /// This file is automatically generated by OpenAPI Generator (https://openapi-generator.tech).
    /// Please update the test case below to test the model.
    /// </remarks>
    public class AnalyzeARecipeSearchQuery200ResponseTests : IDisposable
    {
        // TODO uncomment below to declare an instance variable for AnalyzeARecipeSearchQuery200Response
        //private AnalyzeARecipeSearchQuery200Response instance;

        public AnalyzeARecipeSearchQuery200ResponseTests()
        {
            // TODO uncomment below to create an instance of AnalyzeARecipeSearchQuery200Response
            //instance = new AnalyzeARecipeSearchQuery200Response();
        }

        public void Dispose()
        {
            // Cleanup when everything is done.
        }

        /// <summary>
        /// Test an instance of AnalyzeARecipeSearchQuery200Response
        /// </summary>
        [Fact]
        public void AnalyzeARecipeSearchQuery200ResponseInstanceTest()
        {
            // TODO uncomment below to test "IsType" AnalyzeARecipeSearchQuery200Response
            //Assert.IsType<AnalyzeARecipeSearchQuery200Response>(instance);
        }

        /// <summary>
        /// Test the property 'Dishes'
        /// </summary>
        [Fact]
        public void DishesTest()
        {
            // TODO unit test for the property 'Dishes'
        }

        /// <summary>
        /// Test the property 'Ingredients'
        /// </summary>
        [Fact]
        public void IngredientsTest()
        {
            // TODO unit test for the property 'Ingredients'
        }

        /// <summary>
        /// Test the property 'Cuisines'
        /// </summary>
        [Fact]
        public void CuisinesTest()
        {
            // TODO unit test for the property 'Cuisines'
        }

        /// <summary>
        /// Test the property 'Modifiers'
        /// </summary>
        [Fact]
        public void ModifiersTest()
        {
            // TODO unit test for the property 'Modifiers'
        }
    }
}
