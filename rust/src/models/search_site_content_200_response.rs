/*
 * spoonacular API
 *
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
 *
 * The version of the OpenAPI document: 1.1
 * Contact: mail@spoonacular.com
 * Generated by: https://openapi-generator.tech
 */

/// SearchSiteContent200Response : 



#[derive(Clone, Debug, PartialEq, Serialize, Deserialize)]
pub struct SearchSiteContent200Response {
    #[serde(rename = "Articles")]
    pub articles: Vec<crate::models::SearchSiteContent200ResponseArticlesInner>,
    #[serde(rename = "Grocery Products")]
    pub grocery_products: Vec<crate::models::SearchSiteContent200ResponseGroceryProductsInner>,
    #[serde(rename = "Menu Items")]
    pub menu_items: Vec<crate::models::SearchSiteContent200ResponseGroceryProductsInner>,
    #[serde(rename = "Recipes")]
    pub recipes: Vec<crate::models::SearchSiteContent200ResponseGroceryProductsInner>,
}

impl SearchSiteContent200Response {
    /// 
    pub fn new(articles: Vec<crate::models::SearchSiteContent200ResponseArticlesInner>, grocery_products: Vec<crate::models::SearchSiteContent200ResponseGroceryProductsInner>, menu_items: Vec<crate::models::SearchSiteContent200ResponseGroceryProductsInner>, recipes: Vec<crate::models::SearchSiteContent200ResponseGroceryProductsInner>) -> SearchSiteContent200Response {
        SearchSiteContent200Response {
            articles,
            grocery_products,
            menu_items,
            recipes,
        }
    }
}


