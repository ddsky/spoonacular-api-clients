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
import com.spoonacular.client.model.AutocompleteIngredientSearch200ResponseInner;
import java.math.BigDecimal;
import com.spoonacular.client.model.ComputeIngredientAmount200Response;
import java.io.File;
import com.spoonacular.client.model.GetIngredientSubstitutes200Response;
import com.spoonacular.client.model.IngredientInformation;
import com.spoonacular.client.model.IngredientSearch200Response;
import com.spoonacular.client.model.MapIngredientsToGroceryProducts200ResponseInner;
import com.spoonacular.client.model.MapIngredientsToGroceryProductsRequest;
import java.util.Set;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * API tests for IngredientsApi
 */
@Disabled
public class IngredientsApiTest {

    private final IngredientsApi api = new IngredientsApi();

    /**
     * Autocomplete Ingredient Search
     *
     * Autocomplete the entry of an ingredient.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void autocompleteIngredientSearchTest() throws ApiException {
        String query = null;
        Integer number = null;
        Boolean metaInformation = null;
        String intolerances = null;
        String language = null;
        Set<AutocompleteIngredientSearch200ResponseInner> response = api.autocompleteIngredientSearch(query, number, metaInformation, intolerances, language);
        // TODO: test validations
    }

    /**
     * Compute Ingredient Amount
     *
     * Compute the amount you need of a certain ingredient for a certain nutritional goal. For example, how much pineapple do you have to eat to get 10 grams of protein?
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void computeIngredientAmountTest() throws ApiException {
        Integer id = null;
        String nutrient = null;
        Integer target = null;
        String unit = null;
        ComputeIngredientAmount200Response response = api.computeIngredientAmount(id, nutrient, target, unit);
        // TODO: test validations
    }

    /**
     * Get Ingredient Information
     *
     * Use an ingredient id to get all available information about an ingredient, such as its image and supermarket aisle.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void getIngredientInformationTest() throws ApiException {
        Integer id = null;
        BigDecimal amount = null;
        String unit = null;
        IngredientInformation response = api.getIngredientInformation(id, amount, unit);
        // TODO: test validations
    }

    /**
     * Get Ingredient Substitutes
     *
     * Search for substitutes for a given ingredient.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void getIngredientSubstitutesTest() throws ApiException {
        String ingredientName = null;
        GetIngredientSubstitutes200Response response = api.getIngredientSubstitutes(ingredientName);
        // TODO: test validations
    }

    /**
     * Get Ingredient Substitutes by ID
     *
     * Search for substitutes for a given ingredient.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void getIngredientSubstitutesByIDTest() throws ApiException {
        Integer id = null;
        GetIngredientSubstitutes200Response response = api.getIngredientSubstitutesByID(id);
        // TODO: test validations
    }

    /**
     * Ingredient Search
     *
     * Search for simple whole foods (e.g. fruits, vegetables, nuts, grains, meat, fish, dairy etc.).
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void ingredientSearchTest() throws ApiException {
        String query = null;
        Boolean addChildren = null;
        BigDecimal minProteinPercent = null;
        BigDecimal maxProteinPercent = null;
        BigDecimal minFatPercent = null;
        BigDecimal maxFatPercent = null;
        BigDecimal minCarbsPercent = null;
        BigDecimal maxCarbsPercent = null;
        Boolean metaInformation = null;
        String intolerances = null;
        String sort = null;
        String sortDirection = null;
        Integer offset = null;
        Integer number = null;
        String language = null;
        IngredientSearch200Response response = api.ingredientSearch(query, addChildren, minProteinPercent, maxProteinPercent, minFatPercent, maxFatPercent, minCarbsPercent, maxCarbsPercent, metaInformation, intolerances, sort, sortDirection, offset, number, language);
        // TODO: test validations
    }

    /**
     * Ingredients by ID Image
     *
     * Visualize a recipe&#39;s ingredient list.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void ingredientsByIDImageTest() throws ApiException {
        Integer id = null;
        String measure = null;
        File response = api.ingredientsByIDImage(id, measure);
        // TODO: test validations
    }

    /**
     * Map Ingredients to Grocery Products
     *
     * Map a set of ingredients to products you can buy in the grocery store.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void mapIngredientsToGroceryProductsTest() throws ApiException {
        MapIngredientsToGroceryProductsRequest mapIngredientsToGroceryProductsRequest = null;
        Set<MapIngredientsToGroceryProducts200ResponseInner> response = api.mapIngredientsToGroceryProducts(mapIngredientsToGroceryProductsRequest);
        // TODO: test validations
    }

    /**
     * Ingredients Widget
     *
     * Visualize ingredients of a recipe. You can play around with that endpoint!
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void visualizeIngredientsTest() throws ApiException {
        String ingredientList = null;
        BigDecimal servings = null;
        String language = null;
        String measure = null;
        String view = null;
        Boolean defaultCss = null;
        Boolean showBacklink = null;
        String response = api.visualizeIngredients(ingredientList, servings, language, measure, view, defaultCss, showBacklink);
        // TODO: test validations
    }

}
