/*
 * spoonacular API
 *
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
 *
 * The version of the OpenAPI document: 2.0.2
 * Contact: mail@spoonacular.com
 * Generated by: https://openapi-generator.tech
 */


use reqwest;
use serde::{Deserialize, Serialize};
use crate::{apis::ResponseContent, models};
use super::{Error, configuration};


/// struct for typed errors of method [`analyze_recipe`]
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(untagged)]
pub enum AnalyzeRecipeError {
    Status401(),
    Status403(),
    Status404(),
    UnknownValue(serde_json::Value),
}

/// struct for typed errors of method [`create_recipe_card_get`]
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(untagged)]
pub enum CreateRecipeCardGetError {
    Status401(),
    Status403(),
    Status404(),
    UnknownValue(serde_json::Value),
}

/// struct for typed errors of method [`search_restaurants`]
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(untagged)]
pub enum SearchRestaurantsError {
    Status401(),
    Status403(),
    Status404(),
    UnknownValue(serde_json::Value),
}


/// This endpoint allows you to send raw recipe information, such as title, servings, and ingredients, to then see what we compute (badges, diets, nutrition, and more). This is useful if you have your own recipe data and want to enrich it with our semantic analysis.
pub async fn analyze_recipe(configuration: &configuration::Configuration, analyze_recipe_request: models::AnalyzeRecipeRequest, language: Option<&str>, include_nutrition: Option<bool>, include_taste: Option<bool>) -> Result<serde_json::Value, Error<AnalyzeRecipeError>> {
    let local_var_configuration = configuration;

    let local_var_client = &local_var_configuration.client;

    let local_var_uri_str = format!("{}/recipes/analyze", local_var_configuration.base_path);
    let mut local_var_req_builder = local_var_client.request(reqwest::Method::POST, local_var_uri_str.as_str());

    if let Some(ref local_var_str) = language {
        local_var_req_builder = local_var_req_builder.query(&[("language", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = include_nutrition {
        local_var_req_builder = local_var_req_builder.query(&[("includeNutrition", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = include_taste {
        local_var_req_builder = local_var_req_builder.query(&[("includeTaste", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_user_agent) = local_var_configuration.user_agent {
        local_var_req_builder = local_var_req_builder.header(reqwest::header::USER_AGENT, local_var_user_agent.clone());
    }
    if let Some(ref local_var_apikey) = local_var_configuration.api_key {
        let local_var_key = local_var_apikey.key.clone();
        let local_var_value = match local_var_apikey.prefix {
            Some(ref local_var_prefix) => format!("{} {}", local_var_prefix, local_var_key),
            None => local_var_key,
        };
        local_var_req_builder = local_var_req_builder.header("x-api-key", local_var_value);
    };
    local_var_req_builder = local_var_req_builder.json(&analyze_recipe_request);

    let local_var_req = local_var_req_builder.build()?;
    let local_var_resp = local_var_client.execute(local_var_req).await?;

    let local_var_status = local_var_resp.status();
    let local_var_content = local_var_resp.text().await?;

    if !local_var_status.is_client_error() && !local_var_status.is_server_error() {
        serde_json::from_str(&local_var_content).map_err(Error::from)
    } else {
        let local_var_entity: Option<AnalyzeRecipeError> = serde_json::from_str(&local_var_content).ok();
        let local_var_error = ResponseContent { status: local_var_status, content: local_var_content, entity: local_var_entity };
        Err(Error::ResponseError(local_var_error))
    }
}

/// Generate a recipe card for a recipe.
pub async fn create_recipe_card_get(configuration: &configuration::Configuration, id: i32, mask: Option<&str>, background_image: Option<&str>, background_color: Option<&str>, font_color: Option<&str>) -> Result<serde_json::Value, Error<CreateRecipeCardGetError>> {
    let local_var_configuration = configuration;

    let local_var_client = &local_var_configuration.client;

    let local_var_uri_str = format!("{}/recipes/{id}/card", local_var_configuration.base_path, id=id);
    let mut local_var_req_builder = local_var_client.request(reqwest::Method::GET, local_var_uri_str.as_str());

    if let Some(ref local_var_str) = mask {
        local_var_req_builder = local_var_req_builder.query(&[("mask", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = background_image {
        local_var_req_builder = local_var_req_builder.query(&[("backgroundImage", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = background_color {
        local_var_req_builder = local_var_req_builder.query(&[("backgroundColor", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = font_color {
        local_var_req_builder = local_var_req_builder.query(&[("fontColor", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_user_agent) = local_var_configuration.user_agent {
        local_var_req_builder = local_var_req_builder.header(reqwest::header::USER_AGENT, local_var_user_agent.clone());
    }
    if let Some(ref local_var_apikey) = local_var_configuration.api_key {
        let local_var_key = local_var_apikey.key.clone();
        let local_var_value = match local_var_apikey.prefix {
            Some(ref local_var_prefix) => format!("{} {}", local_var_prefix, local_var_key),
            None => local_var_key,
        };
        local_var_req_builder = local_var_req_builder.header("x-api-key", local_var_value);
    };

    let local_var_req = local_var_req_builder.build()?;
    let local_var_resp = local_var_client.execute(local_var_req).await?;

    let local_var_status = local_var_resp.status();
    let local_var_content = local_var_resp.text().await?;

    if !local_var_status.is_client_error() && !local_var_status.is_server_error() {
        serde_json::from_str(&local_var_content).map_err(Error::from)
    } else {
        let local_var_entity: Option<CreateRecipeCardGetError> = serde_json::from_str(&local_var_content).ok();
        let local_var_error = ResponseContent { status: local_var_status, content: local_var_content, entity: local_var_entity };
        Err(Error::ResponseError(local_var_error))
    }
}

/// Search through thousands of restaurants (in North America) by location, cuisine, budget, and more.
pub async fn search_restaurants(configuration: &configuration::Configuration, query: Option<&str>, lat: Option<f64>, lng: Option<f64>, distance: Option<f64>, budget: Option<f64>, cuisine: Option<&str>, min_rating: Option<f64>, is_open: Option<bool>, sort: Option<&str>, page: Option<f64>) -> Result<models::SearchRestaurants200Response, Error<SearchRestaurantsError>> {
    let local_var_configuration = configuration;

    let local_var_client = &local_var_configuration.client;

    let local_var_uri_str = format!("{}/food/restaurants/search", local_var_configuration.base_path);
    let mut local_var_req_builder = local_var_client.request(reqwest::Method::GET, local_var_uri_str.as_str());

    if let Some(ref local_var_str) = query {
        local_var_req_builder = local_var_req_builder.query(&[("query", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = lat {
        local_var_req_builder = local_var_req_builder.query(&[("lat", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = lng {
        local_var_req_builder = local_var_req_builder.query(&[("lng", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = distance {
        local_var_req_builder = local_var_req_builder.query(&[("distance", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = budget {
        local_var_req_builder = local_var_req_builder.query(&[("budget", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = cuisine {
        local_var_req_builder = local_var_req_builder.query(&[("cuisine", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = min_rating {
        local_var_req_builder = local_var_req_builder.query(&[("min-rating", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = is_open {
        local_var_req_builder = local_var_req_builder.query(&[("is-open", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = sort {
        local_var_req_builder = local_var_req_builder.query(&[("sort", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = page {
        local_var_req_builder = local_var_req_builder.query(&[("page", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_user_agent) = local_var_configuration.user_agent {
        local_var_req_builder = local_var_req_builder.header(reqwest::header::USER_AGENT, local_var_user_agent.clone());
    }
    if let Some(ref local_var_apikey) = local_var_configuration.api_key {
        let local_var_key = local_var_apikey.key.clone();
        let local_var_value = match local_var_apikey.prefix {
            Some(ref local_var_prefix) => format!("{} {}", local_var_prefix, local_var_key),
            None => local_var_key,
        };
        local_var_req_builder = local_var_req_builder.header("x-api-key", local_var_value);
    };

    let local_var_req = local_var_req_builder.build()?;
    let local_var_resp = local_var_client.execute(local_var_req).await?;

    let local_var_status = local_var_resp.status();
    let local_var_content = local_var_resp.text().await?;

    if !local_var_status.is_client_error() && !local_var_status.is_server_error() {
        serde_json::from_str(&local_var_content).map_err(Error::from)
    } else {
        let local_var_entity: Option<SearchRestaurantsError> = serde_json::from_str(&local_var_content).ok();
        let local_var_error = ResponseContent { status: local_var_status, content: local_var_content, entity: local_var_entity };
        Err(Error::ResponseError(local_var_error))
    }
}

