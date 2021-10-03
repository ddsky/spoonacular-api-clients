package com.spoonacular.client.model;

import java.math.BigDecimal;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20049Category  {
  
  @SerializedName("name")
  private String name = null;
  @SerializedName("probability")
  private BigDecimal probability = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
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
    InlineResponse20049Category inlineResponse20049Category = (InlineResponse20049Category) o;
    return (this.name == null ? inlineResponse20049Category.name == null : this.name.equals(inlineResponse20049Category.name)) &&
        (this.probability == null ? inlineResponse20049Category.probability == null : this.probability.equals(inlineResponse20049Category.probability));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.name == null ? 0: this.name.hashCode());
    result = 31 * result + (this.probability == null ? 0: this.probability.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20049Category {\n");
    
    sb.append("  name: ").append(name).append("\n");
    sb.append("  probability: ").append(probability).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
