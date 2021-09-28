package com.spoonacular.client.model;

import com.spoonacular.client.model.InlineResponse20038Days;
import java.util.*;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20038  {
  
  @SerializedName("days")
  private List<InlineResponse20038Days> days = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<InlineResponse20038Days> getDays() {
    return days;
  }
  public void setDays(List<InlineResponse20038Days> days) {
    this.days = days;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20038 inlineResponse20038 = (InlineResponse20038) o;
    return (this.days == null ? inlineResponse20038.days == null : this.days.equals(inlineResponse20038.days));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.days == null ? 0: this.days.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20038 {\n");
    
    sb.append("  days: ").append(days).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
