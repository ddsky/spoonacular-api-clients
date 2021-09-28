package com.spoonacular.client.model;

import com.spoonacular.client.model.InlineResponse20052Results;
import java.util.*;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20052SearchResults  {
  
  @SerializedName("name")
  private String name = null;
  @SerializedName("totalResults")
  private Integer totalResults = null;
  @SerializedName("results")
  private List<InlineResponse20052Results> results = null;

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
  public Integer getTotalResults() {
    return totalResults;
  }
  public void setTotalResults(Integer totalResults) {
    this.totalResults = totalResults;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<InlineResponse20052Results> getResults() {
    return results;
  }
  public void setResults(List<InlineResponse20052Results> results) {
    this.results = results;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20052SearchResults inlineResponse20052SearchResults = (InlineResponse20052SearchResults) o;
    return (this.name == null ? inlineResponse20052SearchResults.name == null : this.name.equals(inlineResponse20052SearchResults.name)) &&
        (this.totalResults == null ? inlineResponse20052SearchResults.totalResults == null : this.totalResults.equals(inlineResponse20052SearchResults.totalResults)) &&
        (this.results == null ? inlineResponse20052SearchResults.results == null : this.results.equals(inlineResponse20052SearchResults.results));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.name == null ? 0: this.name.hashCode());
    result = 31 * result + (this.totalResults == null ? 0: this.totalResults.hashCode());
    result = 31 * result + (this.results == null ? 0: this.results.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20052SearchResults {\n");
    
    sb.append("  name: ").append(name).append("\n");
    sb.append("  totalResults: ").append(totalResults).append("\n");
    sb.append("  results: ").append(results).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
