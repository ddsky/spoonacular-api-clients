package com.spoonacular.client.model;

import com.spoonacular.client.model.InlineResponse20056Suggests;
import java.util.*;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20056  {
  
  @SerializedName("suggests")
  private InlineResponse20056Suggests suggests = null;
  @SerializedName("words")
  private List<Object> words = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public InlineResponse20056Suggests getSuggests() {
    return suggests;
  }
  public void setSuggests(InlineResponse20056Suggests suggests) {
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
    InlineResponse20056 inlineResponse20056 = (InlineResponse20056) o;
    return (this.suggests == null ? inlineResponse20056.suggests == null : this.suggests.equals(inlineResponse20056.suggests)) &&
        (this.words == null ? inlineResponse20056.words == null : this.words.equals(inlineResponse20056.words));
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
    sb.append("class InlineResponse20056 {\n");
    
    sb.append("  suggests: ").append(suggests).append("\n");
    sb.append("  words: ").append(words).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
