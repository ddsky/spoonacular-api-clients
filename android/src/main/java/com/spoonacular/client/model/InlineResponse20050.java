package com.spoonacular.client.model;

import java.util.*;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20050  {
  
  @SerializedName("annotations")
  private List<Object> annotations = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<Object> getAnnotations() {
    return annotations;
  }
  public void setAnnotations(List<Object> annotations) {
    this.annotations = annotations;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20050 inlineResponse20050 = (InlineResponse20050) o;
    return (this.annotations == null ? inlineResponse20050.annotations == null : this.annotations.equals(inlineResponse20050.annotations));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.annotations == null ? 0: this.annotations.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20050 {\n");
    
    sb.append("  annotations: ").append(annotations).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
