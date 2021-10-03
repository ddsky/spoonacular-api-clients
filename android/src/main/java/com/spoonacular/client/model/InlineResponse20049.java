package com.spoonacular.client.model;

import com.spoonacular.client.model.InlineResponse20049Category;
import com.spoonacular.client.model.InlineResponse20049Nutrition;
import com.spoonacular.client.model.InlineResponse20049Recipes;
import java.util.*;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20049  {
  
  @SerializedName("nutrition")
  private InlineResponse20049Nutrition nutrition = null;
  @SerializedName("category")
  private InlineResponse20049Category category = null;
  @SerializedName("recipes")
  private List<InlineResponse20049Recipes> recipes = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public InlineResponse20049Nutrition getNutrition() {
    return nutrition;
  }
  public void setNutrition(InlineResponse20049Nutrition nutrition) {
    this.nutrition = nutrition;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public InlineResponse20049Category getCategory() {
    return category;
  }
  public void setCategory(InlineResponse20049Category category) {
    this.category = category;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<InlineResponse20049Recipes> getRecipes() {
    return recipes;
  }
  public void setRecipes(List<InlineResponse20049Recipes> recipes) {
    this.recipes = recipes;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20049 inlineResponse20049 = (InlineResponse20049) o;
    return (this.nutrition == null ? inlineResponse20049.nutrition == null : this.nutrition.equals(inlineResponse20049.nutrition)) &&
        (this.category == null ? inlineResponse20049.category == null : this.category.equals(inlineResponse20049.category)) &&
        (this.recipes == null ? inlineResponse20049.recipes == null : this.recipes.equals(inlineResponse20049.recipes));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.nutrition == null ? 0: this.nutrition.hashCode());
    result = 31 * result + (this.category == null ? 0: this.category.hashCode());
    result = 31 * result + (this.recipes == null ? 0: this.recipes.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20049 {\n");
    
    sb.append("  nutrition: ").append(nutrition).append("\n");
    sb.append("  category: ").append(category).append("\n");
    sb.append("  recipes: ").append(recipes).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
