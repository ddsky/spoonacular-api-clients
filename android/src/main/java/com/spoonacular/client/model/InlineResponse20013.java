package com.spoonacular.client.model;

import com.spoonacular.client.model.InlineResponse20013Ingredients1;
import com.spoonacular.client.model.InlineResponse20013ParsedInstructions;
import java.util.*;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20013  {
  
  @SerializedName("parsedInstructions")
  private List<InlineResponse20013ParsedInstructions> parsedInstructions = null;
  @SerializedName("ingredients")
  private List<InlineResponse20013Ingredients1> ingredients = null;
  @SerializedName("equipment")
  private List<InlineResponse20013Ingredients1> equipment = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<InlineResponse20013ParsedInstructions> getParsedInstructions() {
    return parsedInstructions;
  }
  public void setParsedInstructions(List<InlineResponse20013ParsedInstructions> parsedInstructions) {
    this.parsedInstructions = parsedInstructions;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<InlineResponse20013Ingredients1> getIngredients() {
    return ingredients;
  }
  public void setIngredients(List<InlineResponse20013Ingredients1> ingredients) {
    this.ingredients = ingredients;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<InlineResponse20013Ingredients1> getEquipment() {
    return equipment;
  }
  public void setEquipment(List<InlineResponse20013Ingredients1> equipment) {
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
    InlineResponse20013 inlineResponse20013 = (InlineResponse20013) o;
    return (this.parsedInstructions == null ? inlineResponse20013.parsedInstructions == null : this.parsedInstructions.equals(inlineResponse20013.parsedInstructions)) &&
        (this.ingredients == null ? inlineResponse20013.ingredients == null : this.ingredients.equals(inlineResponse20013.ingredients)) &&
        (this.equipment == null ? inlineResponse20013.equipment == null : this.equipment.equals(inlineResponse20013.equipment));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.parsedInstructions == null ? 0: this.parsedInstructions.hashCode());
    result = 31 * result + (this.ingredients == null ? 0: this.ingredients.hashCode());
    result = 31 * result + (this.equipment == null ? 0: this.equipment.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20013 {\n");
    
    sb.append("  parsedInstructions: ").append(parsedInstructions).append("\n");
    sb.append("  ingredients: ").append(ingredients).append("\n");
    sb.append("  equipment: ").append(equipment).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
