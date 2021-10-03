package com.spoonacular.client.model;

import java.util.*;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20056  {
  
  @SerializedName("answerText")
  private String answerText = null;
  @SerializedName("media")
  private List<Object> media = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getAnswerText() {
    return answerText;
  }
  public void setAnswerText(String answerText) {
    this.answerText = answerText;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<Object> getMedia() {
    return media;
  }
  public void setMedia(List<Object> media) {
    this.media = media;
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
    return (this.answerText == null ? inlineResponse20056.answerText == null : this.answerText.equals(inlineResponse20056.answerText)) &&
        (this.media == null ? inlineResponse20056.media == null : this.media.equals(inlineResponse20056.media));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.answerText == null ? 0: this.answerText.hashCode());
    result = 31 * result + (this.media == null ? 0: this.media.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20056 {\n");
    
    sb.append("  answerText: ").append(answerText).append("\n");
    sb.append("  media: ").append(media).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
