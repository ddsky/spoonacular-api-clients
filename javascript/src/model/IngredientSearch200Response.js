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
import IngredientSearch200ResponseResultsInner from './IngredientSearch200ResponseResultsInner';

/**
 * The IngredientSearch200Response model module.
 * @module model/IngredientSearch200Response
 * @version 2.0.2
 */
class IngredientSearch200Response {
    /**
     * Constructs a new <code>IngredientSearch200Response</code>.
     * 
     * @alias module:model/IngredientSearch200Response
     * @param results {Array.<module:model/IngredientSearch200ResponseResultsInner>} 
     * @param offset {Number} 
     * @param number {Number} 
     * @param totalResults {Number} 
     */
    constructor(results, offset, number, totalResults) { 
        
        IngredientSearch200Response.initialize(this, results, offset, number, totalResults);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, results, offset, number, totalResults) { 
        obj['results'] = results;
        obj['offset'] = offset;
        obj['number'] = number;
        obj['totalResults'] = totalResults;
    }

    /**
     * Constructs a <code>IngredientSearch200Response</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/IngredientSearch200Response} obj Optional instance to populate.
     * @return {module:model/IngredientSearch200Response} The populated <code>IngredientSearch200Response</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new IngredientSearch200Response();

            if (data.hasOwnProperty('results')) {
                obj['results'] = ApiClient.convertToType(data['results'], [IngredientSearch200ResponseResultsInner]);
            }
            if (data.hasOwnProperty('offset')) {
                obj['offset'] = ApiClient.convertToType(data['offset'], 'Number');
            }
            if (data.hasOwnProperty('number')) {
                obj['number'] = ApiClient.convertToType(data['number'], 'Number');
            }
            if (data.hasOwnProperty('totalResults')) {
                obj['totalResults'] = ApiClient.convertToType(data['totalResults'], 'Number');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>IngredientSearch200Response</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>IngredientSearch200Response</code>.
     */
    static validateJSON(data) {
        // check to make sure all required properties are present in the JSON string
        for (const property of IngredientSearch200Response.RequiredProperties) {
            if (!data.hasOwnProperty(property)) {
                throw new Error("The required field `" + property + "` is not found in the JSON data: " + JSON.stringify(data));
            }
        }
        if (data['results']) { // data not null
            // ensure the json data is an array
            if (!Array.isArray(data['results'])) {
                throw new Error("Expected the field `results` to be an array in the JSON data but got " + data['results']);
            }
            // validate the optional field `results` (array)
            for (const item of data['results']) {
                IngredientSearch200ResponseResultsInner.validateJSON(item);
            };
        }

        return true;
    }


}

IngredientSearch200Response.RequiredProperties = ["results", "offset", "number", "totalResults"];

/**
 * @member {Array.<module:model/IngredientSearch200ResponseResultsInner>} results
 */
IngredientSearch200Response.prototype['results'] = undefined;

/**
 * @member {Number} offset
 */
IngredientSearch200Response.prototype['offset'] = undefined;

/**
 * @member {Number} number
 */
IngredientSearch200Response.prototype['number'] = undefined;

/**
 * @member {Number} totalResults
 */
IngredientSearch200Response.prototype['totalResults'] = undefined;






export default IngredientSearch200Response;

