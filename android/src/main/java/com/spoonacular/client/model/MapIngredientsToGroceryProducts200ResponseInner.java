/**
 * spoonacular API
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over 380,000 recipes, thousands of ingredients, 800,000 food products, and 100,000 menu items. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
 *
 * The version of the OpenAPI document: 1.1
 * Contact: mail@spoonacular.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package com.spoonacular.client.model;

import com.spoonacular.client.model.MapIngredientsToGroceryProducts200ResponseInnerProductsInner;
import java.util.*;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class MapIngredientsToGroceryProducts200ResponseInner {
  
  @SerializedName("original")
  private String original = null;
  @SerializedName("originalName")
  private String originalName = null;
  @SerializedName("ingredientImage")
  private String ingredientImage = null;
  @SerializedName("meta")
  private List<String> meta = null;
  @SerializedName("products")
  private Set<MapIngredientsToGroceryProducts200ResponseInnerProductsInner> products = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getOriginal() {
    return original;
  }
  public void setOriginal(String original) {
    this.original = original;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getOriginalName() {
    return originalName;
  }
  public void setOriginalName(String originalName) {
    this.originalName = originalName;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getIngredientImage() {
    return ingredientImage;
  }
  public void setIngredientImage(String ingredientImage) {
    this.ingredientImage = ingredientImage;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<String> getMeta() {
    return meta;
  }
  public void setMeta(List<String> meta) {
    this.meta = meta;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Set<MapIngredientsToGroceryProducts200ResponseInnerProductsInner> getProducts() {
    return products;
  }
  public void setProducts(Set<MapIngredientsToGroceryProducts200ResponseInnerProductsInner> products) {
    this.products = products;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    MapIngredientsToGroceryProducts200ResponseInner mapIngredientsToGroceryProducts200ResponseInner = (MapIngredientsToGroceryProducts200ResponseInner) o;
    return (this.original == null ? mapIngredientsToGroceryProducts200ResponseInner.original == null : this.original.equals(mapIngredientsToGroceryProducts200ResponseInner.original)) &&
        (this.originalName == null ? mapIngredientsToGroceryProducts200ResponseInner.originalName == null : this.originalName.equals(mapIngredientsToGroceryProducts200ResponseInner.originalName)) &&
        (this.ingredientImage == null ? mapIngredientsToGroceryProducts200ResponseInner.ingredientImage == null : this.ingredientImage.equals(mapIngredientsToGroceryProducts200ResponseInner.ingredientImage)) &&
        (this.meta == null ? mapIngredientsToGroceryProducts200ResponseInner.meta == null : this.meta.equals(mapIngredientsToGroceryProducts200ResponseInner.meta)) &&
        (this.products == null ? mapIngredientsToGroceryProducts200ResponseInner.products == null : this.products.equals(mapIngredientsToGroceryProducts200ResponseInner.products));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.original == null ? 0: this.original.hashCode());
    result = 31 * result + (this.originalName == null ? 0: this.originalName.hashCode());
    result = 31 * result + (this.ingredientImage == null ? 0: this.ingredientImage.hashCode());
    result = 31 * result + (this.meta == null ? 0: this.meta.hashCode());
    result = 31 * result + (this.products == null ? 0: this.products.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class MapIngredientsToGroceryProducts200ResponseInner {\n");
    
    sb.append("  original: ").append(original).append("\n");
    sb.append("  originalName: ").append(originalName).append("\n");
    sb.append("  ingredientImage: ").append(ingredientImage).append("\n");
    sb.append("  meta: ").append(meta).append("\n");
    sb.append("  products: ").append(products).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
