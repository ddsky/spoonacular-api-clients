package com.spoonacular.client.model;

import java.math.BigDecimal;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineObject  {
  
  @SerializedName("ingredientList")
  private String ingredientList = null;
  @SerializedName("servings")
  private BigDecimal servings = null;
  @SerializedName("defaultCss")
  private Boolean defaultCss = null;
  @SerializedName("showBacklink")
  private Boolean showBacklink = null;

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
   * The number of servings.
   **/
  @ApiModelProperty(required = true, value = "The number of servings.")
  public BigDecimal getServings() {
    return servings;
  }
  public void setServings(BigDecimal servings) {
    this.servings = servings;
  }

  /**
   * Whether the default CSS should be added to the response.
   **/
  @ApiModelProperty(value = "Whether the default CSS should be added to the response.")
  public Boolean getDefaultCss() {
    return defaultCss;
  }
  public void setDefaultCss(Boolean defaultCss) {
    this.defaultCss = defaultCss;
  }

  /**
   * Whether to show a backlink to spoonacular. If set false, this call counts against your quota.
   **/
  @ApiModelProperty(value = "Whether to show a backlink to spoonacular. If set false, this call counts against your quota.")
  public Boolean getShowBacklink() {
    return showBacklink;
  }
  public void setShowBacklink(Boolean showBacklink) {
    this.showBacklink = showBacklink;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineObject inlineObject = (InlineObject) o;
    return (this.ingredientList == null ? inlineObject.ingredientList == null : this.ingredientList.equals(inlineObject.ingredientList)) &&
        (this.servings == null ? inlineObject.servings == null : this.servings.equals(inlineObject.servings)) &&
        (this.defaultCss == null ? inlineObject.defaultCss == null : this.defaultCss.equals(inlineObject.defaultCss)) &&
        (this.showBacklink == null ? inlineObject.showBacklink == null : this.showBacklink.equals(inlineObject.showBacklink));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.ingredientList == null ? 0: this.ingredientList.hashCode());
    result = 31 * result + (this.servings == null ? 0: this.servings.hashCode());
    result = 31 * result + (this.defaultCss == null ? 0: this.defaultCss.hashCode());
    result = 31 * result + (this.showBacklink == null ? 0: this.showBacklink.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineObject {\n");
    
    sb.append("  ingredientList: ").append(ingredientList).append("\n");
    sb.append("  servings: ").append(servings).append("\n");
    sb.append("  defaultCss: ").append(defaultCss).append("\n");
    sb.append("  showBacklink: ").append(showBacklink).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
