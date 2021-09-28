package com.spoonacular.client.model;

import com.spoonacular.client.model.InlineResponse20035MenuItems;
import java.util.*;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20035  {
  
  @SerializedName("menuItems")
  private List<InlineResponse20035MenuItems> menuItems = null;
  @SerializedName("totalMenuItems")
  private Integer totalMenuItems = null;
  @SerializedName("type")
  private String type = null;
  @SerializedName("offset")
  private Integer offset = null;
  @SerializedName("number")
  private Integer number = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<InlineResponse20035MenuItems> getMenuItems() {
    return menuItems;
  }
  public void setMenuItems(List<InlineResponse20035MenuItems> menuItems) {
    this.menuItems = menuItems;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Integer getTotalMenuItems() {
    return totalMenuItems;
  }
  public void setTotalMenuItems(Integer totalMenuItems) {
    this.totalMenuItems = totalMenuItems;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getType() {
    return type;
  }
  public void setType(String type) {
    this.type = type;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Integer getOffset() {
    return offset;
  }
  public void setOffset(Integer offset) {
    this.offset = offset;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Integer getNumber() {
    return number;
  }
  public void setNumber(Integer number) {
    this.number = number;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20035 inlineResponse20035 = (InlineResponse20035) o;
    return (this.menuItems == null ? inlineResponse20035.menuItems == null : this.menuItems.equals(inlineResponse20035.menuItems)) &&
        (this.totalMenuItems == null ? inlineResponse20035.totalMenuItems == null : this.totalMenuItems.equals(inlineResponse20035.totalMenuItems)) &&
        (this.type == null ? inlineResponse20035.type == null : this.type.equals(inlineResponse20035.type)) &&
        (this.offset == null ? inlineResponse20035.offset == null : this.offset.equals(inlineResponse20035.offset)) &&
        (this.number == null ? inlineResponse20035.number == null : this.number.equals(inlineResponse20035.number));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.menuItems == null ? 0: this.menuItems.hashCode());
    result = 31 * result + (this.totalMenuItems == null ? 0: this.totalMenuItems.hashCode());
    result = 31 * result + (this.type == null ? 0: this.type.hashCode());
    result = 31 * result + (this.offset == null ? 0: this.offset.hashCode());
    result = 31 * result + (this.number == null ? 0: this.number.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20035 {\n");
    
    sb.append("  menuItems: ").append(menuItems).append("\n");
    sb.append("  totalMenuItems: ").append(totalMenuItems).append("\n");
    sb.append("  type: ").append(type).append("\n");
    sb.append("  offset: ").append(offset).append("\n");
    sb.append("  number: ").append(number).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
