package com.spoonacular.client.model;

import com.spoonacular.client.model.RecipesFindByIngredientsMissedIngredients;
import java.math.BigDecimal;
import java.util.*;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse2001  {
  
  @SerializedName("id")
  private Integer id = null;
  @SerializedName("image")
  private String image = null;
  @SerializedName("imageType")
  private String imageType = null;
  @SerializedName("likes")
  private Integer likes = null;
  @SerializedName("missedIngredientCount")
  private Integer missedIngredientCount = null;
  @SerializedName("missedIngredients")
  private List<RecipesFindByIngredientsMissedIngredients> missedIngredients = null;
  @SerializedName("title")
  private String title = null;
  @SerializedName("unusedIngredients")
  private List<Object> unusedIngredients = null;
  @SerializedName("usedIngredientCount")
  private BigDecimal usedIngredientCount = null;
  @SerializedName("usedIngredients")
  private List<RecipesFindByIngredientsMissedIngredients> usedIngredients = null;
  @SerializedName("")
  private String  = null;

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
  public Integer getLikes() {
    return likes;
  }
  public void setLikes(Integer likes) {
    this.likes = likes;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Integer getMissedIngredientCount() {
    return missedIngredientCount;
  }
  public void setMissedIngredientCount(Integer missedIngredientCount) {
    this.missedIngredientCount = missedIngredientCount;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<RecipesFindByIngredientsMissedIngredients> getMissedIngredients() {
    return missedIngredients;
  }
  public void setMissedIngredients(List<RecipesFindByIngredientsMissedIngredients> missedIngredients) {
    this.missedIngredients = missedIngredients;
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
  public List<Object> getUnusedIngredients() {
    return unusedIngredients;
  }
  public void setUnusedIngredients(List<Object> unusedIngredients) {
    this.unusedIngredients = unusedIngredients;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public BigDecimal getUsedIngredientCount() {
    return usedIngredientCount;
  }
  public void setUsedIngredientCount(BigDecimal usedIngredientCount) {
    this.usedIngredientCount = usedIngredientCount;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<RecipesFindByIngredientsMissedIngredients> getUsedIngredients() {
    return usedIngredients;
  }
  public void setUsedIngredients(List<RecipesFindByIngredientsMissedIngredients> usedIngredients) {
    this.usedIngredients = usedIngredients;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String get() {
    return ;
  }
  public void set(String ) {
    this. = ;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse2001 inlineResponse2001 = (InlineResponse2001) o;
    return (this.id == null ? inlineResponse2001.id == null : this.id.equals(inlineResponse2001.id)) &&
        (this.image == null ? inlineResponse2001.image == null : this.image.equals(inlineResponse2001.image)) &&
        (this.imageType == null ? inlineResponse2001.imageType == null : this.imageType.equals(inlineResponse2001.imageType)) &&
        (this.likes == null ? inlineResponse2001.likes == null : this.likes.equals(inlineResponse2001.likes)) &&
        (this.missedIngredientCount == null ? inlineResponse2001.missedIngredientCount == null : this.missedIngredientCount.equals(inlineResponse2001.missedIngredientCount)) &&
        (this.missedIngredients == null ? inlineResponse2001.missedIngredients == null : this.missedIngredients.equals(inlineResponse2001.missedIngredients)) &&
        (this.title == null ? inlineResponse2001.title == null : this.title.equals(inlineResponse2001.title)) &&
        (this.unusedIngredients == null ? inlineResponse2001.unusedIngredients == null : this.unusedIngredients.equals(inlineResponse2001.unusedIngredients)) &&
        (this.usedIngredientCount == null ? inlineResponse2001.usedIngredientCount == null : this.usedIngredientCount.equals(inlineResponse2001.usedIngredientCount)) &&
        (this.usedIngredients == null ? inlineResponse2001.usedIngredients == null : this.usedIngredients.equals(inlineResponse2001.usedIngredients)) &&
        (this. == null ? inlineResponse2001. == null : this..equals(inlineResponse2001.));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.image == null ? 0: this.image.hashCode());
    result = 31 * result + (this.imageType == null ? 0: this.imageType.hashCode());
    result = 31 * result + (this.likes == null ? 0: this.likes.hashCode());
    result = 31 * result + (this.missedIngredientCount == null ? 0: this.missedIngredientCount.hashCode());
    result = 31 * result + (this.missedIngredients == null ? 0: this.missedIngredients.hashCode());
    result = 31 * result + (this.title == null ? 0: this.title.hashCode());
    result = 31 * result + (this.unusedIngredients == null ? 0: this.unusedIngredients.hashCode());
    result = 31 * result + (this.usedIngredientCount == null ? 0: this.usedIngredientCount.hashCode());
    result = 31 * result + (this.usedIngredients == null ? 0: this.usedIngredients.hashCode());
    result = 31 * result + (this. == null ? 0: this..hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse2001 {\n");
    
    sb.append("  id: ").append(id).append("\n");
    sb.append("  image: ").append(image).append("\n");
    sb.append("  imageType: ").append(imageType).append("\n");
    sb.append("  likes: ").append(likes).append("\n");
    sb.append("  missedIngredientCount: ").append(missedIngredientCount).append("\n");
    sb.append("  missedIngredients: ").append(missedIngredients).append("\n");
    sb.append("  title: ").append(title).append("\n");
    sb.append("  unusedIngredients: ").append(unusedIngredients).append("\n");
    sb.append("  usedIngredientCount: ").append(usedIngredientCount).append("\n");
    sb.append("  usedIngredients: ").append(usedIngredients).append("\n");
    sb.append("  : ").append().append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
