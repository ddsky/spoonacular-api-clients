package com.spoonacular.client.model;

import java.math.BigDecimal;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20053Videos  {
  
  @SerializedName("title")
  private String title = null;
  @SerializedName("length")
  private Integer length = null;
  @SerializedName("rating")
  private BigDecimal rating = null;
  @SerializedName("shortTitle")
  private String shortTitle = null;
  @SerializedName("thumbnail")
  private String thumbnail = null;
  @SerializedName("views")
  private Integer views = null;
  @SerializedName("youTubeId")
  private String youTubeId = null;

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
  public Integer getLength() {
    return length;
  }
  public void setLength(Integer length) {
    this.length = length;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public BigDecimal getRating() {
    return rating;
  }
  public void setRating(BigDecimal rating) {
    this.rating = rating;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getShortTitle() {
    return shortTitle;
  }
  public void setShortTitle(String shortTitle) {
    this.shortTitle = shortTitle;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getThumbnail() {
    return thumbnail;
  }
  public void setThumbnail(String thumbnail) {
    this.thumbnail = thumbnail;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Integer getViews() {
    return views;
  }
  public void setViews(Integer views) {
    this.views = views;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getYouTubeId() {
    return youTubeId;
  }
  public void setYouTubeId(String youTubeId) {
    this.youTubeId = youTubeId;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20053Videos inlineResponse20053Videos = (InlineResponse20053Videos) o;
    return (this.title == null ? inlineResponse20053Videos.title == null : this.title.equals(inlineResponse20053Videos.title)) &&
        (this.length == null ? inlineResponse20053Videos.length == null : this.length.equals(inlineResponse20053Videos.length)) &&
        (this.rating == null ? inlineResponse20053Videos.rating == null : this.rating.equals(inlineResponse20053Videos.rating)) &&
        (this.shortTitle == null ? inlineResponse20053Videos.shortTitle == null : this.shortTitle.equals(inlineResponse20053Videos.shortTitle)) &&
        (this.thumbnail == null ? inlineResponse20053Videos.thumbnail == null : this.thumbnail.equals(inlineResponse20053Videos.thumbnail)) &&
        (this.views == null ? inlineResponse20053Videos.views == null : this.views.equals(inlineResponse20053Videos.views)) &&
        (this.youTubeId == null ? inlineResponse20053Videos.youTubeId == null : this.youTubeId.equals(inlineResponse20053Videos.youTubeId));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.title == null ? 0: this.title.hashCode());
    result = 31 * result + (this.length == null ? 0: this.length.hashCode());
    result = 31 * result + (this.rating == null ? 0: this.rating.hashCode());
    result = 31 * result + (this.shortTitle == null ? 0: this.shortTitle.hashCode());
    result = 31 * result + (this.thumbnail == null ? 0: this.thumbnail.hashCode());
    result = 31 * result + (this.views == null ? 0: this.views.hashCode());
    result = 31 * result + (this.youTubeId == null ? 0: this.youTubeId.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20053Videos {\n");
    
    sb.append("  title: ").append(title).append("\n");
    sb.append("  length: ").append(length).append("\n");
    sb.append("  rating: ").append(rating).append("\n");
    sb.append("  shortTitle: ").append(shortTitle).append("\n");
    sb.append("  thumbnail: ").append(thumbnail).append("\n");
    sb.append("  views: ").append(views).append("\n");
    sb.append("  youTubeId: ").append(youTubeId).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
