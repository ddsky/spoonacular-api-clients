package com.spoonacular.client.model;

import java.math.BigDecimal;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class RecipesParseIngredientsEstimatedCost  {
  
  @SerializedName("value")
  private BigDecimal value = null;
  @SerializedName("unit")
  private String unit = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public BigDecimal getValue() {
    return value;
  }
  public void setValue(BigDecimal value) {
    this.value = value;
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


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    RecipesParseIngredientsEstimatedCost recipesParseIngredientsEstimatedCost = (RecipesParseIngredientsEstimatedCost) o;
    return (this.value == null ? recipesParseIngredientsEstimatedCost.value == null : this.value.equals(recipesParseIngredientsEstimatedCost.value)) &&
        (this.unit == null ? recipesParseIngredientsEstimatedCost.unit == null : this.unit.equals(recipesParseIngredientsEstimatedCost.unit));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.value == null ? 0: this.value.hashCode());
    result = 31 * result + (this.unit == null ? 0: this.unit.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class RecipesParseIngredientsEstimatedCost {\n");
    
    sb.append("  value: ").append(value).append("\n");
    sb.append("  unit: ").append(unit).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
