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
import GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent from './GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent';

/**
 * The GuessNutritionByDishName200ResponseCalories model module.
 * @module model/GuessNutritionByDishName200ResponseCalories
 * @version 2.0.2
 */
class GuessNutritionByDishName200ResponseCalories {
    /**
     * Constructs a new <code>GuessNutritionByDishName200ResponseCalories</code>.
     * @alias module:model/GuessNutritionByDishName200ResponseCalories
     * @param confidenceRange95Percent {module:model/GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent} 
     * @param standardDeviation {Number} 
     * @param unit {String} 
     * @param value {Number} 
     */
    constructor(confidenceRange95Percent, standardDeviation, unit, value) { 
        
        GuessNutritionByDishName200ResponseCalories.initialize(this, confidenceRange95Percent, standardDeviation, unit, value);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, confidenceRange95Percent, standardDeviation, unit, value) { 
        obj['confidenceRange95Percent'] = confidenceRange95Percent;
        obj['standardDeviation'] = standardDeviation;
        obj['unit'] = unit;
        obj['value'] = value;
    }

    /**
     * Constructs a <code>GuessNutritionByDishName200ResponseCalories</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/GuessNutritionByDishName200ResponseCalories} obj Optional instance to populate.
     * @return {module:model/GuessNutritionByDishName200ResponseCalories} The populated <code>GuessNutritionByDishName200ResponseCalories</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new GuessNutritionByDishName200ResponseCalories();

            if (data.hasOwnProperty('confidenceRange95Percent')) {
                obj['confidenceRange95Percent'] = GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent.constructFromObject(data['confidenceRange95Percent']);
            }
            if (data.hasOwnProperty('standardDeviation')) {
                obj['standardDeviation'] = ApiClient.convertToType(data['standardDeviation'], 'Number');
            }
            if (data.hasOwnProperty('unit')) {
                obj['unit'] = ApiClient.convertToType(data['unit'], 'String');
            }
            if (data.hasOwnProperty('value')) {
                obj['value'] = ApiClient.convertToType(data['value'], 'Number');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>GuessNutritionByDishName200ResponseCalories</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>GuessNutritionByDishName200ResponseCalories</code>.
     */
    static validateJSON(data) {
        // check to make sure all required properties are present in the JSON string
        for (const property of GuessNutritionByDishName200ResponseCalories.RequiredProperties) {
            if (!data.hasOwnProperty(property)) {
                throw new Error("The required field `" + property + "` is not found in the JSON data: " + JSON.stringify(data));
            }
        }
        // validate the optional field `confidenceRange95Percent`
        if (data['confidenceRange95Percent']) { // data not null
          GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent.validateJSON(data['confidenceRange95Percent']);
        }
        // ensure the json data is a string
        if (data['unit'] && !(typeof data['unit'] === 'string' || data['unit'] instanceof String)) {
            throw new Error("Expected the field `unit` to be a primitive type in the JSON string but got " + data['unit']);
        }

        return true;
    }


}

GuessNutritionByDishName200ResponseCalories.RequiredProperties = ["confidenceRange95Percent", "standardDeviation", "unit", "value"];

/**
 * @member {module:model/GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent} confidenceRange95Percent
 */
GuessNutritionByDishName200ResponseCalories.prototype['confidenceRange95Percent'] = undefined;

/**
 * @member {Number} standardDeviation
 */
GuessNutritionByDishName200ResponseCalories.prototype['standardDeviation'] = undefined;

/**
 * @member {String} unit
 */
GuessNutritionByDishName200ResponseCalories.prototype['unit'] = undefined;

/**
 * @member {Number} value
 */
GuessNutritionByDishName200ResponseCalories.prototype['value'] = undefined;






export default GuessNutritionByDishName200ResponseCalories;

