package com.spoonacular.client.model;

import java.math.BigDecimal;
import java.util.*;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class RecipesFindByIngredientsMissedIngredients  {
  
  @SerializedName("aisle")
  private String aisle = null;
  @SerializedName("amount")
  private BigDecimal amount = null;
  @SerializedName("id")
  private Integer id = null;
  @SerializedName("image")
  private String image = null;
  @SerializedName("meta")
  private List<String> meta = null;
  @SerializedName("name")
  private String name = null;
  @SerializedName("original")
  private String original = null;
  @SerializedName("originalName")
  private String originalName = null;
  @SerializedName("unit")
  private String unit = null;
  @SerializedName("unitLong")
  private String unitLong = null;
  @SerializedName("unitShort")
  private String unitShort = null;

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
  public BigDecimal getAmount() {
    return amount;
  }
  public void setAmount(BigDecimal amount) {
    this.amount = amount;
  }

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
  @ApiModelProperty(value = "")
  public List<String> getMeta() {
    return meta;
  }
  public void setMeta(List<String> meta) {
    this.meta = meta;
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
  public String getUnit() {
    return unit;
  }
  public void setUnit(String unit) {
    this.unit = unit;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getUnitLong() {
    return unitLong;
  }
  public void setUnitLong(String unitLong) {
    this.unitLong = unitLong;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getUnitShort() {
    return unitShort;
  }
  public void setUnitShort(String unitShort) {
    this.unitShort = unitShort;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    RecipesFindByIngredientsMissedIngredients recipesFindByIngredientsMissedIngredients = (RecipesFindByIngredientsMissedIngredients) o;
    return (this.aisle == null ? recipesFindByIngredientsMissedIngredients.aisle == null : this.aisle.equals(recipesFindByIngredientsMissedIngredients.aisle)) &&
        (this.amount == null ? recipesFindByIngredientsMissedIngredients.amount == null : this.amount.equals(recipesFindByIngredientsMissedIngredients.amount)) &&
        (this.id == null ? recipesFindByIngredientsMissedIngredients.id == null : this.id.equals(recipesFindByIngredientsMissedIngredients.id)) &&
        (this.image == null ? recipesFindByIngredientsMissedIngredients.image == null : this.image.equals(recipesFindByIngredientsMissedIngredients.image)) &&
        (this.meta == null ? recipesFindByIngredientsMissedIngredients.meta == null : this.meta.equals(recipesFindByIngredientsMissedIngredients.meta)) &&
        (this.name == null ? recipesFindByIngredientsMissedIngredients.name == null : this.name.equals(recipesFindByIngredientsMissedIngredients.name)) &&
        (this.original == null ? recipesFindByIngredientsMissedIngredients.original == null : this.original.equals(recipesFindByIngredientsMissedIngredients.original)) &&
        (this.originalName == null ? recipesFindByIngredientsMissedIngredients.originalName == null : this.originalName.equals(recipesFindByIngredientsMissedIngredients.originalName)) &&
        (this.unit == null ? recipesFindByIngredientsMissedIngredients.unit == null : this.unit.equals(recipesFindByIngredientsMissedIngredients.unit)) &&
        (this.unitLong == null ? recipesFindByIngredientsMissedIngredients.unitLong == null : this.unitLong.equals(recipesFindByIngredientsMissedIngredients.unitLong)) &&
        (this.unitShort == null ? recipesFindByIngredientsMissedIngredients.unitShort == null : this.unitShort.equals(recipesFindByIngredientsMissedIngredients.unitShort));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.aisle == null ? 0: this.aisle.hashCode());
    result = 31 * result + (this.amount == null ? 0: this.amount.hashCode());
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.image == null ? 0: this.image.hashCode());
    result = 31 * result + (this.meta == null ? 0: this.meta.hashCode());
    result = 31 * result + (this.name == null ? 0: this.name.hashCode());
    result = 31 * result + (this.original == null ? 0: this.original.hashCode());
    result = 31 * result + (this.originalName == null ? 0: this.originalName.hashCode());
    result = 31 * result + (this.unit == null ? 0: this.unit.hashCode());
    result = 31 * result + (this.unitLong == null ? 0: this.unitLong.hashCode());
    result = 31 * result + (this.unitShort == null ? 0: this.unitShort.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class RecipesFindByIngredientsMissedIngredients {\n");
    
    sb.append("  aisle: ").append(aisle).append("\n");
    sb.append("  amount: ").append(amount).append("\n");
    sb.append("  id: ").append(id).append("\n");
    sb.append("  image: ").append(image).append("\n");
    sb.append("  meta: ").append(meta).append("\n");
    sb.append("  name: ").append(name).append("\n");
    sb.append("  original: ").append(original).append("\n");
    sb.append("  originalName: ").append(originalName).append("\n");
    sb.append("  unit: ").append(unit).append("\n");
    sb.append("  unitLong: ").append(unitLong).append("\n");
    sb.append("  unitShort: ").append(unitShort).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
