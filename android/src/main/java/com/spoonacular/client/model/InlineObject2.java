package com.spoonacular.client.model;

import java.math.BigDecimal;
import java.util.*;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineObject2  {
  
  @SerializedName("ingredients")
  private List<String> ingredients = null;
  @SerializedName("servings")
  private BigDecimal servings = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<String> getIngredients() {
    return ingredients;
  }
  public void setIngredients(List<String> ingredients) {
    this.ingredients = ingredients;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public BigDecimal getServings() {
    return servings;
  }
  public void setServings(BigDecimal servings) {
    this.servings = servings;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineObject2 inlineObject2 = (InlineObject2) o;
    return (this.ingredients == null ? inlineObject2.ingredients == null : this.ingredients.equals(inlineObject2.ingredients)) &&
        (this.servings == null ? inlineObject2.servings == null : this.servings.equals(inlineObject2.servings));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.ingredients == null ? 0: this.ingredients.hashCode());
    result = 31 * result + (this.servings == null ? 0: this.servings.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineObject2 {\n");
    
    sb.append("  ingredients: ").append(ingredients).append("\n");
    sb.append("  servings: ").append(servings).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
