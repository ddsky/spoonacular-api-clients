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

import ApiClient from '../ApiClient';
import SearchAllFood200ResponseSearchResultsInner from './SearchAllFood200ResponseSearchResultsInner';

/**
 * The SearchAllFood200Response model module.
 * @module model/SearchAllFood200Response
 * @version 2.0.2
 */
class SearchAllFood200Response {
    /**
     * Constructs a new <code>SearchAllFood200Response</code>.
     * 
     * @alias module:model/SearchAllFood200Response
     * @param query {String} 
     * @param totalResults {Number} 
     * @param limit {Number} 
     * @param offset {Number} 
     * @param searchResults {Array.<module:model/SearchAllFood200ResponseSearchResultsInner>} 
     */
    constructor(query, totalResults, limit, offset, searchResults) { 
        
        SearchAllFood200Response.initialize(this, query, totalResults, limit, offset, searchResults);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, query, totalResults, limit, offset, searchResults) { 
        obj['query'] = query;
        obj['totalResults'] = totalResults;
        obj['limit'] = limit;
        obj['offset'] = offset;
        obj['searchResults'] = searchResults;
    }

    /**
     * Constructs a <code>SearchAllFood200Response</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/SearchAllFood200Response} obj Optional instance to populate.
     * @return {module:model/SearchAllFood200Response} The populated <code>SearchAllFood200Response</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new SearchAllFood200Response();

            if (data.hasOwnProperty('query')) {
                obj['query'] = ApiClient.convertToType(data['query'], 'String');
            }
            if (data.hasOwnProperty('totalResults')) {
                obj['totalResults'] = ApiClient.convertToType(data['totalResults'], 'Number');
            }
            if (data.hasOwnProperty('limit')) {
                obj['limit'] = ApiClient.convertToType(data['limit'], 'Number');
            }
            if (data.hasOwnProperty('offset')) {
                obj['offset'] = ApiClient.convertToType(data['offset'], 'Number');
            }
            if (data.hasOwnProperty('searchResults')) {
                obj['searchResults'] = ApiClient.convertToType(data['searchResults'], [SearchAllFood200ResponseSearchResultsInner]);
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>SearchAllFood200Response</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>SearchAllFood200Response</code>.
     */
    static validateJSON(data) {
        // check to make sure all required properties are present in the JSON string
        for (const property of SearchAllFood200Response.RequiredProperties) {
            if (!data.hasOwnProperty(property)) {
                throw new Error("The required field `" + property + "` is not found in the JSON data: " + JSON.stringify(data));
            }
        }
        // ensure the json data is a string
        if (data['query'] && !(typeof data['query'] === 'string' || data['query'] instanceof String)) {
            throw new Error("Expected the field `query` to be a primitive type in the JSON string but got " + data['query']);
        }
        if (data['searchResults']) { // data not null
            // ensure the json data is an array
            if (!Array.isArray(data['searchResults'])) {
                throw new Error("Expected the field `searchResults` to be an array in the JSON data but got " + data['searchResults']);
            }
            // validate the optional field `searchResults` (array)
            for (const item of data['searchResults']) {
                SearchAllFood200ResponseSearchResultsInner.validateJSON(item);
            };
        }

        return true;
    }


}

SearchAllFood200Response.RequiredProperties = ["query", "totalResults", "limit", "offset", "searchResults"];

/**
 * @member {String} query
 */
SearchAllFood200Response.prototype['query'] = undefined;

/**
 * @member {Number} totalResults
 */
SearchAllFood200Response.prototype['totalResults'] = undefined;

/**
 * @member {Number} limit
 */
SearchAllFood200Response.prototype['limit'] = undefined;

/**
 * @member {Number} offset
 */
SearchAllFood200Response.prototype['offset'] = undefined;

/**
 * @member {Array.<module:model/SearchAllFood200ResponseSearchResultsInner>} searchResults
 */
SearchAllFood200Response.prototype['searchResults'] = undefined;






export default SearchAllFood200Response;

