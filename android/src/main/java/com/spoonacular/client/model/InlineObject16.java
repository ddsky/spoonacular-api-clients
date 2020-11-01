package com.spoonacular.client.model;


import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineObject16  {
  
  @SerializedName("text")
  private String text = null;

  /**
   * The text in which food items, such as dish names and ingredients, should be detected in.
   **/
  @ApiModelProperty(required = true, value = "The text in which food items, such as dish names and ingredients, should be detected in.")
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
    InlineObject16 inlineObject16 = (InlineObject16) o;
    return (this.text == null ? inlineObject16.text == null : this.text.equals(inlineObject16.text));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.text == null ? 0: this.text.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineObject16 {\n");
    
    sb.append("  text: ").append(text).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
