/**
 * spoonacular API
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
 *
 * The version of the OpenAPI document: 2.0.2
 * Contact: mail@spoonacular.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package com.spoonacular.client.model;

import com.spoonacular.client.model.IngredientBasics;
import com.spoonacular.client.model.SearchGroceryProductsByUPC200ResponseNutrition;
import com.spoonacular.client.model.SearchGroceryProductsByUPC200ResponseServings;
import java.math.BigDecimal;
import java.util.*;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

/**
 * 
 **/
@ApiModel(description = "")
public class SearchGroceryProductsByUPC200Response {
  
  @SerializedName("id")
  private Integer id = null;
  @SerializedName("title")
  private String title = null;
  @SerializedName("badges")
  private List<String> badges = null;
  @SerializedName("importantBadges")
  private List<String> importantBadges = null;
  @SerializedName("breadcrumbs")
  private List<String> breadcrumbs = null;
  @SerializedName("generatedText")
  private String generatedText = null;
  @SerializedName("imageType")
  private String imageType = null;
  @SerializedName("ingredientCount")
  private Integer ingredientCount = null;
  @SerializedName("ingredientList")
  private String ingredientList = null;
  @SerializedName("ingredients")
  private List<IngredientBasics> ingredients = null;
  @SerializedName("likes")
  private BigDecimal likes = null;
  @SerializedName("nutrition")
  private SearchGroceryProductsByUPC200ResponseNutrition nutrition = null;
  @SerializedName("price")
  private BigDecimal price = null;
  @SerializedName("servings")
  private SearchGroceryProductsByUPC200ResponseServings servings = null;
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
  public List<String> getBreadcrumbs() {
    return breadcrumbs;
  }
  public void setBreadcrumbs(List<String> breadcrumbs) {
    this.breadcrumbs = breadcrumbs;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getGeneratedText() {
    return generatedText;
  }
  public void setGeneratedText(String generatedText) {
    this.generatedText = generatedText;
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
  public Integer getIngredientCount() {
    return ingredientCount;
  }
  public void setIngredientCount(Integer ingredientCount) {
    this.ingredientCount = ingredientCount;
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
  public List<IngredientBasics> getIngredients() {
    return ingredients;
  }
  public void setIngredients(List<IngredientBasics> ingredients) {
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
  public SearchGroceryProductsByUPC200ResponseNutrition getNutrition() {
    return nutrition;
  }
  public void setNutrition(SearchGroceryProductsByUPC200ResponseNutrition nutrition) {
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
  public SearchGroceryProductsByUPC200ResponseServings getServings() {
    return servings;
  }
  public void setServings(SearchGroceryProductsByUPC200ResponseServings servings) {
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
    SearchGroceryProductsByUPC200Response searchGroceryProductsByUPC200Response = (SearchGroceryProductsByUPC200Response) o;
    return (this.id == null ? searchGroceryProductsByUPC200Response.id == null : this.id.equals(searchGroceryProductsByUPC200Response.id)) &&
        (this.title == null ? searchGroceryProductsByUPC200Response.title == null : this.title.equals(searchGroceryProductsByUPC200Response.title)) &&
        (this.badges == null ? searchGroceryProductsByUPC200Response.badges == null : this.badges.equals(searchGroceryProductsByUPC200Response.badges)) &&
        (this.importantBadges == null ? searchGroceryProductsByUPC200Response.importantBadges == null : this.importantBadges.equals(searchGroceryProductsByUPC200Response.importantBadges)) &&
        (this.breadcrumbs == null ? searchGroceryProductsByUPC200Response.breadcrumbs == null : this.breadcrumbs.equals(searchGroceryProductsByUPC200Response.breadcrumbs)) &&
        (this.generatedText == null ? searchGroceryProductsByUPC200Response.generatedText == null : this.generatedText.equals(searchGroceryProductsByUPC200Response.generatedText)) &&
        (this.imageType == null ? searchGroceryProductsByUPC200Response.imageType == null : this.imageType.equals(searchGroceryProductsByUPC200Response.imageType)) &&
        (this.ingredientCount == null ? searchGroceryProductsByUPC200Response.ingredientCount == null : this.ingredientCount.equals(searchGroceryProductsByUPC200Response.ingredientCount)) &&
        (this.ingredientList == null ? searchGroceryProductsByUPC200Response.ingredientList == null : this.ingredientList.equals(searchGroceryProductsByUPC200Response.ingredientList)) &&
        (this.ingredients == null ? searchGroceryProductsByUPC200Response.ingredients == null : this.ingredients.equals(searchGroceryProductsByUPC200Response.ingredients)) &&
        (this.likes == null ? searchGroceryProductsByUPC200Response.likes == null : this.likes.equals(searchGroceryProductsByUPC200Response.likes)) &&
        (this.nutrition == null ? searchGroceryProductsByUPC200Response.nutrition == null : this.nutrition.equals(searchGroceryProductsByUPC200Response.nutrition)) &&
        (this.price == null ? searchGroceryProductsByUPC200Response.price == null : this.price.equals(searchGroceryProductsByUPC200Response.price)) &&
        (this.servings == null ? searchGroceryProductsByUPC200Response.servings == null : this.servings.equals(searchGroceryProductsByUPC200Response.servings)) &&
        (this.spoonacularScore == null ? searchGroceryProductsByUPC200Response.spoonacularScore == null : this.spoonacularScore.equals(searchGroceryProductsByUPC200Response.spoonacularScore));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.title == null ? 0: this.title.hashCode());
    result = 31 * result + (this.badges == null ? 0: this.badges.hashCode());
    result = 31 * result + (this.importantBadges == null ? 0: this.importantBadges.hashCode());
    result = 31 * result + (this.breadcrumbs == null ? 0: this.breadcrumbs.hashCode());
    result = 31 * result + (this.generatedText == null ? 0: this.generatedText.hashCode());
    result = 31 * result + (this.imageType == null ? 0: this.imageType.hashCode());
    result = 31 * result + (this.ingredientCount == null ? 0: this.ingredientCount.hashCode());
    result = 31 * result + (this.ingredientList == null ? 0: this.ingredientList.hashCode());
    result = 31 * result + (this.ingredients == null ? 0: this.ingredients.hashCode());
    result = 31 * result + (this.likes == null ? 0: this.likes.hashCode());
    result = 31 * result + (this.nutrition == null ? 0: this.nutrition.hashCode());
    result = 31 * result + (this.price == null ? 0: this.price.hashCode());
    result = 31 * result + (this.servings == null ? 0: this.servings.hashCode());
    result = 31 * result + (this.spoonacularScore == null ? 0: this.spoonacularScore.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class SearchGroceryProductsByUPC200Response {\n");
    
    sb.append("  id: ").append(id).append("\n");
    sb.append("  title: ").append(title).append("\n");
    sb.append("  badges: ").append(badges).append("\n");
    sb.append("  importantBadges: ").append(importantBadges).append("\n");
    sb.append("  breadcrumbs: ").append(breadcrumbs).append("\n");
    sb.append("  generatedText: ").append(generatedText).append("\n");
    sb.append("  imageType: ").append(imageType).append("\n");
    sb.append("  ingredientCount: ").append(ingredientCount).append("\n");
    sb.append("  ingredientList: ").append(ingredientList).append("\n");
    sb.append("  ingredients: ").append(ingredients).append("\n");
    sb.append("  likes: ").append(likes).append("\n");
    sb.append("  nutrition: ").append(nutrition).append("\n");
    sb.append("  price: ").append(price).append("\n");
    sb.append("  servings: ").append(servings).append("\n");
    sb.append("  spoonacularScore: ").append(spoonacularScore).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
