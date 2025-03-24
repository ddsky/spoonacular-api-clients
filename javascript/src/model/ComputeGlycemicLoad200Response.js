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
import ComputeGlycemicLoad200ResponseIngredientsInner from './ComputeGlycemicLoad200ResponseIngredientsInner';

/**
 * The ComputeGlycemicLoad200Response model module.
 * @module model/ComputeGlycemicLoad200Response
 * @version 2.0.2
 */
class ComputeGlycemicLoad200Response {
    /**
     * Constructs a new <code>ComputeGlycemicLoad200Response</code>.
     * 
     * @alias module:model/ComputeGlycemicLoad200Response
     * @param totalGlycemicLoad {Number} 
     * @param ingredients {Array.<module:model/ComputeGlycemicLoad200ResponseIngredientsInner>} 
     */
    constructor(totalGlycemicLoad, ingredients) { 
        
        ComputeGlycemicLoad200Response.initialize(this, totalGlycemicLoad, ingredients);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, totalGlycemicLoad, ingredients) { 
        obj['totalGlycemicLoad'] = totalGlycemicLoad;
        obj['ingredients'] = ingredients;
    }

    /**
     * Constructs a <code>ComputeGlycemicLoad200Response</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ComputeGlycemicLoad200Response} obj Optional instance to populate.
     * @return {module:model/ComputeGlycemicLoad200Response} The populated <code>ComputeGlycemicLoad200Response</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ComputeGlycemicLoad200Response();

            if (data.hasOwnProperty('totalGlycemicLoad')) {
                obj['totalGlycemicLoad'] = ApiClient.convertToType(data['totalGlycemicLoad'], 'Number');
            }
            if (data.hasOwnProperty('ingredients')) {
                obj['ingredients'] = ApiClient.convertToType(data['ingredients'], [ComputeGlycemicLoad200ResponseIngredientsInner]);
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>ComputeGlycemicLoad200Response</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>ComputeGlycemicLoad200Response</code>.
     */
    static validateJSON(data) {
        // check to make sure all required properties are present in the JSON string
        for (const property of ComputeGlycemicLoad200Response.RequiredProperties) {
            if (!data.hasOwnProperty(property)) {
                throw new Error("The required field `" + property + "` is not found in the JSON data: " + JSON.stringify(data));
            }
        }
        if (data['ingredients']) { // data not null
            // ensure the json data is an array
            if (!Array.isArray(data['ingredients'])) {
                throw new Error("Expected the field `ingredients` to be an array in the JSON data but got " + data['ingredients']);
            }
            // validate the optional field `ingredients` (array)
            for (const item of data['ingredients']) {
                ComputeGlycemicLoad200ResponseIngredientsInner.validateJSON(item);
            };
        }

        return true;
    }


}

ComputeGlycemicLoad200Response.RequiredProperties = ["totalGlycemicLoad", "ingredients"];

/**
 * @member {Number} totalGlycemicLoad
 */
ComputeGlycemicLoad200Response.prototype['totalGlycemicLoad'] = undefined;

/**
 * @member {Array.<module:model/ComputeGlycemicLoad200ResponseIngredientsInner>} ingredients
 */
ComputeGlycemicLoad200Response.prototype['ingredients'] = undefined;






export default ComputeGlycemicLoad200Response;

