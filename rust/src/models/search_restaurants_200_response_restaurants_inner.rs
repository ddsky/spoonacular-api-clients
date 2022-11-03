/*
 * spoonacular API
 *
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
 *
 * The version of the OpenAPI document: 1.1
 * Contact: mail@spoonacular.com
 * Generated by: https://openapi-generator.tech
 */




#[derive(Clone, Debug, PartialEq, Default, Serialize, Deserialize)]
pub struct SearchRestaurants200ResponseRestaurantsInner {
    #[serde(rename = "_id", skip_serializing_if = "Option::is_none")]
    pub _id: Option<String>,
    #[serde(rename = "name", skip_serializing_if = "Option::is_none")]
    pub name: Option<String>,
    #[serde(rename = "phone_number", skip_serializing_if = "Option::is_none")]
    pub phone_number: Option<i32>,
    #[serde(rename = "address", skip_serializing_if = "Option::is_none")]
    pub address: Option<Box<crate::models::SearchRestaurants200ResponseRestaurantsInnerAddress>>,
    #[serde(rename = "type", skip_serializing_if = "Option::is_none")]
    pub _type: Option<String>,
    #[serde(rename = "description", skip_serializing_if = "Option::is_none")]
    pub description: Option<String>,
    #[serde(rename = "local_hours", skip_serializing_if = "Option::is_none")]
    pub local_hours: Option<Box<crate::models::SearchRestaurants200ResponseRestaurantsInnerLocalHours>>,
    #[serde(rename = "cuisines", skip_serializing_if = "Option::is_none")]
    pub cuisines: Option<Vec<String>>,
    #[serde(rename = "food_photos", skip_serializing_if = "Option::is_none")]
    pub food_photos: Option<Vec<String>>,
    #[serde(rename = "logo_photos", skip_serializing_if = "Option::is_none")]
    pub logo_photos: Option<Vec<String>>,
    #[serde(rename = "store_photos", skip_serializing_if = "Option::is_none")]
    pub store_photos: Option<Vec<serde_json::Value>>,
    #[serde(rename = "dollar_signs", skip_serializing_if = "Option::is_none")]
    pub dollar_signs: Option<i32>,
    #[serde(rename = "pickup_enabled", skip_serializing_if = "Option::is_none")]
    pub pickup_enabled: Option<bool>,
    #[serde(rename = "delivery_enabled", skip_serializing_if = "Option::is_none")]
    pub delivery_enabled: Option<bool>,
    #[serde(rename = "is_open", skip_serializing_if = "Option::is_none")]
    pub is_open: Option<bool>,
    #[serde(rename = "offers_first_party_delivery", skip_serializing_if = "Option::is_none")]
    pub offers_first_party_delivery: Option<bool>,
    #[serde(rename = "offers_third_party_delivery", skip_serializing_if = "Option::is_none")]
    pub offers_third_party_delivery: Option<bool>,
    #[serde(rename = "miles", skip_serializing_if = "Option::is_none")]
    pub miles: Option<f32>,
    #[serde(rename = "weighted_rating_value", skip_serializing_if = "Option::is_none")]
    pub weighted_rating_value: Option<f32>,
    #[serde(rename = "aggregated_rating_count", skip_serializing_if = "Option::is_none")]
    pub aggregated_rating_count: Option<i32>,
}

impl SearchRestaurants200ResponseRestaurantsInner {
    pub fn new() -> SearchRestaurants200ResponseRestaurantsInner {
        SearchRestaurants200ResponseRestaurantsInner {
            _id: None,
            name: None,
            phone_number: None,
            address: None,
            _type: None,
            description: None,
            local_hours: None,
            cuisines: None,
            food_photos: None,
            logo_photos: None,
            store_photos: None,
            dollar_signs: None,
            pickup_enabled: None,
            delivery_enabled: None,
            is_open: None,
            offers_first_party_delivery: None,
            offers_third_party_delivery: None,
            miles: None,
            weighted_rating_value: None,
            aggregated_rating_count: None,
        }
    }
}


