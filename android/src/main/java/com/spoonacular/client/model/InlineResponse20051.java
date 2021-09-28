package com.spoonacular.client.model;

import java.util.*;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20051  {
  
  @SerializedName("Articles")
  private List<Object> articles = null;
  @SerializedName("Grocery Products")
  private List<Object> groceryProducts = null;
  @SerializedName("Menu Items")
  private List<Object> menuItems = null;
  @SerializedName("Recipes")
  private List<Object> recipes = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<Object> getArticles() {
    return articles;
  }
  public void setArticles(List<Object> articles) {
    this.articles = articles;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<Object> getGroceryProducts() {
    return groceryProducts;
  }
  public void setGroceryProducts(List<Object> groceryProducts) {
    this.groceryProducts = groceryProducts;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<Object> getMenuItems() {
    return menuItems;
  }
  public void setMenuItems(List<Object> menuItems) {
    this.menuItems = menuItems;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<Object> getRecipes() {
    return recipes;
  }
  public void setRecipes(List<Object> recipes) {
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
    InlineResponse20051 inlineResponse20051 = (InlineResponse20051) o;
    return (this.articles == null ? inlineResponse20051.articles == null : this.articles.equals(inlineResponse20051.articles)) &&
        (this.groceryProducts == null ? inlineResponse20051.groceryProducts == null : this.groceryProducts.equals(inlineResponse20051.groceryProducts)) &&
        (this.menuItems == null ? inlineResponse20051.menuItems == null : this.menuItems.equals(inlineResponse20051.menuItems)) &&
        (this.recipes == null ? inlineResponse20051.recipes == null : this.recipes.equals(inlineResponse20051.recipes));
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
    sb.append("class InlineResponse20051 {\n");
    
    sb.append("  articles: ").append(articles).append("\n");
    sb.append("  groceryProducts: ").append(groceryProducts).append("\n");
    sb.append("  menuItems: ").append(menuItems).append("\n");
    sb.append("  recipes: ").append(recipes).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
