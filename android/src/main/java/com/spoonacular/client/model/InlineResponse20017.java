package com.spoonacular.client.model;

import java.math.BigDecimal;
import java.util.*;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20017  {
  
  @SerializedName("cuisine")
  private String cuisine = null;
  @SerializedName("cuisines")
  private List<String> cuisines = null;
  @SerializedName("confidence")
  private BigDecimal confidence = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getCuisine() {
    return cuisine;
  }
  public void setCuisine(String cuisine) {
    this.cuisine = cuisine;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<String> getCuisines() {
    return cuisines;
  }
  public void setCuisines(List<String> cuisines) {
    this.cuisines = cuisines;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public BigDecimal getConfidence() {
    return confidence;
  }
  public void setConfidence(BigDecimal confidence) {
    this.confidence = confidence;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20017 inlineResponse20017 = (InlineResponse20017) o;
    return (this.cuisine == null ? inlineResponse20017.cuisine == null : this.cuisine.equals(inlineResponse20017.cuisine)) &&
        (this.cuisines == null ? inlineResponse20017.cuisines == null : this.cuisines.equals(inlineResponse20017.cuisines)) &&
        (this.confidence == null ? inlineResponse20017.confidence == null : this.confidence.equals(inlineResponse20017.confidence));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.cuisine == null ? 0: this.cuisine.hashCode());
    result = 31 * result + (this.cuisines == null ? 0: this.cuisines.hashCode());
    result = 31 * result + (this.confidence == null ? 0: this.confidence.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20017 {\n");
    
    sb.append("  cuisine: ").append(cuisine).append("\n");
    sb.append("  cuisines: ").append(cuisines).append("\n");
    sb.append("  confidence: ").append(confidence).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
