package com.spoonacular.client.model;


import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20018Ingredients  {
  
  @SerializedName("image")
  private String image = null;
  @SerializedName("include")
  private Boolean include = null;
  @SerializedName("name")
  private String name = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getImage() {
    return image;
  }
  public void setImage(String image) {
    this.image = image;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Boolean getInclude() {
    return include;
  }
  public void setInclude(Boolean include) {
    this.include = include;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20018Ingredients inlineResponse20018Ingredients = (InlineResponse20018Ingredients) o;
    return (this.image == null ? inlineResponse20018Ingredients.image == null : this.image.equals(inlineResponse20018Ingredients.image)) &&
        (this.include == null ? inlineResponse20018Ingredients.include == null : this.include.equals(inlineResponse20018Ingredients.include)) &&
        (this.name == null ? inlineResponse20018Ingredients.name == null : this.name.equals(inlineResponse20018Ingredients.name));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.image == null ? 0: this.image.hashCode());
    result = 31 * result + (this.include == null ? 0: this.include.hashCode());
    result = 31 * result + (this.name == null ? 0: this.name.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20018Ingredients {\n");
    
    sb.append("  image: ").append(image).append("\n");
    sb.append("  include: ").append(include).append("\n");
    sb.append("  name: ").append(name).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
