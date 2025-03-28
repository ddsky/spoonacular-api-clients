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
pub struct SearchRestaurants200ResponseRestaurantsInnerAddress {
    #[serde(rename = "street_addr", skip_serializing_if = "Option::is_none")]
    pub street_addr: Option<String>,
    #[serde(rename = "city", skip_serializing_if = "Option::is_none")]
    pub city: Option<String>,
    #[serde(rename = "state", skip_serializing_if = "Option::is_none")]
    pub state: Option<String>,
    #[serde(rename = "zipcode", skip_serializing_if = "Option::is_none")]
    pub zipcode: Option<String>,
    #[serde(rename = "country", skip_serializing_if = "Option::is_none")]
    pub country: Option<String>,
    #[serde(rename = "lat", skip_serializing_if = "Option::is_none")]
    pub lat: Option<f64>,
    #[serde(rename = "lon", skip_serializing_if = "Option::is_none")]
    pub lon: Option<f64>,
    #[serde(rename = "street_addr_2", skip_serializing_if = "Option::is_none")]
    pub street_addr_2: Option<String>,
    #[serde(rename = "latitude", skip_serializing_if = "Option::is_none")]
    pub latitude: Option<f64>,
    #[serde(rename = "longitude", skip_serializing_if = "Option::is_none")]
    pub longitude: Option<f64>,
}

impl SearchRestaurants200ResponseRestaurantsInnerAddress {
    pub fn new() -> SearchRestaurants200ResponseRestaurantsInnerAddress {
        SearchRestaurants200ResponseRestaurantsInnerAddress {
            street_addr: None,
            city: None,
            state: None,
            zipcode: None,
            country: None,
            lat: None,
            lon: None,
            street_addr_2: None,
            latitude: None,
            longitude: None,
        }
    }
}

