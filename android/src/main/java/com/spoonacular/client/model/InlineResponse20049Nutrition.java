package com.spoonacular.client.model;

import com.spoonacular.client.model.InlineResponse20049NutritionCalories;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20049Nutrition  {
  
  @SerializedName("recipesUsed")
  private Integer recipesUsed = null;
  @SerializedName("calories")
  private InlineResponse20049NutritionCalories calories = null;
  @SerializedName("fat")
  private InlineResponse20049NutritionCalories fat = null;
  @SerializedName("protein")
  private InlineResponse20049NutritionCalories protein = null;
  @SerializedName("carbs")
  private InlineResponse20049NutritionCalories carbs = null;

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
  public InlineResponse20049NutritionCalories getCalories() {
    return calories;
  }
  public void setCalories(InlineResponse20049NutritionCalories calories) {
    this.calories = calories;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public InlineResponse20049NutritionCalories getFat() {
    return fat;
  }
  public void setFat(InlineResponse20049NutritionCalories fat) {
    this.fat = fat;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public InlineResponse20049NutritionCalories getProtein() {
    return protein;
  }
  public void setProtein(InlineResponse20049NutritionCalories protein) {
    this.protein = protein;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public InlineResponse20049NutritionCalories getCarbs() {
    return carbs;
  }
  public void setCarbs(InlineResponse20049NutritionCalories carbs) {
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
    InlineResponse20049Nutrition inlineResponse20049Nutrition = (InlineResponse20049Nutrition) o;
    return (this.recipesUsed == null ? inlineResponse20049Nutrition.recipesUsed == null : this.recipesUsed.equals(inlineResponse20049Nutrition.recipesUsed)) &&
        (this.calories == null ? inlineResponse20049Nutrition.calories == null : this.calories.equals(inlineResponse20049Nutrition.calories)) &&
        (this.fat == null ? inlineResponse20049Nutrition.fat == null : this.fat.equals(inlineResponse20049Nutrition.fat)) &&
        (this.protein == null ? inlineResponse20049Nutrition.protein == null : this.protein.equals(inlineResponse20049Nutrition.protein)) &&
        (this.carbs == null ? inlineResponse20049Nutrition.carbs == null : this.carbs.equals(inlineResponse20049Nutrition.carbs));
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
    sb.append("class InlineResponse20049Nutrition {\n");
    
    sb.append("  recipesUsed: ").append(recipesUsed).append("\n");
    sb.append("  calories: ").append(calories).append("\n");
    sb.append("  fat: ").append(fat).append("\n");
    sb.append("  protein: ").append(protein).append("\n");
    sb.append("  carbs: ").append(carbs).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
