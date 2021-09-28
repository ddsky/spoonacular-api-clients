package com.spoonacular.client.model;

import java.util.*;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20033  {
  
  @SerializedName("cleanTitle")
  private String cleanTitle = null;
  @SerializedName("image")
  private String image = null;
  @SerializedName("category")
  private String category = null;
  @SerializedName("breadcrumbs")
  private List<String> breadcrumbs = null;
  @SerializedName("usdaCode")
  private Integer usdaCode = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getCleanTitle() {
    return cleanTitle;
  }
  public void setCleanTitle(String cleanTitle) {
    this.cleanTitle = cleanTitle;
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
  public String getCategory() {
    return category;
  }
  public void setCategory(String category) {
    this.category = category;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<String> getBreadcrumbs() {
    return breadcrumbs;
  }
  public void setBreadcrumbs(List<String> breadcrumbs) {
    this.breadcrumbs = breadcrumbs;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Integer getUsdaCode() {
    return usdaCode;
  }
  public void setUsdaCode(Integer usdaCode) {
    this.usdaCode = usdaCode;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20033 inlineResponse20033 = (InlineResponse20033) o;
    return (this.cleanTitle == null ? inlineResponse20033.cleanTitle == null : this.cleanTitle.equals(inlineResponse20033.cleanTitle)) &&
        (this.image == null ? inlineResponse20033.image == null : this.image.equals(inlineResponse20033.image)) &&
        (this.category == null ? inlineResponse20033.category == null : this.category.equals(inlineResponse20033.category)) &&
        (this.breadcrumbs == null ? inlineResponse20033.breadcrumbs == null : this.breadcrumbs.equals(inlineResponse20033.breadcrumbs)) &&
        (this.usdaCode == null ? inlineResponse20033.usdaCode == null : this.usdaCode.equals(inlineResponse20033.usdaCode));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.cleanTitle == null ? 0: this.cleanTitle.hashCode());
    result = 31 * result + (this.image == null ? 0: this.image.hashCode());
    result = 31 * result + (this.category == null ? 0: this.category.hashCode());
    result = 31 * result + (this.breadcrumbs == null ? 0: this.breadcrumbs.hashCode());
    result = 31 * result + (this.usdaCode == null ? 0: this.usdaCode.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20033 {\n");
    
    sb.append("  cleanTitle: ").append(cleanTitle).append("\n");
    sb.append("  image: ").append(image).append("\n");
    sb.append("  category: ").append(category).append("\n");
    sb.append("  breadcrumbs: ").append(breadcrumbs).append("\n");
    sb.append("  usdaCode: ").append(usdaCode).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
