package com.spoonacular.client.model;

import com.spoonacular.client.model.InlineResponse20038NutritionSummary;
import com.spoonacular.client.model.InlineResponse20041Items;
import java.util.*;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20041Days  {
  
  @SerializedName("nutritionSummary")
  private InlineResponse20038NutritionSummary nutritionSummary = null;
  @SerializedName("nutritionSummaryBreakfast")
  private InlineResponse20038NutritionSummary nutritionSummaryBreakfast = null;
  @SerializedName("nutritionSummaryLunch")
  private InlineResponse20038NutritionSummary nutritionSummaryLunch = null;
  @SerializedName("nutritionSummaryDinner")
  private InlineResponse20038NutritionSummary nutritionSummaryDinner = null;
  @SerializedName("day")
  private String day = null;
  @SerializedName("items")
  private List<InlineResponse20041Items> items = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public InlineResponse20038NutritionSummary getNutritionSummary() {
    return nutritionSummary;
  }
  public void setNutritionSummary(InlineResponse20038NutritionSummary nutritionSummary) {
    this.nutritionSummary = nutritionSummary;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public InlineResponse20038NutritionSummary getNutritionSummaryBreakfast() {
    return nutritionSummaryBreakfast;
  }
  public void setNutritionSummaryBreakfast(InlineResponse20038NutritionSummary nutritionSummaryBreakfast) {
    this.nutritionSummaryBreakfast = nutritionSummaryBreakfast;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public InlineResponse20038NutritionSummary getNutritionSummaryLunch() {
    return nutritionSummaryLunch;
  }
  public void setNutritionSummaryLunch(InlineResponse20038NutritionSummary nutritionSummaryLunch) {
    this.nutritionSummaryLunch = nutritionSummaryLunch;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public InlineResponse20038NutritionSummary getNutritionSummaryDinner() {
    return nutritionSummaryDinner;
  }
  public void setNutritionSummaryDinner(InlineResponse20038NutritionSummary nutritionSummaryDinner) {
    this.nutritionSummaryDinner = nutritionSummaryDinner;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getDay() {
    return day;
  }
  public void setDay(String day) {
    this.day = day;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<InlineResponse20041Items> getItems() {
    return items;
  }
  public void setItems(List<InlineResponse20041Items> items) {
    this.items = items;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20041Days inlineResponse20041Days = (InlineResponse20041Days) o;
    return (this.nutritionSummary == null ? inlineResponse20041Days.nutritionSummary == null : this.nutritionSummary.equals(inlineResponse20041Days.nutritionSummary)) &&
        (this.nutritionSummaryBreakfast == null ? inlineResponse20041Days.nutritionSummaryBreakfast == null : this.nutritionSummaryBreakfast.equals(inlineResponse20041Days.nutritionSummaryBreakfast)) &&
        (this.nutritionSummaryLunch == null ? inlineResponse20041Days.nutritionSummaryLunch == null : this.nutritionSummaryLunch.equals(inlineResponse20041Days.nutritionSummaryLunch)) &&
        (this.nutritionSummaryDinner == null ? inlineResponse20041Days.nutritionSummaryDinner == null : this.nutritionSummaryDinner.equals(inlineResponse20041Days.nutritionSummaryDinner)) &&
        (this.day == null ? inlineResponse20041Days.day == null : this.day.equals(inlineResponse20041Days.day)) &&
        (this.items == null ? inlineResponse20041Days.items == null : this.items.equals(inlineResponse20041Days.items));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.nutritionSummary == null ? 0: this.nutritionSummary.hashCode());
    result = 31 * result + (this.nutritionSummaryBreakfast == null ? 0: this.nutritionSummaryBreakfast.hashCode());
    result = 31 * result + (this.nutritionSummaryLunch == null ? 0: this.nutritionSummaryLunch.hashCode());
    result = 31 * result + (this.nutritionSummaryDinner == null ? 0: this.nutritionSummaryDinner.hashCode());
    result = 31 * result + (this.day == null ? 0: this.day.hashCode());
    result = 31 * result + (this.items == null ? 0: this.items.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20041Days {\n");
    
    sb.append("  nutritionSummary: ").append(nutritionSummary).append("\n");
    sb.append("  nutritionSummaryBreakfast: ").append(nutritionSummaryBreakfast).append("\n");
    sb.append("  nutritionSummaryLunch: ").append(nutritionSummaryLunch).append("\n");
    sb.append("  nutritionSummaryDinner: ").append(nutritionSummaryDinner).append("\n");
    sb.append("  day: ").append(day).append("\n");
    sb.append("  items: ").append(items).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
