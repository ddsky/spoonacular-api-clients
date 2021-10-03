package com.spoonacular.client.model;


import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineObject8  {
  
  @SerializedName("username")
  private String username = null;
  @SerializedName("start-date")
  private String startDate = null;
  @SerializedName("end-date")
  private String endDate = null;
  @SerializedName("hash")
  private String hash = null;

  /**
   * The username.
   **/
  @ApiModelProperty(required = true, value = "The username.")
  public String getUsername() {
    return username;
  }
  public void setUsername(String username) {
    this.username = username;
  }

  /**
   * The start date in the format yyyy-mm-dd.
   **/
  @ApiModelProperty(required = true, value = "The start date in the format yyyy-mm-dd.")
  public String getStartDate() {
    return startDate;
  }
  public void setStartDate(String startDate) {
    this.startDate = startDate;
  }

  /**
   * The end date in the format yyyy-mm-dd.
   **/
  @ApiModelProperty(required = true, value = "The end date in the format yyyy-mm-dd.")
  public String getEndDate() {
    return endDate;
  }
  public void setEndDate(String endDate) {
    this.endDate = endDate;
  }

  /**
   * The private hash for the username.
   **/
  @ApiModelProperty(required = true, value = "The private hash for the username.")
  public String getHash() {
    return hash;
  }
  public void setHash(String hash) {
    this.hash = hash;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineObject8 inlineObject8 = (InlineObject8) o;
    return (this.username == null ? inlineObject8.username == null : this.username.equals(inlineObject8.username)) &&
        (this.startDate == null ? inlineObject8.startDate == null : this.startDate.equals(inlineObject8.startDate)) &&
        (this.endDate == null ? inlineObject8.endDate == null : this.endDate.equals(inlineObject8.endDate)) &&
        (this.hash == null ? inlineObject8.hash == null : this.hash.equals(inlineObject8.hash));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.username == null ? 0: this.username.hashCode());
    result = 31 * result + (this.startDate == null ? 0: this.startDate.hashCode());
    result = 31 * result + (this.endDate == null ? 0: this.endDate.hashCode());
    result = 31 * result + (this.hash == null ? 0: this.hash.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineObject8 {\n");
    
    sb.append("  username: ").append(username).append("\n");
    sb.append("  startDate: ").append(startDate).append("\n");
    sb.append("  endDate: ").append(endDate).append("\n");
    sb.append("  hash: ").append(hash).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
