package com.spoonacular.client.model;

import com.spoonacular.client.model.InlineResponse20031ComparableProducts;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20031  {
  
  @SerializedName("comparableProducts")
  private InlineResponse20031ComparableProducts comparableProducts = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public InlineResponse20031ComparableProducts getComparableProducts() {
    return comparableProducts;
  }
  public void setComparableProducts(InlineResponse20031ComparableProducts comparableProducts) {
    this.comparableProducts = comparableProducts;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20031 inlineResponse20031 = (InlineResponse20031) o;
    return (this.comparableProducts == null ? inlineResponse20031.comparableProducts == null : this.comparableProducts.equals(inlineResponse20031.comparableProducts));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.comparableProducts == null ? 0: this.comparableProducts.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20031 {\n");
    
    sb.append("  comparableProducts: ").append(comparableProducts).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
