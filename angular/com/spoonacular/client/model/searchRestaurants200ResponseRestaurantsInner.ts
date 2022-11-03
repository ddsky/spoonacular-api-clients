/**
 * spoonacular API
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what\'s in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
 *
 * The version of the OpenAPI document: 1.1
 * Contact: mail@spoonacular.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
import { SearchRestaurants200ResponseRestaurantsInnerLocalHours } from './searchRestaurants200ResponseRestaurantsInnerLocalHours';
import { SearchRestaurants200ResponseRestaurantsInnerAddress } from './searchRestaurants200ResponseRestaurantsInnerAddress';


export interface SearchRestaurants200ResponseRestaurantsInner { 
    _id?: string;
    name?: string;
    phone_number?: number;
    address?: SearchRestaurants200ResponseRestaurantsInnerAddress;
    type?: string;
    description?: string;
    local_hours?: SearchRestaurants200ResponseRestaurantsInnerLocalHours;
    cuisines?: Array<string>;
    food_photos?: Array<string>;
    logo_photos?: Array<string>;
    store_photos?: Array<object>;
    dollar_signs?: number;
    pickup_enabled?: boolean;
    delivery_enabled?: boolean;
    is_open?: boolean;
    offers_first_party_delivery?: boolean;
    offers_third_party_delivery?: boolean;
    miles?: number;
    weighted_rating_value?: number;
    aggregated_rating_count?: number;
}

