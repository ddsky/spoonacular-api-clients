package com.spoonacular.client.model;

import com.spoonacular.client.model.FoodIngredientsMapProducts;
import java.util.*;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20034  {
  
  @SerializedName("original")
  private String original = null;
  @SerializedName("originalName")
  private String originalName = null;
  @SerializedName("ingredientImage")
  private String ingredientImage = null;
  @SerializedName("meta")
  private List<String> meta = null;
  @SerializedName("products")
  private List<FoodIngredientsMapProducts> products = null;

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
  public List<FoodIngredientsMapProducts> getProducts() {
    return products;
  }
  public void setProducts(List<FoodIngredientsMapProducts> products) {
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
    InlineResponse20034 inlineResponse20034 = (InlineResponse20034) o;
    return (this.original == null ? inlineResponse20034.original == null : this.original.equals(inlineResponse20034.original)) &&
        (this.originalName == null ? inlineResponse20034.originalName == null : this.originalName.equals(inlineResponse20034.originalName)) &&
        (this.ingredientImage == null ? inlineResponse20034.ingredientImage == null : this.ingredientImage.equals(inlineResponse20034.ingredientImage)) &&
        (this.meta == null ? inlineResponse20034.meta == null : this.meta.equals(inlineResponse20034.meta)) &&
        (this.products == null ? inlineResponse20034.products == null : this.products.equals(inlineResponse20034.products));
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
    sb.append("class InlineResponse20034 {\n");
    
    sb.append("  original: ").append(original).append("\n");
    sb.append("  originalName: ").append(originalName).append("\n");
    sb.append("  ingredientImage: ").append(ingredientImage).append("\n");
    sb.append("  meta: ").append(meta).append("\n");
    sb.append("  products: ").append(products).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
