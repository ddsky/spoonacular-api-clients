package com.spoonacular.client.model;

import java.math.BigDecimal;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20021CaloriesConfidenceRange95Percent  {
  
  @SerializedName("max")
  private BigDecimal max = null;
  @SerializedName("min")
  private BigDecimal min = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public BigDecimal getMax() {
    return max;
  }
  public void setMax(BigDecimal max) {
    this.max = max;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public BigDecimal getMin() {
    return min;
  }
  public void setMin(BigDecimal min) {
    this.min = min;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20021CaloriesConfidenceRange95Percent inlineResponse20021CaloriesConfidenceRange95Percent = (InlineResponse20021CaloriesConfidenceRange95Percent) o;
    return (this.max == null ? inlineResponse20021CaloriesConfidenceRange95Percent.max == null : this.max.equals(inlineResponse20021CaloriesConfidenceRange95Percent.max)) &&
        (this.min == null ? inlineResponse20021CaloriesConfidenceRange95Percent.min == null : this.min.equals(inlineResponse20021CaloriesConfidenceRange95Percent.min));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.max == null ? 0: this.max.hashCode());
    result = 31 * result + (this.min == null ? 0: this.min.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20021CaloriesConfidenceRange95Percent {\n");
    
    sb.append("  max: ").append(max).append("\n");
    sb.append("  min: ").append(min).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
