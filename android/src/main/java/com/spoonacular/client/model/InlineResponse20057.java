package com.spoonacular.client.model;

import com.spoonacular.client.model.InlineResponse20057Suggests;
import java.util.*;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20057  {
  
  @SerializedName("suggests")
  private InlineResponse20057Suggests suggests = null;
  @SerializedName("words")
  private List<Object> words = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public InlineResponse20057Suggests getSuggests() {
    return suggests;
  }
  public void setSuggests(InlineResponse20057Suggests suggests) {
    this.suggests = suggests;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<Object> getWords() {
    return words;
  }
  public void setWords(List<Object> words) {
    this.words = words;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20057 inlineResponse20057 = (InlineResponse20057) o;
    return (this.suggests == null ? inlineResponse20057.suggests == null : this.suggests.equals(inlineResponse20057.suggests)) &&
        (this.words == null ? inlineResponse20057.words == null : this.words.equals(inlineResponse20057.words));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.suggests == null ? 0: this.suggests.hashCode());
    result = 31 * result + (this.words == null ? 0: this.words.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20057 {\n");
    
    sb.append("  suggests: ").append(suggests).append("\n");
    sb.append("  words: ").append(words).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
