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
 * The GetWineRecommendation200ResponseRecommendedWinesInner model module.
 * @module model/GetWineRecommendation200ResponseRecommendedWinesInner
 * @version 2.0.2
 */
class GetWineRecommendation200ResponseRecommendedWinesInner {
    /**
     * Constructs a new <code>GetWineRecommendation200ResponseRecommendedWinesInner</code>.
     * @alias module:model/GetWineRecommendation200ResponseRecommendedWinesInner
     * @param id {Number} 
     * @param title {String} 
     * @param averageRating {Number} 
     * @param description {String} 
     * @param imageUrl {String} 
     * @param link {String} 
     * @param price {String} 
     * @param ratingCount {Number} 
     * @param score {Number} 
     */
    constructor(id, title, averageRating, description, imageUrl, link, price, ratingCount, score) { 
        
        GetWineRecommendation200ResponseRecommendedWinesInner.initialize(this, id, title, averageRating, description, imageUrl, link, price, ratingCount, score);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, id, title, averageRating, description, imageUrl, link, price, ratingCount, score) { 
        obj['id'] = id;
        obj['title'] = title;
        obj['averageRating'] = averageRating;
        obj['description'] = description;
        obj['imageUrl'] = imageUrl;
        obj['link'] = link;
        obj['price'] = price;
        obj['ratingCount'] = ratingCount;
        obj['score'] = score;
    }

    /**
     * Constructs a <code>GetWineRecommendation200ResponseRecommendedWinesInner</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/GetWineRecommendation200ResponseRecommendedWinesInner} obj Optional instance to populate.
     * @return {module:model/GetWineRecommendation200ResponseRecommendedWinesInner} The populated <code>GetWineRecommendation200ResponseRecommendedWinesInner</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new GetWineRecommendation200ResponseRecommendedWinesInner();

            if (data.hasOwnProperty('id')) {
                obj['id'] = ApiClient.convertToType(data['id'], 'Number');
            }
            if (data.hasOwnProperty('title')) {
                obj['title'] = ApiClient.convertToType(data['title'], 'String');
            }
            if (data.hasOwnProperty('averageRating')) {
                obj['averageRating'] = ApiClient.convertToType(data['averageRating'], 'Number');
            }
            if (data.hasOwnProperty('description')) {
                obj['description'] = ApiClient.convertToType(data['description'], 'String');
            }
            if (data.hasOwnProperty('imageUrl')) {
                obj['imageUrl'] = ApiClient.convertToType(data['imageUrl'], 'String');
            }
            if (data.hasOwnProperty('link')) {
                obj['link'] = ApiClient.convertToType(data['link'], 'String');
            }
            if (data.hasOwnProperty('price')) {
                obj['price'] = ApiClient.convertToType(data['price'], 'String');
            }
            if (data.hasOwnProperty('ratingCount')) {
                obj['ratingCount'] = ApiClient.convertToType(data['ratingCount'], 'Number');
            }
            if (data.hasOwnProperty('score')) {
                obj['score'] = ApiClient.convertToType(data['score'], 'Number');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>GetWineRecommendation200ResponseRecommendedWinesInner</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>GetWineRecommendation200ResponseRecommendedWinesInner</code>.
     */
    static validateJSON(data) {
        // check to make sure all required properties are present in the JSON string
        for (const property of GetWineRecommendation200ResponseRecommendedWinesInner.RequiredProperties) {
            if (!data.hasOwnProperty(property)) {
                throw new Error("The required field `" + property + "` is not found in the JSON data: " + JSON.stringify(data));
            }
        }
        // ensure the json data is a string
        if (data['title'] && !(typeof data['title'] === 'string' || data['title'] instanceof String)) {
            throw new Error("Expected the field `title` to be a primitive type in the JSON string but got " + data['title']);
        }
        // ensure the json data is a string
        if (data['description'] && !(typeof data['description'] === 'string' || data['description'] instanceof String)) {
            throw new Error("Expected the field `description` to be a primitive type in the JSON string but got " + data['description']);
        }
        // ensure the json data is a string
        if (data['imageUrl'] && !(typeof data['imageUrl'] === 'string' || data['imageUrl'] instanceof String)) {
            throw new Error("Expected the field `imageUrl` to be a primitive type in the JSON string but got " + data['imageUrl']);
        }
        // ensure the json data is a string
        if (data['link'] && !(typeof data['link'] === 'string' || data['link'] instanceof String)) {
            throw new Error("Expected the field `link` to be a primitive type in the JSON string but got " + data['link']);
        }
        // ensure the json data is a string
        if (data['price'] && !(typeof data['price'] === 'string' || data['price'] instanceof String)) {
            throw new Error("Expected the field `price` to be a primitive type in the JSON string but got " + data['price']);
        }

        return true;
    }


}

GetWineRecommendation200ResponseRecommendedWinesInner.RequiredProperties = ["id", "title", "averageRating", "description", "imageUrl", "link", "price", "ratingCount", "score"];

/**
 * @member {Number} id
 */
GetWineRecommendation200ResponseRecommendedWinesInner.prototype['id'] = undefined;

/**
 * @member {String} title
 */
GetWineRecommendation200ResponseRecommendedWinesInner.prototype['title'] = undefined;

/**
 * @member {Number} averageRating
 */
GetWineRecommendation200ResponseRecommendedWinesInner.prototype['averageRating'] = undefined;

/**
 * @member {String} description
 */
GetWineRecommendation200ResponseRecommendedWinesInner.prototype['description'] = undefined;

/**
 * @member {String} imageUrl
 */
GetWineRecommendation200ResponseRecommendedWinesInner.prototype['imageUrl'] = undefined;

/**
 * @member {String} link
 */
GetWineRecommendation200ResponseRecommendedWinesInner.prototype['link'] = undefined;

/**
 * @member {String} price
 */
GetWineRecommendation200ResponseRecommendedWinesInner.prototype['price'] = undefined;

/**
 * @member {Number} ratingCount
 */
GetWineRecommendation200ResponseRecommendedWinesInner.prototype['ratingCount'] = undefined;

/**
 * @member {Number} score
 */
GetWineRecommendation200ResponseRecommendedWinesInner.prototype['score'] = undefined;






export default GetWineRecommendation200ResponseRecommendedWinesInner;

