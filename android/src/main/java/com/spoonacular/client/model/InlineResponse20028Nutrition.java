package com.spoonacular.client.model;

import com.spoonacular.client.model.RecipesParseIngredientsNutritionCaloricBreakdown;
import com.spoonacular.client.model.RecipesParseIngredientsNutritionNutrients;
import java.util.*;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20028Nutrition  {
  
  @SerializedName("nutrients")
  private List<RecipesParseIngredientsNutritionNutrients> nutrients = null;
  @SerializedName("caloricBreakdown")
  private RecipesParseIngredientsNutritionCaloricBreakdown caloricBreakdown = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<RecipesParseIngredientsNutritionNutrients> getNutrients() {
    return nutrients;
  }
  public void setNutrients(List<RecipesParseIngredientsNutritionNutrients> nutrients) {
    this.nutrients = nutrients;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public RecipesParseIngredientsNutritionCaloricBreakdown getCaloricBreakdown() {
    return caloricBreakdown;
  }
  public void setCaloricBreakdown(RecipesParseIngredientsNutritionCaloricBreakdown caloricBreakdown) {
    this.caloricBreakdown = caloricBreakdown;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20028Nutrition inlineResponse20028Nutrition = (InlineResponse20028Nutrition) o;
    return (this.nutrients == null ? inlineResponse20028Nutrition.nutrients == null : this.nutrients.equals(inlineResponse20028Nutrition.nutrients)) &&
        (this.caloricBreakdown == null ? inlineResponse20028Nutrition.caloricBreakdown == null : this.caloricBreakdown.equals(inlineResponse20028Nutrition.caloricBreakdown));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.nutrients == null ? 0: this.nutrients.hashCode());
    result = 31 * result + (this.caloricBreakdown == null ? 0: this.caloricBreakdown.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20028Nutrition {\n");
    
    sb.append("  nutrients: ").append(nutrients).append("\n");
    sb.append("  caloricBreakdown: ").append(caloricBreakdown).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
