package com.spoonacular.client.model;

import java.math.BigDecimal;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse2002  {
  
  @SerializedName("calories")
  private BigDecimal calories = null;
  @SerializedName("carbs")
  private String carbs = null;
  @SerializedName("fat")
  private String fat = null;
  @SerializedName("id")
  private Integer id = null;
  @SerializedName("image")
  private String image = null;
  @SerializedName("imageType")
  private String imageType = null;
  @SerializedName("protein")
  private String protein = null;
  @SerializedName("title")
  private String title = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public BigDecimal getCalories() {
    return calories;
  }
  public void setCalories(BigDecimal calories) {
    this.calories = calories;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getCarbs() {
    return carbs;
  }
  public void setCarbs(String carbs) {
    this.carbs = carbs;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getFat() {
    return fat;
  }
  public void setFat(String fat) {
    this.fat = fat;
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
  public String getImageType() {
    return imageType;
  }
  public void setImageType(String imageType) {
    this.imageType = imageType;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getProtein() {
    return protein;
  }
  public void setProtein(String protein) {
    this.protein = protein;
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
    InlineResponse2002 inlineResponse2002 = (InlineResponse2002) o;
    return (this.calories == null ? inlineResponse2002.calories == null : this.calories.equals(inlineResponse2002.calories)) &&
        (this.carbs == null ? inlineResponse2002.carbs == null : this.carbs.equals(inlineResponse2002.carbs)) &&
        (this.fat == null ? inlineResponse2002.fat == null : this.fat.equals(inlineResponse2002.fat)) &&
        (this.id == null ? inlineResponse2002.id == null : this.id.equals(inlineResponse2002.id)) &&
        (this.image == null ? inlineResponse2002.image == null : this.image.equals(inlineResponse2002.image)) &&
        (this.imageType == null ? inlineResponse2002.imageType == null : this.imageType.equals(inlineResponse2002.imageType)) &&
        (this.protein == null ? inlineResponse2002.protein == null : this.protein.equals(inlineResponse2002.protein)) &&
        (this.title == null ? inlineResponse2002.title == null : this.title.equals(inlineResponse2002.title));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.calories == null ? 0: this.calories.hashCode());
    result = 31 * result + (this.carbs == null ? 0: this.carbs.hashCode());
    result = 31 * result + (this.fat == null ? 0: this.fat.hashCode());
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.image == null ? 0: this.image.hashCode());
    result = 31 * result + (this.imageType == null ? 0: this.imageType.hashCode());
    result = 31 * result + (this.protein == null ? 0: this.protein.hashCode());
    result = 31 * result + (this.title == null ? 0: this.title.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse2002 {\n");
    
    sb.append("  calories: ").append(calories).append("\n");
    sb.append("  carbs: ").append(carbs).append("\n");
    sb.append("  fat: ").append(fat).append("\n");
    sb.append("  id: ").append(id).append("\n");
    sb.append("  image: ").append(image).append("\n");
    sb.append("  imageType: ").append(imageType).append("\n");
    sb.append("  protein: ").append(protein).append("\n");
    sb.append("  title: ").append(title).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
