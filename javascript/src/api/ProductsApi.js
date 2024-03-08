/**
 * spoonacular API
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
 *
 * The version of the OpenAPI document: 1.1
 * Contact: mail@spoonacular.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */


import ApiClient from "../ApiClient";
import AutocompleteProductSearch200Response from '../model/AutocompleteProductSearch200Response';
import ClassifyGroceryProduct200Response from '../model/ClassifyGroceryProduct200Response';
import ClassifyGroceryProductBulk200ResponseInner from '../model/ClassifyGroceryProductBulk200ResponseInner';
import ClassifyGroceryProductBulkRequestInner from '../model/ClassifyGroceryProductBulkRequestInner';
import ClassifyGroceryProductRequest from '../model/ClassifyGroceryProductRequest';
import GetComparableProducts200Response from '../model/GetComparableProducts200Response';
import GetProductInformation200Response from '../model/GetProductInformation200Response';
import SearchGroceryProducts200Response from '../model/SearchGroceryProducts200Response';
import SearchGroceryProductsByUPC200Response from '../model/SearchGroceryProductsByUPC200Response';

/**
* Products service.
* @module api/ProductsApi
* @version 1.1
*/
export default class ProductsApi {

    /**
    * Constructs a new ProductsApi. 
    * @alias module:api/ProductsApi
    * @class
    * @param {module:ApiClient} [apiClient] Optional API client implementation to use,
    * default to {@link module:ApiClient#instance} if unspecified.
    */
    constructor(apiClient) {
        this.apiClient = apiClient || ApiClient.instance;
    }


    /**
     * Callback function to receive the result of the autocompleteProductSearch operation.
     * @callback module:api/ProductsApi~autocompleteProductSearchCallback
     * @param {String} error Error message, if any.
     * @param {module:model/AutocompleteProductSearch200Response} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Autocomplete Product Search
     * Generate suggestions for grocery products based on a (partial) query. The matches will be found by looking in the title only.
     * @param {String} query The (partial) search query.
     * @param {Object} opts Optional parameters
     * @param {Number} [number] The number of results to return (between 1 and 25).
     * @param {module:api/ProductsApi~autocompleteProductSearchCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/AutocompleteProductSearch200Response}
     */
    autocompleteProductSearch(query, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'query' is set
      if (query === undefined || query === null) {
        throw new Error("Missing the required parameter 'query' when calling autocompleteProductSearch");
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
        '/food/products/suggest', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the classifyGroceryProduct operation.
     * @callback module:api/ProductsApi~classifyGroceryProductCallback
     * @param {String} error Error message, if any.
     * @param {module:model/ClassifyGroceryProduct200Response} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Classify Grocery Product
     * This endpoint allows you to match a packaged food to a basic category, e.g. a specific brand of milk to the category milk.
     * @param {module:model/ClassifyGroceryProductRequest} classifyGroceryProductRequest 
     * @param {Object} opts Optional parameters
     * @param {module:model/String} [locale] The display name of the returned category, supported is en_US (for American English) and en_GB (for British English).
     * @param {module:api/ProductsApi~classifyGroceryProductCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/ClassifyGroceryProduct200Response}
     */
    classifyGroceryProduct(classifyGroceryProductRequest, opts, callback) {
      opts = opts || {};
      let postBody = classifyGroceryProductRequest;
      // verify the required parameter 'classifyGroceryProductRequest' is set
      if (classifyGroceryProductRequest === undefined || classifyGroceryProductRequest === null) {
        throw new Error("Missing the required parameter 'classifyGroceryProductRequest' when calling classifyGroceryProduct");
      }

      let pathParams = {
      };
      let queryParams = {
        'locale': opts['locale']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKeyScheme'];
      let contentTypes = ['application/json'];
      let accepts = ['application/json'];
      let returnType = ClassifyGroceryProduct200Response;
      return this.apiClient.callApi(
        '/food/products/classify', 'POST',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the classifyGroceryProductBulk operation.
     * @callback module:api/ProductsApi~classifyGroceryProductBulkCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/ClassifyGroceryProductBulk200ResponseInner>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Classify Grocery Product Bulk
     * Provide a set of product jsons, get back classified products.
     * @param {Array.<module:model/ClassifyGroceryProductBulkRequestInner>} classifyGroceryProductBulkRequestInner 
     * @param {Object} opts Optional parameters
     * @param {String} [locale] The display name of the returned category, supported is en_US (for American English) and en_GB (for British English).
     * @param {module:api/ProductsApi~classifyGroceryProductBulkCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/ClassifyGroceryProductBulk200ResponseInner>}
     */
    classifyGroceryProductBulk(classifyGroceryProductBulkRequestInner, opts, callback) {
      opts = opts || {};
      let postBody = classifyGroceryProductBulkRequestInner;
      // verify the required parameter 'classifyGroceryProductBulkRequestInner' is set
      if (classifyGroceryProductBulkRequestInner === undefined || classifyGroceryProductBulkRequestInner === null) {
        throw new Error("Missing the required parameter 'classifyGroceryProductBulkRequestInner' when calling classifyGroceryProductBulk");
      }

      let pathParams = {
      };
      let queryParams = {
        'locale': opts['locale']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKeyScheme'];
      let contentTypes = ['application/json'];
      let accepts = ['application/json'];
      let returnType = [ClassifyGroceryProductBulk200ResponseInner];
      return this.apiClient.callApi(
        '/food/products/classifyBatch', 'POST',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the getComparableProducts operation.
     * @callback module:api/ProductsApi~getComparableProductsCallback
     * @param {String} error Error message, if any.
     * @param {module:model/GetComparableProducts200Response} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Get Comparable Products
     * Find comparable products to the given one.
     * @param {Number} upc The UPC of the product for which you want to find comparable products.
     * @param {module:api/ProductsApi~getComparableProductsCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/GetComparableProducts200Response}
     */
    getComparableProducts(upc, callback) {
      let postBody = null;
      // verify the required parameter 'upc' is set
      if (upc === undefined || upc === null) {
        throw new Error("Missing the required parameter 'upc' when calling getComparableProducts");
      }

      let pathParams = {
        'upc': upc
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
      let returnType = GetComparableProducts200Response;
      return this.apiClient.callApi(
        '/food/products/upc/{upc}/comparable', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the getProductInformation operation.
     * @callback module:api/ProductsApi~getProductInformationCallback
     * @param {String} error Error message, if any.
     * @param {module:model/GetProductInformation200Response} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Get Product Information
     * Use a product id to get full information about a product, such as ingredients, nutrition, etc. The nutritional information is per serving.
     * @param {Number} id The item's id.
     * @param {module:api/ProductsApi~getProductInformationCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/GetProductInformation200Response}
     */
    getProductInformation(id, callback) {
      let postBody = null;
      // verify the required parameter 'id' is set
      if (id === undefined || id === null) {
        throw new Error("Missing the required parameter 'id' when calling getProductInformation");
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
      let returnType = GetProductInformation200Response;
      return this.apiClient.callApi(
        '/food/products/{id}', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the productNutritionByIDImage operation.
     * @callback module:api/ProductsApi~productNutritionByIDImageCallback
     * @param {String} error Error message, if any.
     * @param {Object} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Product Nutrition by ID Image
     * Visualize a product's nutritional information as an image.
     * @param {Number} id The id of the product.
     * @param {module:api/ProductsApi~productNutritionByIDImageCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Object}
     */
    productNutritionByIDImage(id, callback) {
      let postBody = null;
      // verify the required parameter 'id' is set
      if (id === undefined || id === null) {
        throw new Error("Missing the required parameter 'id' when calling productNutritionByIDImage");
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
      let returnType = Object;
      return this.apiClient.callApi(
        '/food/products/{id}/nutritionWidget.png', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the productNutritionLabelImage operation.
     * @callback module:api/ProductsApi~productNutritionLabelImageCallback
     * @param {String} error Error message, if any.
     * @param {Object} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Product Nutrition Label Image
     * Get a product's nutrition label as an image.
     * @param {Number} id The product id.
     * @param {Object} opts Optional parameters
     * @param {Boolean} [showOptionalNutrients] Whether to show optional nutrients.
     * @param {Boolean} [showZeroValues] Whether to show zero values.
     * @param {Boolean} [showIngredients] Whether to show a list of ingredients.
     * @param {module:api/ProductsApi~productNutritionLabelImageCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Object}
     */
    productNutritionLabelImage(id, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'id' is set
      if (id === undefined || id === null) {
        throw new Error("Missing the required parameter 'id' when calling productNutritionLabelImage");
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
      let returnType = Object;
      return this.apiClient.callApi(
        '/food/products/{id}/nutritionLabel.png', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the productNutritionLabelWidget operation.
     * @callback module:api/ProductsApi~productNutritionLabelWidgetCallback
     * @param {String} error Error message, if any.
     * @param {String} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Product Nutrition Label Widget
     * Get a product's nutrition label as an HTML widget.
     * @param {Number} id The product id.
     * @param {Object} opts Optional parameters
     * @param {Boolean} [defaultCss = true)] Whether the default CSS should be added to the response.
     * @param {Boolean} [showOptionalNutrients] Whether to show optional nutrients.
     * @param {Boolean} [showZeroValues] Whether to show zero values.
     * @param {Boolean} [showIngredients] Whether to show a list of ingredients.
     * @param {module:api/ProductsApi~productNutritionLabelWidgetCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link String}
     */
    productNutritionLabelWidget(id, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'id' is set
      if (id === undefined || id === null) {
        throw new Error("Missing the required parameter 'id' when calling productNutritionLabelWidget");
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
        '/food/products/{id}/nutritionLabel', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the searchGroceryProducts operation.
     * @callback module:api/ProductsApi~searchGroceryProductsCallback
     * @param {String} error Error message, if any.
     * @param {module:model/SearchGroceryProducts200Response} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Search Grocery Products
     * Search packaged food products, such as frozen pizza or Greek yogurt.
     * @param {Object} opts Optional parameters
     * @param {String} [query] The (natural language) search query.
     * @param {Number} [minCalories] The minimum amount of calories the product must have.
     * @param {Number} [maxCalories] The maximum amount of calories the product can have.
     * @param {Number} [minCarbs] The minimum amount of carbohydrates in grams the product must have.
     * @param {Number} [maxCarbs] The maximum amount of carbohydrates in grams the product can have.
     * @param {Number} [minProtein] The minimum amount of protein in grams the product must have.
     * @param {Number} [maxProtein] The maximum amount of protein in grams the product can have.
     * @param {Number} [minFat] The minimum amount of fat in grams the product must have.
     * @param {Number} [maxFat] The maximum amount of fat in grams the product can have.
     * @param {Boolean} [addProductInformation] If set to true, you get more information about the products returned.
     * @param {Number} [offset] The number of results to skip (between 0 and 900).
     * @param {Number} [number = 10)] The maximum number of items to return (between 1 and 100). Defaults to 10.
     * @param {module:api/ProductsApi~searchGroceryProductsCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/SearchGroceryProducts200Response}
     */
    searchGroceryProducts(opts, callback) {
      opts = opts || {};
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
        'query': opts['query'],
        'minCalories': opts['minCalories'],
        'maxCalories': opts['maxCalories'],
        'minCarbs': opts['minCarbs'],
        'maxCarbs': opts['maxCarbs'],
        'minProtein': opts['minProtein'],
        'maxProtein': opts['maxProtein'],
        'minFat': opts['minFat'],
        'maxFat': opts['maxFat'],
        'addProductInformation': opts['addProductInformation'],
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
      let returnType = SearchGroceryProducts200Response;
      return this.apiClient.callApi(
        '/food/products/search', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the searchGroceryProductsByUPC operation.
     * @callback module:api/ProductsApi~searchGroceryProductsByUPCCallback
     * @param {String} error Error message, if any.
     * @param {module:model/SearchGroceryProductsByUPC200Response} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Search Grocery Products by UPC
     * Get information about a packaged food using its UPC.
     * @param {Number} upc The product's UPC.
     * @param {module:api/ProductsApi~searchGroceryProductsByUPCCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/SearchGroceryProductsByUPC200Response}
     */
    searchGroceryProductsByUPC(upc, callback) {
      let postBody = null;
      // verify the required parameter 'upc' is set
      if (upc === undefined || upc === null) {
        throw new Error("Missing the required parameter 'upc' when calling searchGroceryProductsByUPC");
      }

      let pathParams = {
        'upc': upc
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
      let returnType = SearchGroceryProductsByUPC200Response;
      return this.apiClient.callApi(
        '/food/products/upc/{upc}', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the visualizeProductNutritionByID operation.
     * @callback module:api/ProductsApi~visualizeProductNutritionByIDCallback
     * @param {String} error Error message, if any.
     * @param {String} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Product Nutrition by ID Widget
     * Visualize a product's nutritional information as HTML including CSS.
     * @param {Number} id The item's id.
     * @param {Object} opts Optional parameters
     * @param {Boolean} [defaultCss = true)] Whether the default CSS should be added to the response.
     * @param {module:model/String} [accept] Accept header.
     * @param {module:api/ProductsApi~visualizeProductNutritionByIDCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link String}
     */
    visualizeProductNutritionByID(id, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'id' is set
      if (id === undefined || id === null) {
        throw new Error("Missing the required parameter 'id' when calling visualizeProductNutritionByID");
      }

      let pathParams = {
        'id': id
      };
      let queryParams = {
        'defaultCss': opts['defaultCss']
      };
      let headerParams = {
        'Accept': opts['accept']
      };
      let formParams = {
      };

      let authNames = ['apiKeyScheme'];
      let contentTypes = [];
      let accepts = ['text/html'];
      let returnType = 'String';
      return this.apiClient.callApi(
        '/food/products/{id}/nutritionWidget', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }


}
