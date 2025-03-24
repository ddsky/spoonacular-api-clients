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
 * The SearchGroceryProductsByUPC200ResponseServings model module.
 * @module model/SearchGroceryProductsByUPC200ResponseServings
 * @version 2.0.2
 */
class SearchGroceryProductsByUPC200ResponseServings {
    /**
     * Constructs a new <code>SearchGroceryProductsByUPC200ResponseServings</code>.
     * @alias module:model/SearchGroceryProductsByUPC200ResponseServings
     * @param number {Number} 
     * @param size {Number} 
     * @param unit {String} 
     */
    constructor(number, size, unit) { 
        
        SearchGroceryProductsByUPC200ResponseServings.initialize(this, number, size, unit);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, number, size, unit) { 
        obj['number'] = number;
        obj['size'] = size;
        obj['unit'] = unit;
    }

    /**
     * Constructs a <code>SearchGroceryProductsByUPC200ResponseServings</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/SearchGroceryProductsByUPC200ResponseServings} obj Optional instance to populate.
     * @return {module:model/SearchGroceryProductsByUPC200ResponseServings} The populated <code>SearchGroceryProductsByUPC200ResponseServings</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new SearchGroceryProductsByUPC200ResponseServings();

            if (data.hasOwnProperty('number')) {
                obj['number'] = ApiClient.convertToType(data['number'], 'Number');
            }
            if (data.hasOwnProperty('size')) {
                obj['size'] = ApiClient.convertToType(data['size'], 'Number');
            }
            if (data.hasOwnProperty('unit')) {
                obj['unit'] = ApiClient.convertToType(data['unit'], 'String');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>SearchGroceryProductsByUPC200ResponseServings</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>SearchGroceryProductsByUPC200ResponseServings</code>.
     */
    static validateJSON(data) {
        // check to make sure all required properties are present in the JSON string
        for (const property of SearchGroceryProductsByUPC200ResponseServings.RequiredProperties) {
            if (!data.hasOwnProperty(property)) {
                throw new Error("The required field `" + property + "` is not found in the JSON data: " + JSON.stringify(data));
            }
        }
        // ensure the json data is a string
        if (data['unit'] && !(typeof data['unit'] === 'string' || data['unit'] instanceof String)) {
            throw new Error("Expected the field `unit` to be a primitive type in the JSON string but got " + data['unit']);
        }

        return true;
    }


}

SearchGroceryProductsByUPC200ResponseServings.RequiredProperties = ["number", "size", "unit"];

/**
 * @member {Number} number
 */
SearchGroceryProductsByUPC200ResponseServings.prototype['number'] = undefined;

/**
 * @member {Number} size
 */
SearchGroceryProductsByUPC200ResponseServings.prototype['size'] = undefined;

/**
 * @member {String} unit
 */
SearchGroceryProductsByUPC200ResponseServings.prototype['unit'] = undefined;






export default SearchGroceryProductsByUPC200ResponseServings;

