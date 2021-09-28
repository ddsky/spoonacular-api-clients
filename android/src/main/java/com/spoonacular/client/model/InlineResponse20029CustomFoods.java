package com.spoonacular.client.model;

import java.math.BigDecimal;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20029CustomFoods  {
  
  @SerializedName("id")
  private Integer id = null;
  @SerializedName("title")
  private String title = null;
  @SerializedName("servings")
  private BigDecimal servings = null;
  @SerializedName("imageUrl")
  private String imageUrl = null;
  @SerializedName("price")
  private BigDecimal price = null;

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
  public BigDecimal getServings() {
    return servings;
  }
  public void setServings(BigDecimal servings) {
    this.servings = servings;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getImageUrl() {
    return imageUrl;
  }
  public void setImageUrl(String imageUrl) {
    this.imageUrl = imageUrl;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public BigDecimal getPrice() {
    return price;
  }
  public void setPrice(BigDecimal price) {
    this.price = price;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20029CustomFoods inlineResponse20029CustomFoods = (InlineResponse20029CustomFoods) o;
    return (this.id == null ? inlineResponse20029CustomFoods.id == null : this.id.equals(inlineResponse20029CustomFoods.id)) &&
        (this.title == null ? inlineResponse20029CustomFoods.title == null : this.title.equals(inlineResponse20029CustomFoods.title)) &&
        (this.servings == null ? inlineResponse20029CustomFoods.servings == null : this.servings.equals(inlineResponse20029CustomFoods.servings)) &&
        (this.imageUrl == null ? inlineResponse20029CustomFoods.imageUrl == null : this.imageUrl.equals(inlineResponse20029CustomFoods.imageUrl)) &&
        (this.price == null ? inlineResponse20029CustomFoods.price == null : this.price.equals(inlineResponse20029CustomFoods.price));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.title == null ? 0: this.title.hashCode());
    result = 31 * result + (this.servings == null ? 0: this.servings.hashCode());
    result = 31 * result + (this.imageUrl == null ? 0: this.imageUrl.hashCode());
    result = 31 * result + (this.price == null ? 0: this.price.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20029CustomFoods {\n");
    
    sb.append("  id: ").append(id).append("\n");
    sb.append("  title: ").append(title).append("\n");
    sb.append("  servings: ").append(servings).append("\n");
    sb.append("  imageUrl: ").append(imageUrl).append("\n");
    sb.append("  price: ").append(price).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
