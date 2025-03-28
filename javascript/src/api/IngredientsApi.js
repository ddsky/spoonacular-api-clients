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
import AutocompleteIngredientSearch200ResponseInner from '../model/AutocompleteIngredientSearch200ResponseInner';
import ComputeIngredientAmount200Response from '../model/ComputeIngredientAmount200Response';
import GetIngredientSubstitutes200Response from '../model/GetIngredientSubstitutes200Response';
import IngredientInformation from '../model/IngredientInformation';
import IngredientSearch200Response from '../model/IngredientSearch200Response';
import MapIngredientsToGroceryProducts200ResponseInner from '../model/MapIngredientsToGroceryProducts200ResponseInner';
import MapIngredientsToGroceryProductsRequest from '../model/MapIngredientsToGroceryProductsRequest';

/**
* Ingredients service.
* @module api/IngredientsApi
* @version 2.0.2
*/
export default class IngredientsApi {

    /**
    * Constructs a new IngredientsApi. 
    * @alias module:api/IngredientsApi
    * @class
    * @param {module:ApiClient} [apiClient] Optional API client implementation to use,
    * default to {@link module:ApiClient#instance} if unspecified.
    */
    constructor(apiClient) {
        this.apiClient = apiClient || ApiClient.instance;
    }


    /**
     * Callback function to receive the result of the autocompleteIngredientSearch operation.
     * @callback module:api/IngredientsApi~autocompleteIngredientSearchCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/AutocompleteIngredientSearch200ResponseInner>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Autocomplete Ingredient Search
     * Autocomplete the entry of an ingredient.
     * @param {String} query The (natural language) search query.
     * @param {Object} opts Optional parameters
     * @param {Number} [number = 10)] The maximum number of items to return (between 1 and 100). Defaults to 10.
     * @param {Boolean} [metaInformation] Whether to return more meta information about the ingredients.
     * @param {String} [intolerances] A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.
     * @param {module:model/String} [language] The language of the input. Either 'en' or 'de'.
     * @param {module:api/IngredientsApi~autocompleteIngredientSearchCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/AutocompleteIngredientSearch200ResponseInner>}
     */
    autocompleteIngredientSearch(query, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'query' is set
      if (query === undefined || query === null) {
        throw new Error("Missing the required parameter 'query' when calling autocompleteIngredientSearch");
      }

      let pathParams = {
      };
      let queryParams = {
        'query': query,
        'number': opts['number'],
        'metaInformation': opts['metaInformation'],
        'intolerances': opts['intolerances'],
        'language': opts['language']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKeyScheme'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = [AutocompleteIngredientSearch200ResponseInner];
      return this.apiClient.callApi(
        '/food/ingredients/autocomplete', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the computeIngredientAmount operation.
     * @callback module:api/IngredientsApi~computeIngredientAmountCallback
     * @param {String} error Error message, if any.
     * @param {module:model/ComputeIngredientAmount200Response} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Compute Ingredient Amount
     * Compute the amount you need of a certain ingredient for a certain nutritional goal. For example, how much pineapple do you have to eat to get 10 grams of protein?
     * @param {Number} id The id of the ingredient you want the amount for.
     * @param {String} nutrient The target nutrient. See a list of supported nutrients.
     * @param {Number} target The target number of the given nutrient.
     * @param {Object} opts Optional parameters
     * @param {String} [unit] The target unit.
     * @param {module:api/IngredientsApi~computeIngredientAmountCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/ComputeIngredientAmount200Response}
     */
    computeIngredientAmount(id, nutrient, target, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'id' is set
      if (id === undefined || id === null) {
        throw new Error("Missing the required parameter 'id' when calling computeIngredientAmount");
      }
      // verify the required parameter 'nutrient' is set
      if (nutrient === undefined || nutrient === null) {
        throw new Error("Missing the required parameter 'nutrient' when calling computeIngredientAmount");
      }
      // verify the required parameter 'target' is set
      if (target === undefined || target === null) {
        throw new Error("Missing the required parameter 'target' when calling computeIngredientAmount");
      }

      let pathParams = {
        'id': id
      };
      let queryParams = {
        'nutrient': nutrient,
        'target': target,
        'unit': opts['unit']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKeyScheme'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = ComputeIngredientAmount200Response;
      return this.apiClient.callApi(
        '/food/ingredients/{id}/amount', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the getIngredientInformation operation.
     * @callback module:api/IngredientsApi~getIngredientInformationCallback
     * @param {String} error Error message, if any.
     * @param {module:model/IngredientInformation} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Get Ingredient Information
     * Use an ingredient id to get all available information about an ingredient, such as its image and supermarket aisle.
     * @param {Number} id The ingredient id.
     * @param {Object} opts Optional parameters
     * @param {Number} [amount] The amount of this ingredient.
     * @param {String} [unit] The unit for the given amount.
     * @param {module:api/IngredientsApi~getIngredientInformationCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/IngredientInformation}
     */
    getIngredientInformation(id, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'id' is set
      if (id === undefined || id === null) {
        throw new Error("Missing the required parameter 'id' when calling getIngredientInformation");
      }

      let pathParams = {
        'id': id
      };
      let queryParams = {
        'amount': opts['amount'],
        'unit': opts['unit']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKeyScheme'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = IngredientInformation;
      return this.apiClient.callApi(
        '/food/ingredients/{id}/information', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the getIngredientSubstitutes operation.
     * @callback module:api/IngredientsApi~getIngredientSubstitutesCallback
     * @param {String} error Error message, if any.
     * @param {module:model/GetIngredientSubstitutes200Response} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Get Ingredient Substitutes
     * Search for substitutes for a given ingredient.
     * @param {String} ingredientName The name of the ingredient you want to replace.
     * @param {module:api/IngredientsApi~getIngredientSubstitutesCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/GetIngredientSubstitutes200Response}
     */
    getIngredientSubstitutes(ingredientName, callback) {
      let postBody = null;
      // verify the required parameter 'ingredientName' is set
      if (ingredientName === undefined || ingredientName === null) {
        throw new Error("Missing the required parameter 'ingredientName' when calling getIngredientSubstitutes");
      }

      let pathParams = {
      };
      let queryParams = {
        'ingredientName': ingredientName
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKeyScheme'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = GetIngredientSubstitutes200Response;
      return this.apiClient.callApi(
        '/food/ingredients/substitutes', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the getIngredientSubstitutesByID operation.
     * @callback module:api/IngredientsApi~getIngredientSubstitutesByIDCallback
     * @param {String} error Error message, if any.
     * @param {module:model/GetIngredientSubstitutes200Response} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Get Ingredient Substitutes by ID
     * Search for substitutes for a given ingredient.
     * @param {Number} id The id of the ingredient you want substitutes for.
     * @param {module:api/IngredientsApi~getIngredientSubstitutesByIDCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/GetIngredientSubstitutes200Response}
     */
    getIngredientSubstitutesByID(id, callback) {
      let postBody = null;
      // verify the required parameter 'id' is set
      if (id === undefined || id === null) {
        throw new Error("Missing the required parameter 'id' when calling getIngredientSubstitutesByID");
      }

      let pathParams = {
        'id': id
      };
      let queryParams = {
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKeyScheme'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = GetIngredientSubstitutes200Response;
      return this.apiClient.callApi(
        '/food/ingredients/{id}/substitutes', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the ingredientSearch operation.
     * @callback module:api/IngredientsApi~ingredientSearchCallback
     * @param {String} error Error message, if any.
     * @param {module:model/IngredientSearch200Response} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Ingredient Search
     * Search for simple whole foods (e.g. fruits, vegetables, nuts, grains, meat, fish, dairy etc.).
     * @param {String} query The (natural language) search query.
     * @param {Object} opts Optional parameters
     * @param {Boolean} [addChildren] Whether to add children of found foods.
     * @param {Number} [minProteinPercent] The minimum percentage of protein the food must have (between 0 and 100).
     * @param {Number} [maxProteinPercent] The maximum percentage of protein the food can have (between 0 and 100).
     * @param {Number} [minFatPercent] The minimum percentage of fat the food must have (between 0 and 100).
     * @param {Number} [maxFatPercent] The maximum percentage of fat the food can have (between 0 and 100).
     * @param {Number} [minCarbsPercent] The minimum percentage of carbs the food must have (between 0 and 100).
     * @param {Number} [maxCarbsPercent] The maximum percentage of carbs the food can have (between 0 and 100).
     * @param {Boolean} [metaInformation] Whether to return more meta information about the ingredients.
     * @param {String} [intolerances] A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.
     * @param {String} [sort] The strategy to sort recipes by. See a full list of supported sorting options.
     * @param {String} [sortDirection] The direction in which to sort. Must be either 'asc' (ascending) or 'desc' (descending).
     * @param {Number} [offset] The number of results to skip (between 0 and 900).
     * @param {Number} [number = 10)] The maximum number of items to return (between 1 and 100). Defaults to 10.
     * @param {module:model/String} [language] The language of the input. Either 'en' or 'de'.
     * @param {module:api/IngredientsApi~ingredientSearchCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/IngredientSearch200Response}
     */
    ingredientSearch(query, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'query' is set
      if (query === undefined || query === null) {
        throw new Error("Missing the required parameter 'query' when calling ingredientSearch");
      }

      let pathParams = {
      };
      let queryParams = {
        'query': query,
        'addChildren': opts['addChildren'],
        'minProteinPercent': opts['minProteinPercent'],
        'maxProteinPercent': opts['maxProteinPercent'],
        'minFatPercent': opts['minFatPercent'],
        'maxFatPercent': opts['maxFatPercent'],
        'minCarbsPercent': opts['minCarbsPercent'],
        'maxCarbsPercent': opts['maxCarbsPercent'],
        'metaInformation': opts['metaInformation'],
        'intolerances': opts['intolerances'],
        'sort': opts['sort'],
        'sortDirection': opts['sortDirection'],
        'offset': opts['offset'],
        'number': opts['number'],
        'language': opts['language']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKeyScheme'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = IngredientSearch200Response;
      return this.apiClient.callApi(
        '/food/ingredients/search', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the ingredientsByIDImage operation.
     * @callback module:api/IngredientsApi~ingredientsByIDImageCallback
     * @param {String} error Error message, if any.
     * @param {File} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Ingredients by ID Image
     * Visualize a recipe's ingredient list.
     * @param {Number} id The recipe id.
     * @param {Object} opts Optional parameters
     * @param {module:model/String} [measure] Whether the the measures should be 'us' or 'metric'.
     * @param {module:api/IngredientsApi~ingredientsByIDImageCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link File}
     */
    ingredientsByIDImage(id, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'id' is set
      if (id === undefined || id === null) {
        throw new Error("Missing the required parameter 'id' when calling ingredientsByIDImage");
      }

      let pathParams = {
        'id': id
      };
      let queryParams = {
        'measure': opts['measure']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKeyScheme'];
      let contentTypes = [];
      let accepts = ['image/png'];
      let returnType = File;
      return this.apiClient.callApi(
        '/recipes/{id}/ingredientWidget.png', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the mapIngredientsToGroceryProducts operation.
     * @callback module:api/IngredientsApi~mapIngredientsToGroceryProductsCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/MapIngredientsToGroceryProducts200ResponseInner>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Map Ingredients to Grocery Products
     * Map a set of ingredients to products you can buy in the grocery store.
     * @param {module:model/MapIngredientsToGroceryProductsRequest} mapIngredientsToGroceryProductsRequest 
     * @param {module:api/IngredientsApi~mapIngredientsToGroceryProductsCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/MapIngredientsToGroceryProducts200ResponseInner>}
     */
    mapIngredientsToGroceryProducts(mapIngredientsToGroceryProductsRequest, callback) {
      let postBody = mapIngredientsToGroceryProductsRequest;
      // verify the required parameter 'mapIngredientsToGroceryProductsRequest' is set
      if (mapIngredientsToGroceryProductsRequest === undefined || mapIngredientsToGroceryProductsRequest === null) {
        throw new Error("Missing the required parameter 'mapIngredientsToGroceryProductsRequest' when calling mapIngredientsToGroceryProducts");
      }

      let pathParams = {
      };
      let queryParams = {
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKeyScheme'];
      let contentTypes = ['application/json'];
      let accepts = ['application/json'];
      let returnType = [MapIngredientsToGroceryProducts200ResponseInner];
      return this.apiClient.callApi(
        '/food/ingredients/map', 'POST',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the visualizeIngredients operation.
     * @callback module:api/IngredientsApi~visualizeIngredientsCallback
     * @param {String} error Error message, if any.
     * @param {String} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Ingredients Widget
     * Visualize ingredients of a recipe. You can play around with that endpoint!
     * @param {String} ingredientList The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n).
     * @param {Number} servings The number of servings.
     * @param {Object} opts Optional parameters
     * @param {module:model/String} [language] The language of the input. Either 'en' or 'de'.
     * @param {module:model/String} [measure] The original system of measurement, either 'metric' or 'us'.
     * @param {module:model/String} [view] How to visualize the ingredients, either 'grid' or 'list'.
     * @param {Boolean} [defaultCss] Whether the default CSS should be added to the response.
     * @param {Boolean} [showBacklink] Whether to show a backlink to spoonacular. If set false, this call counts against your quota.
     * @param {module:api/IngredientsApi~visualizeIngredientsCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link String}
     */
    visualizeIngredients(ingredientList, servings, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'ingredientList' is set
      if (ingredientList === undefined || ingredientList === null) {
        throw new Error("Missing the required parameter 'ingredientList' when calling visualizeIngredients");
      }
      // verify the required parameter 'servings' is set
      if (servings === undefined || servings === null) {
        throw new Error("Missing the required parameter 'servings' when calling visualizeIngredients");
      }

      let pathParams = {
      };
      let queryParams = {
        'language': opts['language']
      };
      let headerParams = {
      };
      let formParams = {
        'ingredientList': ingredientList,
        'servings': servings,
        'measure': opts['measure'],
        'view': opts['view'],
        'defaultCss': opts['defaultCss'],
        'showBacklink': opts['showBacklink']
      };

      let authNames = ['apiKeyScheme'];
      let contentTypes = ['application/x-www-form-urlencoded'];
      let accepts = ['text/html'];
      let returnType = 'String';
      return this.apiClient.callApi(
        '/recipes/visualizeIngredients', 'POST',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }


}
