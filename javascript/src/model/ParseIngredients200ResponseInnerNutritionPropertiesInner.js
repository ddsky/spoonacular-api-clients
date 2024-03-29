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
 * The ParseIngredients200ResponseInnerNutritionPropertiesInner model module.
 * @module model/ParseIngredients200ResponseInnerNutritionPropertiesInner
 * @version 1.1
 */
class ParseIngredients200ResponseInnerNutritionPropertiesInner {
    /**
     * Constructs a new <code>ParseIngredients200ResponseInnerNutritionPropertiesInner</code>.
     * @alias module:model/ParseIngredients200ResponseInnerNutritionPropertiesInner
     * @param name {String} 
     * @param amount {Number} 
     * @param unit {String} 
     */
    constructor(name, amount, unit) { 
        
        ParseIngredients200ResponseInnerNutritionPropertiesInner.initialize(this, name, amount, unit);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, name, amount, unit) { 
        obj['name'] = name;
        obj['amount'] = amount;
        obj['unit'] = unit;
    }

    /**
     * Constructs a <code>ParseIngredients200ResponseInnerNutritionPropertiesInner</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ParseIngredients200ResponseInnerNutritionPropertiesInner} obj Optional instance to populate.
     * @return {module:model/ParseIngredients200ResponseInnerNutritionPropertiesInner} The populated <code>ParseIngredients200ResponseInnerNutritionPropertiesInner</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ParseIngredients200ResponseInnerNutritionPropertiesInner();

            if (data.hasOwnProperty('name')) {
                obj['name'] = ApiClient.convertToType(data['name'], 'String');
            }
            if (data.hasOwnProperty('amount')) {
                obj['amount'] = ApiClient.convertToType(data['amount'], 'Number');
            }
            if (data.hasOwnProperty('unit')) {
                obj['unit'] = ApiClient.convertToType(data['unit'], 'String');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>ParseIngredients200ResponseInnerNutritionPropertiesInner</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>ParseIngredients200ResponseInnerNutritionPropertiesInner</code>.
     */
    static validateJSON(data) {
        // check to make sure all required properties are present in the JSON string
        for (const property of ParseIngredients200ResponseInnerNutritionPropertiesInner.RequiredProperties) {
            if (!data.hasOwnProperty(property)) {
                throw new Error("The required field `" + property + "` is not found in the JSON data: " + JSON.stringify(data));
            }
        }
        // ensure the json data is a string
        if (data['name'] && !(typeof data['name'] === 'string' || data['name'] instanceof String)) {
            throw new Error("Expected the field `name` to be a primitive type in the JSON string but got " + data['name']);
        }
        // ensure the json data is a string
        if (data['unit'] && !(typeof data['unit'] === 'string' || data['unit'] instanceof String)) {
            throw new Error("Expected the field `unit` to be a primitive type in the JSON string but got " + data['unit']);
        }

        return true;
    }


}

ParseIngredients200ResponseInnerNutritionPropertiesInner.RequiredProperties = ["name", "amount", "unit"];

/**
 * @member {String} name
 */
ParseIngredients200ResponseInnerNutritionPropertiesInner.prototype['name'] = undefined;

/**
 * @member {Number} amount
 */
ParseIngredients200ResponseInnerNutritionPropertiesInner.prototype['amount'] = undefined;

/**
 * @member {String} unit
 */
ParseIngredients200ResponseInnerNutritionPropertiesInner.prototype['unit'] = undefined;






export default ParseIngredients200ResponseInnerNutritionPropertiesInner;

