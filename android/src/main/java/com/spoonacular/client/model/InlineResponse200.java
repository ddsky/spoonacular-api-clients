package com.spoonacular.client.model;

import com.spoonacular.client.model.InlineResponse200Results;
import java.util.*;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse200  {
  
  @SerializedName("offset")
  private Integer offset = null;
  @SerializedName("number")
  private Integer number = null;
  @SerializedName("results")
  private List<InlineResponse200Results> results = null;
  @SerializedName("totalResults")
  private Integer totalResults = null;

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

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<InlineResponse200Results> getResults() {
    return results;
  }
  public void setResults(List<InlineResponse200Results> results) {
    this.results = results;
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
    InlineResponse200 inlineResponse200 = (InlineResponse200) o;
    return (this.offset == null ? inlineResponse200.offset == null : this.offset.equals(inlineResponse200.offset)) &&
        (this.number == null ? inlineResponse200.number == null : this.number.equals(inlineResponse200.number)) &&
        (this.results == null ? inlineResponse200.results == null : this.results.equals(inlineResponse200.results)) &&
        (this.totalResults == null ? inlineResponse200.totalResults == null : this.totalResults.equals(inlineResponse200.totalResults));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.offset == null ? 0: this.offset.hashCode());
    result = 31 * result + (this.number == null ? 0: this.number.hashCode());
    result = 31 * result + (this.results == null ? 0: this.results.hashCode());
    result = 31 * result + (this.totalResults == null ? 0: this.totalResults.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse200 {\n");
    
    sb.append("  offset: ").append(offset).append("\n");
    sb.append("  number: ").append(number).append("\n");
    sb.append("  results: ").append(results).append("\n");
    sb.append("  totalResults: ").append(totalResults).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
