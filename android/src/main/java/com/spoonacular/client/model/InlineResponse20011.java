package com.spoonacular.client.model;

import com.spoonacular.client.model.InlineResponse20011Ingredients;
import java.util.*;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20011  {
  
  @SerializedName("ingredients")
  private List<InlineResponse20011Ingredients> ingredients = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<InlineResponse20011Ingredients> getIngredients() {
    return ingredients;
  }
  public void setIngredients(List<InlineResponse20011Ingredients> ingredients) {
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
    InlineResponse20011 inlineResponse20011 = (InlineResponse20011) o;
    return (this.ingredients == null ? inlineResponse20011.ingredients == null : this.ingredients.equals(inlineResponse20011.ingredients));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.ingredients == null ? 0: this.ingredients.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20011 {\n");
    
    sb.append("  ingredients: ").append(ingredients).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
