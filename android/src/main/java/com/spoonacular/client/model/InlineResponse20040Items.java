package com.spoonacular.client.model;

import com.spoonacular.client.model.InlineResponse20040Value;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20040Items  {
  
  @SerializedName("id")
  private Integer id = null;
  @SerializedName("slot")
  private Integer slot = null;
  @SerializedName("position")
  private Integer position = null;
  @SerializedName("type")
  private String type = null;
  @SerializedName("value")
  private InlineResponse20040Value value = null;

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
  public Integer getSlot() {
    return slot;
  }
  public void setSlot(Integer slot) {
    this.slot = slot;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Integer getPosition() {
    return position;
  }
  public void setPosition(Integer position) {
    this.position = position;
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
  @ApiModelProperty(value = "")
  public InlineResponse20040Value getValue() {
    return value;
  }
  public void setValue(InlineResponse20040Value value) {
    this.value = value;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20040Items inlineResponse20040Items = (InlineResponse20040Items) o;
    return (this.id == null ? inlineResponse20040Items.id == null : this.id.equals(inlineResponse20040Items.id)) &&
        (this.slot == null ? inlineResponse20040Items.slot == null : this.slot.equals(inlineResponse20040Items.slot)) &&
        (this.position == null ? inlineResponse20040Items.position == null : this.position.equals(inlineResponse20040Items.position)) &&
        (this.type == null ? inlineResponse20040Items.type == null : this.type.equals(inlineResponse20040Items.type)) &&
        (this.value == null ? inlineResponse20040Items.value == null : this.value.equals(inlineResponse20040Items.value));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.slot == null ? 0: this.slot.hashCode());
    result = 31 * result + (this.position == null ? 0: this.position.hashCode());
    result = 31 * result + (this.type == null ? 0: this.type.hashCode());
    result = 31 * result + (this.value == null ? 0: this.value.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20040Items {\n");
    
    sb.append("  id: ").append(id).append("\n");
    sb.append("  slot: ").append(slot).append("\n");
    sb.append("  position: ").append(position).append("\n");
    sb.append("  type: ").append(type).append("\n");
    sb.append("  value: ").append(value).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
