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

import com.spoonacular.client.model.GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount {
  
  @SerializedName("metric")
  private GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric metric = null;
  @SerializedName("us")
  private GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric us = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric getMetric() {
    return metric;
  }
  public void setMetric(GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric metric) {
    this.metric = metric;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric getUs() {
    return us;
  }
  public void setUs(GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric us) {
    this.us = us;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount getRecipePriceBreakdownByID200ResponseIngredientsInnerAmount = (GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount) o;
    return (this.metric == null ? getRecipePriceBreakdownByID200ResponseIngredientsInnerAmount.metric == null : this.metric.equals(getRecipePriceBreakdownByID200ResponseIngredientsInnerAmount.metric)) &&
        (this.us == null ? getRecipePriceBreakdownByID200ResponseIngredientsInnerAmount.us == null : this.us.equals(getRecipePriceBreakdownByID200ResponseIngredientsInnerAmount.us));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.metric == null ? 0: this.metric.hashCode());
    result = 31 * result + (this.us == null ? 0: this.us.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount {\n");
    
    sb.append("  metric: ").append(metric).append("\n");
    sb.append("  us: ").append(us).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
