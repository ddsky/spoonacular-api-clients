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
import AutocompleteProductSearch200Response from '../model/AutocompleteProductSearch200Response';
import MenuItem from '../model/MenuItem';
import SearchMenuItems200Response from '../model/SearchMenuItems200Response';

/**
* MenuItems service.
* @module api/MenuItemsApi
* @version 2.0.2
*/
export default class MenuItemsApi {

    /**
    * Constructs a new MenuItemsApi. 
    * @alias module:api/MenuItemsApi
    * @class
    * @param {module:ApiClient} [apiClient] Optional API client implementation to use,
    * default to {@link module:ApiClient#instance} if unspecified.
    */
    constructor(apiClient) {
        this.apiClient = apiClient || ApiClient.instance;
    }


    /**
     * Callback function to receive the result of the autocompleteMenuItemSearch operation.
     * @callback module:api/MenuItemsApi~autocompleteMenuItemSearchCallback
     * @param {String} error Error message, if any.
     * @param {module:model/AutocompleteProductSearch200Response} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Autocomplete Menu Item Search
     * Generate suggestions for menu items based on a (partial) query. The matches will be found by looking in the title only.
     * @param {String} query The (partial) search query.
     * @param {Object} opts Optional parameters
     * @param {Number} [number] The number of results to return (between 1 and 25).
     * @param {module:api/MenuItemsApi~autocompleteMenuItemSearchCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/AutocompleteProductSearch200Response}
     */
    autocompleteMenuItemSearch(query, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'query' is set
      if (query === undefined || query === null) {
        throw new Error("Missing the required parameter 'query' when calling autocompleteMenuItemSearch");
      }

      let pathParams = {
      };
      let queryParams = {
        'query': query,
        'number': opts['number']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKeyScheme'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = AutocompleteProductSearch200Response;
      return this.apiClient.callApi(
        '/food/menuItems/suggest', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the getMenuItemInformation operation.
     * @callback module:api/MenuItemsApi~getMenuItemInformationCallback
     * @param {String} error Error message, if any.
     * @param {module:model/MenuItem} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Get Menu Item Information
     * Use a menu item id to get all available information about a menu item, such as nutrition.
     * @param {Number} id The menu item id.
     * @param {module:api/MenuItemsApi~getMenuItemInformationCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/MenuItem}
     */
    getMenuItemInformation(id, callback) {
      let postBody = null;
      // verify the required parameter 'id' is set
      if (id === undefined || id === null) {
        throw new Error("Missing the required parameter 'id' when calling getMenuItemInformation");
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
      let returnType = MenuItem;
      return this.apiClient.callApi(
        '/food/menuItems/{id}', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the menuItemNutritionByIDImage operation.
     * @callback module:api/MenuItemsApi~menuItemNutritionByIDImageCallback
     * @param {String} error Error message, if any.
     * @param {File} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Menu Item Nutrition by ID Image
     * Visualize a menu item's nutritional information as HTML including CSS.
     * @param {Number} id The menu item id.
     * @param {module:api/MenuItemsApi~menuItemNutritionByIDImageCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link File}
     */
    menuItemNutritionByIDImage(id, callback) {
      let postBody = null;
      // verify the required parameter 'id' is set
      if (id === undefined || id === null) {
        throw new Error("Missing the required parameter 'id' when calling menuItemNutritionByIDImage");
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
      let accepts = ['image/png'];
      let returnType = File;
      return this.apiClient.callApi(
        '/food/menuItems/{id}/nutritionWidget.png', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the menuItemNutritionLabelImage operation.
     * @callback module:api/MenuItemsApi~menuItemNutritionLabelImageCallback
     * @param {String} error Error message, if any.
     * @param {File} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Menu Item Nutrition Label Image
     * Visualize a menu item's nutritional label information as an image.
     * @param {Number} id The menu item id.
     * @param {Object} opts Optional parameters
     * @param {Boolean} [showOptionalNutrients] Whether to show optional nutrients.
     * @param {Boolean} [showZeroValues] Whether to show zero values.
     * @param {Boolean} [showIngredients] Whether to show a list of ingredients.
     * @param {module:api/MenuItemsApi~menuItemNutritionLabelImageCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link File}
     */
    menuItemNutritionLabelImage(id, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'id' is set
      if (id === undefined || id === null) {
        throw new Error("Missing the required parameter 'id' when calling menuItemNutritionLabelImage");
      }

      let pathParams = {
        'id': id
      };
      let queryParams = {
        'showOptionalNutrients': opts['showOptionalNutrients'],
        'showZeroValues': opts['showZeroValues'],
        'showIngredients': opts['showIngredients']
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
        '/food/menuItems/{id}/nutritionLabel.png', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the menuItemNutritionLabelWidget operation.
     * @callback module:api/MenuItemsApi~menuItemNutritionLabelWidgetCallback
     * @param {String} error Error message, if any.
     * @param {String} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Menu Item Nutrition Label Widget
     * Visualize a menu item's nutritional label information as HTML including CSS.
     * @param {Number} id The menu item id.
     * @param {Object} opts Optional parameters
     * @param {Boolean} [defaultCss = true)] Whether the default CSS should be added to the response.
     * @param {Boolean} [showOptionalNutrients] Whether to show optional nutrients.
     * @param {Boolean} [showZeroValues] Whether to show zero values.
     * @param {Boolean} [showIngredients] Whether to show a list of ingredients.
     * @param {module:api/MenuItemsApi~menuItemNutritionLabelWidgetCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link String}
     */
    menuItemNutritionLabelWidget(id, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'id' is set
      if (id === undefined || id === null) {
        throw new Error("Missing the required parameter 'id' when calling menuItemNutritionLabelWidget");
      }

      let pathParams = {
        'id': id
      };
      let queryParams = {
        'defaultCss': opts['defaultCss'],
        'showOptionalNutrients': opts['showOptionalNutrients'],
        'showZeroValues': opts['showZeroValues'],
        'showIngredients': opts['showIngredients']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKeyScheme'];
      let contentTypes = [];
      let accepts = ['text/html'];
      let returnType = 'String';
      return this.apiClient.callApi(
        '/food/menuItems/{id}/nutritionLabel', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the searchMenuItems operation.
     * @callback module:api/MenuItemsApi~searchMenuItemsCallback
     * @param {String} error Error message, if any.
     * @param {module:model/SearchMenuItems200Response} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Search Menu Items
     * Search over 115,000 menu items from over 800 fast food and chain restaurants. For example, McDonald's Big Mac or Starbucks Mocha.
     * @param {String} query The (natural language) search query.
     * @param {Object} opts Optional parameters
     * @param {Number} [minCalories] The minimum amount of calories the menu item must have.
     * @param {Number} [maxCalories] The maximum amount of calories the menu item can have.
     * @param {Number} [minCarbs] The minimum amount of carbohydrates in grams the menu item must have.
     * @param {Number} [maxCarbs] The maximum amount of carbohydrates in grams the menu item can have.
     * @param {Number} [minProtein] The minimum amount of protein in grams the menu item must have.
     * @param {Number} [maxProtein] The maximum amount of protein in grams the menu item can have.
     * @param {Number} [minFat] The minimum amount of fat in grams the menu item must have.
     * @param {Number} [maxFat] The maximum amount of fat in grams the menu item can have.
     * @param {Boolean} [addMenuItemInformation] If set to true, you get more information about the menu items returned.
     * @param {Number} [offset] The number of results to skip (between 0 and 900).
     * @param {Number} [number = 10)] The maximum number of items to return (between 1 and 100). Defaults to 10.
     * @param {module:api/MenuItemsApi~searchMenuItemsCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/SearchMenuItems200Response}
     */
    searchMenuItems(query, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'query' is set
      if (query === undefined || query === null) {
        throw new Error("Missing the required parameter 'query' when calling searchMenuItems");
      }

      let pathParams = {
      };
      let queryParams = {
        'query': query,
        'minCalories': opts['minCalories'],
        'maxCalories': opts['maxCalories'],
        'minCarbs': opts['minCarbs'],
        'maxCarbs': opts['maxCarbs'],
        'minProtein': opts['minProtein'],
        'maxProtein': opts['maxProtein'],
        'minFat': opts['minFat'],
        'maxFat': opts['maxFat'],
        'addMenuItemInformation': opts['addMenuItemInformation'],
        'offset': opts['offset'],
        'number': opts['number']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKeyScheme'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = SearchMenuItems200Response;
      return this.apiClient.callApi(
        '/food/menuItems/search', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the visualizeMenuItemNutritionByID operation.
     * @callback module:api/MenuItemsApi~visualizeMenuItemNutritionByIDCallback
     * @param {String} error Error message, if any.
     * @param {String} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Menu Item Nutrition by ID Widget
     * Visualize a menu item's nutritional information as HTML including CSS.
     * @param {Number} id The menu item id.
     * @param {Object} opts Optional parameters
     * @param {Boolean} [defaultCss = true)] Whether the default CSS should be added to the response.
     * @param {module:api/MenuItemsApi~visualizeMenuItemNutritionByIDCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link String}
     */
    visualizeMenuItemNutritionByID(id, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'id' is set
      if (id === undefined || id === null) {
        throw new Error("Missing the required parameter 'id' when calling visualizeMenuItemNutritionByID");
      }

      let pathParams = {
        'id': id
      };
      let queryParams = {
        'defaultCss': opts['defaultCss']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKeyScheme'];
      let contentTypes = [];
      let accepts = ['text/html'];
      let returnType = 'String';
      return this.apiClient.callApi(
        '/food/menuItems/{id}/nutritionWidget', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }


}
