/**
 * spoonacular API
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
 *
 * The version of the OpenAPI document: 2.0.2
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
    define(['expect.js', process.cwd()+'/src/index'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    factory(require('expect.js'), require(process.cwd()+'/src/index'));
  } else {
    // Browser globals (root is window)
    factory(root.expect, root.Spoonacular);
  }
}(this, function(expect, Spoonacular) {
  'use strict';

  var instance;

  beforeEach(function() {
    instance = new Spoonacular.SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner();
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

  describe('SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner', function() {
    it('should create an instance of SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner', function() {
      // uncomment below and update the code to test SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner
      //var instance = new Spoonacular.SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner();
      //expect(instance).to.be.a(Spoonacular.SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner);
    });

    it('should have the property aisle (base name: "aisle")', function() {
      // uncomment below and update the code to test the property aisle
      //var instance = new Spoonacular.SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner();
      //expect(instance).to.be();
    });

    it('should have the property amount (base name: "amount")', function() {
      // uncomment below and update the code to test the property amount
      //var instance = new Spoonacular.SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner();
      //expect(instance).to.be();
    });

    it('should have the property id (base name: "id")', function() {
      // uncomment below and update the code to test the property id
      //var instance = new Spoonacular.SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner();
      //expect(instance).to.be();
    });

    it('should have the property image (base name: "image")', function() {
      // uncomment below and update the code to test the property image
      //var instance = new Spoonacular.SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner();
      //expect(instance).to.be();
    });

    it('should have the property meta (base name: "meta")', function() {
      // uncomment below and update the code to test the property meta
      //var instance = new Spoonacular.SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner();
      //expect(instance).to.be();
    });

    it('should have the property name (base name: "name")', function() {
      // uncomment below and update the code to test the property name
      //var instance = new Spoonacular.SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner();
      //expect(instance).to.be();
    });

    it('should have the property extendedName (base name: "extendedName")', function() {
      // uncomment below and update the code to test the property extendedName
      //var instance = new Spoonacular.SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner();
      //expect(instance).to.be();
    });

    it('should have the property original (base name: "original")', function() {
      // uncomment below and update the code to test the property original
      //var instance = new Spoonacular.SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner();
      //expect(instance).to.be();
    });

    it('should have the property originalName (base name: "originalName")', function() {
      // uncomment below and update the code to test the property originalName
      //var instance = new Spoonacular.SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner();
      //expect(instance).to.be();
    });

    it('should have the property unit (base name: "unit")', function() {
      // uncomment below and update the code to test the property unit
      //var instance = new Spoonacular.SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner();
      //expect(instance).to.be();
    });

    it('should have the property unitLong (base name: "unitLong")', function() {
      // uncomment below and update the code to test the property unitLong
      //var instance = new Spoonacular.SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner();
      //expect(instance).to.be();
    });

    it('should have the property unitShort (base name: "unitShort")', function() {
      // uncomment below and update the code to test the property unitShort
      //var instance = new Spoonacular.SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner();
      //expect(instance).to.be();
    });

  });

}));
