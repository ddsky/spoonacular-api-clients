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

import ApiClient from '../ApiClient';

/**
 * The DeleteFromMealPlanRequest model module.
 * @module model/DeleteFromMealPlanRequest
 * @version 1.1
 */
class DeleteFromMealPlanRequest {
    /**
     * Constructs a new <code>DeleteFromMealPlanRequest</code>.
     * @alias module:model/DeleteFromMealPlanRequest
     * @param username {String} The username.
     * @param id {Number} The shopping list item id.
     * @param hash {String} The private hash for the username.
     */
    constructor(username, id, hash) { 
        
        DeleteFromMealPlanRequest.initialize(this, username, id, hash);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, username, id, hash) { 
        obj['username'] = username;
        obj['id'] = id;
        obj['hash'] = hash;
    }

    /**
     * Constructs a <code>DeleteFromMealPlanRequest</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/DeleteFromMealPlanRequest} obj Optional instance to populate.
     * @return {module:model/DeleteFromMealPlanRequest} The populated <code>DeleteFromMealPlanRequest</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new DeleteFromMealPlanRequest();

            if (data.hasOwnProperty('username')) {
                obj['username'] = ApiClient.convertToType(data['username'], 'String');
            }
            if (data.hasOwnProperty('id')) {
                obj['id'] = ApiClient.convertToType(data['id'], 'Number');
            }
            if (data.hasOwnProperty('hash')) {
                obj['hash'] = ApiClient.convertToType(data['hash'], 'String');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>DeleteFromMealPlanRequest</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>DeleteFromMealPlanRequest</code>.
     */
    static validateJSON(data) {
        // check to make sure all required properties are present in the JSON string
        for (const property of DeleteFromMealPlanRequest.RequiredProperties) {
            if (!data.hasOwnProperty(property)) {
                throw new Error("The required field `" + property + "` is not found in the JSON data: " + JSON.stringify(data));
            }
        }
        // ensure the json data is a string
        if (data['username'] && !(typeof data['username'] === 'string' || data['username'] instanceof String)) {
            throw new Error("Expected the field `username` to be a primitive type in the JSON string but got " + data['username']);
        }
        // ensure the json data is a string
        if (data['hash'] && !(typeof data['hash'] === 'string' || data['hash'] instanceof String)) {
            throw new Error("Expected the field `hash` to be a primitive type in the JSON string but got " + data['hash']);
        }

        return true;
    }


}

DeleteFromMealPlanRequest.RequiredProperties = ["username", "id", "hash"];

/**
 * The username.
 * @member {String} username
 */
DeleteFromMealPlanRequest.prototype['username'] = undefined;

/**
 * The shopping list item id.
 * @member {Number} id
 */
DeleteFromMealPlanRequest.prototype['id'] = undefined;

/**
 * The private hash for the username.
 * @member {String} hash
 */
DeleteFromMealPlanRequest.prototype['hash'] = undefined;






export default DeleteFromMealPlanRequest;
