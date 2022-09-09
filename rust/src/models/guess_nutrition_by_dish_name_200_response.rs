/*
 * spoonacular API
 *
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over 380,000 recipes, thousands of ingredients, 800,000 food products, and 100,000 menu items. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
 *
 * The version of the OpenAPI document: 1.1
 * Contact: mail@spoonacular.com
 * Generated by: https://openapi-generator.tech
 */

/// GuessNutritionByDishName200Response : 



#[derive(Clone, Debug, PartialEq, Default, Serialize, Deserialize)]
pub struct GuessNutritionByDishName200Response {
    #[serde(rename = "calories")]
    pub calories: Box<crate::models::GuessNutritionByDishName200ResponseCalories>,
    #[serde(rename = "carbs")]
    pub carbs: Box<crate::models::GuessNutritionByDishName200ResponseCalories>,
    #[serde(rename = "fat")]
    pub fat: Box<crate::models::GuessNutritionByDishName200ResponseCalories>,
    #[serde(rename = "protein")]
    pub protein: Box<crate::models::GuessNutritionByDishName200ResponseCalories>,
    #[serde(rename = "recipesUsed")]
    pub recipes_used: i32,
}

impl GuessNutritionByDishName200Response {
    /// 
    pub fn new(calories: crate::models::GuessNutritionByDishName200ResponseCalories, carbs: crate::models::GuessNutritionByDishName200ResponseCalories, fat: crate::models::GuessNutritionByDishName200ResponseCalories, protein: crate::models::GuessNutritionByDishName200ResponseCalories, recipes_used: i32) -> GuessNutritionByDishName200Response {
        GuessNutritionByDishName200Response {
            calories: Box::new(calories),
            carbs: Box::new(carbs),
            fat: Box::new(fat),
            protein: Box::new(protein),
            recipes_used,
        }
    }
}


