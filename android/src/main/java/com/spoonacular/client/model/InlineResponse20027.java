package com.spoonacular.client.model;

import com.spoonacular.client.model.InlineResponse2007;
import java.util.*;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20027  {
  
  @SerializedName("products")
  private List<InlineResponse2007> products = null;
  @SerializedName("totalProducts")
  private Integer totalProducts = null;
  @SerializedName("type")
  private String type = null;
  @SerializedName("offset")
  private Integer offset = null;
  @SerializedName("number")
  private Integer number = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<InlineResponse2007> getProducts() {
    return products;
  }
  public void setProducts(List<InlineResponse2007> products) {
    this.products = products;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Integer getTotalProducts() {
    return totalProducts;
  }
  public void setTotalProducts(Integer totalProducts) {
    this.totalProducts = totalProducts;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getType() {
    return type;
  }
  public void setType(String type) {
    this.type = type;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Integer getOffset() {
    return offset;
  }
  public void setOffset(Integer offset) {
    this.offset = offset;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Integer getNumber() {
    return number;
  }
  public void setNumber(Integer number) {
    this.number = number;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20027 inlineResponse20027 = (InlineResponse20027) o;
    return (this.products == null ? inlineResponse20027.products == null : this.products.equals(inlineResponse20027.products)) &&
        (this.totalProducts == null ? inlineResponse20027.totalProducts == null : this.totalProducts.equals(inlineResponse20027.totalProducts)) &&
        (this.type == null ? inlineResponse20027.type == null : this.type.equals(inlineResponse20027.type)) &&
        (this.offset == null ? inlineResponse20027.offset == null : this.offset.equals(inlineResponse20027.offset)) &&
        (this.number == null ? inlineResponse20027.number == null : this.number.equals(inlineResponse20027.number));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.products == null ? 0: this.products.hashCode());
    result = 31 * result + (this.totalProducts == null ? 0: this.totalProducts.hashCode());
    result = 31 * result + (this.type == null ? 0: this.type.hashCode());
    result = 31 * result + (this.offset == null ? 0: this.offset.hashCode());
    result = 31 * result + (this.number == null ? 0: this.number.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20027 {\n");
    
    sb.append("  products: ").append(products).append("\n");
    sb.append("  totalProducts: ").append(totalProducts).append("\n");
    sb.append("  type: ").append(type).append("\n");
    sb.append("  offset: ").append(offset).append("\n");
    sb.append("  number: ").append(number).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
