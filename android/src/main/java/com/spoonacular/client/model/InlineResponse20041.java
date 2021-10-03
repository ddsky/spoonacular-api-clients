package com.spoonacular.client.model;

import com.spoonacular.client.model.InlineResponse20041Days;
import java.util.*;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20041  {
  
  @SerializedName("id")
  private Integer id = null;
  @SerializedName("name")
  private String name = null;
  @SerializedName("days")
  private List<InlineResponse20041Days> days = null;

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
  public List<InlineResponse20041Days> getDays() {
    return days;
  }
  public void setDays(List<InlineResponse20041Days> days) {
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
    InlineResponse20041 inlineResponse20041 = (InlineResponse20041) o;
    return (this.id == null ? inlineResponse20041.id == null : this.id.equals(inlineResponse20041.id)) &&
        (this.name == null ? inlineResponse20041.name == null : this.name.equals(inlineResponse20041.name)) &&
        (this.days == null ? inlineResponse20041.days == null : this.days.equals(inlineResponse20041.days));
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
    sb.append("class InlineResponse20041 {\n");
    
    sb.append("  id: ").append(id).append("\n");
    sb.append("  name: ").append(name).append("\n");
    sb.append("  days: ").append(days).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
