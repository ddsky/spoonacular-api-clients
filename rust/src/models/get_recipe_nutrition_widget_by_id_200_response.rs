/*
 * spoonacular API
 *
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over 380,000 recipes, thousands of ingredients, 800,000 food products, and 100,000 menu items. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
 *
 * The version of the OpenAPI document: 1.1
 * Contact: mail@spoonacular.com
 * Generated by: https://openapi-generator.tech
 */

/// GetRecipeNutritionWidgetById200Response : 



#[derive(Clone, Debug, PartialEq, Default, Serialize, Deserialize)]
pub struct GetRecipeNutritionWidgetById200Response {
    #[serde(rename = "calories")]
    pub calories: String,
    #[serde(rename = "carbs")]
    pub carbs: String,
    #[serde(rename = "fat")]
    pub fat: String,
    #[serde(rename = "protein")]
    pub protein: String,
    #[serde(rename = "bad")]
    pub bad: Vec<crate::models::GetRecipeNutritionWidgetById200ResponseBadInner>,
    #[serde(rename = "good")]
    pub good: Vec<crate::models::GetRecipeNutritionWidgetById200ResponseGoodInner>,
}

impl GetRecipeNutritionWidgetById200Response {
    /// 
    pub fn new(calories: String, carbs: String, fat: String, protein: String, bad: Vec<crate::models::GetRecipeNutritionWidgetById200ResponseBadInner>, good: Vec<crate::models::GetRecipeNutritionWidgetById200ResponseGoodInner>) -> GetRecipeNutritionWidgetById200Response {
        GetRecipeNutritionWidgetById200Response {
            calories,
            carbs,
            fat,
            protein,
            bad,
            good,
        }
    }
}

