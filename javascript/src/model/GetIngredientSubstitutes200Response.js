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

/**
 * The GetIngredientSubstitutes200Response model module.
 * @module model/GetIngredientSubstitutes200Response
 * @version 2.0.2
 */
class GetIngredientSubstitutes200Response {
    /**
     * Constructs a new <code>GetIngredientSubstitutes200Response</code>.
     * 
     * @alias module:model/GetIngredientSubstitutes200Response
     * @param ingredient {String} 
     * @param substitutes {Array.<String>} 
     * @param message {String} 
     */
    constructor(ingredient, substitutes, message) { 
        
        GetIngredientSubstitutes200Response.initialize(this, ingredient, substitutes, message);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, ingredient, substitutes, message) { 
        obj['ingredient'] = ingredient;
        obj['substitutes'] = substitutes;
        obj['message'] = message;
    }

    /**
     * Constructs a <code>GetIngredientSubstitutes200Response</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/GetIngredientSubstitutes200Response} obj Optional instance to populate.
     * @return {module:model/GetIngredientSubstitutes200Response} The populated <code>GetIngredientSubstitutes200Response</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new GetIngredientSubstitutes200Response();

            if (data.hasOwnProperty('ingredient')) {
                obj['ingredient'] = ApiClient.convertToType(data['ingredient'], 'String');
            }
            if (data.hasOwnProperty('substitutes')) {
                obj['substitutes'] = ApiClient.convertToType(data['substitutes'], ['String']);
            }
            if (data.hasOwnProperty('message')) {
                obj['message'] = ApiClient.convertToType(data['message'], 'String');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>GetIngredientSubstitutes200Response</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>GetIngredientSubstitutes200Response</code>.
     */
    static validateJSON(data) {
        // check to make sure all required properties are present in the JSON string
        for (const property of GetIngredientSubstitutes200Response.RequiredProperties) {
            if (!data.hasOwnProperty(property)) {
                throw new Error("The required field `" + property + "` is not found in the JSON data: " + JSON.stringify(data));
            }
        }
        // ensure the json data is a string
        if (data['ingredient'] && !(typeof data['ingredient'] === 'string' || data['ingredient'] instanceof String)) {
            throw new Error("Expected the field `ingredient` to be a primitive type in the JSON string but got " + data['ingredient']);
        }
        // ensure the json data is an array
        if (!Array.isArray(data['substitutes'])) {
            throw new Error("Expected the field `substitutes` to be an array in the JSON data but got " + data['substitutes']);
        }
        // ensure the json data is a string
        if (data['message'] && !(typeof data['message'] === 'string' || data['message'] instanceof String)) {
            throw new Error("Expected the field `message` to be a primitive type in the JSON string but got " + data['message']);
        }

        return true;
    }


}

GetIngredientSubstitutes200Response.RequiredProperties = ["ingredient", "substitutes", "message"];

/**
 * @member {String} ingredient
 */
GetIngredientSubstitutes200Response.prototype['ingredient'] = undefined;

/**
 * @member {Array.<String>} substitutes
 */
GetIngredientSubstitutes200Response.prototype['substitutes'] = undefined;

/**
 * @member {String} message
 */
GetIngredientSubstitutes200Response.prototype['message'] = undefined;






export default GetIngredientSubstitutes200Response;

