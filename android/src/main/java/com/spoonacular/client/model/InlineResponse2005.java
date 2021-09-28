package com.spoonacular.client.model;

import java.math.BigDecimal;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse2005  {
  
  @SerializedName("id")
  private Integer id = null;
  @SerializedName("title")
  private String title = null;
  @SerializedName("imageType")
  private String imageType = null;
  @SerializedName("readyInMinutes")
  private Integer readyInMinutes = null;
  @SerializedName("servings")
  private BigDecimal servings = null;
  @SerializedName("sourceUrl")
  private String sourceUrl = null;

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

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Integer getReadyInMinutes() {
    return readyInMinutes;
  }
  public void setReadyInMinutes(Integer readyInMinutes) {
    this.readyInMinutes = readyInMinutes;
  }

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
  public String getSourceUrl() {
    return sourceUrl;
  }
  public void setSourceUrl(String sourceUrl) {
    this.sourceUrl = sourceUrl;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse2005 inlineResponse2005 = (InlineResponse2005) o;
    return (this.id == null ? inlineResponse2005.id == null : this.id.equals(inlineResponse2005.id)) &&
        (this.title == null ? inlineResponse2005.title == null : this.title.equals(inlineResponse2005.title)) &&
        (this.imageType == null ? inlineResponse2005.imageType == null : this.imageType.equals(inlineResponse2005.imageType)) &&
        (this.readyInMinutes == null ? inlineResponse2005.readyInMinutes == null : this.readyInMinutes.equals(inlineResponse2005.readyInMinutes)) &&
        (this.servings == null ? inlineResponse2005.servings == null : this.servings.equals(inlineResponse2005.servings)) &&
        (this.sourceUrl == null ? inlineResponse2005.sourceUrl == null : this.sourceUrl.equals(inlineResponse2005.sourceUrl));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.title == null ? 0: this.title.hashCode());
    result = 31 * result + (this.imageType == null ? 0: this.imageType.hashCode());
    result = 31 * result + (this.readyInMinutes == null ? 0: this.readyInMinutes.hashCode());
    result = 31 * result + (this.servings == null ? 0: this.servings.hashCode());
    result = 31 * result + (this.sourceUrl == null ? 0: this.sourceUrl.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse2005 {\n");
    
    sb.append("  id: ").append(id).append("\n");
    sb.append("  title: ").append(title).append("\n");
    sb.append("  imageType: ").append(imageType).append("\n");
    sb.append("  readyInMinutes: ").append(readyInMinutes).append("\n");
    sb.append("  servings: ").append(servings).append("\n");
    sb.append("  sourceUrl: ").append(sourceUrl).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
