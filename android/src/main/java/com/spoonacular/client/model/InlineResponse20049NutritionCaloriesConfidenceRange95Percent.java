package com.spoonacular.client.model;

import java.math.BigDecimal;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20049NutritionCaloriesConfidenceRange95Percent  {
  
  @SerializedName("min")
  private BigDecimal min = null;
  @SerializedName("max")
  private BigDecimal max = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public BigDecimal getMin() {
    return min;
  }
  public void setMin(BigDecimal min) {
    this.min = min;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public BigDecimal getMax() {
    return max;
  }
  public void setMax(BigDecimal max) {
    this.max = max;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20049NutritionCaloriesConfidenceRange95Percent inlineResponse20049NutritionCaloriesConfidenceRange95Percent = (InlineResponse20049NutritionCaloriesConfidenceRange95Percent) o;
    return (this.min == null ? inlineResponse20049NutritionCaloriesConfidenceRange95Percent.min == null : this.min.equals(inlineResponse20049NutritionCaloriesConfidenceRange95Percent.min)) &&
        (this.max == null ? inlineResponse20049NutritionCaloriesConfidenceRange95Percent.max == null : this.max.equals(inlineResponse20049NutritionCaloriesConfidenceRange95Percent.max));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.min == null ? 0: this.min.hashCode());
    result = 31 * result + (this.max == null ? 0: this.max.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20049NutritionCaloriesConfidenceRange95Percent {\n");
    
    sb.append("  min: ").append(min).append("\n");
    sb.append("  max: ").append(max).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
