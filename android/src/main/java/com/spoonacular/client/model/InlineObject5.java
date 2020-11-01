package com.spoonacular.client.model;


import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineObject5  {
  
  @SerializedName("instructions")
  private String instructions = null;

  /**
   * The instructions to be analyzed.
   **/
  @ApiModelProperty(required = true, value = "The instructions to be analyzed.")
  public String getInstructions() {
    return instructions;
  }
  public void setInstructions(String instructions) {
    this.instructions = instructions;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineObject5 inlineObject5 = (InlineObject5) o;
    return (this.instructions == null ? inlineObject5.instructions == null : this.instructions.equals(inlineObject5.instructions));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.instructions == null ? 0: this.instructions.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineObject5 {\n");
    
    sb.append("  instructions: ").append(instructions).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
