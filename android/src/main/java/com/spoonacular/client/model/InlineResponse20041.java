package com.spoonacular.client.model;

import com.spoonacular.client.model.InlineResponse20041Aisles;
import java.math.BigDecimal;
import java.util.*;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20041  {
  
  @SerializedName("aisles")
  private List<InlineResponse20041Aisles> aisles = null;
  @SerializedName("cost")
  private BigDecimal cost = null;
  @SerializedName("startDate")
  private BigDecimal startDate = null;
  @SerializedName("endDate")
  private BigDecimal endDate = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<InlineResponse20041Aisles> getAisles() {
    return aisles;
  }
  public void setAisles(List<InlineResponse20041Aisles> aisles) {
    this.aisles = aisles;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public BigDecimal getCost() {
    return cost;
  }
  public void setCost(BigDecimal cost) {
    this.cost = cost;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public BigDecimal getStartDate() {
    return startDate;
  }
  public void setStartDate(BigDecimal startDate) {
    this.startDate = startDate;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public BigDecimal getEndDate() {
    return endDate;
  }
  public void setEndDate(BigDecimal endDate) {
    this.endDate = endDate;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20041 inlineResponse20041 = (InlineResponse20041) o;
    return (this.aisles == null ? inlineResponse20041.aisles == null : this.aisles.equals(inlineResponse20041.aisles)) &&
        (this.cost == null ? inlineResponse20041.cost == null : this.cost.equals(inlineResponse20041.cost)) &&
        (this.startDate == null ? inlineResponse20041.startDate == null : this.startDate.equals(inlineResponse20041.startDate)) &&
        (this.endDate == null ? inlineResponse20041.endDate == null : this.endDate.equals(inlineResponse20041.endDate));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.aisles == null ? 0: this.aisles.hashCode());
    result = 31 * result + (this.cost == null ? 0: this.cost.hashCode());
    result = 31 * result + (this.startDate == null ? 0: this.startDate.hashCode());
    result = 31 * result + (this.endDate == null ? 0: this.endDate.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20041 {\n");
    
    sb.append("  aisles: ").append(aisles).append("\n");
    sb.append("  cost: ").append(cost).append("\n");
    sb.append("  startDate: ").append(startDate).append("\n");
    sb.append("  endDate: ").append(endDate).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
