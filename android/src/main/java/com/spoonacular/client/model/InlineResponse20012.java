package com.spoonacular.client.model;

import java.util.*;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20012  {
  
  @SerializedName("calories")
  private String calories = null;
  @SerializedName("carbs")
  private String carbs = null;
  @SerializedName("fat")
  private String fat = null;
  @SerializedName("protein")
  private String protein = null;
  @SerializedName("bad")
  private List<Object> bad = null;
  @SerializedName("good")
  private List<Object> good = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getCalories() {
    return calories;
  }
  public void setCalories(String calories) {
    this.calories = calories;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getCarbs() {
    return carbs;
  }
  public void setCarbs(String carbs) {
    this.carbs = carbs;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getFat() {
    return fat;
  }
  public void setFat(String fat) {
    this.fat = fat;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getProtein() {
    return protein;
  }
  public void setProtein(String protein) {
    this.protein = protein;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<Object> getBad() {
    return bad;
  }
  public void setBad(List<Object> bad) {
    this.bad = bad;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<Object> getGood() {
    return good;
  }
  public void setGood(List<Object> good) {
    this.good = good;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20012 inlineResponse20012 = (InlineResponse20012) o;
    return (this.calories == null ? inlineResponse20012.calories == null : this.calories.equals(inlineResponse20012.calories)) &&
        (this.carbs == null ? inlineResponse20012.carbs == null : this.carbs.equals(inlineResponse20012.carbs)) &&
        (this.fat == null ? inlineResponse20012.fat == null : this.fat.equals(inlineResponse20012.fat)) &&
        (this.protein == null ? inlineResponse20012.protein == null : this.protein.equals(inlineResponse20012.protein)) &&
        (this.bad == null ? inlineResponse20012.bad == null : this.bad.equals(inlineResponse20012.bad)) &&
        (this.good == null ? inlineResponse20012.good == null : this.good.equals(inlineResponse20012.good));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.calories == null ? 0: this.calories.hashCode());
    result = 31 * result + (this.carbs == null ? 0: this.carbs.hashCode());
    result = 31 * result + (this.fat == null ? 0: this.fat.hashCode());
    result = 31 * result + (this.protein == null ? 0: this.protein.hashCode());
    result = 31 * result + (this.bad == null ? 0: this.bad.hashCode());
    result = 31 * result + (this.good == null ? 0: this.good.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20012 {\n");
    
    sb.append("  calories: ").append(calories).append("\n");
    sb.append("  carbs: ").append(carbs).append("\n");
    sb.append("  fat: ").append(fat).append("\n");
    sb.append("  protein: ").append(protein).append("\n");
    sb.append("  bad: ").append(bad).append("\n");
    sb.append("  good: ").append(good).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
