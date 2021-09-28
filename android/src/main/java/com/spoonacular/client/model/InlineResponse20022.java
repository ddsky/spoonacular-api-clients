package com.spoonacular.client.model;

import com.spoonacular.client.model.InlineResponse20022Nutrition;
import com.spoonacular.client.model.RecipesParseIngredientsEstimatedCost;
import java.math.BigDecimal;
import java.util.*;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20022  {
  
  @SerializedName("id")
  private Integer id = null;
  @SerializedName("original")
  private String original = null;
  @SerializedName("originalName")
  private String originalName = null;
  @SerializedName("name")
  private String name = null;
  @SerializedName("nameClean")
  private String nameClean = null;
  @SerializedName("amount")
  private BigDecimal amount = null;
  @SerializedName("unit")
  private String unit = null;
  @SerializedName("unitShort")
  private String unitShort = null;
  @SerializedName("unitLong")
  private String unitLong = null;
  @SerializedName("possibleUnits")
  private List<String> possibleUnits = null;
  @SerializedName("estimatedCost")
  private RecipesParseIngredientsEstimatedCost estimatedCost = null;
  @SerializedName("consistency")
  private String consistency = null;
  @SerializedName("shoppingListUnits")
  private List<String> shoppingListUnits = null;
  @SerializedName("aisle")
  private String aisle = null;
  @SerializedName("image")
  private String image = null;
  @SerializedName("meta")
  private List<Object> meta = null;
  @SerializedName("nutrition")
  private InlineResponse20022Nutrition nutrition = null;
  @SerializedName("categoryPath")
  private List<String> categoryPath = null;

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
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getNameClean() {
    return nameClean;
  }
  public void setNameClean(String nameClean) {
    this.nameClean = nameClean;
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
  public String getUnit() {
    return unit;
  }
  public void setUnit(String unit) {
    this.unit = unit;
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
  public List<String> getPossibleUnits() {
    return possibleUnits;
  }
  public void setPossibleUnits(List<String> possibleUnits) {
    this.possibleUnits = possibleUnits;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public RecipesParseIngredientsEstimatedCost getEstimatedCost() {
    return estimatedCost;
  }
  public void setEstimatedCost(RecipesParseIngredientsEstimatedCost estimatedCost) {
    this.estimatedCost = estimatedCost;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getConsistency() {
    return consistency;
  }
  public void setConsistency(String consistency) {
    this.consistency = consistency;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<String> getShoppingListUnits() {
    return shoppingListUnits;
  }
  public void setShoppingListUnits(List<String> shoppingListUnits) {
    this.shoppingListUnits = shoppingListUnits;
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
  public String getImage() {
    return image;
  }
  public void setImage(String image) {
    this.image = image;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<Object> getMeta() {
    return meta;
  }
  public void setMeta(List<Object> meta) {
    this.meta = meta;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public InlineResponse20022Nutrition getNutrition() {
    return nutrition;
  }
  public void setNutrition(InlineResponse20022Nutrition nutrition) {
    this.nutrition = nutrition;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<String> getCategoryPath() {
    return categoryPath;
  }
  public void setCategoryPath(List<String> categoryPath) {
    this.categoryPath = categoryPath;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20022 inlineResponse20022 = (InlineResponse20022) o;
    return (this.id == null ? inlineResponse20022.id == null : this.id.equals(inlineResponse20022.id)) &&
        (this.original == null ? inlineResponse20022.original == null : this.original.equals(inlineResponse20022.original)) &&
        (this.originalName == null ? inlineResponse20022.originalName == null : this.originalName.equals(inlineResponse20022.originalName)) &&
        (this.name == null ? inlineResponse20022.name == null : this.name.equals(inlineResponse20022.name)) &&
        (this.nameClean == null ? inlineResponse20022.nameClean == null : this.nameClean.equals(inlineResponse20022.nameClean)) &&
        (this.amount == null ? inlineResponse20022.amount == null : this.amount.equals(inlineResponse20022.amount)) &&
        (this.unit == null ? inlineResponse20022.unit == null : this.unit.equals(inlineResponse20022.unit)) &&
        (this.unitShort == null ? inlineResponse20022.unitShort == null : this.unitShort.equals(inlineResponse20022.unitShort)) &&
        (this.unitLong == null ? inlineResponse20022.unitLong == null : this.unitLong.equals(inlineResponse20022.unitLong)) &&
        (this.possibleUnits == null ? inlineResponse20022.possibleUnits == null : this.possibleUnits.equals(inlineResponse20022.possibleUnits)) &&
        (this.estimatedCost == null ? inlineResponse20022.estimatedCost == null : this.estimatedCost.equals(inlineResponse20022.estimatedCost)) &&
        (this.consistency == null ? inlineResponse20022.consistency == null : this.consistency.equals(inlineResponse20022.consistency)) &&
        (this.shoppingListUnits == null ? inlineResponse20022.shoppingListUnits == null : this.shoppingListUnits.equals(inlineResponse20022.shoppingListUnits)) &&
        (this.aisle == null ? inlineResponse20022.aisle == null : this.aisle.equals(inlineResponse20022.aisle)) &&
        (this.image == null ? inlineResponse20022.image == null : this.image.equals(inlineResponse20022.image)) &&
        (this.meta == null ? inlineResponse20022.meta == null : this.meta.equals(inlineResponse20022.meta)) &&
        (this.nutrition == null ? inlineResponse20022.nutrition == null : this.nutrition.equals(inlineResponse20022.nutrition)) &&
        (this.categoryPath == null ? inlineResponse20022.categoryPath == null : this.categoryPath.equals(inlineResponse20022.categoryPath));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.original == null ? 0: this.original.hashCode());
    result = 31 * result + (this.originalName == null ? 0: this.originalName.hashCode());
    result = 31 * result + (this.name == null ? 0: this.name.hashCode());
    result = 31 * result + (this.nameClean == null ? 0: this.nameClean.hashCode());
    result = 31 * result + (this.amount == null ? 0: this.amount.hashCode());
    result = 31 * result + (this.unit == null ? 0: this.unit.hashCode());
    result = 31 * result + (this.unitShort == null ? 0: this.unitShort.hashCode());
    result = 31 * result + (this.unitLong == null ? 0: this.unitLong.hashCode());
    result = 31 * result + (this.possibleUnits == null ? 0: this.possibleUnits.hashCode());
    result = 31 * result + (this.estimatedCost == null ? 0: this.estimatedCost.hashCode());
    result = 31 * result + (this.consistency == null ? 0: this.consistency.hashCode());
    result = 31 * result + (this.shoppingListUnits == null ? 0: this.shoppingListUnits.hashCode());
    result = 31 * result + (this.aisle == null ? 0: this.aisle.hashCode());
    result = 31 * result + (this.image == null ? 0: this.image.hashCode());
    result = 31 * result + (this.meta == null ? 0: this.meta.hashCode());
    result = 31 * result + (this.nutrition == null ? 0: this.nutrition.hashCode());
    result = 31 * result + (this.categoryPath == null ? 0: this.categoryPath.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20022 {\n");
    
    sb.append("  id: ").append(id).append("\n");
    sb.append("  original: ").append(original).append("\n");
    sb.append("  originalName: ").append(originalName).append("\n");
    sb.append("  name: ").append(name).append("\n");
    sb.append("  nameClean: ").append(nameClean).append("\n");
    sb.append("  amount: ").append(amount).append("\n");
    sb.append("  unit: ").append(unit).append("\n");
    sb.append("  unitShort: ").append(unitShort).append("\n");
    sb.append("  unitLong: ").append(unitLong).append("\n");
    sb.append("  possibleUnits: ").append(possibleUnits).append("\n");
    sb.append("  estimatedCost: ").append(estimatedCost).append("\n");
    sb.append("  consistency: ").append(consistency).append("\n");
    sb.append("  shoppingListUnits: ").append(shoppingListUnits).append("\n");
    sb.append("  aisle: ").append(aisle).append("\n");
    sb.append("  image: ").append(image).append("\n");
    sb.append("  meta: ").append(meta).append("\n");
    sb.append("  nutrition: ").append(nutrition).append("\n");
    sb.append("  categoryPath: ").append(categoryPath).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
