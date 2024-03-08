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
pub struct SearchAllFood200ResponseSearchResultsInnerResultsInner {
    #[serde(rename = "id")]
    pub id: String,
    #[serde(rename = "name")]
    pub name: String,
    #[serde(rename = "image", deserialize_with = "Option::deserialize")]
    pub image: Option<String>,
    #[serde(rename = "link", deserialize_with = "Option::deserialize")]
    pub link: Option<String>,
    #[serde(rename = "type")]
    pub r#type: String,
    #[serde(rename = "relevance")]
    pub relevance: f32,
    #[serde(rename = "content", deserialize_with = "Option::deserialize")]
    pub content: Option<String>,
}

impl SearchAllFood200ResponseSearchResultsInnerResultsInner {
    pub fn new(id: String, name: String, image: Option<String>, link: Option<String>, r#type: String, relevance: f32, content: Option<String>) -> SearchAllFood200ResponseSearchResultsInnerResultsInner {
        SearchAllFood200ResponseSearchResultsInnerResultsInner {
            id,
            name,
            image,
            link,
            r#type,
            relevance,
            content,
        }
    }
}


