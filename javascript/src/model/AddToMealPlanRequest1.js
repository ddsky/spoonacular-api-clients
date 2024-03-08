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
import AddToMealPlanRequest1Value from './AddToMealPlanRequest1Value';

/**
 * The AddToMealPlanRequest1 model module.
 * @module model/AddToMealPlanRequest1
 * @version 1.1
 */
class AddToMealPlanRequest1 {
    /**
     * Constructs a new <code>AddToMealPlanRequest1</code>.
     * 
     * @alias module:model/AddToMealPlanRequest1
     * @param date {Number} 
     * @param slot {Number} 
     * @param position {Number} 
     * @param type {String} 
     * @param value {module:model/AddToMealPlanRequest1Value} 
     */
    constructor(date, slot, position, type, value) { 
        
        AddToMealPlanRequest1.initialize(this, date, slot, position, type, value);
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
     * Constructs a <code>AddToMealPlanRequest1</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/AddToMealPlanRequest1} obj Optional instance to populate.
     * @return {module:model/AddToMealPlanRequest1} The populated <code>AddToMealPlanRequest1</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new AddToMealPlanRequest1();

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
                obj['value'] = AddToMealPlanRequest1Value.constructFromObject(data['value']);
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>AddToMealPlanRequest1</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>AddToMealPlanRequest1</code>.
     */
    static validateJSON(data) {
        // check to make sure all required properties are present in the JSON string
        for (const property of AddToMealPlanRequest1.RequiredProperties) {
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
          AddToMealPlanRequest1Value.validateJSON(data['value']);
        }

        return true;
    }


}

AddToMealPlanRequest1.RequiredProperties = ["date", "slot", "position", "type", "value"];

/**
 * @member {Number} date
 */
AddToMealPlanRequest1.prototype['date'] = undefined;

/**
 * @member {Number} slot
 */
AddToMealPlanRequest1.prototype['slot'] = undefined;

/**
 * @member {Number} position
 */
AddToMealPlanRequest1.prototype['position'] = undefined;

/**
 * @member {String} type
 */
AddToMealPlanRequest1.prototype['type'] = undefined;

/**
 * @member {module:model/AddToMealPlanRequest1Value} value
 */
AddToMealPlanRequest1.prototype['value'] = undefined;






export default AddToMealPlanRequest1;

