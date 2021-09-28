package com.spoonacular.client.model;

import com.spoonacular.client.model.InlineResponse20037Nutrients;
import com.spoonacular.client.model.InlineResponse2005;
import java.util.*;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20037  {
  
  @SerializedName("meals")
  private List<InlineResponse2005> meals = null;
  @SerializedName("nutrients")
  private InlineResponse20037Nutrients nutrients = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<InlineResponse2005> getMeals() {
    return meals;
  }
  public void setMeals(List<InlineResponse2005> meals) {
    this.meals = meals;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public InlineResponse20037Nutrients getNutrients() {
    return nutrients;
  }
  public void setNutrients(InlineResponse20037Nutrients nutrients) {
    this.nutrients = nutrients;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20037 inlineResponse20037 = (InlineResponse20037) o;
    return (this.meals == null ? inlineResponse20037.meals == null : this.meals.equals(inlineResponse20037.meals)) &&
        (this.nutrients == null ? inlineResponse20037.nutrients == null : this.nutrients.equals(inlineResponse20037.nutrients));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.meals == null ? 0: this.meals.hashCode());
    result = 31 * result + (this.nutrients == null ? 0: this.nutrients.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20037 {\n");
    
    sb.append("  meals: ").append(meals).append("\n");
    sb.append("  nutrients: ").append(nutrients).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
