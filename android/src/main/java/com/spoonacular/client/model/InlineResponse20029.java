package com.spoonacular.client.model;

import com.spoonacular.client.model.InlineResponse20029CustomFoods;
import java.util.*;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20029  {
  
  @SerializedName("customFoods")
  private List<InlineResponse20029CustomFoods> customFoods = null;
  @SerializedName("type")
  private String type = null;
  @SerializedName("offset")
  private Integer offset = null;
  @SerializedName("number")
  private Integer number = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<InlineResponse20029CustomFoods> getCustomFoods() {
    return customFoods;
  }
  public void setCustomFoods(List<InlineResponse20029CustomFoods> customFoods) {
    this.customFoods = customFoods;
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
    InlineResponse20029 inlineResponse20029 = (InlineResponse20029) o;
    return (this.customFoods == null ? inlineResponse20029.customFoods == null : this.customFoods.equals(inlineResponse20029.customFoods)) &&
        (this.type == null ? inlineResponse20029.type == null : this.type.equals(inlineResponse20029.type)) &&
        (this.offset == null ? inlineResponse20029.offset == null : this.offset.equals(inlineResponse20029.offset)) &&
        (this.number == null ? inlineResponse20029.number == null : this.number.equals(inlineResponse20029.number));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.customFoods == null ? 0: this.customFoods.hashCode());
    result = 31 * result + (this.type == null ? 0: this.type.hashCode());
    result = 31 * result + (this.offset == null ? 0: this.offset.hashCode());
    result = 31 * result + (this.number == null ? 0: this.number.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20029 {\n");
    
    sb.append("  customFoods: ").append(customFoods).append("\n");
    sb.append("  type: ").append(type).append("\n");
    sb.append("  offset: ").append(offset).append("\n");
    sb.append("  number: ").append(number).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
