package com.spoonacular.client.model;

import com.spoonacular.client.model.InlineResponse20040Days;
import java.util.*;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20040  {
  
  @SerializedName("id")
  private Integer id = null;
  @SerializedName("name")
  private String name = null;
  @SerializedName("days")
  private List<InlineResponse20040Days> days = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Integer getId() {
    return id;
  }
  public void setId(Integer id) {
    this.id = id;
  }

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
  @ApiModelProperty(required = true, value = "")
  public List<InlineResponse20040Days> getDays() {
    return days;
  }
  public void setDays(List<InlineResponse20040Days> days) {
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
    InlineResponse20040 inlineResponse20040 = (InlineResponse20040) o;
    return (this.id == null ? inlineResponse20040.id == null : this.id.equals(inlineResponse20040.id)) &&
        (this.name == null ? inlineResponse20040.name == null : this.name.equals(inlineResponse20040.name)) &&
        (this.days == null ? inlineResponse20040.days == null : this.days.equals(inlineResponse20040.days));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.name == null ? 0: this.name.hashCode());
    result = 31 * result + (this.days == null ? 0: this.days.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20040 {\n");
    
    sb.append("  id: ").append(id).append("\n");
    sb.append("  name: ").append(name).append("\n");
    sb.append("  days: ").append(days).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
