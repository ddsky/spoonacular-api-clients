package com.spoonacular.client.model;

import com.spoonacular.client.model.InlineResponse20038NutritionSummaryNutrients;
import java.util.*;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20038NutritionSummary  {
  
  @SerializedName("nutrients")
  private List<InlineResponse20038NutritionSummaryNutrients> nutrients = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<InlineResponse20038NutritionSummaryNutrients> getNutrients() {
    return nutrients;
  }
  public void setNutrients(List<InlineResponse20038NutritionSummaryNutrients> nutrients) {
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
    InlineResponse20038NutritionSummary inlineResponse20038NutritionSummary = (InlineResponse20038NutritionSummary) o;
    return (this.nutrients == null ? inlineResponse20038NutritionSummary.nutrients == null : this.nutrients.equals(inlineResponse20038NutritionSummary.nutrients));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.nutrients == null ? 0: this.nutrients.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20038NutritionSummary {\n");
    
    sb.append("  nutrients: ").append(nutrients).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
