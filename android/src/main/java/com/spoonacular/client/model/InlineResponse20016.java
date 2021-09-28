package com.spoonacular.client.model;

import java.util.*;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20016  {
  
  @SerializedName("parsedInstructions")
  private List<Object> parsedInstructions = null;
  @SerializedName("ingredients")
  private List<Object> ingredients = null;
  @SerializedName("equipment")
  private List<Object> equipment = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<Object> getParsedInstructions() {
    return parsedInstructions;
  }
  public void setParsedInstructions(List<Object> parsedInstructions) {
    this.parsedInstructions = parsedInstructions;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<Object> getIngredients() {
    return ingredients;
  }
  public void setIngredients(List<Object> ingredients) {
    this.ingredients = ingredients;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<Object> getEquipment() {
    return equipment;
  }
  public void setEquipment(List<Object> equipment) {
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
    InlineResponse20016 inlineResponse20016 = (InlineResponse20016) o;
    return (this.parsedInstructions == null ? inlineResponse20016.parsedInstructions == null : this.parsedInstructions.equals(inlineResponse20016.parsedInstructions)) &&
        (this.ingredients == null ? inlineResponse20016.ingredients == null : this.ingredients.equals(inlineResponse20016.ingredients)) &&
        (this.equipment == null ? inlineResponse20016.equipment == null : this.equipment.equals(inlineResponse20016.equipment));
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
    sb.append("class InlineResponse20016 {\n");
    
    sb.append("  parsedInstructions: ").append(parsedInstructions).append("\n");
    sb.append("  ingredients: ").append(ingredients).append("\n");
    sb.append("  equipment: ").append(equipment).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
