use hyper;
use serde;
use serde_json;

#[derive(Debug)]
pub enum Error<T> {
    UriError(hyper::error::UriError),
    Hyper(hyper::Error),
    Serde(serde_json::Error),
    ApiError(ApiError<T>),
}

#[derive(Debug)]
pub struct ApiError<T> {
    pub code: hyper::StatusCode,
    pub content: Option<T>,
}

impl<'de, T> From<(hyper::StatusCode, &'de [u8])> for Error<T> 
    where T: serde::Deserialize<'de> {
    fn from(e: (hyper::StatusCode, &'de [u8])) -> Self {
        if e.1.len() == 0 {
            return Error::ApiError(ApiError{
                code: e.0,
                content: None,
            });
        }
        match serde_json::from_slice::<T>(e.1) {
            Ok(t) => Error::ApiError(ApiError{
                code: e.0,
                content: Some(t),
            }),
            Err(e) => {
                Error::from(e)
            }
        }
    }
}

impl<T> From<hyper::Error> for Error<T> {
    fn from(e: hyper::Error) -> Self {
        return Error::Hyper(e)
    }
}

impl<T> From<serde_json::Error> for Error<T> {
    fn from(e: serde_json::Error) -> Self {
        return Error::Serde(e)
    }
}

use super::models::*;

mod request;

mod ingredients_api;
pub use self::ingredients_api::{ IngredientsApi, IngredientsApiClient };
mod meal_planning_api;
pub use self::meal_planning_api::{ MealPlanningApi, MealPlanningApiClient };
mod menu_items_api;
pub use self::menu_items_api::{ MenuItemsApi, MenuItemsApiClient };
mod misc_api;
pub use self::misc_api::{ MiscApi, MiscApiClient };
mod products_api;
pub use self::products_api::{ ProductsApi, ProductsApiClient };
mod recipes_api;
pub use self::recipes_api::{ RecipesApi, RecipesApiClient };
mod wine_api;
pub use self::wine_api::{ WineApi, WineApiClient };

pub mod configuration;
pub mod client;
