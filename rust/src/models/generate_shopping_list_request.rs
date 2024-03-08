/*
 * spoonacular API
 *
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
 *
 * The version of the OpenAPI document: 1.1
 * Contact: mail@spoonacular.com
 * Generated by: https://openapi-generator.tech
 */




#[derive(Clone, Debug, PartialEq, Serialize, Deserialize)]
pub struct GenerateShoppingListRequest {
    /// The username.
    #[serde(rename = "username")]
    pub username: String,
    /// The start date in the format yyyy-mm-dd.
    #[serde(rename = "start-date")]
    pub start_date: String,
    /// The end date in the format yyyy-mm-dd.
    #[serde(rename = "end-date")]
    pub end_date: String,
    /// The private hash for the username.
    #[serde(rename = "hash")]
    pub hash: String,
}

impl GenerateShoppingListRequest {
    pub fn new(username: String, start_date: String, end_date: String, hash: String) -> GenerateShoppingListRequest {
        GenerateShoppingListRequest {
            username,
            start_date,
            end_date,
            hash,
        }
    }
}


