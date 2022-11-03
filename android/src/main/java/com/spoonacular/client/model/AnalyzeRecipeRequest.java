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

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class AnalyzeRecipeRequest {
  
  @SerializedName("language")
  private String language = null;
  @SerializedName("includeNutrition")
  private Boolean includeNutrition = null;
  @SerializedName("includeTaste")
  private Boolean includeTaste = null;

  /**
   * The input language, either \"en\" or \"de\".
   **/
  @ApiModelProperty(value = "The input language, either \"en\" or \"de\".")
  public String getLanguage() {
    return language;
  }
  public void setLanguage(String language) {
    this.language = language;
  }

  /**
   * Whether nutrition data should be added to correctly parsed ingredients.
   **/
  @ApiModelProperty(value = "Whether nutrition data should be added to correctly parsed ingredients.")
  public Boolean getIncludeNutrition() {
    return includeNutrition;
  }
  public void setIncludeNutrition(Boolean includeNutrition) {
    this.includeNutrition = includeNutrition;
  }

  /**
   * Whether taste data should be added to correctly parsed ingredients.
   **/
  @ApiModelProperty(value = "Whether taste data should be added to correctly parsed ingredients.")
  public Boolean getIncludeTaste() {
    return includeTaste;
  }
  public void setIncludeTaste(Boolean includeTaste) {
    this.includeTaste = includeTaste;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    AnalyzeRecipeRequest analyzeRecipeRequest = (AnalyzeRecipeRequest) o;
    return (this.language == null ? analyzeRecipeRequest.language == null : this.language.equals(analyzeRecipeRequest.language)) &&
        (this.includeNutrition == null ? analyzeRecipeRequest.includeNutrition == null : this.includeNutrition.equals(analyzeRecipeRequest.includeNutrition)) &&
        (this.includeTaste == null ? analyzeRecipeRequest.includeTaste == null : this.includeTaste.equals(analyzeRecipeRequest.includeTaste));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.language == null ? 0: this.language.hashCode());
    result = 31 * result + (this.includeNutrition == null ? 0: this.includeNutrition.hashCode());
    result = 31 * result + (this.includeTaste == null ? 0: this.includeTaste.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class AnalyzeRecipeRequest {\n");
    
    sb.append("  language: ").append(language).append("\n");
    sb.append("  includeNutrition: ").append(includeNutrition).append("\n");
    sb.append("  includeTaste: ").append(includeTaste).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
