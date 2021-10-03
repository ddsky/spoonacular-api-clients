package com.spoonacular.client.model;

import com.spoonacular.client.model.InlineResponse20040Items;
import java.util.*;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20040  {
  
  @SerializedName("name")
  private String name = null;
  @SerializedName("items")
  private List<InlineResponse20040Items> items = null;
  @SerializedName("publishAsPublic")
  private Boolean publishAsPublic = null;

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
  public List<InlineResponse20040Items> getItems() {
    return items;
  }
  public void setItems(List<InlineResponse20040Items> items) {
    this.items = items;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Boolean getPublishAsPublic() {
    return publishAsPublic;
  }
  public void setPublishAsPublic(Boolean publishAsPublic) {
    this.publishAsPublic = publishAsPublic;
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
    return (this.name == null ? inlineResponse20040.name == null : this.name.equals(inlineResponse20040.name)) &&
        (this.items == null ? inlineResponse20040.items == null : this.items.equals(inlineResponse20040.items)) &&
        (this.publishAsPublic == null ? inlineResponse20040.publishAsPublic == null : this.publishAsPublic.equals(inlineResponse20040.publishAsPublic));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.name == null ? 0: this.name.hashCode());
    result = 31 * result + (this.items == null ? 0: this.items.hashCode());
    result = 31 * result + (this.publishAsPublic == null ? 0: this.publishAsPublic.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20040 {\n");
    
    sb.append("  name: ").append(name).append("\n");
    sb.append("  items: ").append(items).append("\n");
    sb.append("  publishAsPublic: ").append(publishAsPublic).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
