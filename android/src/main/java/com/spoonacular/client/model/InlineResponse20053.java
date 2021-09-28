package com.spoonacular.client.model;

import com.spoonacular.client.model.InlineResponse20053Videos;
import java.util.*;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20053  {
  
  @SerializedName("videos")
  private List<InlineResponse20053Videos> videos = null;
  @SerializedName("totalResults")
  private Integer totalResults = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<InlineResponse20053Videos> getVideos() {
    return videos;
  }
  public void setVideos(List<InlineResponse20053Videos> videos) {
    this.videos = videos;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Integer getTotalResults() {
    return totalResults;
  }
  public void setTotalResults(Integer totalResults) {
    this.totalResults = totalResults;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20053 inlineResponse20053 = (InlineResponse20053) o;
    return (this.videos == null ? inlineResponse20053.videos == null : this.videos.equals(inlineResponse20053.videos)) &&
        (this.totalResults == null ? inlineResponse20053.totalResults == null : this.totalResults.equals(inlineResponse20053.totalResults));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.videos == null ? 0: this.videos.hashCode());
    result = 31 * result + (this.totalResults == null ? 0: this.totalResults.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20053 {\n");
    
    sb.append("  videos: ").append(videos).append("\n");
    sb.append("  totalResults: ").append(totalResults).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
