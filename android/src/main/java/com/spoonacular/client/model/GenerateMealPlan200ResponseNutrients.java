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
public class GenerateMealPlan200ResponseNutrients {
  
  @SerializedName("calories")
  private BigDecimal calories = null;
  @SerializedName("carbohydrates")
  private BigDecimal carbohydrates = null;
  @SerializedName("fat")
  private BigDecimal fat = null;
  @SerializedName("protein")
  private BigDecimal protein = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public BigDecimal getCalories() {
    return calories;
  }
  public void setCalories(BigDecimal calories) {
    this.calories = calories;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public BigDecimal getCarbohydrates() {
    return carbohydrates;
  }
  public void setCarbohydrates(BigDecimal carbohydrates) {
    this.carbohydrates = carbohydrates;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public BigDecimal getFat() {
    return fat;
  }
  public void setFat(BigDecimal fat) {
    this.fat = fat;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public BigDecimal getProtein() {
    return protein;
  }
  public void setProtein(BigDecimal protein) {
    this.protein = protein;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    GenerateMealPlan200ResponseNutrients generateMealPlan200ResponseNutrients = (GenerateMealPlan200ResponseNutrients) o;
    return (this.calories == null ? generateMealPlan200ResponseNutrients.calories == null : this.calories.equals(generateMealPlan200ResponseNutrients.calories)) &&
        (this.carbohydrates == null ? generateMealPlan200ResponseNutrients.carbohydrates == null : this.carbohydrates.equals(generateMealPlan200ResponseNutrients.carbohydrates)) &&
        (this.fat == null ? generateMealPlan200ResponseNutrients.fat == null : this.fat.equals(generateMealPlan200ResponseNutrients.fat)) &&
        (this.protein == null ? generateMealPlan200ResponseNutrients.protein == null : this.protein.equals(generateMealPlan200ResponseNutrients.protein));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.calories == null ? 0: this.calories.hashCode());
    result = 31 * result + (this.carbohydrates == null ? 0: this.carbohydrates.hashCode());
    result = 31 * result + (this.fat == null ? 0: this.fat.hashCode());
    result = 31 * result + (this.protein == null ? 0: this.protein.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class GenerateMealPlan200ResponseNutrients {\n");
    
    sb.append("  calories: ").append(calories).append("\n");
    sb.append("  carbohydrates: ").append(carbohydrates).append("\n");
    sb.append("  fat: ").append(fat).append("\n");
    sb.append("  protein: ").append(protein).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
