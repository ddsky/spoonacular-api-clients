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
import GetIngredientInformation200ResponseNutrition from './GetIngredientInformation200ResponseNutrition';
import ParseIngredients200ResponseInnerEstimatedCost from './ParseIngredients200ResponseInnerEstimatedCost';

/**
 * The GetIngredientInformation200Response model module.
 * @module model/GetIngredientInformation200Response
 * @version 1.1
 */
class GetIngredientInformation200Response {
    /**
     * Constructs a new <code>GetIngredientInformation200Response</code>.
     * 
     * @alias module:model/GetIngredientInformation200Response
     * @param id {Number} 
     * @param original {String} 
     * @param originalName {String} 
     * @param name {String} 
     * @param nameClean {String} 
     * @param amount {Number} 
     * @param unit {String} 
     * @param unitShort {String} 
     * @param unitLong {String} 
     * @param possibleUnits {Array.<String>} 
     * @param estimatedCost {module:model/ParseIngredients200ResponseInnerEstimatedCost} 
     * @param consistency {String} 
     * @param shoppingListUnits {Array.<String>} 
     * @param aisle {String} 
     * @param image {String} 
     * @param meta {Array.<Object>} 
     * @param nutrition {module:model/GetIngredientInformation200ResponseNutrition} 
     * @param categoryPath {Array.<String>} 
     */
    constructor(id, original, originalName, name, nameClean, amount, unit, unitShort, unitLong, possibleUnits, estimatedCost, consistency, shoppingListUnits, aisle, image, meta, nutrition, categoryPath) { 
        
        GetIngredientInformation200Response.initialize(this, id, original, originalName, name, nameClean, amount, unit, unitShort, unitLong, possibleUnits, estimatedCost, consistency, shoppingListUnits, aisle, image, meta, nutrition, categoryPath);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, id, original, originalName, name, nameClean, amount, unit, unitShort, unitLong, possibleUnits, estimatedCost, consistency, shoppingListUnits, aisle, image, meta, nutrition, categoryPath) { 
        obj['id'] = id;
        obj['original'] = original;
        obj['originalName'] = originalName;
        obj['name'] = name;
        obj['nameClean'] = nameClean;
        obj['amount'] = amount;
        obj['unit'] = unit;
        obj['unitShort'] = unitShort;
        obj['unitLong'] = unitLong;
        obj['possibleUnits'] = possibleUnits;
        obj['estimatedCost'] = estimatedCost;
        obj['consistency'] = consistency;
        obj['shoppingListUnits'] = shoppingListUnits;
        obj['aisle'] = aisle;
        obj['image'] = image;
        obj['meta'] = meta;
        obj['nutrition'] = nutrition;
        obj['categoryPath'] = categoryPath;
    }

    /**
     * Constructs a <code>GetIngredientInformation200Response</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/GetIngredientInformation200Response} obj Optional instance to populate.
     * @return {module:model/GetIngredientInformation200Response} The populated <code>GetIngredientInformation200Response</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new GetIngredientInformation200Response();

            if (data.hasOwnProperty('id')) {
                obj['id'] = ApiClient.convertToType(data['id'], 'Number');
            }
            if (data.hasOwnProperty('original')) {
                obj['original'] = ApiClient.convertToType(data['original'], 'String');
            }
            if (data.hasOwnProperty('originalName')) {
                obj['originalName'] = ApiClient.convertToType(data['originalName'], 'String');
            }
            if (data.hasOwnProperty('name')) {
                obj['name'] = ApiClient.convertToType(data['name'], 'String');
            }
            if (data.hasOwnProperty('nameClean')) {
                obj['nameClean'] = ApiClient.convertToType(data['nameClean'], 'String');
            }
            if (data.hasOwnProperty('amount')) {
                obj['amount'] = ApiClient.convertToType(data['amount'], 'Number');
            }
            if (data.hasOwnProperty('unit')) {
                obj['unit'] = ApiClient.convertToType(data['unit'], 'String');
            }
            if (data.hasOwnProperty('unitShort')) {
                obj['unitShort'] = ApiClient.convertToType(data['unitShort'], 'String');
            }
            if (data.hasOwnProperty('unitLong')) {
                obj['unitLong'] = ApiClient.convertToType(data['unitLong'], 'String');
            }
            if (data.hasOwnProperty('possibleUnits')) {
                obj['possibleUnits'] = ApiClient.convertToType(data['possibleUnits'], ['String']);
            }
            if (data.hasOwnProperty('estimatedCost')) {
                obj['estimatedCost'] = ParseIngredients200ResponseInnerEstimatedCost.constructFromObject(data['estimatedCost']);
            }
            if (data.hasOwnProperty('consistency')) {
                obj['consistency'] = ApiClient.convertToType(data['consistency'], 'String');
            }
            if (data.hasOwnProperty('shoppingListUnits')) {
                obj['shoppingListUnits'] = ApiClient.convertToType(data['shoppingListUnits'], ['String']);
            }
            if (data.hasOwnProperty('aisle')) {
                obj['aisle'] = ApiClient.convertToType(data['aisle'], 'String');
            }
            if (data.hasOwnProperty('image')) {
                obj['image'] = ApiClient.convertToType(data['image'], 'String');
            }
            if (data.hasOwnProperty('meta')) {
                obj['meta'] = ApiClient.convertToType(data['meta'], [Object]);
            }
            if (data.hasOwnProperty('nutrition')) {
                obj['nutrition'] = GetIngredientInformation200ResponseNutrition.constructFromObject(data['nutrition']);
            }
            if (data.hasOwnProperty('categoryPath')) {
                obj['categoryPath'] = ApiClient.convertToType(data['categoryPath'], ['String']);
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>GetIngredientInformation200Response</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>GetIngredientInformation200Response</code>.
     */
    static validateJSON(data) {
        // check to make sure all required properties are present in the JSON string
        for (const property of GetIngredientInformation200Response.RequiredProperties) {
            if (!data.hasOwnProperty(property)) {
                throw new Error("The required field `" + property + "` is not found in the JSON data: " + JSON.stringify(data));
            }
        }
        // ensure the json data is a string
        if (data['original'] && !(typeof data['original'] === 'string' || data['original'] instanceof String)) {
            throw new Error("Expected the field `original` to be a primitive type in the JSON string but got " + data['original']);
        }
        // ensure the json data is a string
        if (data['originalName'] && !(typeof data['originalName'] === 'string' || data['originalName'] instanceof String)) {
            throw new Error("Expected the field `originalName` to be a primitive type in the JSON string but got " + data['originalName']);
        }
        // ensure the json data is a string
        if (data['name'] && !(typeof data['name'] === 'string' || data['name'] instanceof String)) {
            throw new Error("Expected the field `name` to be a primitive type in the JSON string but got " + data['name']);
        }
        // ensure the json data is a string
        if (data['nameClean'] && !(typeof data['nameClean'] === 'string' || data['nameClean'] instanceof String)) {
            throw new Error("Expected the field `nameClean` to be a primitive type in the JSON string but got " + data['nameClean']);
        }
        // ensure the json data is a string
        if (data['unit'] && !(typeof data['unit'] === 'string' || data['unit'] instanceof String)) {
            throw new Error("Expected the field `unit` to be a primitive type in the JSON string but got " + data['unit']);
        }
        // ensure the json data is a string
        if (data['unitShort'] && !(typeof data['unitShort'] === 'string' || data['unitShort'] instanceof String)) {
            throw new Error("Expected the field `unitShort` to be a primitive type in the JSON string but got " + data['unitShort']);
        }
        // ensure the json data is a string
        if (data['unitLong'] && !(typeof data['unitLong'] === 'string' || data['unitLong'] instanceof String)) {
            throw new Error("Expected the field `unitLong` to be a primitive type in the JSON string but got " + data['unitLong']);
        }
        // ensure the json data is an array
        if (!Array.isArray(data['possibleUnits'])) {
            throw new Error("Expected the field `possibleUnits` to be an array in the JSON data but got " + data['possibleUnits']);
        }
        // validate the optional field `estimatedCost`
        if (data['estimatedCost']) { // data not null
          ParseIngredients200ResponseInnerEstimatedCost.validateJSON(data['estimatedCost']);
        }
        // ensure the json data is a string
        if (data['consistency'] && !(typeof data['consistency'] === 'string' || data['consistency'] instanceof String)) {
            throw new Error("Expected the field `consistency` to be a primitive type in the JSON string but got " + data['consistency']);
        }
        // ensure the json data is an array
        if (!Array.isArray(data['shoppingListUnits'])) {
            throw new Error("Expected the field `shoppingListUnits` to be an array in the JSON data but got " + data['shoppingListUnits']);
        }
        // ensure the json data is a string
        if (data['aisle'] && !(typeof data['aisle'] === 'string' || data['aisle'] instanceof String)) {
            throw new Error("Expected the field `aisle` to be a primitive type in the JSON string but got " + data['aisle']);
        }
        // ensure the json data is a string
        if (data['image'] && !(typeof data['image'] === 'string' || data['image'] instanceof String)) {
            throw new Error("Expected the field `image` to be a primitive type in the JSON string but got " + data['image']);
        }
        // ensure the json data is an array
        if (!Array.isArray(data['meta'])) {
            throw new Error("Expected the field `meta` to be an array in the JSON data but got " + data['meta']);
        }
        // validate the optional field `nutrition`
        if (data['nutrition']) { // data not null
          GetIngredientInformation200ResponseNutrition.validateJSON(data['nutrition']);
        }
        // ensure the json data is an array
        if (!Array.isArray(data['categoryPath'])) {
            throw new Error("Expected the field `categoryPath` to be an array in the JSON data but got " + data['categoryPath']);
        }

        return true;
    }


}

GetIngredientInformation200Response.RequiredProperties = ["id", "original", "originalName", "name", "nameClean", "amount", "unit", "unitShort", "unitLong", "possibleUnits", "estimatedCost", "consistency", "shoppingListUnits", "aisle", "image", "meta", "nutrition", "categoryPath"];

/**
 * @member {Number} id
 */
GetIngredientInformation200Response.prototype['id'] = undefined;

/**
 * @member {String} original
 */
GetIngredientInformation200Response.prototype['original'] = undefined;

/**
 * @member {String} originalName
 */
GetIngredientInformation200Response.prototype['originalName'] = undefined;

/**
 * @member {String} name
 */
GetIngredientInformation200Response.prototype['name'] = undefined;

/**
 * @member {String} nameClean
 */
GetIngredientInformation200Response.prototype['nameClean'] = undefined;

/**
 * @member {Number} amount
 */
GetIngredientInformation200Response.prototype['amount'] = undefined;

/**
 * @member {String} unit
 */
GetIngredientInformation200Response.prototype['unit'] = undefined;

/**
 * @member {String} unitShort
 */
GetIngredientInformation200Response.prototype['unitShort'] = undefined;

/**
 * @member {String} unitLong
 */
GetIngredientInformation200Response.prototype['unitLong'] = undefined;

/**
 * @member {Array.<String>} possibleUnits
 */
GetIngredientInformation200Response.prototype['possibleUnits'] = undefined;

/**
 * @member {module:model/ParseIngredients200ResponseInnerEstimatedCost} estimatedCost
 */
GetIngredientInformation200Response.prototype['estimatedCost'] = undefined;

/**
 * @member {String} consistency
 */
GetIngredientInformation200Response.prototype['consistency'] = undefined;

/**
 * @member {Array.<String>} shoppingListUnits
 */
GetIngredientInformation200Response.prototype['shoppingListUnits'] = undefined;

/**
 * @member {String} aisle
 */
GetIngredientInformation200Response.prototype['aisle'] = undefined;

/**
 * @member {String} image
 */
GetIngredientInformation200Response.prototype['image'] = undefined;

/**
 * @member {Array.<Object>} meta
 */
GetIngredientInformation200Response.prototype['meta'] = undefined;

/**
 * @member {module:model/GetIngredientInformation200ResponseNutrition} nutrition
 */
GetIngredientInformation200Response.prototype['nutrition'] = undefined;

/**
 * @member {Array.<String>} categoryPath
 */
GetIngredientInformation200Response.prototype['categoryPath'] = undefined;






export default GetIngredientInformation200Response;

