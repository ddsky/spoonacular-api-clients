package com.spoonacular.client.model;

import com.spoonacular.client.model.InlineResponse20046RecommendedWines;
import java.util.*;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20046  {
  
  @SerializedName("recommendedWines")
  private List<InlineResponse20046RecommendedWines> recommendedWines = null;
  @SerializedName("totalFound")
  private Integer totalFound = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<InlineResponse20046RecommendedWines> getRecommendedWines() {
    return recommendedWines;
  }
  public void setRecommendedWines(List<InlineResponse20046RecommendedWines> recommendedWines) {
    this.recommendedWines = recommendedWines;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Integer getTotalFound() {
    return totalFound;
  }
  public void setTotalFound(Integer totalFound) {
    this.totalFound = totalFound;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20046 inlineResponse20046 = (InlineResponse20046) o;
    return (this.recommendedWines == null ? inlineResponse20046.recommendedWines == null : this.recommendedWines.equals(inlineResponse20046.recommendedWines)) &&
        (this.totalFound == null ? inlineResponse20046.totalFound == null : this.totalFound.equals(inlineResponse20046.totalFound));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.recommendedWines == null ? 0: this.recommendedWines.hashCode());
    result = 31 * result + (this.totalFound == null ? 0: this.totalFound.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20046 {\n");
    
    sb.append("  recommendedWines: ").append(recommendedWines).append("\n");
    sb.append("  totalFound: ").append(totalFound).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
