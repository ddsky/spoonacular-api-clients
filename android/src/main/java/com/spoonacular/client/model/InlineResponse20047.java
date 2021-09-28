package com.spoonacular.client.model;

import java.math.BigDecimal;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20047  {
  
  @SerializedName("category")
  private String category = null;
  @SerializedName("probability")
  private BigDecimal probability = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getCategory() {
    return category;
  }
  public void setCategory(String category) {
    this.category = category;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public BigDecimal getProbability() {
    return probability;
  }
  public void setProbability(BigDecimal probability) {
    this.probability = probability;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20047 inlineResponse20047 = (InlineResponse20047) o;
    return (this.category == null ? inlineResponse20047.category == null : this.category.equals(inlineResponse20047.category)) &&
        (this.probability == null ? inlineResponse20047.probability == null : this.probability.equals(inlineResponse20047.probability));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.category == null ? 0: this.category.hashCode());
    result = 31 * result + (this.probability == null ? 0: this.probability.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20047 {\n");
    
    sb.append("  category: ").append(category).append("\n");
    sb.append("  probability: ").append(probability).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
