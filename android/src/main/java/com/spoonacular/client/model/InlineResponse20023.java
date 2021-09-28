package com.spoonacular.client.model;

import com.spoonacular.client.model.InlineResponse20023Ingredients;
import java.math.BigDecimal;
import java.util.*;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20023  {
  
  @SerializedName("totalGlycemicLoad")
  private BigDecimal totalGlycemicLoad = null;
  @SerializedName("ingredients")
  private List<InlineResponse20023Ingredients> ingredients = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public BigDecimal getTotalGlycemicLoad() {
    return totalGlycemicLoad;
  }
  public void setTotalGlycemicLoad(BigDecimal totalGlycemicLoad) {
    this.totalGlycemicLoad = totalGlycemicLoad;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<InlineResponse20023Ingredients> getIngredients() {
    return ingredients;
  }
  public void setIngredients(List<InlineResponse20023Ingredients> ingredients) {
    this.ingredients = ingredients;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20023 inlineResponse20023 = (InlineResponse20023) o;
    return (this.totalGlycemicLoad == null ? inlineResponse20023.totalGlycemicLoad == null : this.totalGlycemicLoad.equals(inlineResponse20023.totalGlycemicLoad)) &&
        (this.ingredients == null ? inlineResponse20023.ingredients == null : this.ingredients.equals(inlineResponse20023.ingredients));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.totalGlycemicLoad == null ? 0: this.totalGlycemicLoad.hashCode());
    result = 31 * result + (this.ingredients == null ? 0: this.ingredients.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20023 {\n");
    
    sb.append("  totalGlycemicLoad: ").append(totalGlycemicLoad).append("\n");
    sb.append("  ingredients: ").append(ingredients).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
