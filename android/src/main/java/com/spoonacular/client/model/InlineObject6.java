package com.spoonacular.client.model;

import java.math.BigDecimal;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineObject6  {
  
  @SerializedName("ingredientList")
  private String ingredientList = null;
  @SerializedName("servings")
  private BigDecimal servings = null;
  @SerializedName("includeNutrition")
  private Boolean includeNutrition = null;

  /**
   * The ingredient list of the recipe, one ingredient per line.
   **/
  @ApiModelProperty(required = true, value = "The ingredient list of the recipe, one ingredient per line.")
  public String getIngredientList() {
    return ingredientList;
  }
  public void setIngredientList(String ingredientList) {
    this.ingredientList = ingredientList;
  }

  /**
   * The number of servings that you can make from the ingredients.
   **/
  @ApiModelProperty(required = true, value = "The number of servings that you can make from the ingredients.")
  public BigDecimal getServings() {
    return servings;
  }
  public void setServings(BigDecimal servings) {
    this.servings = servings;
  }

  /**
   * Whether nutrition data should be added to correctly parsed ingredients.
   **/
  @ApiModelProperty(value = "Whether nutrition data should be added to correctly parsed ingredients.")
  public Boolean getIncludeNutrition() {
    return includeNutrition;
  }
  public void setIncludeNutrition(Boolean includeNutrition) {
    this.includeNutrition = includeNutrition;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineObject6 inlineObject6 = (InlineObject6) o;
    return (this.ingredientList == null ? inlineObject6.ingredientList == null : this.ingredientList.equals(inlineObject6.ingredientList)) &&
        (this.servings == null ? inlineObject6.servings == null : this.servings.equals(inlineObject6.servings)) &&
        (this.includeNutrition == null ? inlineObject6.includeNutrition == null : this.includeNutrition.equals(inlineObject6.includeNutrition));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.ingredientList == null ? 0: this.ingredientList.hashCode());
    result = 31 * result + (this.servings == null ? 0: this.servings.hashCode());
    result = 31 * result + (this.includeNutrition == null ? 0: this.includeNutrition.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineObject6 {\n");
    
    sb.append("  ingredientList: ").append(ingredientList).append("\n");
    sb.append("  servings: ").append(servings).append("\n");
    sb.append("  includeNutrition: ").append(includeNutrition).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
