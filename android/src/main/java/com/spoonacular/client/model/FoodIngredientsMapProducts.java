package com.spoonacular.client.model;


import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class FoodIngredientsMapProducts  {
  
  @SerializedName("id")
  private Integer id = null;
  @SerializedName("title")
  private String title = null;
  @SerializedName("upc")
  private String upc = null;

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
  public String getUpc() {
    return upc;
  }
  public void setUpc(String upc) {
    this.upc = upc;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    FoodIngredientsMapProducts foodIngredientsMapProducts = (FoodIngredientsMapProducts) o;
    return (this.id == null ? foodIngredientsMapProducts.id == null : this.id.equals(foodIngredientsMapProducts.id)) &&
        (this.title == null ? foodIngredientsMapProducts.title == null : this.title.equals(foodIngredientsMapProducts.title)) &&
        (this.upc == null ? foodIngredientsMapProducts.upc == null : this.upc.equals(foodIngredientsMapProducts.upc));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.title == null ? 0: this.title.hashCode());
    result = 31 * result + (this.upc == null ? 0: this.upc.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class FoodIngredientsMapProducts {\n");
    
    sb.append("  id: ").append(id).append("\n");
    sb.append("  title: ").append(title).append("\n");
    sb.append("  upc: ").append(upc).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
