package com.spoonacular.client.model;


import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20050  {
  
  @SerializedName("answer")
  private String answer = null;
  @SerializedName("image")
  private String image = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getAnswer() {
    return answer;
  }
  public void setAnswer(String answer) {
    this.answer = answer;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getImage() {
    return image;
  }
  public void setImage(String image) {
    this.image = image;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20050 inlineResponse20050 = (InlineResponse20050) o;
    return (this.answer == null ? inlineResponse20050.answer == null : this.answer.equals(inlineResponse20050.answer)) &&
        (this.image == null ? inlineResponse20050.image == null : this.image.equals(inlineResponse20050.image));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.answer == null ? 0: this.answer.hashCode());
    result = 31 * result + (this.image == null ? 0: this.image.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20050 {\n");
    
    sb.append("  answer: ").append(answer).append("\n");
    sb.append("  image: ").append(image).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
