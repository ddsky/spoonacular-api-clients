package com.spoonacular.client.model;

import java.math.BigDecimal;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class RecipesParseIngredientsNutritionNutrients  {
  
  @SerializedName("name")
  private String name = null;
  @SerializedName("amount")
  private BigDecimal amount = null;
  @SerializedName("unit")
  private String unit = null;
  @SerializedName("percentOfDailyNeeds")
  private BigDecimal percentOfDailyNeeds = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public BigDecimal getAmount() {
    return amount;
  }
  public void setAmount(BigDecimal amount) {
    this.amount = amount;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getUnit() {
    return unit;
  }
  public void setUnit(String unit) {
    this.unit = unit;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public BigDecimal getPercentOfDailyNeeds() {
    return percentOfDailyNeeds;
  }
  public void setPercentOfDailyNeeds(BigDecimal percentOfDailyNeeds) {
    this.percentOfDailyNeeds = percentOfDailyNeeds;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    RecipesParseIngredientsNutritionNutrients recipesParseIngredientsNutritionNutrients = (RecipesParseIngredientsNutritionNutrients) o;
    return (this.name == null ? recipesParseIngredientsNutritionNutrients.name == null : this.name.equals(recipesParseIngredientsNutritionNutrients.name)) &&
        (this.amount == null ? recipesParseIngredientsNutritionNutrients.amount == null : this.amount.equals(recipesParseIngredientsNutritionNutrients.amount)) &&
        (this.unit == null ? recipesParseIngredientsNutritionNutrients.unit == null : this.unit.equals(recipesParseIngredientsNutritionNutrients.unit)) &&
        (this.percentOfDailyNeeds == null ? recipesParseIngredientsNutritionNutrients.percentOfDailyNeeds == null : this.percentOfDailyNeeds.equals(recipesParseIngredientsNutritionNutrients.percentOfDailyNeeds));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.name == null ? 0: this.name.hashCode());
    result = 31 * result + (this.amount == null ? 0: this.amount.hashCode());
    result = 31 * result + (this.unit == null ? 0: this.unit.hashCode());
    result = 31 * result + (this.percentOfDailyNeeds == null ? 0: this.percentOfDailyNeeds.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class RecipesParseIngredientsNutritionNutrients {\n");
    
    sb.append("  name: ").append(name).append("\n");
    sb.append("  amount: ").append(amount).append("\n");
    sb.append("  unit: ").append(unit).append("\n");
    sb.append("  percentOfDailyNeeds: ").append(percentOfDailyNeeds).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
