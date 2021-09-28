package com.spoonacular.client.model;

import com.spoonacular.client.model.RecipesParseIngredientsNutritionCaloricBreakdown;
import com.spoonacular.client.model.RecipesParseIngredientsNutritionNutrients;
import com.spoonacular.client.model.RecipesParseIngredientsNutritionProperties;
import com.spoonacular.client.model.RecipesParseIngredientsNutritionWeightPerServing;
import java.util.*;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class RecipesParseIngredientsNutrition  {
  
  @SerializedName("nutrients")
  private List<RecipesParseIngredientsNutritionNutrients> nutrients = null;
  @SerializedName("properties")
  private List<RecipesParseIngredientsNutritionProperties> properties = null;
  @SerializedName("flavonoids")
  private List<RecipesParseIngredientsNutritionProperties> flavonoids = null;
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
  public List<RecipesParseIngredientsNutritionProperties> getFlavonoids() {
    return flavonoids;
  }
  public void setFlavonoids(List<RecipesParseIngredientsNutritionProperties> flavonoids) {
    this.flavonoids = flavonoids;
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
    RecipesParseIngredientsNutrition recipesParseIngredientsNutrition = (RecipesParseIngredientsNutrition) o;
    return (this.nutrients == null ? recipesParseIngredientsNutrition.nutrients == null : this.nutrients.equals(recipesParseIngredientsNutrition.nutrients)) &&
        (this.properties == null ? recipesParseIngredientsNutrition.properties == null : this.properties.equals(recipesParseIngredientsNutrition.properties)) &&
        (this.flavonoids == null ? recipesParseIngredientsNutrition.flavonoids == null : this.flavonoids.equals(recipesParseIngredientsNutrition.flavonoids)) &&
        (this.caloricBreakdown == null ? recipesParseIngredientsNutrition.caloricBreakdown == null : this.caloricBreakdown.equals(recipesParseIngredientsNutrition.caloricBreakdown)) &&
        (this.weightPerServing == null ? recipesParseIngredientsNutrition.weightPerServing == null : this.weightPerServing.equals(recipesParseIngredientsNutrition.weightPerServing));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.nutrients == null ? 0: this.nutrients.hashCode());
    result = 31 * result + (this.properties == null ? 0: this.properties.hashCode());
    result = 31 * result + (this.flavonoids == null ? 0: this.flavonoids.hashCode());
    result = 31 * result + (this.caloricBreakdown == null ? 0: this.caloricBreakdown.hashCode());
    result = 31 * result + (this.weightPerServing == null ? 0: this.weightPerServing.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class RecipesParseIngredientsNutrition {\n");
    
    sb.append("  nutrients: ").append(nutrients).append("\n");
    sb.append("  properties: ").append(properties).append("\n");
    sb.append("  flavonoids: ").append(flavonoids).append("\n");
    sb.append("  caloricBreakdown: ").append(caloricBreakdown).append("\n");
    sb.append("  weightPerServing: ").append(weightPerServing).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
