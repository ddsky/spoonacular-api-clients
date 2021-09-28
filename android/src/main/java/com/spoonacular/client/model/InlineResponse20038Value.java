package com.spoonacular.client.model;

import java.math.BigDecimal;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20038Value  {
  
  @SerializedName("servings")
  private BigDecimal servings = null;
  @SerializedName("id")
  private BigDecimal id = null;
  @SerializedName("title")
  private String title = null;
  @SerializedName("imageType")
  private String imageType = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public BigDecimal getServings() {
    return servings;
  }
  public void setServings(BigDecimal servings) {
    this.servings = servings;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public BigDecimal getId() {
    return id;
  }
  public void setId(BigDecimal id) {
    this.id = id;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getTitle() {
    return title;
  }
  public void setTitle(String title) {
    this.title = title;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getImageType() {
    return imageType;
  }
  public void setImageType(String imageType) {
    this.imageType = imageType;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20038Value inlineResponse20038Value = (InlineResponse20038Value) o;
    return (this.servings == null ? inlineResponse20038Value.servings == null : this.servings.equals(inlineResponse20038Value.servings)) &&
        (this.id == null ? inlineResponse20038Value.id == null : this.id.equals(inlineResponse20038Value.id)) &&
        (this.title == null ? inlineResponse20038Value.title == null : this.title.equals(inlineResponse20038Value.title)) &&
        (this.imageType == null ? inlineResponse20038Value.imageType == null : this.imageType.equals(inlineResponse20038Value.imageType));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.servings == null ? 0: this.servings.hashCode());
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.title == null ? 0: this.title.hashCode());
    result = 31 * result + (this.imageType == null ? 0: this.imageType.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20038Value {\n");
    
    sb.append("  servings: ").append(servings).append("\n");
    sb.append("  id: ").append(id).append("\n");
    sb.append("  title: ").append(title).append("\n");
    sb.append("  imageType: ").append(imageType).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
