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

import com.spoonacular.client.model.GetConversationSuggests200ResponseSuggestsInner;
import java.util.*;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class GetConversationSuggests200ResponseSuggests {
  
  @SerializedName("_")
  private Set<GetConversationSuggests200ResponseSuggestsInner> _ = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Set<GetConversationSuggests200ResponseSuggestsInner> get() {
    return _;
  }
  public void set(Set<GetConversationSuggests200ResponseSuggestsInner> _) {
    this._ = _;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    GetConversationSuggests200ResponseSuggests getConversationSuggests200ResponseSuggests = (GetConversationSuggests200ResponseSuggests) o;
    return (this._ == null ? getConversationSuggests200ResponseSuggests._ == null : this._.equals(getConversationSuggests200ResponseSuggests._));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this._ == null ? 0: this._.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class GetConversationSuggests200ResponseSuggests {\n");
    
    sb.append("  _: ").append(_).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
