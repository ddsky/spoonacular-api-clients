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
import GenerateMealPlan200ResponseNutrients from './GenerateMealPlan200ResponseNutrients';
import GetSimilarRecipes200ResponseInner from './GetSimilarRecipes200ResponseInner';

/**
 * The GenerateMealPlan200Response model module.
 * @module model/GenerateMealPlan200Response
 * @version 1.1
 */
class GenerateMealPlan200Response {
    /**
     * Constructs a new <code>GenerateMealPlan200Response</code>.
     * 
     * @alias module:model/GenerateMealPlan200Response
     * @param meals {Array.<module:model/GetSimilarRecipes200ResponseInner>} 
     * @param nutrients {module:model/GenerateMealPlan200ResponseNutrients} 
     */
    constructor(meals, nutrients) { 
        
        GenerateMealPlan200Response.initialize(this, meals, nutrients);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, meals, nutrients) { 
        obj['meals'] = meals;
        obj['nutrients'] = nutrients;
    }

    /**
     * Constructs a <code>GenerateMealPlan200Response</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/GenerateMealPlan200Response} obj Optional instance to populate.
     * @return {module:model/GenerateMealPlan200Response} The populated <code>GenerateMealPlan200Response</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new GenerateMealPlan200Response();

            if (data.hasOwnProperty('meals')) {
                obj['meals'] = ApiClient.convertToType(data['meals'], [GetSimilarRecipes200ResponseInner]);
            }
            if (data.hasOwnProperty('nutrients')) {
                obj['nutrients'] = GenerateMealPlan200ResponseNutrients.constructFromObject(data['nutrients']);
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>GenerateMealPlan200Response</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>GenerateMealPlan200Response</code>.
     */
    static validateJSON(data) {
        // check to make sure all required properties are present in the JSON string
        for (const property of GenerateMealPlan200Response.RequiredProperties) {
            if (!data.hasOwnProperty(property)) {
                throw new Error("The required field `" + property + "` is not found in the JSON data: " + JSON.stringify(data));
            }
        }
        if (data['meals']) { // data not null
            // ensure the json data is an array
            if (!Array.isArray(data['meals'])) {
                throw new Error("Expected the field `meals` to be an array in the JSON data but got " + data['meals']);
            }
            // validate the optional field `meals` (array)
            for (const item of data['meals']) {
                GetSimilarRecipes200ResponseInner.validateJSON(item);
            };
        }
        // validate the optional field `nutrients`
        if (data['nutrients']) { // data not null
          GenerateMealPlan200ResponseNutrients.validateJSON(data['nutrients']);
        }

        return true;
    }


}

GenerateMealPlan200Response.RequiredProperties = ["meals", "nutrients"];

/**
 * @member {Array.<module:model/GetSimilarRecipes200ResponseInner>} meals
 */
GenerateMealPlan200Response.prototype['meals'] = undefined;

/**
 * @member {module:model/GenerateMealPlan200ResponseNutrients} nutrients
 */
GenerateMealPlan200Response.prototype['nutrients'] = undefined;






export default GenerateMealPlan200Response;

