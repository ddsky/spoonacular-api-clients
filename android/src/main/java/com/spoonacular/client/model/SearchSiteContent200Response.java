/**
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

package com.spoonacular.client.model;

import com.spoonacular.client.model.SearchResult;
import java.util.*;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

/**
 * 
 **/
@ApiModel(description = "")
public class SearchSiteContent200Response {
  
  @SerializedName("Articles")
  private List<SearchResult> articles = null;
  @SerializedName("Grocery Products")
  private List<SearchResult> groceryProducts = null;
  @SerializedName("Menu Items")
  private List<SearchResult> menuItems = null;
  @SerializedName("Recipes")
  private List<SearchResult> recipes = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<SearchResult> getArticles() {
    return articles;
  }
  public void setArticles(List<SearchResult> articles) {
    this.articles = articles;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<SearchResult> getGroceryProducts() {
    return groceryProducts;
  }
  public void setGroceryProducts(List<SearchResult> groceryProducts) {
    this.groceryProducts = groceryProducts;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<SearchResult> getMenuItems() {
    return menuItems;
  }
  public void setMenuItems(List<SearchResult> menuItems) {
    this.menuItems = menuItems;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<SearchResult> getRecipes() {
    return recipes;
  }
  public void setRecipes(List<SearchResult> recipes) {
    this.recipes = recipes;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SearchSiteContent200Response searchSiteContent200Response = (SearchSiteContent200Response) o;
    return (this.articles == null ? searchSiteContent200Response.articles == null : this.articles.equals(searchSiteContent200Response.articles)) &&
        (this.groceryProducts == null ? searchSiteContent200Response.groceryProducts == null : this.groceryProducts.equals(searchSiteContent200Response.groceryProducts)) &&
        (this.menuItems == null ? searchSiteContent200Response.menuItems == null : this.menuItems.equals(searchSiteContent200Response.menuItems)) &&
        (this.recipes == null ? searchSiteContent200Response.recipes == null : this.recipes.equals(searchSiteContent200Response.recipes));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.articles == null ? 0: this.articles.hashCode());
    result = 31 * result + (this.groceryProducts == null ? 0: this.groceryProducts.hashCode());
    result = 31 * result + (this.menuItems == null ? 0: this.menuItems.hashCode());
    result = 31 * result + (this.recipes == null ? 0: this.recipes.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class SearchSiteContent200Response {\n");
    
    sb.append("  articles: ").append(articles).append("\n");
    sb.append("  groceryProducts: ").append(groceryProducts).append("\n");
    sb.append("  menuItems: ").append(menuItems).append("\n");
    sb.append("  recipes: ").append(recipes).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
