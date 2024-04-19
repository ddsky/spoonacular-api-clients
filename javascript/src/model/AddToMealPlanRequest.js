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
import AddToMealPlanRequestValue from './AddToMealPlanRequestValue';

/**
 * The AddToMealPlanRequest model module.
 * @module model/AddToMealPlanRequest
 * @version 1.1
 */
class AddToMealPlanRequest {
    /**
     * Constructs a new <code>AddToMealPlanRequest</code>.
     * 
     * @alias module:model/AddToMealPlanRequest
     * @param date {Number} 
     * @param slot {Number} 
     * @param position {Number} 
     * @param type {String} 
     * @param value {module:model/AddToMealPlanRequestValue} 
     */
    constructor(date, slot, position, type, value) { 
        
        AddToMealPlanRequest.initialize(this, date, slot, position, type, value);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, date, slot, position, type, value) { 
        obj['date'] = date;
        obj['slot'] = slot;
        obj['position'] = position;
        obj['type'] = type;
        obj['value'] = value;
    }

    /**
     * Constructs a <code>AddToMealPlanRequest</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/AddToMealPlanRequest} obj Optional instance to populate.
     * @return {module:model/AddToMealPlanRequest} The populated <code>AddToMealPlanRequest</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new AddToMealPlanRequest();

            if (data.hasOwnProperty('date')) {
                obj['date'] = ApiClient.convertToType(data['date'], 'Number');
            }
            if (data.hasOwnProperty('slot')) {
                obj['slot'] = ApiClient.convertToType(data['slot'], 'Number');
            }
            if (data.hasOwnProperty('position')) {
                obj['position'] = ApiClient.convertToType(data['position'], 'Number');
            }
            if (data.hasOwnProperty('type')) {
                obj['type'] = ApiClient.convertToType(data['type'], 'String');
            }
            if (data.hasOwnProperty('value')) {
                obj['value'] = AddToMealPlanRequestValue.constructFromObject(data['value']);
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>AddToMealPlanRequest</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>AddToMealPlanRequest</code>.
     */
    static validateJSON(data) {
        // check to make sure all required properties are present in the JSON string
        for (const property of AddToMealPlanRequest.RequiredProperties) {
            if (!data.hasOwnProperty(property)) {
                throw new Error("The required field `" + property + "` is not found in the JSON data: " + JSON.stringify(data));
            }
        }
        // ensure the json data is a string
        if (data['type'] && !(typeof data['type'] === 'string' || data['type'] instanceof String)) {
            throw new Error("Expected the field `type` to be a primitive type in the JSON string but got " + data['type']);
        }
        // validate the optional field `value`
        if (data['value']) { // data not null
          AddToMealPlanRequestValue.validateJSON(data['value']);
        }

        return true;
    }


}

AddToMealPlanRequest.RequiredProperties = ["date", "slot", "position", "type", "value"];

/**
 * @member {Number} date
 */
AddToMealPlanRequest.prototype['date'] = undefined;

/**
 * @member {Number} slot
 */
AddToMealPlanRequest.prototype['slot'] = undefined;

/**
 * @member {Number} position
 */
AddToMealPlanRequest.prototype['position'] = undefined;

/**
 * @member {String} type
 */
AddToMealPlanRequest.prototype['type'] = undefined;

/**
 * @member {module:model/AddToMealPlanRequestValue} value
 */
AddToMealPlanRequest.prototype['value'] = undefined;






export default AddToMealPlanRequest;

