package com.spoonacular.client.model;


import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineObject  {
  
  @SerializedName("ingredientList")
  private String ingredientList = null;

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


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineObject inlineObject = (InlineObject) o;
    return (this.ingredientList == null ? inlineObject.ingredientList == null : this.ingredientList.equals(inlineObject.ingredientList));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.ingredientList == null ? 0: this.ingredientList.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineObject {\n");
    
    sb.append("  ingredientList: ").append(ingredientList).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
