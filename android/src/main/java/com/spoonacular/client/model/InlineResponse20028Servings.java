package com.spoonacular.client.model;

import java.math.BigDecimal;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20028Servings  {
  
  @SerializedName("number")
  private BigDecimal number = null;
  @SerializedName("size")
  private BigDecimal size = null;
  @SerializedName("unit")
  private String unit = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public BigDecimal getNumber() {
    return number;
  }
  public void setNumber(BigDecimal number) {
    this.number = number;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public BigDecimal getSize() {
    return size;
  }
  public void setSize(BigDecimal size) {
    this.size = size;
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
    InlineResponse20028Servings inlineResponse20028Servings = (InlineResponse20028Servings) o;
    return (this.number == null ? inlineResponse20028Servings.number == null : this.number.equals(inlineResponse20028Servings.number)) &&
        (this.size == null ? inlineResponse20028Servings.size == null : this.size.equals(inlineResponse20028Servings.size)) &&
        (this.unit == null ? inlineResponse20028Servings.unit == null : this.unit.equals(inlineResponse20028Servings.unit));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.number == null ? 0: this.number.hashCode());
    result = 31 * result + (this.size == null ? 0: this.size.hashCode());
    result = 31 * result + (this.unit == null ? 0: this.unit.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20028Servings {\n");
    
    sb.append("  number: ").append(number).append("\n");
    sb.append("  size: ").append(size).append("\n");
    sb.append("  unit: ").append(unit).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
