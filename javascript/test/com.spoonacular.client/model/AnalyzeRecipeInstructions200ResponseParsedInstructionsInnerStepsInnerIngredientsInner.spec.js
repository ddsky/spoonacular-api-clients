/**
 * spoonacular API
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over 380,000 recipes, thousands of ingredients, 800,000 food products, and 100,000 menu items. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
 *
 * The version of the OpenAPI document: 1.1
 * Contact: mail@spoonacular.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

(function(root, factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD.
    define(['expect.js', process.cwd()+'/src/com.spoonacular.client/index'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    factory(require('expect.js'), require(process.cwd()+'/src/com.spoonacular.client/index'));
  } else {
    // Browser globals (root is window)
    factory(root.expect, root.SpoonacularApi);
  }
}(this, function(expect, SpoonacularApi) {
  'use strict';

  var instance;

  beforeEach(function() {
    instance = new SpoonacularApi.AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner();
  });

  var getProperty = function(object, getter, property) {
    // Use getter method if present; otherwise, get the property directly.
    if (typeof object[getter] === 'function')
      return object[getter]();
    else
      return object[property];
  }

  var setProperty = function(object, setter, property, value) {
    // Use setter method if present; otherwise, set the property directly.
    if (typeof object[setter] === 'function')
      object[setter](value);
    else
      object[property] = value;
  }

  describe('AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner', function() {
    it('should create an instance of AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner', function() {
      // uncomment below and update the code to test AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner
      //var instance = new SpoonacularApi.AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner();
      //expect(instance).to.be.a(SpoonacularApi.AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner);
    });

    it('should have the property id (base name: "id")', function() {
      // uncomment below and update the code to test the property id
      //var instance = new SpoonacularApi.AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner();
      //expect(instance).to.be();
    });

    it('should have the property name (base name: "name")', function() {
      // uncomment below and update the code to test the property name
      //var instance = new SpoonacularApi.AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner();
      //expect(instance).to.be();
    });

    it('should have the property localizedName (base name: "localizedName")', function() {
      // uncomment below and update the code to test the property localizedName
      //var instance = new SpoonacularApi.AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner();
      //expect(instance).to.be();
    });

    it('should have the property image (base name: "image")', function() {
      // uncomment below and update the code to test the property image
      //var instance = new SpoonacularApi.AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner();
      //expect(instance).to.be();
    });

  });

}));