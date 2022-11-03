/*
 * spoonacular API
 *
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
 *
 * The version of the OpenAPI document: 1.1
 * Contact: mail@spoonacular.com
 * Generated by: https://openapi-generator.tech
 */

/// SearchMenuItems200Response : 



#[derive(Clone, Debug, PartialEq, Default, Serialize, Deserialize)]
pub struct SearchMenuItems200Response {
    #[serde(rename = "menuItems")]
    pub menu_items: Vec<crate::models::SearchMenuItems200ResponseMenuItemsInner>,
    #[serde(rename = "totalMenuItems")]
    pub total_menu_items: i32,
    #[serde(rename = "type")]
    pub _type: String,
    #[serde(rename = "offset")]
    pub offset: i32,
    #[serde(rename = "number")]
    pub number: i32,
}

impl SearchMenuItems200Response {
    /// 
    pub fn new(menu_items: Vec<crate::models::SearchMenuItems200ResponseMenuItemsInner>, total_menu_items: i32, _type: String, offset: i32, number: i32) -> SearchMenuItems200Response {
        SearchMenuItems200Response {
            menu_items,
            total_menu_items,
            _type,
            offset,
            number,
        }
    }
}


