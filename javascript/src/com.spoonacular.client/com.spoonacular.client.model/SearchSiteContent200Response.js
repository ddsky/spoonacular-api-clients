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
import SearchSiteContent200ResponseArticlesInner from './SearchSiteContent200ResponseArticlesInner';
import SearchSiteContent200ResponseGroceryProductsInner from './SearchSiteContent200ResponseGroceryProductsInner';

/**
 * The SearchSiteContent200Response model module.
 * @module com.spoonacular.client/com.spoonacular.client.model/SearchSiteContent200Response
 * @version 1.1
 */
class SearchSiteContent200Response {
    /**
     * Constructs a new <code>SearchSiteContent200Response</code>.
     * 
     * @alias module:com.spoonacular.client/com.spoonacular.client.model/SearchSiteContent200Response
     * @param articles {Array.<module:com.spoonacular.client/com.spoonacular.client.model/SearchSiteContent200ResponseArticlesInner>} 
     * @param groceryProducts {Array.<module:com.spoonacular.client/com.spoonacular.client.model/SearchSiteContent200ResponseGroceryProductsInner>} 
     * @param menuItems {Array.<module:com.spoonacular.client/com.spoonacular.client.model/SearchSiteContent200ResponseGroceryProductsInner>} 
     * @param recipes {Array.<module:com.spoonacular.client/com.spoonacular.client.model/SearchSiteContent200ResponseGroceryProductsInner>} 
     */
    constructor(articles, groceryProducts, menuItems, recipes) { 
        
        SearchSiteContent200Response.initialize(this, articles, groceryProducts, menuItems, recipes);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, articles, groceryProducts, menuItems, recipes) { 
        obj['Articles'] = articles;
        obj['Grocery Products'] = groceryProducts;
        obj['Menu Items'] = menuItems;
        obj['Recipes'] = recipes;
    }

    /**
     * Constructs a <code>SearchSiteContent200Response</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:com.spoonacular.client/com.spoonacular.client.model/SearchSiteContent200Response} obj Optional instance to populate.
     * @return {module:com.spoonacular.client/com.spoonacular.client.model/SearchSiteContent200Response} The populated <code>SearchSiteContent200Response</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new SearchSiteContent200Response();

            if (data.hasOwnProperty('Articles')) {
                obj['Articles'] = ApiClient.convertToType(data['Articles'], [SearchSiteContent200ResponseArticlesInner]);
            }
            if (data.hasOwnProperty('Grocery Products')) {
                obj['Grocery Products'] = ApiClient.convertToType(data['Grocery Products'], [SearchSiteContent200ResponseGroceryProductsInner]);
            }
            if (data.hasOwnProperty('Menu Items')) {
                obj['Menu Items'] = ApiClient.convertToType(data['Menu Items'], [SearchSiteContent200ResponseGroceryProductsInner]);
            }
            if (data.hasOwnProperty('Recipes')) {
                obj['Recipes'] = ApiClient.convertToType(data['Recipes'], [SearchSiteContent200ResponseGroceryProductsInner]);
            }
        }
        return obj;
    }


}

/**
 * @member {Array.<module:com.spoonacular.client/com.spoonacular.client.model/SearchSiteContent200ResponseArticlesInner>} Articles
 */
SearchSiteContent200Response.prototype['Articles'] = undefined;

/**
 * @member {Array.<module:com.spoonacular.client/com.spoonacular.client.model/SearchSiteContent200ResponseGroceryProductsInner>} Grocery Products
 */
SearchSiteContent200Response.prototype['Grocery Products'] = undefined;

/**
 * @member {Array.<module:com.spoonacular.client/com.spoonacular.client.model/SearchSiteContent200ResponseGroceryProductsInner>} Menu Items
 */
SearchSiteContent200Response.prototype['Menu Items'] = undefined;

/**
 * @member {Array.<module:com.spoonacular.client/com.spoonacular.client.model/SearchSiteContent200ResponseGroceryProductsInner>} Recipes
 */
SearchSiteContent200Response.prototype['Recipes'] = undefined;






export default SearchSiteContent200Response;

