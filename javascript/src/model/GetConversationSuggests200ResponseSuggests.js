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
import GetConversationSuggests200ResponseSuggestsInner from './GetConversationSuggests200ResponseSuggestsInner';

/**
 * The GetConversationSuggests200ResponseSuggests model module.
 * @module model/GetConversationSuggests200ResponseSuggests
 * @version 1.1
 */
class GetConversationSuggests200ResponseSuggests {
    /**
     * Constructs a new <code>GetConversationSuggests200ResponseSuggests</code>.
     * @alias module:model/GetConversationSuggests200ResponseSuggests
     * @param u {Array.<module:model/GetConversationSuggests200ResponseSuggestsInner>} 
     */
    constructor(u) { 
        
        GetConversationSuggests200ResponseSuggests.initialize(this, u);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, u) { 
        obj['_'] = u;
    }

    /**
     * Constructs a <code>GetConversationSuggests200ResponseSuggests</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/GetConversationSuggests200ResponseSuggests} obj Optional instance to populate.
     * @return {module:model/GetConversationSuggests200ResponseSuggests} The populated <code>GetConversationSuggests200ResponseSuggests</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new GetConversationSuggests200ResponseSuggests();

            if (data.hasOwnProperty('_')) {
                obj['_'] = ApiClient.convertToType(data['_'], [GetConversationSuggests200ResponseSuggestsInner]);
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>GetConversationSuggests200ResponseSuggests</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>GetConversationSuggests200ResponseSuggests</code>.
     */
    static validateJSON(data) {
        // check to make sure all required properties are present in the JSON string
        for (const property of GetConversationSuggests200ResponseSuggests.RequiredProperties) {
            if (!data.hasOwnProperty(property)) {
                throw new Error("The required field `" + property + "` is not found in the JSON data: " + JSON.stringify(data));
            }
        }
        if (data['_']) { // data not null
            // ensure the json data is an array
            if (!Array.isArray(data['_'])) {
                throw new Error("Expected the field `_` to be an array in the JSON data but got " + data['_']);
            }
            // validate the optional field `_` (array)
            for (const item of data['_']) {
                GetConversationSuggests200ResponseSuggestsInner.validateJSON(item);
            };
        }

        return true;
    }


}

GetConversationSuggests200ResponseSuggests.RequiredProperties = ["_"];

/**
 * @member {Array.<module:model/GetConversationSuggests200ResponseSuggestsInner>} _
 */
GetConversationSuggests200ResponseSuggests.prototype['_'] = undefined;






export default GetConversationSuggests200ResponseSuggests;

