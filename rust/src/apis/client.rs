use std::rc::Rc;

use hyper;
use super::configuration::Configuration;

pub struct APIClient<C: hyper::client::Connect> {
    configuration: Rc<Configuration<C>>,
    ingredients_api: Box<::apis::IngredientsApi>,
    meal_planning_api: Box<::apis::MealPlanningApi>,
    menu_items_api: Box<::apis::MenuItemsApi>,
    misc_api: Box<::apis::MiscApi>,
    products_api: Box<::apis::ProductsApi>,
    recipes_api: Box<::apis::RecipesApi>,
    wine_api: Box<::apis::WineApi>,
}

impl<C: hyper::client::Connect> APIClient<C> {
    pub fn new(configuration: Configuration<C>) -> APIClient<C> {
        let rc = Rc::new(configuration);

        APIClient {
            configuration: rc.clone(),
            ingredients_api: Box::new(::apis::IngredientsApiClient::new(rc.clone())),
            meal_planning_api: Box::new(::apis::MealPlanningApiClient::new(rc.clone())),
            menu_items_api: Box::new(::apis::MenuItemsApiClient::new(rc.clone())),
            misc_api: Box::new(::apis::MiscApiClient::new(rc.clone())),
            products_api: Box::new(::apis::ProductsApiClient::new(rc.clone())),
            recipes_api: Box::new(::apis::RecipesApiClient::new(rc.clone())),
            wine_api: Box::new(::apis::WineApiClient::new(rc.clone())),
        }
    }

    pub fn ingredients_api(&self) -> &::apis::IngredientsApi{
        self.ingredients_api.as_ref()
    }

    pub fn meal_planning_api(&self) -> &::apis::MealPlanningApi{
        self.meal_planning_api.as_ref()
    }

    pub fn menu_items_api(&self) -> &::apis::MenuItemsApi{
        self.menu_items_api.as_ref()
    }

    pub fn misc_api(&self) -> &::apis::MiscApi{
        self.misc_api.as_ref()
    }

    pub fn products_api(&self) -> &::apis::ProductsApi{
        self.products_api.as_ref()
    }

    pub fn recipes_api(&self) -> &::apis::RecipesApi{
        self.recipes_api.as_ref()
    }

    pub fn wine_api(&self) -> &::apis::WineApi{
        self.wine_api.as_ref()
    }

}
