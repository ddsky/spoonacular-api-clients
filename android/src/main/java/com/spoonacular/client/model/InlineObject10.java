package com.spoonacular.client.model;


import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineObject10  {
  
  @SerializedName("username")
  private String username = null;
  @SerializedName("date")
  private String date = null;
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
   * The date in the format yyyy-mm-dd.
   **/
  @ApiModelProperty(required = true, value = "The date in the format yyyy-mm-dd.")
  public String getDate() {
    return date;
  }
  public void setDate(String date) {
    this.date = date;
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
    InlineObject10 inlineObject10 = (InlineObject10) o;
    return (this.username == null ? inlineObject10.username == null : this.username.equals(inlineObject10.username)) &&
        (this.date == null ? inlineObject10.date == null : this.date.equals(inlineObject10.date)) &&
        (this.hash == null ? inlineObject10.hash == null : this.hash.equals(inlineObject10.hash));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.username == null ? 0: this.username.hashCode());
    result = 31 * result + (this.date == null ? 0: this.date.hashCode());
    result = 31 * result + (this.hash == null ? 0: this.hash.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineObject10 {\n");
    
    sb.append("  username: ").append(username).append("\n");
    sb.append("  date: ").append(date).append("\n");
    sb.append("  hash: ").append(hash).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
