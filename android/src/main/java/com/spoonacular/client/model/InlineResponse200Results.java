package com.spoonacular.client.model;

import java.math.BigDecimal;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse200Results  {
  
  @SerializedName("id")
  private Integer id = null;
  @SerializedName("title")
  private String title = null;
  @SerializedName("calories")
  private BigDecimal calories = null;
  @SerializedName("carbs")
  private String carbs = null;
  @SerializedName("fat")
  private String fat = null;
  @SerializedName("image")
  private String image = null;
  @SerializedName("imageType")
  private String imageType = null;
  @SerializedName("protein")
  private String protein = null;

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


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse200Results inlineResponse200Results = (InlineResponse200Results) o;
    return (this.id == null ? inlineResponse200Results.id == null : this.id.equals(inlineResponse200Results.id)) &&
        (this.title == null ? inlineResponse200Results.title == null : this.title.equals(inlineResponse200Results.title)) &&
        (this.calories == null ? inlineResponse200Results.calories == null : this.calories.equals(inlineResponse200Results.calories)) &&
        (this.carbs == null ? inlineResponse200Results.carbs == null : this.carbs.equals(inlineResponse200Results.carbs)) &&
        (this.fat == null ? inlineResponse200Results.fat == null : this.fat.equals(inlineResponse200Results.fat)) &&
        (this.image == null ? inlineResponse200Results.image == null : this.image.equals(inlineResponse200Results.image)) &&
        (this.imageType == null ? inlineResponse200Results.imageType == null : this.imageType.equals(inlineResponse200Results.imageType)) &&
        (this.protein == null ? inlineResponse200Results.protein == null : this.protein.equals(inlineResponse200Results.protein));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.title == null ? 0: this.title.hashCode());
    result = 31 * result + (this.calories == null ? 0: this.calories.hashCode());
    result = 31 * result + (this.carbs == null ? 0: this.carbs.hashCode());
    result = 31 * result + (this.fat == null ? 0: this.fat.hashCode());
    result = 31 * result + (this.image == null ? 0: this.image.hashCode());
    result = 31 * result + (this.imageType == null ? 0: this.imageType.hashCode());
    result = 31 * result + (this.protein == null ? 0: this.protein.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse200Results {\n");
    
    sb.append("  id: ").append(id).append("\n");
    sb.append("  title: ").append(title).append("\n");
    sb.append("  calories: ").append(calories).append("\n");
    sb.append("  carbs: ").append(carbs).append("\n");
    sb.append("  fat: ").append(fat).append("\n");
    sb.append("  image: ").append(image).append("\n");
    sb.append("  imageType: ").append(imageType).append("\n");
    sb.append("  protein: ").append(protein).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
