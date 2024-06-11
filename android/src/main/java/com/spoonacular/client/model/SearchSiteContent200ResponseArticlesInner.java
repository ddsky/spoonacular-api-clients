/**
 * spoonacular API
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
 *
 * The version of the OpenAPI document: 1.1
 * Contact: mail@spoonacular.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package com.spoonacular.client.model;

import com.spoonacular.client.model.SearchSiteContent200ResponseArticlesInnerDataPointsInner;
import java.util.*;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class SearchSiteContent200ResponseArticlesInner {
  
  @SerializedName("dataPoints")
  private Set<SearchSiteContent200ResponseArticlesInnerDataPointsInner> dataPoints = null;
  @SerializedName("image")
  private String image = null;
  @SerializedName("link")
  private String link = null;
  @SerializedName("name")
  private String name = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public Set<SearchSiteContent200ResponseArticlesInnerDataPointsInner> getDataPoints() {
    return dataPoints;
  }
  public void setDataPoints(Set<SearchSiteContent200ResponseArticlesInnerDataPointsInner> dataPoints) {
    this.dataPoints = dataPoints;
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
  public String getLink() {
    return link;
  }
  public void setLink(String link) {
    this.link = link;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SearchSiteContent200ResponseArticlesInner searchSiteContent200ResponseArticlesInner = (SearchSiteContent200ResponseArticlesInner) o;
    return (this.dataPoints == null ? searchSiteContent200ResponseArticlesInner.dataPoints == null : this.dataPoints.equals(searchSiteContent200ResponseArticlesInner.dataPoints)) &&
        (this.image == null ? searchSiteContent200ResponseArticlesInner.image == null : this.image.equals(searchSiteContent200ResponseArticlesInner.image)) &&
        (this.link == null ? searchSiteContent200ResponseArticlesInner.link == null : this.link.equals(searchSiteContent200ResponseArticlesInner.link)) &&
        (this.name == null ? searchSiteContent200ResponseArticlesInner.name == null : this.name.equals(searchSiteContent200ResponseArticlesInner.name));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.dataPoints == null ? 0: this.dataPoints.hashCode());
    result = 31 * result + (this.image == null ? 0: this.image.hashCode());
    result = 31 * result + (this.link == null ? 0: this.link.hashCode());
    result = 31 * result + (this.name == null ? 0: this.name.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class SearchSiteContent200ResponseArticlesInner {\n");
    
    sb.append("  dataPoints: ").append(dataPoints).append("\n");
    sb.append("  image: ").append(image).append("\n");
    sb.append("  link: ").append(link).append("\n");
    sb.append("  name: ").append(name).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
