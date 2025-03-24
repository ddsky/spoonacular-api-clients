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

import java.util.*;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

/**
 * 
 **/
@ApiModel(description = "")
public class GetDishPairingForWine200Response {
  
  @SerializedName("pairings")
  private List<String> pairings = null;
  @SerializedName("text")
  private String text = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<String> getPairings() {
    return pairings;
  }
  public void setPairings(List<String> pairings) {
    this.pairings = pairings;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getText() {
    return text;
  }
  public void setText(String text) {
    this.text = text;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    GetDishPairingForWine200Response getDishPairingForWine200Response = (GetDishPairingForWine200Response) o;
    return (this.pairings == null ? getDishPairingForWine200Response.pairings == null : this.pairings.equals(getDishPairingForWine200Response.pairings)) &&
        (this.text == null ? getDishPairingForWine200Response.text == null : this.text.equals(getDishPairingForWine200Response.text));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.pairings == null ? 0: this.pairings.hashCode());
    result = 31 * result + (this.text == null ? 0: this.text.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class GetDishPairingForWine200Response {\n");
    
    sb.append("  pairings: ").append(pairings).append("\n");
    sb.append("  text: ").append(text).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
