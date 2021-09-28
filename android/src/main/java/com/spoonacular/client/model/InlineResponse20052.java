package com.spoonacular.client.model;

import com.spoonacular.client.model.InlineResponse20052SearchResults;
import java.util.*;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20052  {
  
  @SerializedName("query")
  private String query = null;
  @SerializedName("totalResults")
  private Integer totalResults = null;
  @SerializedName("limit")
  private Integer limit = null;
  @SerializedName("offset")
  private Integer offset = null;
  @SerializedName("searchResults")
  private List<InlineResponse20052SearchResults> searchResults = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getQuery() {
    return query;
  }
  public void setQuery(String query) {
    this.query = query;
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
  @ApiModelProperty(required = true, value = "")
  public Integer getLimit() {
    return limit;
  }
  public void setLimit(Integer limit) {
    this.limit = limit;
  }

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
  public List<InlineResponse20052SearchResults> getSearchResults() {
    return searchResults;
  }
  public void setSearchResults(List<InlineResponse20052SearchResults> searchResults) {
    this.searchResults = searchResults;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20052 inlineResponse20052 = (InlineResponse20052) o;
    return (this.query == null ? inlineResponse20052.query == null : this.query.equals(inlineResponse20052.query)) &&
        (this.totalResults == null ? inlineResponse20052.totalResults == null : this.totalResults.equals(inlineResponse20052.totalResults)) &&
        (this.limit == null ? inlineResponse20052.limit == null : this.limit.equals(inlineResponse20052.limit)) &&
        (this.offset == null ? inlineResponse20052.offset == null : this.offset.equals(inlineResponse20052.offset)) &&
        (this.searchResults == null ? inlineResponse20052.searchResults == null : this.searchResults.equals(inlineResponse20052.searchResults));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.query == null ? 0: this.query.hashCode());
    result = 31 * result + (this.totalResults == null ? 0: this.totalResults.hashCode());
    result = 31 * result + (this.limit == null ? 0: this.limit.hashCode());
    result = 31 * result + (this.offset == null ? 0: this.offset.hashCode());
    result = 31 * result + (this.searchResults == null ? 0: this.searchResults.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20052 {\n");
    
    sb.append("  query: ").append(query).append("\n");
    sb.append("  totalResults: ").append(totalResults).append("\n");
    sb.append("  limit: ").append(limit).append("\n");
    sb.append("  offset: ").append(offset).append("\n");
    sb.append("  searchResults: ").append(searchResults).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
