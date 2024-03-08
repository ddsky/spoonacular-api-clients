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
import SearchSiteContent200ResponseGroceryProductsInnerDataPointsInner from './SearchSiteContent200ResponseGroceryProductsInnerDataPointsInner';

/**
 * The SearchSiteContent200ResponseGroceryProductsInner model module.
 * @module model/SearchSiteContent200ResponseGroceryProductsInner
 * @version 1.1
 */
class SearchSiteContent200ResponseGroceryProductsInner {
    /**
     * Constructs a new <code>SearchSiteContent200ResponseGroceryProductsInner</code>.
     * @alias module:model/SearchSiteContent200ResponseGroceryProductsInner
     * @param image {String} 
     * @param link {String} 
     * @param name {String} 
     */
    constructor(image, link, name) { 
        
        SearchSiteContent200ResponseGroceryProductsInner.initialize(this, image, link, name);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, image, link, name) { 
        obj['image'] = image;
        obj['link'] = link;
        obj['name'] = name;
    }

    /**
     * Constructs a <code>SearchSiteContent200ResponseGroceryProductsInner</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/SearchSiteContent200ResponseGroceryProductsInner} obj Optional instance to populate.
     * @return {module:model/SearchSiteContent200ResponseGroceryProductsInner} The populated <code>SearchSiteContent200ResponseGroceryProductsInner</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new SearchSiteContent200ResponseGroceryProductsInner();

            if (data.hasOwnProperty('dataPoints')) {
                obj['dataPoints'] = ApiClient.convertToType(data['dataPoints'], [SearchSiteContent200ResponseGroceryProductsInnerDataPointsInner]);
            }
            if (data.hasOwnProperty('image')) {
                obj['image'] = ApiClient.convertToType(data['image'], 'String');
            }
            if (data.hasOwnProperty('link')) {
                obj['link'] = ApiClient.convertToType(data['link'], 'String');
            }
            if (data.hasOwnProperty('name')) {
                obj['name'] = ApiClient.convertToType(data['name'], 'String');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>SearchSiteContent200ResponseGroceryProductsInner</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>SearchSiteContent200ResponseGroceryProductsInner</code>.
     */
    static validateJSON(data) {
        // check to make sure all required properties are present in the JSON string
        for (const property of SearchSiteContent200ResponseGroceryProductsInner.RequiredProperties) {
            if (!data.hasOwnProperty(property)) {
                throw new Error("The required field `" + property + "` is not found in the JSON data: " + JSON.stringify(data));
            }
        }
        if (data['dataPoints']) { // data not null
            // ensure the json data is an array
            if (!Array.isArray(data['dataPoints'])) {
                throw new Error("Expected the field `dataPoints` to be an array in the JSON data but got " + data['dataPoints']);
            }
            // validate the optional field `dataPoints` (array)
            for (const item of data['dataPoints']) {
                SearchSiteContent200ResponseGroceryProductsInnerDataPointsInner.validateJSON(item);
            };
        }
        // ensure the json data is a string
        if (data['image'] && !(typeof data['image'] === 'string' || data['image'] instanceof String)) {
            throw new Error("Expected the field `image` to be a primitive type in the JSON string but got " + data['image']);
        }
        // ensure the json data is a string
        if (data['link'] && !(typeof data['link'] === 'string' || data['link'] instanceof String)) {
            throw new Error("Expected the field `link` to be a primitive type in the JSON string but got " + data['link']);
        }
        // ensure the json data is a string
        if (data['name'] && !(typeof data['name'] === 'string' || data['name'] instanceof String)) {
            throw new Error("Expected the field `name` to be a primitive type in the JSON string but got " + data['name']);
        }

        return true;
    }


}

SearchSiteContent200ResponseGroceryProductsInner.RequiredProperties = ["image", "link", "name"];

/**
 * @member {Array.<module:model/SearchSiteContent200ResponseGroceryProductsInnerDataPointsInner>} dataPoints
 */
SearchSiteContent200ResponseGroceryProductsInner.prototype['dataPoints'] = undefined;

/**
 * @member {String} image
 */
SearchSiteContent200ResponseGroceryProductsInner.prototype['image'] = undefined;

/**
 * @member {String} link
 */
SearchSiteContent200ResponseGroceryProductsInner.prototype['link'] = undefined;

/**
 * @member {String} name
 */
SearchSiteContent200ResponseGroceryProductsInner.prototype['name'] = undefined;






export default SearchSiteContent200ResponseGroceryProductsInner;

