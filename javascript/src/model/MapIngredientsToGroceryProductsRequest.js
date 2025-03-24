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
 * The MapIngredientsToGroceryProductsRequest model module.
 * @module model/MapIngredientsToGroceryProductsRequest
 * @version 2.0.2
 */
class MapIngredientsToGroceryProductsRequest {
    /**
     * Constructs a new <code>MapIngredientsToGroceryProductsRequest</code>.
     * 
     * @alias module:model/MapIngredientsToGroceryProductsRequest
     * @param ingredients {Array.<String>} 
     * @param servings {Number} 
     */
    constructor(ingredients, servings) { 
        
        MapIngredientsToGroceryProductsRequest.initialize(this, ingredients, servings);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, ingredients, servings) { 
        obj['ingredients'] = ingredients;
        obj['servings'] = servings;
    }

    /**
     * Constructs a <code>MapIngredientsToGroceryProductsRequest</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/MapIngredientsToGroceryProductsRequest} obj Optional instance to populate.
     * @return {module:model/MapIngredientsToGroceryProductsRequest} The populated <code>MapIngredientsToGroceryProductsRequest</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new MapIngredientsToGroceryProductsRequest();

            if (data.hasOwnProperty('ingredients')) {
                obj['ingredients'] = ApiClient.convertToType(data['ingredients'], ['String']);
            }
            if (data.hasOwnProperty('servings')) {
                obj['servings'] = ApiClient.convertToType(data['servings'], 'Number');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>MapIngredientsToGroceryProductsRequest</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>MapIngredientsToGroceryProductsRequest</code>.
     */
    static validateJSON(data) {
        // check to make sure all required properties are present in the JSON string
        for (const property of MapIngredientsToGroceryProductsRequest.RequiredProperties) {
            if (!data.hasOwnProperty(property)) {
                throw new Error("The required field `" + property + "` is not found in the JSON data: " + JSON.stringify(data));
            }
        }
        // ensure the json data is an array
        if (!Array.isArray(data['ingredients'])) {
            throw new Error("Expected the field `ingredients` to be an array in the JSON data but got " + data['ingredients']);
        }

        return true;
    }


}

MapIngredientsToGroceryProductsRequest.RequiredProperties = ["ingredients", "servings"];

/**
 * @member {Array.<String>} ingredients
 */
MapIngredientsToGroceryProductsRequest.prototype['ingredients'] = undefined;

/**
 * @member {Number} servings
 */
MapIngredientsToGroceryProductsRequest.prototype['servings'] = undefined;






export default MapIngredientsToGroceryProductsRequest;

