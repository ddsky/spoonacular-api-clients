package com.spoonacular.client.model;

import com.spoonacular.client.model.InlineResponse20031ComparableProductsProtein;
import java.util.*;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20031ComparableProducts  {
  
  @SerializedName("calories")
  private List<Object> calories = null;
  @SerializedName("likes")
  private List<Object> likes = null;
  @SerializedName("price")
  private List<Object> price = null;
  @SerializedName("protein")
  private List<InlineResponse20031ComparableProductsProtein> protein = null;
  @SerializedName("spoonacularScore")
  private List<InlineResponse20031ComparableProductsProtein> spoonacularScore = null;
  @SerializedName("sugar")
  private List<Object> sugar = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<Object> getCalories() {
    return calories;
  }
  public void setCalories(List<Object> calories) {
    this.calories = calories;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<Object> getLikes() {
    return likes;
  }
  public void setLikes(List<Object> likes) {
    this.likes = likes;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<Object> getPrice() {
    return price;
  }
  public void setPrice(List<Object> price) {
    this.price = price;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<InlineResponse20031ComparableProductsProtein> getProtein() {
    return protein;
  }
  public void setProtein(List<InlineResponse20031ComparableProductsProtein> protein) {
    this.protein = protein;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<InlineResponse20031ComparableProductsProtein> getSpoonacularScore() {
    return spoonacularScore;
  }
  public void setSpoonacularScore(List<InlineResponse20031ComparableProductsProtein> spoonacularScore) {
    this.spoonacularScore = spoonacularScore;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<Object> getSugar() {
    return sugar;
  }
  public void setSugar(List<Object> sugar) {
    this.sugar = sugar;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20031ComparableProducts inlineResponse20031ComparableProducts = (InlineResponse20031ComparableProducts) o;
    return (this.calories == null ? inlineResponse20031ComparableProducts.calories == null : this.calories.equals(inlineResponse20031ComparableProducts.calories)) &&
        (this.likes == null ? inlineResponse20031ComparableProducts.likes == null : this.likes.equals(inlineResponse20031ComparableProducts.likes)) &&
        (this.price == null ? inlineResponse20031ComparableProducts.price == null : this.price.equals(inlineResponse20031ComparableProducts.price)) &&
        (this.protein == null ? inlineResponse20031ComparableProducts.protein == null : this.protein.equals(inlineResponse20031ComparableProducts.protein)) &&
        (this.spoonacularScore == null ? inlineResponse20031ComparableProducts.spoonacularScore == null : this.spoonacularScore.equals(inlineResponse20031ComparableProducts.spoonacularScore)) &&
        (this.sugar == null ? inlineResponse20031ComparableProducts.sugar == null : this.sugar.equals(inlineResponse20031ComparableProducts.sugar));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.calories == null ? 0: this.calories.hashCode());
    result = 31 * result + (this.likes == null ? 0: this.likes.hashCode());
    result = 31 * result + (this.price == null ? 0: this.price.hashCode());
    result = 31 * result + (this.protein == null ? 0: this.protein.hashCode());
    result = 31 * result + (this.spoonacularScore == null ? 0: this.spoonacularScore.hashCode());
    result = 31 * result + (this.sugar == null ? 0: this.sugar.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20031ComparableProducts {\n");
    
    sb.append("  calories: ").append(calories).append("\n");
    sb.append("  likes: ").append(likes).append("\n");
    sb.append("  price: ").append(price).append("\n");
    sb.append("  protein: ").append(protein).append("\n");
    sb.append("  spoonacularScore: ").append(spoonacularScore).append("\n");
    sb.append("  sugar: ").append(sugar).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
