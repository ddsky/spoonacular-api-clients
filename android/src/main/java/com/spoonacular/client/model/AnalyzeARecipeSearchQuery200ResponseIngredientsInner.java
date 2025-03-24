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

@ApiModel(description = "")
public class AnalyzeARecipeSearchQuery200ResponseIngredientsInner {
  
  @SerializedName("image")
  private String image = null;
  @SerializedName("include")
  private Boolean include = null;
  @SerializedName("name")
  private String name = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getImage() {
    return image;
  }
  public void setImage(String image) {
    this.image = image;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Boolean getInclude() {
    return include;
  }
  public void setInclude(Boolean include) {
    this.include = include;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    AnalyzeARecipeSearchQuery200ResponseIngredientsInner analyzeARecipeSearchQuery200ResponseIngredientsInner = (AnalyzeARecipeSearchQuery200ResponseIngredientsInner) o;
    return (this.image == null ? analyzeARecipeSearchQuery200ResponseIngredientsInner.image == null : this.image.equals(analyzeARecipeSearchQuery200ResponseIngredientsInner.image)) &&
        (this.include == null ? analyzeARecipeSearchQuery200ResponseIngredientsInner.include == null : this.include.equals(analyzeARecipeSearchQuery200ResponseIngredientsInner.include)) &&
        (this.name == null ? analyzeARecipeSearchQuery200ResponseIngredientsInner.name == null : this.name.equals(analyzeARecipeSearchQuery200ResponseIngredientsInner.name));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.image == null ? 0: this.image.hashCode());
    result = 31 * result + (this.include == null ? 0: this.include.hashCode());
    result = 31 * result + (this.name == null ? 0: this.name.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class AnalyzeARecipeSearchQuery200ResponseIngredientsInner {\n");
    
    sb.append("  image: ").append(image).append("\n");
    sb.append("  include: ").append(include).append("\n");
    sb.append("  name: ").append(name).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
