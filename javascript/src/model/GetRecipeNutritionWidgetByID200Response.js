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
import GetRecipeNutritionWidgetByID200ResponseBadInner from './GetRecipeNutritionWidgetByID200ResponseBadInner';
import GetRecipeNutritionWidgetByID200ResponseGoodInner from './GetRecipeNutritionWidgetByID200ResponseGoodInner';

/**
 * The GetRecipeNutritionWidgetByID200Response model module.
 * @module model/GetRecipeNutritionWidgetByID200Response
 * @version 2.0.2
 */
class GetRecipeNutritionWidgetByID200Response {
    /**
     * Constructs a new <code>GetRecipeNutritionWidgetByID200Response</code>.
     * 
     * @alias module:model/GetRecipeNutritionWidgetByID200Response
     * @param calories {String} 
     * @param carbs {String} 
     * @param fat {String} 
     * @param protein {String} 
     * @param bad {Array.<module:model/GetRecipeNutritionWidgetByID200ResponseBadInner>} 
     * @param good {Array.<module:model/GetRecipeNutritionWidgetByID200ResponseGoodInner>} 
     */
    constructor(calories, carbs, fat, protein, bad, good) { 
        
        GetRecipeNutritionWidgetByID200Response.initialize(this, calories, carbs, fat, protein, bad, good);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, calories, carbs, fat, protein, bad, good) { 
        obj['calories'] = calories;
        obj['carbs'] = carbs;
        obj['fat'] = fat;
        obj['protein'] = protein;
        obj['bad'] = bad;
        obj['good'] = good;
    }

    /**
     * Constructs a <code>GetRecipeNutritionWidgetByID200Response</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/GetRecipeNutritionWidgetByID200Response} obj Optional instance to populate.
     * @return {module:model/GetRecipeNutritionWidgetByID200Response} The populated <code>GetRecipeNutritionWidgetByID200Response</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new GetRecipeNutritionWidgetByID200Response();

            if (data.hasOwnProperty('calories')) {
                obj['calories'] = ApiClient.convertToType(data['calories'], 'String');
            }
            if (data.hasOwnProperty('carbs')) {
                obj['carbs'] = ApiClient.convertToType(data['carbs'], 'String');
            }
            if (data.hasOwnProperty('fat')) {
                obj['fat'] = ApiClient.convertToType(data['fat'], 'String');
            }
            if (data.hasOwnProperty('protein')) {
                obj['protein'] = ApiClient.convertToType(data['protein'], 'String');
            }
            if (data.hasOwnProperty('bad')) {
                obj['bad'] = ApiClient.convertToType(data['bad'], [GetRecipeNutritionWidgetByID200ResponseBadInner]);
            }
            if (data.hasOwnProperty('good')) {
                obj['good'] = ApiClient.convertToType(data['good'], [GetRecipeNutritionWidgetByID200ResponseGoodInner]);
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>GetRecipeNutritionWidgetByID200Response</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>GetRecipeNutritionWidgetByID200Response</code>.
     */
    static validateJSON(data) {
        // check to make sure all required properties are present in the JSON string
        for (const property of GetRecipeNutritionWidgetByID200Response.RequiredProperties) {
            if (!data.hasOwnProperty(property)) {
                throw new Error("The required field `" + property + "` is not found in the JSON data: " + JSON.stringify(data));
            }
        }
        // ensure the json data is a string
        if (data['calories'] && !(typeof data['calories'] === 'string' || data['calories'] instanceof String)) {
            throw new Error("Expected the field `calories` to be a primitive type in the JSON string but got " + data['calories']);
        }
        // ensure the json data is a string
        if (data['carbs'] && !(typeof data['carbs'] === 'string' || data['carbs'] instanceof String)) {
            throw new Error("Expected the field `carbs` to be a primitive type in the JSON string but got " + data['carbs']);
        }
        // ensure the json data is a string
        if (data['fat'] && !(typeof data['fat'] === 'string' || data['fat'] instanceof String)) {
            throw new Error("Expected the field `fat` to be a primitive type in the JSON string but got " + data['fat']);
        }
        // ensure the json data is a string
        if (data['protein'] && !(typeof data['protein'] === 'string' || data['protein'] instanceof String)) {
            throw new Error("Expected the field `protein` to be a primitive type in the JSON string but got " + data['protein']);
        }
        if (data['bad']) { // data not null
            // ensure the json data is an array
            if (!Array.isArray(data['bad'])) {
                throw new Error("Expected the field `bad` to be an array in the JSON data but got " + data['bad']);
            }
            // validate the optional field `bad` (array)
            for (const item of data['bad']) {
                GetRecipeNutritionWidgetByID200ResponseBadInner.validateJSON(item);
            };
        }
        if (data['good']) { // data not null
            // ensure the json data is an array
            if (!Array.isArray(data['good'])) {
                throw new Error("Expected the field `good` to be an array in the JSON data but got " + data['good']);
            }
            // validate the optional field `good` (array)
            for (const item of data['good']) {
                GetRecipeNutritionWidgetByID200ResponseGoodInner.validateJSON(item);
            };
        }

        return true;
    }


}

GetRecipeNutritionWidgetByID200Response.RequiredProperties = ["calories", "carbs", "fat", "protein", "bad", "good"];

/**
 * @member {String} calories
 */
GetRecipeNutritionWidgetByID200Response.prototype['calories'] = undefined;

/**
 * @member {String} carbs
 */
GetRecipeNutritionWidgetByID200Response.prototype['carbs'] = undefined;

/**
 * @member {String} fat
 */
GetRecipeNutritionWidgetByID200Response.prototype['fat'] = undefined;

/**
 * @member {String} protein
 */
GetRecipeNutritionWidgetByID200Response.prototype['protein'] = undefined;

/**
 * @member {Array.<module:model/GetRecipeNutritionWidgetByID200ResponseBadInner>} bad
 */
GetRecipeNutritionWidgetByID200Response.prototype['bad'] = undefined;

/**
 * @member {Array.<module:model/GetRecipeNutritionWidgetByID200ResponseGoodInner>} good
 */
GetRecipeNutritionWidgetByID200Response.prototype['good'] = undefined;






export default GetRecipeNutritionWidgetByID200Response;

