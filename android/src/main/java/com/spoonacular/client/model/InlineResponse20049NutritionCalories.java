package com.spoonacular.client.model;

import com.spoonacular.client.model.InlineResponse20049NutritionCaloriesConfidenceRange95Percent;
import java.math.BigDecimal;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20049NutritionCalories  {
  
  @SerializedName("value")
  private BigDecimal value = null;
  @SerializedName("unit")
  private String unit = null;
  @SerializedName("confidenceRange95Percent")
  private InlineResponse20049NutritionCaloriesConfidenceRange95Percent confidenceRange95Percent = null;
  @SerializedName("standardDeviation")
  private BigDecimal standardDeviation = null;

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

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public InlineResponse20049NutritionCaloriesConfidenceRange95Percent getConfidenceRange95Percent() {
    return confidenceRange95Percent;
  }
  public void setConfidenceRange95Percent(InlineResponse20049NutritionCaloriesConfidenceRange95Percent confidenceRange95Percent) {
    this.confidenceRange95Percent = confidenceRange95Percent;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public BigDecimal getStandardDeviation() {
    return standardDeviation;
  }
  public void setStandardDeviation(BigDecimal standardDeviation) {
    this.standardDeviation = standardDeviation;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20049NutritionCalories inlineResponse20049NutritionCalories = (InlineResponse20049NutritionCalories) o;
    return (this.value == null ? inlineResponse20049NutritionCalories.value == null : this.value.equals(inlineResponse20049NutritionCalories.value)) &&
        (this.unit == null ? inlineResponse20049NutritionCalories.unit == null : this.unit.equals(inlineResponse20049NutritionCalories.unit)) &&
        (this.confidenceRange95Percent == null ? inlineResponse20049NutritionCalories.confidenceRange95Percent == null : this.confidenceRange95Percent.equals(inlineResponse20049NutritionCalories.confidenceRange95Percent)) &&
        (this.standardDeviation == null ? inlineResponse20049NutritionCalories.standardDeviation == null : this.standardDeviation.equals(inlineResponse20049NutritionCalories.standardDeviation));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.value == null ? 0: this.value.hashCode());
    result = 31 * result + (this.unit == null ? 0: this.unit.hashCode());
    result = 31 * result + (this.confidenceRange95Percent == null ? 0: this.confidenceRange95Percent.hashCode());
    result = 31 * result + (this.standardDeviation == null ? 0: this.standardDeviation.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20049NutritionCalories {\n");
    
    sb.append("  value: ").append(value).append("\n");
    sb.append("  unit: ").append(unit).append("\n");
    sb.append("  confidenceRange95Percent: ").append(confidenceRange95Percent).append("\n");
    sb.append("  standardDeviation: ").append(standardDeviation).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
