package com.spoonacular.client.model;

import java.util.*;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20026  {
  
  @SerializedName("ingredient")
  private String ingredient = null;
  @SerializedName("substitutes")
  private List<String> substitutes = null;
  @SerializedName("message")
  private String message = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getIngredient() {
    return ingredient;
  }
  public void setIngredient(String ingredient) {
    this.ingredient = ingredient;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<String> getSubstitutes() {
    return substitutes;
  }
  public void setSubstitutes(List<String> substitutes) {
    this.substitutes = substitutes;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getMessage() {
    return message;
  }
  public void setMessage(String message) {
    this.message = message;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20026 inlineResponse20026 = (InlineResponse20026) o;
    return (this.ingredient == null ? inlineResponse20026.ingredient == null : this.ingredient.equals(inlineResponse20026.ingredient)) &&
        (this.substitutes == null ? inlineResponse20026.substitutes == null : this.substitutes.equals(inlineResponse20026.substitutes)) &&
        (this.message == null ? inlineResponse20026.message == null : this.message.equals(inlineResponse20026.message));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.ingredient == null ? 0: this.ingredient.hashCode());
    result = 31 * result + (this.substitutes == null ? 0: this.substitutes.hashCode());
    result = 31 * result + (this.message == null ? 0: this.message.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20026 {\n");
    
    sb.append("  ingredient: ").append(ingredient).append("\n");
    sb.append("  substitutes: ").append(substitutes).append("\n");
    sb.append("  message: ").append(message).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
