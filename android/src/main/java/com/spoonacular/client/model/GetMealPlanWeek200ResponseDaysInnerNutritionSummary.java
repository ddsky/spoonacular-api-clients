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

import com.spoonacular.client.model.GetMealPlanWeek200ResponseDaysInnerNutritionSummaryNutrientsInner;
import java.util.*;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class GetMealPlanWeek200ResponseDaysInnerNutritionSummary {
  
  @SerializedName("nutrients")
  private Set<GetMealPlanWeek200ResponseDaysInnerNutritionSummaryNutrientsInner> nutrients = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Set<GetMealPlanWeek200ResponseDaysInnerNutritionSummaryNutrientsInner> getNutrients() {
    return nutrients;
  }
  public void setNutrients(Set<GetMealPlanWeek200ResponseDaysInnerNutritionSummaryNutrientsInner> nutrients) {
    this.nutrients = nutrients;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    GetMealPlanWeek200ResponseDaysInnerNutritionSummary getMealPlanWeek200ResponseDaysInnerNutritionSummary = (GetMealPlanWeek200ResponseDaysInnerNutritionSummary) o;
    return (this.nutrients == null ? getMealPlanWeek200ResponseDaysInnerNutritionSummary.nutrients == null : this.nutrients.equals(getMealPlanWeek200ResponseDaysInnerNutritionSummary.nutrients));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.nutrients == null ? 0: this.nutrients.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class GetMealPlanWeek200ResponseDaysInnerNutritionSummary {\n");
    
    sb.append("  nutrients: ").append(nutrients).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
