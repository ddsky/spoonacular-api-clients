package com.spoonacular.client.model;

import com.spoonacular.client.model.InlineResponse20042Measures;
import java.math.BigDecimal;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20042Items  {
  
  @SerializedName("id")
  private Integer id = null;
  @SerializedName("name")
  private String name = null;
  @SerializedName("measures")
  private InlineResponse20042Measures measures = null;
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
  public InlineResponse20042Measures getMeasures() {
    return measures;
  }
  public void setMeasures(InlineResponse20042Measures measures) {
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
    InlineResponse20042Items inlineResponse20042Items = (InlineResponse20042Items) o;
    return (this.id == null ? inlineResponse20042Items.id == null : this.id.equals(inlineResponse20042Items.id)) &&
        (this.name == null ? inlineResponse20042Items.name == null : this.name.equals(inlineResponse20042Items.name)) &&
        (this.measures == null ? inlineResponse20042Items.measures == null : this.measures.equals(inlineResponse20042Items.measures)) &&
        (this.pantryItem == null ? inlineResponse20042Items.pantryItem == null : this.pantryItem.equals(inlineResponse20042Items.pantryItem)) &&
        (this.aisle == null ? inlineResponse20042Items.aisle == null : this.aisle.equals(inlineResponse20042Items.aisle)) &&
        (this.cost == null ? inlineResponse20042Items.cost == null : this.cost.equals(inlineResponse20042Items.cost)) &&
        (this.ingredientId == null ? inlineResponse20042Items.ingredientId == null : this.ingredientId.equals(inlineResponse20042Items.ingredientId));
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
    sb.append("class InlineResponse20042Items {\n");
    
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
