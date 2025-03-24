/*
 * spoonacular API
 *
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
 *
 * The version of the OpenAPI document: 2.0.2
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
    ///  Class for testing MealPlanningApi
    /// </summary>
    /// <remarks>
    /// This file is automatically generated by OpenAPI Generator (https://openapi-generator.tech).
    /// Please update the test case below to test the API endpoint.
    /// </remarks>
    public class MealPlanningApiTests : IDisposable
    {
        private MealPlanningApi instance;

        public MealPlanningApiTests()
        {
            instance = new MealPlanningApi();
        }

        public void Dispose()
        {
            // Cleanup when everything is done.
        }

        /// <summary>
        /// Test an instance of MealPlanningApi
        /// </summary>
        [Fact]
        public void InstanceTest()
        {
            // TODO uncomment below to test 'IsType' MealPlanningApi
            //Assert.IsType<MealPlanningApi>(instance);
        }

        /// <summary>
        /// Test AddMealPlanTemplate
        /// </summary>
        [Fact]
        public void AddMealPlanTemplateTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string username = null;
            //string hash = null;
            //var response = instance.AddMealPlanTemplate(username, hash);
            //Assert.IsType<AddMealPlanTemplate200Response>(response);
        }

        /// <summary>
        /// Test AddToMealPlan
        /// </summary>
        [Fact]
        public void AddToMealPlanTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string username = null;
            //string hash = null;
            //AddToMealPlanRequest addToMealPlanRequest = null;
            //var response = instance.AddToMealPlan(username, hash, addToMealPlanRequest);
            //Assert.IsType<Object>(response);
        }

        /// <summary>
        /// Test AddToShoppingList
        /// </summary>
        [Fact]
        public void AddToShoppingListTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string username = null;
            //string hash = null;
            //AddToShoppingListRequest addToShoppingListRequest = null;
            //var response = instance.AddToShoppingList(username, hash, addToShoppingListRequest);
            //Assert.IsType<GetShoppingList200Response>(response);
        }

        /// <summary>
        /// Test ClearMealPlanDay
        /// </summary>
        [Fact]
        public void ClearMealPlanDayTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string username = null;
            //string date = null;
            //string hash = null;
            //var response = instance.ClearMealPlanDay(username, date, hash);
            //Assert.IsType<Object>(response);
        }

        /// <summary>
        /// Test ConnectUser
        /// </summary>
        [Fact]
        public void ConnectUserTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //ConnectUserRequest connectUserRequest = null;
            //var response = instance.ConnectUser(connectUserRequest);
            //Assert.IsType<ConnectUser200Response>(response);
        }

        /// <summary>
        /// Test DeleteFromMealPlan
        /// </summary>
        [Fact]
        public void DeleteFromMealPlanTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string username = null;
            //int id = null;
            //string hash = null;
            //var response = instance.DeleteFromMealPlan(username, id, hash);
            //Assert.IsType<Object>(response);
        }

        /// <summary>
        /// Test DeleteFromShoppingList
        /// </summary>
        [Fact]
        public void DeleteFromShoppingListTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string username = null;
            //int id = null;
            //string hash = null;
            //var response = instance.DeleteFromShoppingList(username, id, hash);
            //Assert.IsType<Object>(response);
        }

        /// <summary>
        /// Test DeleteMealPlanTemplate
        /// </summary>
        [Fact]
        public void DeleteMealPlanTemplateTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string username = null;
            //int id = null;
            //string hash = null;
            //var response = instance.DeleteMealPlanTemplate(username, id, hash);
            //Assert.IsType<Object>(response);
        }

        /// <summary>
        /// Test GenerateMealPlan
        /// </summary>
        [Fact]
        public void GenerateMealPlanTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string? timeFrame = null;
            //decimal? targetCalories = null;
            //string? diet = null;
            //string? exclude = null;
            //var response = instance.GenerateMealPlan(timeFrame, targetCalories, diet, exclude);
            //Assert.IsType<GenerateMealPlan200Response>(response);
        }

        /// <summary>
        /// Test GenerateShoppingList
        /// </summary>
        [Fact]
        public void GenerateShoppingListTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string username = null;
            //string startDate = null;
            //string endDate = null;
            //string hash = null;
            //var response = instance.GenerateShoppingList(username, startDate, endDate, hash);
            //Assert.IsType<GetShoppingList200Response>(response);
        }

        /// <summary>
        /// Test GetMealPlanTemplate
        /// </summary>
        [Fact]
        public void GetMealPlanTemplateTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string username = null;
            //int id = null;
            //string hash = null;
            //var response = instance.GetMealPlanTemplate(username, id, hash);
            //Assert.IsType<GetMealPlanTemplate200Response>(response);
        }

        /// <summary>
        /// Test GetMealPlanTemplates
        /// </summary>
        [Fact]
        public void GetMealPlanTemplatesTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string username = null;
            //string hash = null;
            //var response = instance.GetMealPlanTemplates(username, hash);
            //Assert.IsType<GetMealPlanTemplates200Response>(response);
        }

        /// <summary>
        /// Test GetMealPlanWeek
        /// </summary>
        [Fact]
        public void GetMealPlanWeekTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string username = null;
            //string startDate = null;
            //string hash = null;
            //var response = instance.GetMealPlanWeek(username, startDate, hash);
            //Assert.IsType<GetMealPlanWeek200Response>(response);
        }

        /// <summary>
        /// Test GetShoppingList
        /// </summary>
        [Fact]
        public void GetShoppingListTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string username = null;
            //string hash = null;
            //var response = instance.GetShoppingList(username, hash);
            //Assert.IsType<GetShoppingList200Response>(response);
        }
    }
}
