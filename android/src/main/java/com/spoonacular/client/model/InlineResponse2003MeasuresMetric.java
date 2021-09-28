package com.spoonacular.client.model;

import java.math.BigDecimal;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse2003MeasuresMetric  {
  
  @SerializedName("amount")
  private BigDecimal amount = null;
  @SerializedName("unitLong")
  private String unitLong = null;
  @SerializedName("unitShort")
  private String unitShort = null;

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
  public String getUnitLong() {
    return unitLong;
  }
  public void setUnitLong(String unitLong) {
    this.unitLong = unitLong;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getUnitShort() {
    return unitShort;
  }
  public void setUnitShort(String unitShort) {
    this.unitShort = unitShort;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse2003MeasuresMetric inlineResponse2003MeasuresMetric = (InlineResponse2003MeasuresMetric) o;
    return (this.amount == null ? inlineResponse2003MeasuresMetric.amount == null : this.amount.equals(inlineResponse2003MeasuresMetric.amount)) &&
        (this.unitLong == null ? inlineResponse2003MeasuresMetric.unitLong == null : this.unitLong.equals(inlineResponse2003MeasuresMetric.unitLong)) &&
        (this.unitShort == null ? inlineResponse2003MeasuresMetric.unitShort == null : this.unitShort.equals(inlineResponse2003MeasuresMetric.unitShort));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.amount == null ? 0: this.amount.hashCode());
    result = 31 * result + (this.unitLong == null ? 0: this.unitLong.hashCode());
    result = 31 * result + (this.unitShort == null ? 0: this.unitShort.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse2003MeasuresMetric {\n");
    
    sb.append("  amount: ").append(amount).append("\n");
    sb.append("  unitLong: ").append(unitLong).append("\n");
    sb.append("  unitShort: ").append(unitShort).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
