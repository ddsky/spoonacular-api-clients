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

import com.spoonacular.client.model.ImageAnalysisByURL200ResponseNutritionCalories;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class ImageAnalysisByURL200ResponseNutrition {
  
  @SerializedName("recipesUsed")
  private Integer recipesUsed = null;
  @SerializedName("calories")
  private ImageAnalysisByURL200ResponseNutritionCalories calories = null;
  @SerializedName("fat")
  private ImageAnalysisByURL200ResponseNutritionCalories fat = null;
  @SerializedName("protein")
  private ImageAnalysisByURL200ResponseNutritionCalories protein = null;
  @SerializedName("carbs")
  private ImageAnalysisByURL200ResponseNutritionCalories carbs = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Integer getRecipesUsed() {
    return recipesUsed;
  }
  public void setRecipesUsed(Integer recipesUsed) {
    this.recipesUsed = recipesUsed;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public ImageAnalysisByURL200ResponseNutritionCalories getCalories() {
    return calories;
  }
  public void setCalories(ImageAnalysisByURL200ResponseNutritionCalories calories) {
    this.calories = calories;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public ImageAnalysisByURL200ResponseNutritionCalories getFat() {
    return fat;
  }
  public void setFat(ImageAnalysisByURL200ResponseNutritionCalories fat) {
    this.fat = fat;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public ImageAnalysisByURL200ResponseNutritionCalories getProtein() {
    return protein;
  }
  public void setProtein(ImageAnalysisByURL200ResponseNutritionCalories protein) {
    this.protein = protein;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public ImageAnalysisByURL200ResponseNutritionCalories getCarbs() {
    return carbs;
  }
  public void setCarbs(ImageAnalysisByURL200ResponseNutritionCalories carbs) {
    this.carbs = carbs;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ImageAnalysisByURL200ResponseNutrition imageAnalysisByURL200ResponseNutrition = (ImageAnalysisByURL200ResponseNutrition) o;
    return (this.recipesUsed == null ? imageAnalysisByURL200ResponseNutrition.recipesUsed == null : this.recipesUsed.equals(imageAnalysisByURL200ResponseNutrition.recipesUsed)) &&
        (this.calories == null ? imageAnalysisByURL200ResponseNutrition.calories == null : this.calories.equals(imageAnalysisByURL200ResponseNutrition.calories)) &&
        (this.fat == null ? imageAnalysisByURL200ResponseNutrition.fat == null : this.fat.equals(imageAnalysisByURL200ResponseNutrition.fat)) &&
        (this.protein == null ? imageAnalysisByURL200ResponseNutrition.protein == null : this.protein.equals(imageAnalysisByURL200ResponseNutrition.protein)) &&
        (this.carbs == null ? imageAnalysisByURL200ResponseNutrition.carbs == null : this.carbs.equals(imageAnalysisByURL200ResponseNutrition.carbs));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.recipesUsed == null ? 0: this.recipesUsed.hashCode());
    result = 31 * result + (this.calories == null ? 0: this.calories.hashCode());
    result = 31 * result + (this.fat == null ? 0: this.fat.hashCode());
    result = 31 * result + (this.protein == null ? 0: this.protein.hashCode());
    result = 31 * result + (this.carbs == null ? 0: this.carbs.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class ImageAnalysisByURL200ResponseNutrition {\n");
    
    sb.append("  recipesUsed: ").append(recipesUsed).append("\n");
    sb.append("  calories: ").append(calories).append("\n");
    sb.append("  fat: ").append(fat).append("\n");
    sb.append("  protein: ").append(protein).append("\n");
    sb.append("  carbs: ").append(carbs).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
