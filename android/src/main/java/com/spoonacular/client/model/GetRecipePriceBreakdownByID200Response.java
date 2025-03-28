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

import com.spoonacular.client.model.GetRecipePriceBreakdownByID200ResponseIngredientsInner;
import java.math.BigDecimal;
import java.util.*;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

/**
 * 
 **/
@ApiModel(description = "")
public class GetRecipePriceBreakdownByID200Response {
  
  @SerializedName("ingredients")
  private Set<GetRecipePriceBreakdownByID200ResponseIngredientsInner> ingredients = null;
  @SerializedName("totalCost")
  private BigDecimal totalCost = null;
  @SerializedName("totalCostPerServing")
  private BigDecimal totalCostPerServing = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Set<GetRecipePriceBreakdownByID200ResponseIngredientsInner> getIngredients() {
    return ingredients;
  }
  public void setIngredients(Set<GetRecipePriceBreakdownByID200ResponseIngredientsInner> ingredients) {
    this.ingredients = ingredients;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public BigDecimal getTotalCost() {
    return totalCost;
  }
  public void setTotalCost(BigDecimal totalCost) {
    this.totalCost = totalCost;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public BigDecimal getTotalCostPerServing() {
    return totalCostPerServing;
  }
  public void setTotalCostPerServing(BigDecimal totalCostPerServing) {
    this.totalCostPerServing = totalCostPerServing;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    GetRecipePriceBreakdownByID200Response getRecipePriceBreakdownByID200Response = (GetRecipePriceBreakdownByID200Response) o;
    return (this.ingredients == null ? getRecipePriceBreakdownByID200Response.ingredients == null : this.ingredients.equals(getRecipePriceBreakdownByID200Response.ingredients)) &&
        (this.totalCost == null ? getRecipePriceBreakdownByID200Response.totalCost == null : this.totalCost.equals(getRecipePriceBreakdownByID200Response.totalCost)) &&
        (this.totalCostPerServing == null ? getRecipePriceBreakdownByID200Response.totalCostPerServing == null : this.totalCostPerServing.equals(getRecipePriceBreakdownByID200Response.totalCostPerServing));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.ingredients == null ? 0: this.ingredients.hashCode());
    result = 31 * result + (this.totalCost == null ? 0: this.totalCost.hashCode());
    result = 31 * result + (this.totalCostPerServing == null ? 0: this.totalCostPerServing.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class GetRecipePriceBreakdownByID200Response {\n");
    
    sb.append("  ingredients: ").append(ingredients).append("\n");
    sb.append("  totalCost: ").append(totalCost).append("\n");
    sb.append("  totalCostPerServing: ").append(totalCostPerServing).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
