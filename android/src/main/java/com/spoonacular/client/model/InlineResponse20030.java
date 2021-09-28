package com.spoonacular.client.model;

import com.spoonacular.client.model.InlineResponse20028Nutrition;
import com.spoonacular.client.model.InlineResponse20028Servings;
import com.spoonacular.client.model.InlineResponse20030Ingredients;
import java.math.BigDecimal;
import java.util.*;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20030  {
  
  @SerializedName("id")
  private Integer id = null;
  @SerializedName("title")
  private String title = null;
  @SerializedName("breadcrumbs")
  private List<String> breadcrumbs = null;
  @SerializedName("imageType")
  private String imageType = null;
  @SerializedName("badges")
  private List<String> badges = null;
  @SerializedName("importantBadges")
  private List<String> importantBadges = null;
  @SerializedName("ingredientCount")
  private Integer ingredientCount = null;
  @SerializedName("generatedText")
  private Object generatedText = null;
  @SerializedName("ingredientList")
  private String ingredientList = null;
  @SerializedName("ingredients")
  private List<InlineResponse20030Ingredients> ingredients = null;
  @SerializedName("likes")
  private BigDecimal likes = null;
  @SerializedName("aisle")
  private String aisle = null;
  @SerializedName("nutrition")
  private InlineResponse20028Nutrition nutrition = null;
  @SerializedName("price")
  private BigDecimal price = null;
  @SerializedName("servings")
  private InlineResponse20028Servings servings = null;
  @SerializedName("spoonacularScore")
  private BigDecimal spoonacularScore = null;

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
  public List<String> getBreadcrumbs() {
    return breadcrumbs;
  }
  public void setBreadcrumbs(List<String> breadcrumbs) {
    this.breadcrumbs = breadcrumbs;
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
  public List<String> getBadges() {
    return badges;
  }
  public void setBadges(List<String> badges) {
    this.badges = badges;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<String> getImportantBadges() {
    return importantBadges;
  }
  public void setImportantBadges(List<String> importantBadges) {
    this.importantBadges = importantBadges;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Integer getIngredientCount() {
    return ingredientCount;
  }
  public void setIngredientCount(Integer ingredientCount) {
    this.ingredientCount = ingredientCount;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Object getGeneratedText() {
    return generatedText;
  }
  public void setGeneratedText(Object generatedText) {
    this.generatedText = generatedText;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getIngredientList() {
    return ingredientList;
  }
  public void setIngredientList(String ingredientList) {
    this.ingredientList = ingredientList;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<InlineResponse20030Ingredients> getIngredients() {
    return ingredients;
  }
  public void setIngredients(List<InlineResponse20030Ingredients> ingredients) {
    this.ingredients = ingredients;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public BigDecimal getLikes() {
    return likes;
  }
  public void setLikes(BigDecimal likes) {
    this.likes = likes;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getAisle() {
    return aisle;
  }
  public void setAisle(String aisle) {
    this.aisle = aisle;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public InlineResponse20028Nutrition getNutrition() {
    return nutrition;
  }
  public void setNutrition(InlineResponse20028Nutrition nutrition) {
    this.nutrition = nutrition;
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

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public InlineResponse20028Servings getServings() {
    return servings;
  }
  public void setServings(InlineResponse20028Servings servings) {
    this.servings = servings;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public BigDecimal getSpoonacularScore() {
    return spoonacularScore;
  }
  public void setSpoonacularScore(BigDecimal spoonacularScore) {
    this.spoonacularScore = spoonacularScore;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20030 inlineResponse20030 = (InlineResponse20030) o;
    return (this.id == null ? inlineResponse20030.id == null : this.id.equals(inlineResponse20030.id)) &&
        (this.title == null ? inlineResponse20030.title == null : this.title.equals(inlineResponse20030.title)) &&
        (this.breadcrumbs == null ? inlineResponse20030.breadcrumbs == null : this.breadcrumbs.equals(inlineResponse20030.breadcrumbs)) &&
        (this.imageType == null ? inlineResponse20030.imageType == null : this.imageType.equals(inlineResponse20030.imageType)) &&
        (this.badges == null ? inlineResponse20030.badges == null : this.badges.equals(inlineResponse20030.badges)) &&
        (this.importantBadges == null ? inlineResponse20030.importantBadges == null : this.importantBadges.equals(inlineResponse20030.importantBadges)) &&
        (this.ingredientCount == null ? inlineResponse20030.ingredientCount == null : this.ingredientCount.equals(inlineResponse20030.ingredientCount)) &&
        (this.generatedText == null ? inlineResponse20030.generatedText == null : this.generatedText.equals(inlineResponse20030.generatedText)) &&
        (this.ingredientList == null ? inlineResponse20030.ingredientList == null : this.ingredientList.equals(inlineResponse20030.ingredientList)) &&
        (this.ingredients == null ? inlineResponse20030.ingredients == null : this.ingredients.equals(inlineResponse20030.ingredients)) &&
        (this.likes == null ? inlineResponse20030.likes == null : this.likes.equals(inlineResponse20030.likes)) &&
        (this.aisle == null ? inlineResponse20030.aisle == null : this.aisle.equals(inlineResponse20030.aisle)) &&
        (this.nutrition == null ? inlineResponse20030.nutrition == null : this.nutrition.equals(inlineResponse20030.nutrition)) &&
        (this.price == null ? inlineResponse20030.price == null : this.price.equals(inlineResponse20030.price)) &&
        (this.servings == null ? inlineResponse20030.servings == null : this.servings.equals(inlineResponse20030.servings)) &&
        (this.spoonacularScore == null ? inlineResponse20030.spoonacularScore == null : this.spoonacularScore.equals(inlineResponse20030.spoonacularScore));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.title == null ? 0: this.title.hashCode());
    result = 31 * result + (this.breadcrumbs == null ? 0: this.breadcrumbs.hashCode());
    result = 31 * result + (this.imageType == null ? 0: this.imageType.hashCode());
    result = 31 * result + (this.badges == null ? 0: this.badges.hashCode());
    result = 31 * result + (this.importantBadges == null ? 0: this.importantBadges.hashCode());
    result = 31 * result + (this.ingredientCount == null ? 0: this.ingredientCount.hashCode());
    result = 31 * result + (this.generatedText == null ? 0: this.generatedText.hashCode());
    result = 31 * result + (this.ingredientList == null ? 0: this.ingredientList.hashCode());
    result = 31 * result + (this.ingredients == null ? 0: this.ingredients.hashCode());
    result = 31 * result + (this.likes == null ? 0: this.likes.hashCode());
    result = 31 * result + (this.aisle == null ? 0: this.aisle.hashCode());
    result = 31 * result + (this.nutrition == null ? 0: this.nutrition.hashCode());
    result = 31 * result + (this.price == null ? 0: this.price.hashCode());
    result = 31 * result + (this.servings == null ? 0: this.servings.hashCode());
    result = 31 * result + (this.spoonacularScore == null ? 0: this.spoonacularScore.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20030 {\n");
    
    sb.append("  id: ").append(id).append("\n");
    sb.append("  title: ").append(title).append("\n");
    sb.append("  breadcrumbs: ").append(breadcrumbs).append("\n");
    sb.append("  imageType: ").append(imageType).append("\n");
    sb.append("  badges: ").append(badges).append("\n");
    sb.append("  importantBadges: ").append(importantBadges).append("\n");
    sb.append("  ingredientCount: ").append(ingredientCount).append("\n");
    sb.append("  generatedText: ").append(generatedText).append("\n");
    sb.append("  ingredientList: ").append(ingredientList).append("\n");
    sb.append("  ingredients: ").append(ingredients).append("\n");
    sb.append("  likes: ").append(likes).append("\n");
    sb.append("  aisle: ").append(aisle).append("\n");
    sb.append("  nutrition: ").append(nutrition).append("\n");
    sb.append("  price: ").append(price).append("\n");
    sb.append("  servings: ").append(servings).append("\n");
    sb.append("  spoonacularScore: ").append(spoonacularScore).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
