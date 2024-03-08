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
 * The GetMealPlanTemplate200ResponseDaysInnerItemsInnerValue model module.
 * @module model/GetMealPlanTemplate200ResponseDaysInnerItemsInnerValue
 * @version 1.1
 */
class GetMealPlanTemplate200ResponseDaysInnerItemsInnerValue {
    /**
     * Constructs a new <code>GetMealPlanTemplate200ResponseDaysInnerItemsInnerValue</code>.
     * @alias module:model/GetMealPlanTemplate200ResponseDaysInnerItemsInnerValue
     * @param id {Number} 
     * @param title {String} 
     * @param imageType {String} 
     */
    constructor(id, title, imageType) { 
        
        GetMealPlanTemplate200ResponseDaysInnerItemsInnerValue.initialize(this, id, title, imageType);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, id, title, imageType) { 
        obj['id'] = id;
        obj['title'] = title;
        obj['imageType'] = imageType;
    }

    /**
     * Constructs a <code>GetMealPlanTemplate200ResponseDaysInnerItemsInnerValue</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/GetMealPlanTemplate200ResponseDaysInnerItemsInnerValue} obj Optional instance to populate.
     * @return {module:model/GetMealPlanTemplate200ResponseDaysInnerItemsInnerValue} The populated <code>GetMealPlanTemplate200ResponseDaysInnerItemsInnerValue</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new GetMealPlanTemplate200ResponseDaysInnerItemsInnerValue();

            if (data.hasOwnProperty('id')) {
                obj['id'] = ApiClient.convertToType(data['id'], 'Number');
            }
            if (data.hasOwnProperty('title')) {
                obj['title'] = ApiClient.convertToType(data['title'], 'String');
            }
            if (data.hasOwnProperty('imageType')) {
                obj['imageType'] = ApiClient.convertToType(data['imageType'], 'String');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>GetMealPlanTemplate200ResponseDaysInnerItemsInnerValue</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>GetMealPlanTemplate200ResponseDaysInnerItemsInnerValue</code>.
     */
    static validateJSON(data) {
        // check to make sure all required properties are present in the JSON string
        for (const property of GetMealPlanTemplate200ResponseDaysInnerItemsInnerValue.RequiredProperties) {
            if (!data.hasOwnProperty(property)) {
                throw new Error("The required field `" + property + "` is not found in the JSON data: " + JSON.stringify(data));
            }
        }
        // ensure the json data is a string
        if (data['title'] && !(typeof data['title'] === 'string' || data['title'] instanceof String)) {
            throw new Error("Expected the field `title` to be a primitive type in the JSON string but got " + data['title']);
        }
        // ensure the json data is a string
        if (data['imageType'] && !(typeof data['imageType'] === 'string' || data['imageType'] instanceof String)) {
            throw new Error("Expected the field `imageType` to be a primitive type in the JSON string but got " + data['imageType']);
        }

        return true;
    }


}

GetMealPlanTemplate200ResponseDaysInnerItemsInnerValue.RequiredProperties = ["id", "title", "imageType"];

/**
 * @member {Number} id
 */
GetMealPlanTemplate200ResponseDaysInnerItemsInnerValue.prototype['id'] = undefined;

/**
 * @member {String} title
 */
GetMealPlanTemplate200ResponseDaysInnerItemsInnerValue.prototype['title'] = undefined;

/**
 * @member {String} imageType
 */
GetMealPlanTemplate200ResponseDaysInnerItemsInnerValue.prototype['imageType'] = undefined;






export default GetMealPlanTemplate200ResponseDaysInnerItemsInnerValue;

