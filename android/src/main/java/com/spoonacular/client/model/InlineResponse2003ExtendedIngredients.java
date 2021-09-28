package com.spoonacular.client.model;

import com.spoonacular.client.model.InlineResponse2003Measures;
import java.math.BigDecimal;
import java.util.*;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse2003ExtendedIngredients  {
  
  @SerializedName("aisle")
  private String aisle = null;
  @SerializedName("amount")
  private BigDecimal amount = null;
  @SerializedName("consitency")
  private String consitency = null;
  @SerializedName("id")
  private Integer id = null;
  @SerializedName("image")
  private String image = null;
  @SerializedName("measures")
  private InlineResponse2003Measures measures = null;
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
  public String getConsitency() {
    return consitency;
  }
  public void setConsitency(String consitency) {
    this.consitency = consitency;
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
  public InlineResponse2003Measures getMeasures() {
    return measures;
  }
  public void setMeasures(InlineResponse2003Measures measures) {
    this.measures = measures;
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


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse2003ExtendedIngredients inlineResponse2003ExtendedIngredients = (InlineResponse2003ExtendedIngredients) o;
    return (this.aisle == null ? inlineResponse2003ExtendedIngredients.aisle == null : this.aisle.equals(inlineResponse2003ExtendedIngredients.aisle)) &&
        (this.amount == null ? inlineResponse2003ExtendedIngredients.amount == null : this.amount.equals(inlineResponse2003ExtendedIngredients.amount)) &&
        (this.consitency == null ? inlineResponse2003ExtendedIngredients.consitency == null : this.consitency.equals(inlineResponse2003ExtendedIngredients.consitency)) &&
        (this.id == null ? inlineResponse2003ExtendedIngredients.id == null : this.id.equals(inlineResponse2003ExtendedIngredients.id)) &&
        (this.image == null ? inlineResponse2003ExtendedIngredients.image == null : this.image.equals(inlineResponse2003ExtendedIngredients.image)) &&
        (this.measures == null ? inlineResponse2003ExtendedIngredients.measures == null : this.measures.equals(inlineResponse2003ExtendedIngredients.measures)) &&
        (this.meta == null ? inlineResponse2003ExtendedIngredients.meta == null : this.meta.equals(inlineResponse2003ExtendedIngredients.meta)) &&
        (this.name == null ? inlineResponse2003ExtendedIngredients.name == null : this.name.equals(inlineResponse2003ExtendedIngredients.name)) &&
        (this.original == null ? inlineResponse2003ExtendedIngredients.original == null : this.original.equals(inlineResponse2003ExtendedIngredients.original)) &&
        (this.originalName == null ? inlineResponse2003ExtendedIngredients.originalName == null : this.originalName.equals(inlineResponse2003ExtendedIngredients.originalName)) &&
        (this.unit == null ? inlineResponse2003ExtendedIngredients.unit == null : this.unit.equals(inlineResponse2003ExtendedIngredients.unit));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.aisle == null ? 0: this.aisle.hashCode());
    result = 31 * result + (this.amount == null ? 0: this.amount.hashCode());
    result = 31 * result + (this.consitency == null ? 0: this.consitency.hashCode());
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.image == null ? 0: this.image.hashCode());
    result = 31 * result + (this.measures == null ? 0: this.measures.hashCode());
    result = 31 * result + (this.meta == null ? 0: this.meta.hashCode());
    result = 31 * result + (this.name == null ? 0: this.name.hashCode());
    result = 31 * result + (this.original == null ? 0: this.original.hashCode());
    result = 31 * result + (this.originalName == null ? 0: this.originalName.hashCode());
    result = 31 * result + (this.unit == null ? 0: this.unit.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse2003ExtendedIngredients {\n");
    
    sb.append("  aisle: ").append(aisle).append("\n");
    sb.append("  amount: ").append(amount).append("\n");
    sb.append("  consitency: ").append(consitency).append("\n");
    sb.append("  id: ").append(id).append("\n");
    sb.append("  image: ").append(image).append("\n");
    sb.append("  measures: ").append(measures).append("\n");
    sb.append("  meta: ").append(meta).append("\n");
    sb.append("  name: ").append(name).append("\n");
    sb.append("  original: ").append(original).append("\n");
    sb.append("  originalName: ").append(originalName).append("\n");
    sb.append("  unit: ").append(unit).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
