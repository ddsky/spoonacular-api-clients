package com.spoonacular.client.model;

import java.math.BigDecimal;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineObject8  {
  
  @SerializedName("ingredientList")
  private String ingredientList = null;
  @SerializedName("servings")
  private BigDecimal servings = null;
  @SerializedName("measure")
  private String measure = null;
  @SerializedName("view")
  private String view = null;
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
   * The original system of measurement, either \"metric\" or \"us\".
   **/
  @ApiModelProperty(value = "The original system of measurement, either \"metric\" or \"us\".")
  public String getMeasure() {
    return measure;
  }
  public void setMeasure(String measure) {
    this.measure = measure;
  }

  /**
   * How to visualize the ingredients, either \"grid\" or \"list\".
   **/
  @ApiModelProperty(value = "How to visualize the ingredients, either \"grid\" or \"list\".")
  public String getView() {
    return view;
  }
  public void setView(String view) {
    this.view = view;
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
    InlineObject8 inlineObject8 = (InlineObject8) o;
    return (this.ingredientList == null ? inlineObject8.ingredientList == null : this.ingredientList.equals(inlineObject8.ingredientList)) &&
        (this.servings == null ? inlineObject8.servings == null : this.servings.equals(inlineObject8.servings)) &&
        (this.measure == null ? inlineObject8.measure == null : this.measure.equals(inlineObject8.measure)) &&
        (this.view == null ? inlineObject8.view == null : this.view.equals(inlineObject8.view)) &&
        (this.defaultCss == null ? inlineObject8.defaultCss == null : this.defaultCss.equals(inlineObject8.defaultCss)) &&
        (this.showBacklink == null ? inlineObject8.showBacklink == null : this.showBacklink.equals(inlineObject8.showBacklink));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.ingredientList == null ? 0: this.ingredientList.hashCode());
    result = 31 * result + (this.servings == null ? 0: this.servings.hashCode());
    result = 31 * result + (this.measure == null ? 0: this.measure.hashCode());
    result = 31 * result + (this.view == null ? 0: this.view.hashCode());
    result = 31 * result + (this.defaultCss == null ? 0: this.defaultCss.hashCode());
    result = 31 * result + (this.showBacklink == null ? 0: this.showBacklink.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineObject8 {\n");
    
    sb.append("  ingredientList: ").append(ingredientList).append("\n");
    sb.append("  servings: ").append(servings).append("\n");
    sb.append("  measure: ").append(measure).append("\n");
    sb.append("  view: ").append(view).append("\n");
    sb.append("  defaultCss: ").append(defaultCss).append("\n");
    sb.append("  showBacklink: ").append(showBacklink).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
