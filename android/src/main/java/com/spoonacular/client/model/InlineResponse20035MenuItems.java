package com.spoonacular.client.model;

import com.spoonacular.client.model.InlineResponse20028Servings;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20035MenuItems  {
  
  @SerializedName("id")
  private Integer id = null;
  @SerializedName("title")
  private String title = null;
  @SerializedName("restaurantChain")
  private String restaurantChain = null;
  @SerializedName("image")
  private String image = null;
  @SerializedName("imageType")
  private String imageType = null;
  @SerializedName("servings")
  private InlineResponse20028Servings servings = null;

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
  public String getTitle() {
    return title;
  }
  public void setTitle(String title) {
    this.title = title;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getRestaurantChain() {
    return restaurantChain;
  }
  public void setRestaurantChain(String restaurantChain) {
    this.restaurantChain = restaurantChain;
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

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getImageType() {
    return imageType;
  }
  public void setImageType(String imageType) {
    this.imageType = imageType;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public InlineResponse20028Servings getServings() {
    return servings;
  }
  public void setServings(InlineResponse20028Servings servings) {
    this.servings = servings;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20035MenuItems inlineResponse20035MenuItems = (InlineResponse20035MenuItems) o;
    return (this.id == null ? inlineResponse20035MenuItems.id == null : this.id.equals(inlineResponse20035MenuItems.id)) &&
        (this.title == null ? inlineResponse20035MenuItems.title == null : this.title.equals(inlineResponse20035MenuItems.title)) &&
        (this.restaurantChain == null ? inlineResponse20035MenuItems.restaurantChain == null : this.restaurantChain.equals(inlineResponse20035MenuItems.restaurantChain)) &&
        (this.image == null ? inlineResponse20035MenuItems.image == null : this.image.equals(inlineResponse20035MenuItems.image)) &&
        (this.imageType == null ? inlineResponse20035MenuItems.imageType == null : this.imageType.equals(inlineResponse20035MenuItems.imageType)) &&
        (this.servings == null ? inlineResponse20035MenuItems.servings == null : this.servings.equals(inlineResponse20035MenuItems.servings));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.title == null ? 0: this.title.hashCode());
    result = 31 * result + (this.restaurantChain == null ? 0: this.restaurantChain.hashCode());
    result = 31 * result + (this.image == null ? 0: this.image.hashCode());
    result = 31 * result + (this.imageType == null ? 0: this.imageType.hashCode());
    result = 31 * result + (this.servings == null ? 0: this.servings.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20035MenuItems {\n");
    
    sb.append("  id: ").append(id).append("\n");
    sb.append("  title: ").append(title).append("\n");
    sb.append("  restaurantChain: ").append(restaurantChain).append("\n");
    sb.append("  image: ").append(image).append("\n");
    sb.append("  imageType: ").append(imageType).append("\n");
    sb.append("  servings: ").append(servings).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
