package com.spoonacular.client.model;

import java.math.BigDecimal;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20010AmountMetric  {
  
  @SerializedName("unit")
  private String unit = null;
  @SerializedName("value")
  private BigDecimal value = null;

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
  public BigDecimal getValue() {
    return value;
  }
  public void setValue(BigDecimal value) {
    this.value = value;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20010AmountMetric inlineResponse20010AmountMetric = (InlineResponse20010AmountMetric) o;
    return (this.unit == null ? inlineResponse20010AmountMetric.unit == null : this.unit.equals(inlineResponse20010AmountMetric.unit)) &&
        (this.value == null ? inlineResponse20010AmountMetric.value == null : this.value.equals(inlineResponse20010AmountMetric.value));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.unit == null ? 0: this.unit.hashCode());
    result = 31 * result + (this.value == null ? 0: this.value.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20010AmountMetric {\n");
    
    sb.append("  unit: ").append(unit).append("\n");
    sb.append("  value: ").append(value).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
