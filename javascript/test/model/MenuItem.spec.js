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
    instance = new Spoonacular.MenuItem();
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

  describe('MenuItem', function() {
    it('should create an instance of MenuItem', function() {
      // uncomment below and update the code to test MenuItem
      //var instance = new Spoonacular.MenuItem();
      //expect(instance).to.be.a(Spoonacular.MenuItem);
    });

    it('should have the property id (base name: "id")', function() {
      // uncomment below and update the code to test the property id
      //var instance = new Spoonacular.MenuItem();
      //expect(instance).to.be();
    });

    it('should have the property title (base name: "title")', function() {
      // uncomment below and update the code to test the property title
      //var instance = new Spoonacular.MenuItem();
      //expect(instance).to.be();
    });

    it('should have the property restaurantChain (base name: "restaurantChain")', function() {
      // uncomment below and update the code to test the property restaurantChain
      //var instance = new Spoonacular.MenuItem();
      //expect(instance).to.be();
    });

    it('should have the property nutrition (base name: "nutrition")', function() {
      // uncomment below and update the code to test the property nutrition
      //var instance = new Spoonacular.MenuItem();
      //expect(instance).to.be();
    });

    it('should have the property badges (base name: "badges")', function() {
      // uncomment below and update the code to test the property badges
      //var instance = new Spoonacular.MenuItem();
      //expect(instance).to.be();
    });

    it('should have the property breadcrumbs (base name: "breadcrumbs")', function() {
      // uncomment below and update the code to test the property breadcrumbs
      //var instance = new Spoonacular.MenuItem();
      //expect(instance).to.be();
    });

    it('should have the property generatedText (base name: "generatedText")', function() {
      // uncomment below and update the code to test the property generatedText
      //var instance = new Spoonacular.MenuItem();
      //expect(instance).to.be();
    });

    it('should have the property imageType (base name: "imageType")', function() {
      // uncomment below and update the code to test the property imageType
      //var instance = new Spoonacular.MenuItem();
      //expect(instance).to.be();
    });

    it('should have the property likes (base name: "likes")', function() {
      // uncomment below and update the code to test the property likes
      //var instance = new Spoonacular.MenuItem();
      //expect(instance).to.be();
    });

    it('should have the property servings (base name: "servings")', function() {
      // uncomment below and update the code to test the property servings
      //var instance = new Spoonacular.MenuItem();
      //expect(instance).to.be();
    });

    it('should have the property price (base name: "price")', function() {
      // uncomment below and update the code to test the property price
      //var instance = new Spoonacular.MenuItem();
      //expect(instance).to.be();
    });

    it('should have the property spoonacularScore (base name: "spoonacularScore")', function() {
      // uncomment below and update the code to test the property spoonacularScore
      //var instance = new Spoonacular.MenuItem();
      //expect(instance).to.be();
    });

  });

}));
