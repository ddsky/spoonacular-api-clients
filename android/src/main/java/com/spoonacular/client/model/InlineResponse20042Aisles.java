package com.spoonacular.client.model;

import com.spoonacular.client.model.InlineResponse20042Items;
import java.util.*;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20042Aisles  {
  
  @SerializedName("aisle")
  private String aisle = null;
  @SerializedName("items")
  private List<InlineResponse20042Items> items = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getAisle() {
    return aisle;
  }
  public void setAisle(String aisle) {
    this.aisle = aisle;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<InlineResponse20042Items> getItems() {
    return items;
  }
  public void setItems(List<InlineResponse20042Items> items) {
    this.items = items;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20042Aisles inlineResponse20042Aisles = (InlineResponse20042Aisles) o;
    return (this.aisle == null ? inlineResponse20042Aisles.aisle == null : this.aisle.equals(inlineResponse20042Aisles.aisle)) &&
        (this.items == null ? inlineResponse20042Aisles.items == null : this.items.equals(inlineResponse20042Aisles.items));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.aisle == null ? 0: this.aisle.hashCode());
    result = 31 * result + (this.items == null ? 0: this.items.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20042Aisles {\n");
    
    sb.append("  aisle: ").append(aisle).append("\n");
    sb.append("  items: ").append(items).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
