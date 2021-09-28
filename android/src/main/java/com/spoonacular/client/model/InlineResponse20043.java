package com.spoonacular.client.model;

import java.util.*;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20043  {
  
  @SerializedName("pairings")
  private List<String> pairings = null;
  @SerializedName("text")
  private String text = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<String> getPairings() {
    return pairings;
  }
  public void setPairings(List<String> pairings) {
    this.pairings = pairings;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getText() {
    return text;
  }
  public void setText(String text) {
    this.text = text;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20043 inlineResponse20043 = (InlineResponse20043) o;
    return (this.pairings == null ? inlineResponse20043.pairings == null : this.pairings.equals(inlineResponse20043.pairings)) &&
        (this.text == null ? inlineResponse20043.text == null : this.text.equals(inlineResponse20043.text));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.pairings == null ? 0: this.pairings.hashCode());
    result = 31 * result + (this.text == null ? 0: this.text.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20043 {\n");
    
    sb.append("  pairings: ").append(pairings).append("\n");
    sb.append("  text: ").append(text).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
