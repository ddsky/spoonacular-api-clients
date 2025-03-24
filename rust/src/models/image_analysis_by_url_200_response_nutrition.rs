/*
 * spoonacular API
 *
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
 *
 * The version of the OpenAPI document: 2.0.2
 * Contact: mail@spoonacular.com
 * Generated by: https://openapi-generator.tech
 */

use crate::models;
use serde::{Deserialize, Serialize};

#[derive(Clone, Default, Debug, PartialEq, Serialize, Deserialize)]
pub struct ImageAnalysisByUrl200ResponseNutrition {
    #[serde(rename = "recipesUsed")]
    pub recipes_used: i32,
    #[serde(rename = "calories")]
    pub calories: Box<models::ImageAnalysisByUrl200ResponseNutritionCalories>,
    #[serde(rename = "fat")]
    pub fat: Box<models::ImageAnalysisByUrl200ResponseNutritionCalories>,
    #[serde(rename = "protein")]
    pub protein: Box<models::ImageAnalysisByUrl200ResponseNutritionCalories>,
    #[serde(rename = "carbs")]
    pub carbs: Box<models::ImageAnalysisByUrl200ResponseNutritionCalories>,
}

impl ImageAnalysisByUrl200ResponseNutrition {
    pub fn new(recipes_used: i32, calories: models::ImageAnalysisByUrl200ResponseNutritionCalories, fat: models::ImageAnalysisByUrl200ResponseNutritionCalories, protein: models::ImageAnalysisByUrl200ResponseNutritionCalories, carbs: models::ImageAnalysisByUrl200ResponseNutritionCalories) -> ImageAnalysisByUrl200ResponseNutrition {
        ImageAnalysisByUrl200ResponseNutrition {
            recipes_used,
            calories: Box::new(calories),
            fat: Box::new(fat),
            protein: Box::new(protein),
            carbs: Box::new(carbs),
        }
    }
}

