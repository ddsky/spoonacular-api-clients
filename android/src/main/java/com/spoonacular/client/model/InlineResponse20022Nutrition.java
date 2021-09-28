package com.spoonacular.client.model;

import com.spoonacular.client.model.RecipesParseIngredientsNutritionCaloricBreakdown;
import com.spoonacular.client.model.RecipesParseIngredientsNutritionNutrients;
import com.spoonacular.client.model.RecipesParseIngredientsNutritionProperties;
import com.spoonacular.client.model.RecipesParseIngredientsNutritionWeightPerServing;
import java.util.*;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20022Nutrition  {
  
  @SerializedName("nutrients")
  private List<RecipesParseIngredientsNutritionNutrients> nutrients = null;
  @SerializedName("properties")
  private List<RecipesParseIngredientsNutritionProperties> properties = null;
  @SerializedName("caloricBreakdown")
  private RecipesParseIngredientsNutritionCaloricBreakdown caloricBreakdown = null;
  @SerializedName("weightPerServing")
  private RecipesParseIngredientsNutritionWeightPerServing weightPerServing = null;

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
  public List<RecipesParseIngredientsNutritionProperties> getProperties() {
    return properties;
  }
  public void setProperties(List<RecipesParseIngredientsNutritionProperties> properties) {
    this.properties = properties;
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

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public RecipesParseIngredientsNutritionWeightPerServing getWeightPerServing() {
    return weightPerServing;
  }
  public void setWeightPerServing(RecipesParseIngredientsNutritionWeightPerServing weightPerServing) {
    this.weightPerServing = weightPerServing;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20022Nutrition inlineResponse20022Nutrition = (InlineResponse20022Nutrition) o;
    return (this.nutrients == null ? inlineResponse20022Nutrition.nutrients == null : this.nutrients.equals(inlineResponse20022Nutrition.nutrients)) &&
        (this.properties == null ? inlineResponse20022Nutrition.properties == null : this.properties.equals(inlineResponse20022Nutrition.properties)) &&
        (this.caloricBreakdown == null ? inlineResponse20022Nutrition.caloricBreakdown == null : this.caloricBreakdown.equals(inlineResponse20022Nutrition.caloricBreakdown)) &&
        (this.weightPerServing == null ? inlineResponse20022Nutrition.weightPerServing == null : this.weightPerServing.equals(inlineResponse20022Nutrition.weightPerServing));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.nutrients == null ? 0: this.nutrients.hashCode());
    result = 31 * result + (this.properties == null ? 0: this.properties.hashCode());
    result = 31 * result + (this.caloricBreakdown == null ? 0: this.caloricBreakdown.hashCode());
    result = 31 * result + (this.weightPerServing == null ? 0: this.weightPerServing.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20022Nutrition {\n");
    
    sb.append("  nutrients: ").append(nutrients).append("\n");
    sb.append("  properties: ").append(properties).append("\n");
    sb.append("  caloricBreakdown: ").append(caloricBreakdown).append("\n");
    sb.append("  weightPerServing: ").append(weightPerServing).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
