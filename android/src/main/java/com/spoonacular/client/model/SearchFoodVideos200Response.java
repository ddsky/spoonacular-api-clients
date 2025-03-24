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

import com.spoonacular.client.model.SearchFoodVideos200ResponseVideosInner;
import java.util.*;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

/**
 * 
 **/
@ApiModel(description = "")
public class SearchFoodVideos200Response {
  
  @SerializedName("videos")
  private Set<SearchFoodVideos200ResponseVideosInner> videos = null;
  @SerializedName("totalResults")
  private Integer totalResults = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Set<SearchFoodVideos200ResponseVideosInner> getVideos() {
    return videos;
  }
  public void setVideos(Set<SearchFoodVideos200ResponseVideosInner> videos) {
    this.videos = videos;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Integer getTotalResults() {
    return totalResults;
  }
  public void setTotalResults(Integer totalResults) {
    this.totalResults = totalResults;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SearchFoodVideos200Response searchFoodVideos200Response = (SearchFoodVideos200Response) o;
    return (this.videos == null ? searchFoodVideos200Response.videos == null : this.videos.equals(searchFoodVideos200Response.videos)) &&
        (this.totalResults == null ? searchFoodVideos200Response.totalResults == null : this.totalResults.equals(searchFoodVideos200Response.totalResults));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.videos == null ? 0: this.videos.hashCode());
    result = 31 * result + (this.totalResults == null ? 0: this.totalResults.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class SearchFoodVideos200Response {\n");
    
    sb.append("  videos: ").append(videos).append("\n");
    sb.append("  totalResults: ").append(totalResults).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
