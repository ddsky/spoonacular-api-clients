/**
 * spoonacular API
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over 380,000 recipes, thousands of ingredients, 800,000 food products, and 100,000 menu items. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
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
 * The GetMealPlanWeek200ResponseDaysInnerItemsInnerValue model module.
 * @module com.spoonacular.client/com.spoonacular.client.model/GetMealPlanWeek200ResponseDaysInnerItemsInnerValue
 * @version 1.1
 */
class GetMealPlanWeek200ResponseDaysInnerItemsInnerValue {
    /**
     * Constructs a new <code>GetMealPlanWeek200ResponseDaysInnerItemsInnerValue</code>.
     * @alias module:com.spoonacular.client/com.spoonacular.client.model/GetMealPlanWeek200ResponseDaysInnerItemsInnerValue
     * @param servings {Number} 
     * @param id {Number} 
     * @param title {String} 
     * @param imageType {String} 
     */
    constructor(servings, id, title, imageType) { 
        
        GetMealPlanWeek200ResponseDaysInnerItemsInnerValue.initialize(this, servings, id, title, imageType);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, servings, id, title, imageType) { 
        obj['servings'] = servings;
        obj['id'] = id;
        obj['title'] = title;
        obj['imageType'] = imageType;
    }

    /**
     * Constructs a <code>GetMealPlanWeek200ResponseDaysInnerItemsInnerValue</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:com.spoonacular.client/com.spoonacular.client.model/GetMealPlanWeek200ResponseDaysInnerItemsInnerValue} obj Optional instance to populate.
     * @return {module:com.spoonacular.client/com.spoonacular.client.model/GetMealPlanWeek200ResponseDaysInnerItemsInnerValue} The populated <code>GetMealPlanWeek200ResponseDaysInnerItemsInnerValue</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new GetMealPlanWeek200ResponseDaysInnerItemsInnerValue();

            if (data.hasOwnProperty('servings')) {
                obj['servings'] = ApiClient.convertToType(data['servings'], 'Number');
            }
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


}

/**
 * @member {Number} servings
 */
GetMealPlanWeek200ResponseDaysInnerItemsInnerValue.prototype['servings'] = undefined;

/**
 * @member {Number} id
 */
GetMealPlanWeek200ResponseDaysInnerItemsInnerValue.prototype['id'] = undefined;

/**
 * @member {String} title
 */
GetMealPlanWeek200ResponseDaysInnerItemsInnerValue.prototype['title'] = undefined;

/**
 * @member {String} imageType
 */
GetMealPlanWeek200ResponseDaysInnerItemsInnerValue.prototype['imageType'] = undefined;






export default GetMealPlanWeek200ResponseDaysInnerItemsInnerValue;

