package com.spoonacular.client.model;


import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineObject6  {
  
  @SerializedName("title")
  private String title = null;
  @SerializedName("ingredientList")
  private String ingredientList = null;

  /**
   * The title of the recipe.
   **/
  @ApiModelProperty(required = true, value = "The title of the recipe.")
  public String getTitle() {
    return title;
  }
  public void setTitle(String title) {
    this.title = title;
  }

  /**
   * The ingredient list of the recipe, one ingredient per line (separate lines with \\n).
   **/
  @ApiModelProperty(required = true, value = "The ingredient list of the recipe, one ingredient per line (separate lines with \\n).")
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
    InlineObject6 inlineObject6 = (InlineObject6) o;
    return (this.title == null ? inlineObject6.title == null : this.title.equals(inlineObject6.title)) &&
        (this.ingredientList == null ? inlineObject6.ingredientList == null : this.ingredientList.equals(inlineObject6.ingredientList));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.title == null ? 0: this.title.hashCode());
    result = 31 * result + (this.ingredientList == null ? 0: this.ingredientList.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineObject6 {\n");
    
    sb.append("  title: ").append(title).append("\n");
    sb.append("  ingredientList: ").append(ingredientList).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
