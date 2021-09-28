package com.spoonacular.client.model;

import com.spoonacular.client.model.InlineResponse20032Results;
import java.util.*;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20032  {
  
  @SerializedName("results")
  private List<InlineResponse20032Results> results = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<InlineResponse20032Results> getResults() {
    return results;
  }
  public void setResults(List<InlineResponse20032Results> results) {
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
    InlineResponse20032 inlineResponse20032 = (InlineResponse20032) o;
    return (this.results == null ? inlineResponse20032.results == null : this.results.equals(inlineResponse20032.results));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.results == null ? 0: this.results.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20032 {\n");
    
    sb.append("  results: ").append(results).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
