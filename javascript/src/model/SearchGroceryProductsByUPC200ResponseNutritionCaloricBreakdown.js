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
 * The SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown model module.
 * @module model/SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown
 * @version 2.0.2
 */
class SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown {
    /**
     * Constructs a new <code>SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown</code>.
     * @alias module:model/SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown
     * @param percentProtein {Number} 
     * @param percentFat {Number} 
     * @param percentCarbs {Number} 
     */
    constructor(percentProtein, percentFat, percentCarbs) { 
        
        SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown.initialize(this, percentProtein, percentFat, percentCarbs);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, percentProtein, percentFat, percentCarbs) { 
        obj['percentProtein'] = percentProtein;
        obj['percentFat'] = percentFat;
        obj['percentCarbs'] = percentCarbs;
    }

    /**
     * Constructs a <code>SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown} obj Optional instance to populate.
     * @return {module:model/SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown} The populated <code>SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown();

            if (data.hasOwnProperty('percentProtein')) {
                obj['percentProtein'] = ApiClient.convertToType(data['percentProtein'], 'Number');
            }
            if (data.hasOwnProperty('percentFat')) {
                obj['percentFat'] = ApiClient.convertToType(data['percentFat'], 'Number');
            }
            if (data.hasOwnProperty('percentCarbs')) {
                obj['percentCarbs'] = ApiClient.convertToType(data['percentCarbs'], 'Number');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown</code>.
     */
    static validateJSON(data) {
        // check to make sure all required properties are present in the JSON string
        for (const property of SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown.RequiredProperties) {
            if (!data.hasOwnProperty(property)) {
                throw new Error("The required field `" + property + "` is not found in the JSON data: " + JSON.stringify(data));
            }
        }

        return true;
    }


}

SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown.RequiredProperties = ["percentProtein", "percentFat", "percentCarbs"];

/**
 * @member {Number} percentProtein
 */
SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown.prototype['percentProtein'] = undefined;

/**
 * @member {Number} percentFat
 */
SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown.prototype['percentFat'] = undefined;

/**
 * @member {Number} percentCarbs
 */
SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown.prototype['percentCarbs'] = undefined;






export default SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown;

