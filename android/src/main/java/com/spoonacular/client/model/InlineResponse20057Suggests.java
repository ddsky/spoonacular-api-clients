package com.spoonacular.client.model;

import java.util.*;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20057Suggests  {
  
  @SerializedName("_")
  private List<Object> _ = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<Object> get() {
    return _;
  }
  public void set(List<Object> _) {
    this._ = _;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20057Suggests inlineResponse20057Suggests = (InlineResponse20057Suggests) o;
    return (this._ == null ? inlineResponse20057Suggests._ == null : this._.equals(inlineResponse20057Suggests._));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this._ == null ? 0: this._.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20057Suggests {\n");
    
    sb.append("  _: ").append(_).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
