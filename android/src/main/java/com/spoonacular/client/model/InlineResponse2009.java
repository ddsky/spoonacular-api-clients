package com.spoonacular.client.model;

import java.util.*;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse2009  {
  
  @SerializedName("equipment")
  private List<Object> equipment = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<Object> getEquipment() {
    return equipment;
  }
  public void setEquipment(List<Object> equipment) {
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
    InlineResponse2009 inlineResponse2009 = (InlineResponse2009) o;
    return (this.equipment == null ? inlineResponse2009.equipment == null : this.equipment.equals(inlineResponse2009.equipment));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.equipment == null ? 0: this.equipment.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse2009 {\n");
    
    sb.append("  equipment: ").append(equipment).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
