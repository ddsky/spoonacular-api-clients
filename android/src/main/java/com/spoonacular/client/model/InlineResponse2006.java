package com.spoonacular.client.model;

import com.spoonacular.client.model.InlineResponse2006Recipes;
import java.util.*;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse2006  {
  
  @SerializedName("recipes")
  private List<InlineResponse2006Recipes> recipes = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<InlineResponse2006Recipes> getRecipes() {
    return recipes;
  }
  public void setRecipes(List<InlineResponse2006Recipes> recipes) {
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
    InlineResponse2006 inlineResponse2006 = (InlineResponse2006) o;
    return (this.recipes == null ? inlineResponse2006.recipes == null : this.recipes.equals(inlineResponse2006.recipes));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.recipes == null ? 0: this.recipes.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse2006 {\n");
    
    sb.append("  recipes: ").append(recipes).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
