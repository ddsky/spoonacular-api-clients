/**
 * spoonacular API
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over 380,000 recipes, thousands of ingredients, 800,000 food products, and 100,000 menu items. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
 *
 * The version of the OpenAPI document: 1.1
 * Contact: mail@spoonacular.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package com.spoonacular.client.model;

import com.spoonacular.client.model.GetConversationSuggests200ResponseSuggests;
import com.spoonacular.client.model.OasAnyTypeNotMapped;
import java.util.*;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

/**
 * 
 **/
@ApiModel(description = "")
public class GetConversationSuggests200Response {
  
  @SerializedName("suggests")
  private GetConversationSuggests200ResponseSuggests suggests = null;
  @SerializedName("words")
  private List<OasAnyTypeNotMapped> words = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public GetConversationSuggests200ResponseSuggests getSuggests() {
    return suggests;
  }
  public void setSuggests(GetConversationSuggests200ResponseSuggests suggests) {
    this.suggests = suggests;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<OasAnyTypeNotMapped> getWords() {
    return words;
  }
  public void setWords(List<OasAnyTypeNotMapped> words) {
    this.words = words;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    GetConversationSuggests200Response getConversationSuggests200Response = (GetConversationSuggests200Response) o;
    return (this.suggests == null ? getConversationSuggests200Response.suggests == null : this.suggests.equals(getConversationSuggests200Response.suggests)) &&
        (this.words == null ? getConversationSuggests200Response.words == null : this.words.equals(getConversationSuggests200Response.words));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.suggests == null ? 0: this.suggests.hashCode());
    result = 31 * result + (this.words == null ? 0: this.words.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class GetConversationSuggests200Response {\n");
    
    sb.append("  suggests: ").append(suggests).append("\n");
    sb.append("  words: ").append(words).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}