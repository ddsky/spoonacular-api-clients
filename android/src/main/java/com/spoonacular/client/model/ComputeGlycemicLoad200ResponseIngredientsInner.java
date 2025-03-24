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

import java.math.BigDecimal;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class ComputeGlycemicLoad200ResponseIngredientsInner {
  
  @SerializedName("id")
  private Integer id = null;
  @SerializedName("original")
  private String original = null;
  @SerializedName("glycemicIndex")
  private BigDecimal glycemicIndex = null;
  @SerializedName("glycemicLoad")
  private BigDecimal glycemicLoad = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Integer getId() {
    return id;
  }
  public void setId(Integer id) {
    this.id = id;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getOriginal() {
    return original;
  }
  public void setOriginal(String original) {
    this.original = original;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public BigDecimal getGlycemicIndex() {
    return glycemicIndex;
  }
  public void setGlycemicIndex(BigDecimal glycemicIndex) {
    this.glycemicIndex = glycemicIndex;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public BigDecimal getGlycemicLoad() {
    return glycemicLoad;
  }
  public void setGlycemicLoad(BigDecimal glycemicLoad) {
    this.glycemicLoad = glycemicLoad;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ComputeGlycemicLoad200ResponseIngredientsInner computeGlycemicLoad200ResponseIngredientsInner = (ComputeGlycemicLoad200ResponseIngredientsInner) o;
    return (this.id == null ? computeGlycemicLoad200ResponseIngredientsInner.id == null : this.id.equals(computeGlycemicLoad200ResponseIngredientsInner.id)) &&
        (this.original == null ? computeGlycemicLoad200ResponseIngredientsInner.original == null : this.original.equals(computeGlycemicLoad200ResponseIngredientsInner.original)) &&
        (this.glycemicIndex == null ? computeGlycemicLoad200ResponseIngredientsInner.glycemicIndex == null : this.glycemicIndex.equals(computeGlycemicLoad200ResponseIngredientsInner.glycemicIndex)) &&
        (this.glycemicLoad == null ? computeGlycemicLoad200ResponseIngredientsInner.glycemicLoad == null : this.glycemicLoad.equals(computeGlycemicLoad200ResponseIngredientsInner.glycemicLoad));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.original == null ? 0: this.original.hashCode());
    result = 31 * result + (this.glycemicIndex == null ? 0: this.glycemicIndex.hashCode());
    result = 31 * result + (this.glycemicLoad == null ? 0: this.glycemicLoad.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class ComputeGlycemicLoad200ResponseIngredientsInner {\n");
    
    sb.append("  id: ").append(id).append("\n");
    sb.append("  original: ").append(original).append("\n");
    sb.append("  glycemicIndex: ").append(glycemicIndex).append("\n");
    sb.append("  glycemicLoad: ").append(glycemicLoad).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
