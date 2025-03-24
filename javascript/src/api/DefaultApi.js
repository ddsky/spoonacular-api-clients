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


import ApiClient from "../ApiClient";
import AnalyzeRecipeRequest from '../model/AnalyzeRecipeRequest';
import SearchRestaurants200Response from '../model/SearchRestaurants200Response';

/**
* Default service.
* @module api/DefaultApi
* @version 2.0.2
*/
export default class DefaultApi {

    /**
    * Constructs a new DefaultApi. 
    * @alias module:api/DefaultApi
    * @class
    * @param {module:ApiClient} [apiClient] Optional API client implementation to use,
    * default to {@link module:ApiClient#instance} if unspecified.
    */
    constructor(apiClient) {
        this.apiClient = apiClient || ApiClient.instance;
    }


    /**
     * Callback function to receive the result of the analyzeRecipe operation.
     * @callback module:api/DefaultApi~analyzeRecipeCallback
     * @param {String} error Error message, if any.
     * @param {Object} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Analyze Recipe
     * This endpoint allows you to send raw recipe information, such as title, servings, and ingredients, to then see what we compute (badges, diets, nutrition, and more). This is useful if you have your own recipe data and want to enrich it with our semantic analysis.
     * @param {module:model/AnalyzeRecipeRequest} analyzeRecipeRequest Example request body.
     * @param {Object} opts Optional parameters
     * @param {String} [language] The input language, either \"en\" or \"de\".
     * @param {Boolean} [includeNutrition] Whether nutrition data should be added to correctly parsed ingredients.
     * @param {Boolean} [includeTaste] Whether taste data should be added to correctly parsed ingredients.
     * @param {module:api/DefaultApi~analyzeRecipeCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Object}
     */
    analyzeRecipe(analyzeRecipeRequest, opts, callback) {
      opts = opts || {};
      let postBody = analyzeRecipeRequest;
      // verify the required parameter 'analyzeRecipeRequest' is set
      if (analyzeRecipeRequest === undefined || analyzeRecipeRequest === null) {
        throw new Error("Missing the required parameter 'analyzeRecipeRequest' when calling analyzeRecipe");
      }

      let pathParams = {
      };
      let queryParams = {
        'language': opts['language'],
        'includeNutrition': opts['includeNutrition'],
        'includeTaste': opts['includeTaste']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKeyScheme'];
      let contentTypes = ['application/json'];
      let accepts = ['application/json'];
      let returnType = Object;
      return this.apiClient.callApi(
        '/recipes/analyze', 'POST',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the createRecipeCardGet operation.
     * @callback module:api/DefaultApi~createRecipeCardGetCallback
     * @param {String} error Error message, if any.
     * @param {Object} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Create Recipe Card
     * Generate a recipe card for a recipe.
     * @param {Number} id The recipe id.
     * @param {Object} opts Optional parameters
     * @param {String} [mask] The mask to put over the recipe image (\"ellipseMask\", \"diamondMask\", \"starMask\", \"heartMask\", \"potMask\", \"fishMask\").
     * @param {String} [backgroundImage] The background image (\"none\",\"background1\", or \"background2\").
     * @param {String} [backgroundColor] The background color for the recipe card as a hex-string.
     * @param {String} [fontColor] The font color for the recipe card as a hex-string.
     * @param {module:api/DefaultApi~createRecipeCardGetCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Object}
     */
    createRecipeCardGet(id, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'id' is set
      if (id === undefined || id === null) {
        throw new Error("Missing the required parameter 'id' when calling createRecipeCardGet");
      }

      let pathParams = {
        'id': id
      };
      let queryParams = {
        'mask': opts['mask'],
        'backgroundImage': opts['backgroundImage'],
        'backgroundColor': opts['backgroundColor'],
        'fontColor': opts['fontColor']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKeyScheme'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = Object;
      return this.apiClient.callApi(
        '/recipes/{id}/card', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the searchRestaurants operation.
     * @callback module:api/DefaultApi~searchRestaurantsCallback
     * @param {String} error Error message, if any.
     * @param {module:model/SearchRestaurants200Response} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Search Restaurants
     * Search through thousands of restaurants (in North America) by location, cuisine, budget, and more.
     * @param {Object} opts Optional parameters
     * @param {String} [query] The search query.
     * @param {Number} [lat] The latitude of the user's location.
     * @param {Number} [lng] The longitude of the user's location.\".
     * @param {Number} [distance] The distance around the location in miles.
     * @param {Number} [budget] The user's budget for a meal in USD.
     * @param {String} [cuisine] The cuisine of the restaurant.
     * @param {Number} [minRating] The minimum rating of the restaurant between 0 and 5.
     * @param {Boolean} [isOpen] Whether the restaurant must be open at the time of search.
     * @param {String} [sort] How to sort the results, one of the following 'cheapest', 'fastest', 'rating', 'distance' or the default 'relevance'.
     * @param {Number} [page] The page number of results.
     * @param {module:api/DefaultApi~searchRestaurantsCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/SearchRestaurants200Response}
     */
    searchRestaurants(opts, callback) {
      opts = opts || {};
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
        'query': opts['query'],
        'lat': opts['lat'],
        'lng': opts['lng'],
        'distance': opts['distance'],
        'budget': opts['budget'],
        'cuisine': opts['cuisine'],
        'min-rating': opts['minRating'],
        'is-open': opts['isOpen'],
        'sort': opts['sort'],
        'page': opts['page']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKeyScheme'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = SearchRestaurants200Response;
      return this.apiClient.callApi(
        '/food/restaurants/search', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }


}
