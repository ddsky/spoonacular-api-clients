package com.spoonacular.client.model;

import com.spoonacular.client.model.InlineResponse20021Calories;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20021  {
  
  @SerializedName("calories")
  private InlineResponse20021Calories calories = null;
  @SerializedName("carbs")
  private InlineResponse20021Calories carbs = null;
  @SerializedName("fat")
  private InlineResponse20021Calories fat = null;
  @SerializedName("protein")
  private InlineResponse20021Calories protein = null;
  @SerializedName("recipesUsed")
  private Integer recipesUsed = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public InlineResponse20021Calories getCalories() {
    return calories;
  }
  public void setCalories(InlineResponse20021Calories calories) {
    this.calories = calories;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public InlineResponse20021Calories getCarbs() {
    return carbs;
  }
  public void setCarbs(InlineResponse20021Calories carbs) {
    this.carbs = carbs;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public InlineResponse20021Calories getFat() {
    return fat;
  }
  public void setFat(InlineResponse20021Calories fat) {
    this.fat = fat;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public InlineResponse20021Calories getProtein() {
    return protein;
  }
  public void setProtein(InlineResponse20021Calories protein) {
    this.protein = protein;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Integer getRecipesUsed() {
    return recipesUsed;
  }
  public void setRecipesUsed(Integer recipesUsed) {
    this.recipesUsed = recipesUsed;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20021 inlineResponse20021 = (InlineResponse20021) o;
    return (this.calories == null ? inlineResponse20021.calories == null : this.calories.equals(inlineResponse20021.calories)) &&
        (this.carbs == null ? inlineResponse20021.carbs == null : this.carbs.equals(inlineResponse20021.carbs)) &&
        (this.fat == null ? inlineResponse20021.fat == null : this.fat.equals(inlineResponse20021.fat)) &&
        (this.protein == null ? inlineResponse20021.protein == null : this.protein.equals(inlineResponse20021.protein)) &&
        (this.recipesUsed == null ? inlineResponse20021.recipesUsed == null : this.recipesUsed.equals(inlineResponse20021.recipesUsed));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.calories == null ? 0: this.calories.hashCode());
    result = 31 * result + (this.carbs == null ? 0: this.carbs.hashCode());
    result = 31 * result + (this.fat == null ? 0: this.fat.hashCode());
    result = 31 * result + (this.protein == null ? 0: this.protein.hashCode());
    result = 31 * result + (this.recipesUsed == null ? 0: this.recipesUsed.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20021 {\n");
    
    sb.append("  calories: ").append(calories).append("\n");
    sb.append("  carbs: ").append(carbs).append("\n");
    sb.append("  fat: ").append(fat).append("\n");
    sb.append("  protein: ").append(protein).append("\n");
    sb.append("  recipesUsed: ").append(recipesUsed).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
