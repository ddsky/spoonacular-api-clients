/**
 * spoonacular API
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
 *
 * The version of the OpenAPI document: 1.1
 * Contact: mail@spoonacular.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package com.spoonacular.client.model;

import com.spoonacular.client.model.GetShoppingList200ResponseAislesInner;
import java.math.BigDecimal;
import java.util.*;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

/**
 * 
 **/
@ApiModel(description = "")
public class GenerateShoppingList200Response {
  
  @SerializedName("aisles")
  private Set<GetShoppingList200ResponseAislesInner> aisles = null;
  @SerializedName("cost")
  private BigDecimal cost = null;
  @SerializedName("startDate")
  private BigDecimal startDate = null;
  @SerializedName("endDate")
  private BigDecimal endDate = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Set<GetShoppingList200ResponseAislesInner> getAisles() {
    return aisles;
  }
  public void setAisles(Set<GetShoppingList200ResponseAislesInner> aisles) {
    this.aisles = aisles;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public BigDecimal getCost() {
    return cost;
  }
  public void setCost(BigDecimal cost) {
    this.cost = cost;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public BigDecimal getStartDate() {
    return startDate;
  }
  public void setStartDate(BigDecimal startDate) {
    this.startDate = startDate;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public BigDecimal getEndDate() {
    return endDate;
  }
  public void setEndDate(BigDecimal endDate) {
    this.endDate = endDate;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    GenerateShoppingList200Response generateShoppingList200Response = (GenerateShoppingList200Response) o;
    return (this.aisles == null ? generateShoppingList200Response.aisles == null : this.aisles.equals(generateShoppingList200Response.aisles)) &&
        (this.cost == null ? generateShoppingList200Response.cost == null : this.cost.equals(generateShoppingList200Response.cost)) &&
        (this.startDate == null ? generateShoppingList200Response.startDate == null : this.startDate.equals(generateShoppingList200Response.startDate)) &&
        (this.endDate == null ? generateShoppingList200Response.endDate == null : this.endDate.equals(generateShoppingList200Response.endDate));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.aisles == null ? 0: this.aisles.hashCode());
    result = 31 * result + (this.cost == null ? 0: this.cost.hashCode());
    result = 31 * result + (this.startDate == null ? 0: this.startDate.hashCode());
    result = 31 * result + (this.endDate == null ? 0: this.endDate.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class GenerateShoppingList200Response {\n");
    
    sb.append("  aisles: ").append(aisles).append("\n");
    sb.append("  cost: ").append(cost).append("\n");
    sb.append("  startDate: ").append(startDate).append("\n");
    sb.append("  endDate: ").append(endDate).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
