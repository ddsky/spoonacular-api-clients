package com.spoonacular.client.model;

import com.spoonacular.client.model.InlineResponse20013Steps;
import java.util.*;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20013ParsedInstructions  {
  
  @SerializedName("name")
  private String name = null;
  @SerializedName("steps")
  private List<InlineResponse20013Steps> steps = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<InlineResponse20013Steps> getSteps() {
    return steps;
  }
  public void setSteps(List<InlineResponse20013Steps> steps) {
    this.steps = steps;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20013ParsedInstructions inlineResponse20013ParsedInstructions = (InlineResponse20013ParsedInstructions) o;
    return (this.name == null ? inlineResponse20013ParsedInstructions.name == null : this.name.equals(inlineResponse20013ParsedInstructions.name)) &&
        (this.steps == null ? inlineResponse20013ParsedInstructions.steps == null : this.steps.equals(inlineResponse20013ParsedInstructions.steps));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.name == null ? 0: this.name.hashCode());
    result = 31 * result + (this.steps == null ? 0: this.steps.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20013ParsedInstructions {\n");
    
    sb.append("  name: ").append(name).append("\n");
    sb.append("  steps: ").append(steps).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
