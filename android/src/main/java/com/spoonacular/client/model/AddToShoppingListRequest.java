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

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

/**
 * 
 **/
@ApiModel(description = "")
public class AddToShoppingListRequest {
  
  @SerializedName("item")
  private String item = null;
  @SerializedName("aisle")
  private String aisle = null;
  @SerializedName("parse")
  private Boolean parse = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getItem() {
    return item;
  }
  public void setItem(String item) {
    this.item = item;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getAisle() {
    return aisle;
  }
  public void setAisle(String aisle) {
    this.aisle = aisle;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Boolean getParse() {
    return parse;
  }
  public void setParse(Boolean parse) {
    this.parse = parse;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    AddToShoppingListRequest addToShoppingListRequest = (AddToShoppingListRequest) o;
    return (this.item == null ? addToShoppingListRequest.item == null : this.item.equals(addToShoppingListRequest.item)) &&
        (this.aisle == null ? addToShoppingListRequest.aisle == null : this.aisle.equals(addToShoppingListRequest.aisle)) &&
        (this.parse == null ? addToShoppingListRequest.parse == null : this.parse.equals(addToShoppingListRequest.parse));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.item == null ? 0: this.item.hashCode());
    result = 31 * result + (this.aisle == null ? 0: this.aisle.hashCode());
    result = 31 * result + (this.parse == null ? 0: this.parse.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class AddToShoppingListRequest {\n");
    
    sb.append("  item: ").append(item).append("\n");
    sb.append("  aisle: ").append(aisle).append("\n");
    sb.append("  parse: ").append(parse).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
