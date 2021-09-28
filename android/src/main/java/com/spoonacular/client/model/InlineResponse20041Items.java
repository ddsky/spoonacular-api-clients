package com.spoonacular.client.model;

import com.spoonacular.client.model.InlineResponse20041Measures;
import java.math.BigDecimal;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20041Items  {
  
  @SerializedName("id")
  private Integer id = null;
  @SerializedName("name")
  private String name = null;
  @SerializedName("measures")
  private InlineResponse20041Measures measures = null;
  @SerializedName("pantryItem")
  private Boolean pantryItem = null;
  @SerializedName("aisle")
  private String aisle = null;
  @SerializedName("cost")
  private BigDecimal cost = null;
  @SerializedName("ingredientId")
  private Integer ingredientId = null;

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
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public InlineResponse20041Measures getMeasures() {
    return measures;
  }
  public void setMeasures(InlineResponse20041Measures measures) {
    this.measures = measures;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Boolean getPantryItem() {
    return pantryItem;
  }
  public void setPantryItem(Boolean pantryItem) {
    this.pantryItem = pantryItem;
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
  public BigDecimal getCost() {
    return cost;
  }
  public void setCost(BigDecimal cost) {
    this.cost = cost;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Integer getIngredientId() {
    return ingredientId;
  }
  public void setIngredientId(Integer ingredientId) {
    this.ingredientId = ingredientId;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20041Items inlineResponse20041Items = (InlineResponse20041Items) o;
    return (this.id == null ? inlineResponse20041Items.id == null : this.id.equals(inlineResponse20041Items.id)) &&
        (this.name == null ? inlineResponse20041Items.name == null : this.name.equals(inlineResponse20041Items.name)) &&
        (this.measures == null ? inlineResponse20041Items.measures == null : this.measures.equals(inlineResponse20041Items.measures)) &&
        (this.pantryItem == null ? inlineResponse20041Items.pantryItem == null : this.pantryItem.equals(inlineResponse20041Items.pantryItem)) &&
        (this.aisle == null ? inlineResponse20041Items.aisle == null : this.aisle.equals(inlineResponse20041Items.aisle)) &&
        (this.cost == null ? inlineResponse20041Items.cost == null : this.cost.equals(inlineResponse20041Items.cost)) &&
        (this.ingredientId == null ? inlineResponse20041Items.ingredientId == null : this.ingredientId.equals(inlineResponse20041Items.ingredientId));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.name == null ? 0: this.name.hashCode());
    result = 31 * result + (this.measures == null ? 0: this.measures.hashCode());
    result = 31 * result + (this.pantryItem == null ? 0: this.pantryItem.hashCode());
    result = 31 * result + (this.aisle == null ? 0: this.aisle.hashCode());
    result = 31 * result + (this.cost == null ? 0: this.cost.hashCode());
    result = 31 * result + (this.ingredientId == null ? 0: this.ingredientId.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20041Items {\n");
    
    sb.append("  id: ").append(id).append("\n");
    sb.append("  name: ").append(name).append("\n");
    sb.append("  measures: ").append(measures).append("\n");
    sb.append("  pantryItem: ").append(pantryItem).append("\n");
    sb.append("  aisle: ").append(aisle).append("\n");
    sb.append("  cost: ").append(cost).append("\n");
    sb.append("  ingredientId: ").append(ingredientId).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
