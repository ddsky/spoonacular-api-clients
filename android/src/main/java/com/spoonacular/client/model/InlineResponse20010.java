package com.spoonacular.client.model;

import com.spoonacular.client.model.InlineResponse20010Ingredients;
import java.math.BigDecimal;
import java.util.*;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20010  {
  
  @SerializedName("ingredients")
  private List<InlineResponse20010Ingredients> ingredients = null;
  @SerializedName("totalCost")
  private BigDecimal totalCost = null;
  @SerializedName("totalCostPerServing")
  private BigDecimal totalCostPerServing = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<InlineResponse20010Ingredients> getIngredients() {
    return ingredients;
  }
  public void setIngredients(List<InlineResponse20010Ingredients> ingredients) {
    this.ingredients = ingredients;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public BigDecimal getTotalCost() {
    return totalCost;
  }
  public void setTotalCost(BigDecimal totalCost) {
    this.totalCost = totalCost;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public BigDecimal getTotalCostPerServing() {
    return totalCostPerServing;
  }
  public void setTotalCostPerServing(BigDecimal totalCostPerServing) {
    this.totalCostPerServing = totalCostPerServing;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20010 inlineResponse20010 = (InlineResponse20010) o;
    return (this.ingredients == null ? inlineResponse20010.ingredients == null : this.ingredients.equals(inlineResponse20010.ingredients)) &&
        (this.totalCost == null ? inlineResponse20010.totalCost == null : this.totalCost.equals(inlineResponse20010.totalCost)) &&
        (this.totalCostPerServing == null ? inlineResponse20010.totalCostPerServing == null : this.totalCostPerServing.equals(inlineResponse20010.totalCostPerServing));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.ingredients == null ? 0: this.ingredients.hashCode());
    result = 31 * result + (this.totalCost == null ? 0: this.totalCost.hashCode());
    result = 31 * result + (this.totalCostPerServing == null ? 0: this.totalCostPerServing.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20010 {\n");
    
    sb.append("  ingredients: ").append(ingredients).append("\n");
    sb.append("  totalCost: ").append(totalCost).append("\n");
    sb.append("  totalCostPerServing: ").append(totalCostPerServing).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
