package com.spoonacular.client.model;


import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineObject4  {
  
  @SerializedName("instructions")
  private String instructions = null;

  /**
   * The instructions text.
   **/
  @ApiModelProperty(required = true, value = "The instructions text.")
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
    InlineObject4 inlineObject4 = (InlineObject4) o;
    return (this.instructions == null ? inlineObject4.instructions == null : this.instructions.equals(inlineObject4.instructions));
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
    sb.append("class InlineObject4 {\n");
    
    sb.append("  instructions: ").append(instructions).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
