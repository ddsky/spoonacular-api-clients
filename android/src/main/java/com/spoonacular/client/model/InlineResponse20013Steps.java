package com.spoonacular.client.model;

import com.spoonacular.client.model.InlineResponse20013Ingredients;
import java.math.BigDecimal;
import java.util.*;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20013Steps  {
  
  @SerializedName("number")
  private BigDecimal number = null;
  @SerializedName("step")
  private String step = null;
  @SerializedName("ingredients")
  private List<InlineResponse20013Ingredients> ingredients = null;
  @SerializedName("equipment")
  private List<InlineResponse20013Ingredients> equipment = null;

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
  public List<InlineResponse20013Ingredients> getIngredients() {
    return ingredients;
  }
  public void setIngredients(List<InlineResponse20013Ingredients> ingredients) {
    this.ingredients = ingredients;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<InlineResponse20013Ingredients> getEquipment() {
    return equipment;
  }
  public void setEquipment(List<InlineResponse20013Ingredients> equipment) {
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
    InlineResponse20013Steps inlineResponse20013Steps = (InlineResponse20013Steps) o;
    return (this.number == null ? inlineResponse20013Steps.number == null : this.number.equals(inlineResponse20013Steps.number)) &&
        (this.step == null ? inlineResponse20013Steps.step == null : this.step.equals(inlineResponse20013Steps.step)) &&
        (this.ingredients == null ? inlineResponse20013Steps.ingredients == null : this.ingredients.equals(inlineResponse20013Steps.ingredients)) &&
        (this.equipment == null ? inlineResponse20013Steps.equipment == null : this.equipment.equals(inlineResponse20013Steps.equipment));
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
    sb.append("class InlineResponse20013Steps {\n");
    
    sb.append("  number: ").append(number).append("\n");
    sb.append("  step: ").append(step).append("\n");
    sb.append("  ingredients: ").append(ingredients).append("\n");
    sb.append("  equipment: ").append(equipment).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
