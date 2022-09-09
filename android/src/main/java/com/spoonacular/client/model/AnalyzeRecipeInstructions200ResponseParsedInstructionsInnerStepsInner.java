/**
 * spoonacular API
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over 380,000 recipes, thousands of ingredients, 800,000 food products, and 100,000 menu items. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
 *
 * The version of the OpenAPI document: 1.1
 * Contact: mail@spoonacular.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package com.spoonacular.client.model;

import com.spoonacular.client.model.AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner;
import java.math.BigDecimal;
import java.util.*;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner {
  
  @SerializedName("number")
  private BigDecimal number = null;
  @SerializedName("step")
  private String step = null;
  @SerializedName("ingredients")
  private Set<AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner> ingredients = null;
  @SerializedName("equipment")
  private Set<AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner> equipment = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public BigDecimal getNumber() {
    return number;
  }
  public void setNumber(BigDecimal number) {
    this.number = number;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getStep() {
    return step;
  }
  public void setStep(String step) {
    this.step = step;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Set<AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner> getIngredients() {
    return ingredients;
  }
  public void setIngredients(Set<AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner> ingredients) {
    this.ingredients = ingredients;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Set<AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner> getEquipment() {
    return equipment;
  }
  public void setEquipment(Set<AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner> equipment) {
    this.equipment = equipment;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner analyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner = (AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner) o;
    return (this.number == null ? analyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner.number == null : this.number.equals(analyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner.number)) &&
        (this.step == null ? analyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner.step == null : this.step.equals(analyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner.step)) &&
        (this.ingredients == null ? analyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner.ingredients == null : this.ingredients.equals(analyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner.ingredients)) &&
        (this.equipment == null ? analyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner.equipment == null : this.equipment.equals(analyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner.equipment));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.number == null ? 0: this.number.hashCode());
    result = 31 * result + (this.step == null ? 0: this.step.hashCode());
    result = 31 * result + (this.ingredients == null ? 0: this.ingredients.hashCode());
    result = 31 * result + (this.equipment == null ? 0: this.equipment.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner {\n");
    
    sb.append("  number: ").append(number).append("\n");
    sb.append("  step: ").append(step).append("\n");
    sb.append("  ingredients: ").append(ingredients).append("\n");
    sb.append("  equipment: ").append(equipment).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
