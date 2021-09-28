package com.spoonacular.client.model;

import java.math.BigDecimal;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20031ComparableProductsProtein  {
  
  @SerializedName("difference")
  private BigDecimal difference = null;
  @SerializedName("id")
  private Integer id = null;
  @SerializedName("image")
  private String image = null;
  @SerializedName("title")
  private String title = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public BigDecimal getDifference() {
    return difference;
  }
  public void setDifference(BigDecimal difference) {
    this.difference = difference;
  }

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
  public String getImage() {
    return image;
  }
  public void setImage(String image) {
    this.image = image;
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


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20031ComparableProductsProtein inlineResponse20031ComparableProductsProtein = (InlineResponse20031ComparableProductsProtein) o;
    return (this.difference == null ? inlineResponse20031ComparableProductsProtein.difference == null : this.difference.equals(inlineResponse20031ComparableProductsProtein.difference)) &&
        (this.id == null ? inlineResponse20031ComparableProductsProtein.id == null : this.id.equals(inlineResponse20031ComparableProductsProtein.id)) &&
        (this.image == null ? inlineResponse20031ComparableProductsProtein.image == null : this.image.equals(inlineResponse20031ComparableProductsProtein.image)) &&
        (this.title == null ? inlineResponse20031ComparableProductsProtein.title == null : this.title.equals(inlineResponse20031ComparableProductsProtein.title));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.difference == null ? 0: this.difference.hashCode());
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.image == null ? 0: this.image.hashCode());
    result = 31 * result + (this.title == null ? 0: this.title.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20031ComparableProductsProtein {\n");
    
    sb.append("  difference: ").append(difference).append("\n");
    sb.append("  id: ").append(id).append("\n");
    sb.append("  image: ").append(image).append("\n");
    sb.append("  title: ").append(title).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
