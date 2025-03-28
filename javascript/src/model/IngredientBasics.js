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
 * The IngredientBasics model module.
 * @module model/IngredientBasics
 * @version 2.0.2
 */
class IngredientBasics {
    /**
     * Constructs a new <code>IngredientBasics</code>.
     * @alias module:model/IngredientBasics
     * @param description {String} 
     * @param name {String} 
     * @param safetyLevel {String} 
     */
    constructor(description, name, safetyLevel) { 
        
        IngredientBasics.initialize(this, description, name, safetyLevel);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, description, name, safetyLevel) { 
        obj['description'] = description;
        obj['name'] = name;
        obj['safety_level'] = safetyLevel;
    }

    /**
     * Constructs a <code>IngredientBasics</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/IngredientBasics} obj Optional instance to populate.
     * @return {module:model/IngredientBasics} The populated <code>IngredientBasics</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new IngredientBasics();

            if (data.hasOwnProperty('description')) {
                obj['description'] = ApiClient.convertToType(data['description'], 'String');
            }
            if (data.hasOwnProperty('name')) {
                obj['name'] = ApiClient.convertToType(data['name'], 'String');
            }
            if (data.hasOwnProperty('safety_level')) {
                obj['safety_level'] = ApiClient.convertToType(data['safety_level'], 'String');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>IngredientBasics</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>IngredientBasics</code>.
     */
    static validateJSON(data) {
        // check to make sure all required properties are present in the JSON string
        for (const property of IngredientBasics.RequiredProperties) {
            if (!data.hasOwnProperty(property)) {
                throw new Error("The required field `" + property + "` is not found in the JSON data: " + JSON.stringify(data));
            }
        }
        // ensure the json data is a string
        if (data['description'] && !(typeof data['description'] === 'string' || data['description'] instanceof String)) {
            throw new Error("Expected the field `description` to be a primitive type in the JSON string but got " + data['description']);
        }
        // ensure the json data is a string
        if (data['name'] && !(typeof data['name'] === 'string' || data['name'] instanceof String)) {
            throw new Error("Expected the field `name` to be a primitive type in the JSON string but got " + data['name']);
        }
        // ensure the json data is a string
        if (data['safety_level'] && !(typeof data['safety_level'] === 'string' || data['safety_level'] instanceof String)) {
            throw new Error("Expected the field `safety_level` to be a primitive type in the JSON string but got " + data['safety_level']);
        }

        return true;
    }


}

IngredientBasics.RequiredProperties = ["description", "name", "safety_level"];

/**
 * @member {String} description
 */
IngredientBasics.prototype['description'] = undefined;

/**
 * @member {String} name
 */
IngredientBasics.prototype['name'] = undefined;

/**
 * @member {String} safety_level
 */
IngredientBasics.prototype['safety_level'] = undefined;






export default IngredientBasics;

