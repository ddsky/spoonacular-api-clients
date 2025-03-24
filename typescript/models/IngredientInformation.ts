/**
 * spoonacular API
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what\'s in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
 *
 * OpenAPI spec version: 2.0.2
 * Contact: mail@spoonacular.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { IngredientInformationEstimatedCost } from '../models/IngredientInformationEstimatedCost';
import { IngredientInformationNutrition } from '../models/IngredientInformationNutrition';
import { HttpFile } from '../http/http';

/**
* 
*/
export class IngredientInformation {
    'id': number;
    'original': string;
    'originalName': string;
    'name': string;
    'amount': number;
    'unit': string;
    'unitShort': string;
    'unitLong': string;
    'possibleUnits': Array<string>;
    'estimatedCost': IngredientInformationEstimatedCost;
    'consistency': string;
    'shoppingListUnits'?: Array<string>;
    'aisle': string;
    'image': string;
    'meta': Array<string>;
    'nutrition'?: IngredientInformationNutrition;
    'categoryPath'?: Array<string>;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "id",
            "baseName": "id",
            "type": "number",
            "format": ""
        },
        {
            "name": "original",
            "baseName": "original",
            "type": "string",
            "format": ""
        },
        {
            "name": "originalName",
            "baseName": "originalName",
            "type": "string",
            "format": ""
        },
        {
            "name": "name",
            "baseName": "name",
            "type": "string",
            "format": ""
        },
        {
            "name": "amount",
            "baseName": "amount",
            "type": "number",
            "format": ""
        },
        {
            "name": "unit",
            "baseName": "unit",
            "type": "string",
            "format": ""
        },
        {
            "name": "unitShort",
            "baseName": "unitShort",
            "type": "string",
            "format": ""
        },
        {
            "name": "unitLong",
            "baseName": "unitLong",
            "type": "string",
            "format": ""
        },
        {
            "name": "possibleUnits",
            "baseName": "possibleUnits",
            "type": "Array<string>",
            "format": ""
        },
        {
            "name": "estimatedCost",
            "baseName": "estimatedCost",
            "type": "IngredientInformationEstimatedCost",
            "format": ""
        },
        {
            "name": "consistency",
            "baseName": "consistency",
            "type": "string",
            "format": ""
        },
        {
            "name": "shoppingListUnits",
            "baseName": "shoppingListUnits",
            "type": "Array<string>",
            "format": ""
        },
        {
            "name": "aisle",
            "baseName": "aisle",
            "type": "string",
            "format": ""
        },
        {
            "name": "image",
            "baseName": "image",
            "type": "string",
            "format": ""
        },
        {
            "name": "meta",
            "baseName": "meta",
            "type": "Array<string>",
            "format": ""
        },
        {
            "name": "nutrition",
            "baseName": "nutrition",
            "type": "IngredientInformationNutrition",
            "format": ""
        },
        {
            "name": "categoryPath",
            "baseName": "categoryPath",
            "type": "Array<string>",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return IngredientInformation.attributeTypeMap;
    }

    public constructor() {
    }
}

