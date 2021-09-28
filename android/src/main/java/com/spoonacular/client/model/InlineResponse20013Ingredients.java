package com.spoonacular.client.model;


import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20013Ingredients  {
  
  @SerializedName("id")
  private Integer id = null;
  @SerializedName("name")
  private String name = null;
  @SerializedName("localizedName")
  private String localizedName = null;
  @SerializedName("image")
  private String image = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Integer getId() {
    return id;
  }
  public void setId(Integer id) {
    this.id = id;
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

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getLocalizedName() {
    return localizedName;
  }
  public void setLocalizedName(String localizedName) {
    this.localizedName = localizedName;
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
    InlineResponse20013Ingredients inlineResponse20013Ingredients = (InlineResponse20013Ingredients) o;
    return (this.id == null ? inlineResponse20013Ingredients.id == null : this.id.equals(inlineResponse20013Ingredients.id)) &&
        (this.name == null ? inlineResponse20013Ingredients.name == null : this.name.equals(inlineResponse20013Ingredients.name)) &&
        (this.localizedName == null ? inlineResponse20013Ingredients.localizedName == null : this.localizedName.equals(inlineResponse20013Ingredients.localizedName)) &&
        (this.image == null ? inlineResponse20013Ingredients.image == null : this.image.equals(inlineResponse20013Ingredients.image));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.name == null ? 0: this.name.hashCode());
    result = 31 * result + (this.localizedName == null ? 0: this.localizedName.hashCode());
    result = 31 * result + (this.image == null ? 0: this.image.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20013Ingredients {\n");
    
    sb.append("  id: ").append(id).append("\n");
    sb.append("  name: ").append(name).append("\n");
    sb.append("  localizedName: ").append(localizedName).append("\n");
    sb.append("  image: ").append(image).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
