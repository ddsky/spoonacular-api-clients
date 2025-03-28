/*
 * spoonacular API
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
 *
 * The version of the OpenAPI document: 2.0.2
 * Contact: mail@spoonacular.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package com.spoonacular;

import com.spoonacular.client.ApiException;
import com.spoonacular.client.model.AutocompleteProductSearch200Response;
import java.math.BigDecimal;
import java.io.File;
import com.spoonacular.client.model.MenuItem;
import com.spoonacular.client.model.SearchMenuItems200Response;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * API tests for MenuItemsApi
 */
@Disabled
public class MenuItemsApiTest {

    private final MenuItemsApi api = new MenuItemsApi();

    /**
     * Autocomplete Menu Item Search
     *
     * Generate suggestions for menu items based on a (partial) query. The matches will be found by looking in the title only.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void autocompleteMenuItemSearchTest() throws ApiException {
        String query = null;
        Integer number = null;
        AutocompleteProductSearch200Response response = api.autocompleteMenuItemSearch(query, number);
        // TODO: test validations
    }

    /**
     * Get Menu Item Information
     *
     * Use a menu item id to get all available information about a menu item, such as nutrition.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void getMenuItemInformationTest() throws ApiException {
        Integer id = null;
        MenuItem response = api.getMenuItemInformation(id);
        // TODO: test validations
    }

    /**
     * Menu Item Nutrition by ID Image
     *
     * Visualize a menu item&#39;s nutritional information as HTML including CSS.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void menuItemNutritionByIDImageTest() throws ApiException {
        Integer id = null;
        File response = api.menuItemNutritionByIDImage(id);
        // TODO: test validations
    }

    /**
     * Menu Item Nutrition Label Image
     *
     * Visualize a menu item&#39;s nutritional label information as an image.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void menuItemNutritionLabelImageTest() throws ApiException {
        Integer id = null;
        Boolean showOptionalNutrients = null;
        Boolean showZeroValues = null;
        Boolean showIngredients = null;
        File response = api.menuItemNutritionLabelImage(id, showOptionalNutrients, showZeroValues, showIngredients);
        // TODO: test validations
    }

    /**
     * Menu Item Nutrition Label Widget
     *
     * Visualize a menu item&#39;s nutritional label information as HTML including CSS.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void menuItemNutritionLabelWidgetTest() throws ApiException {
        Integer id = null;
        Boolean defaultCss = null;
        Boolean showOptionalNutrients = null;
        Boolean showZeroValues = null;
        Boolean showIngredients = null;
        String response = api.menuItemNutritionLabelWidget(id, defaultCss, showOptionalNutrients, showZeroValues, showIngredients);
        // TODO: test validations
    }

    /**
     * Search Menu Items
     *
     * Search over 115,000 menu items from over 800 fast food and chain restaurants. For example, McDonald&#39;s Big Mac or Starbucks Mocha.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void searchMenuItemsTest() throws ApiException {
        String query = null;
        BigDecimal minCalories = null;
        BigDecimal maxCalories = null;
        BigDecimal minCarbs = null;
        BigDecimal maxCarbs = null;
        BigDecimal minProtein = null;
        BigDecimal maxProtein = null;
        BigDecimal minFat = null;
        BigDecimal maxFat = null;
        Boolean addMenuItemInformation = null;
        Integer offset = null;
        Integer number = null;
        SearchMenuItems200Response response = api.searchMenuItems(query, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, addMenuItemInformation, offset, number);
        // TODO: test validations
    }

    /**
     * Menu Item Nutrition by ID Widget
     *
     * Visualize a menu item&#39;s nutritional information as HTML including CSS.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void visualizeMenuItemNutritionByIDTest() throws ApiException {
        Integer id = null;
        Boolean defaultCss = null;
        String response = api.visualizeMenuItemNutritionByID(id, defaultCss);
        // TODO: test validations
    }

}
