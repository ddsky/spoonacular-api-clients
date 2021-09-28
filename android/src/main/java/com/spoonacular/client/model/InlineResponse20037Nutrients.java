package com.spoonacular.client.model;

import java.math.BigDecimal;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20037Nutrients  {
  
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
    InlineResponse20037Nutrients inlineResponse20037Nutrients = (InlineResponse20037Nutrients) o;
    return (this.calories == null ? inlineResponse20037Nutrients.calories == null : this.calories.equals(inlineResponse20037Nutrients.calories)) &&
        (this.carbohydrates == null ? inlineResponse20037Nutrients.carbohydrates == null : this.carbohydrates.equals(inlineResponse20037Nutrients.carbohydrates)) &&
        (this.fat == null ? inlineResponse20037Nutrients.fat == null : this.fat.equals(inlineResponse20037Nutrients.fat)) &&
        (this.protein == null ? inlineResponse20037Nutrients.protein == null : this.protein.equals(inlineResponse20037Nutrients.protein));
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
    sb.append("class InlineResponse20037Nutrients {\n");
    
    sb.append("  calories: ").append(calories).append("\n");
    sb.append("  carbohydrates: ").append(carbohydrates).append("\n");
    sb.append("  fat: ").append(fat).append("\n");
    sb.append("  protein: ").append(protein).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
