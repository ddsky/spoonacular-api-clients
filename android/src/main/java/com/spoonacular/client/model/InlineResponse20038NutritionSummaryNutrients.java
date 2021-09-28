package com.spoonacular.client.model;

import java.math.BigDecimal;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20038NutritionSummaryNutrients  {
  
  @SerializedName("name")
  private String name = null;
  @SerializedName("amount")
  private BigDecimal amount = null;
  @SerializedName("unit")
  private String unit = null;
  @SerializedName("percentDailyNeeds")
  private BigDecimal percentDailyNeeds = null;

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
  public BigDecimal getPercentDailyNeeds() {
    return percentDailyNeeds;
  }
  public void setPercentDailyNeeds(BigDecimal percentDailyNeeds) {
    this.percentDailyNeeds = percentDailyNeeds;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20038NutritionSummaryNutrients inlineResponse20038NutritionSummaryNutrients = (InlineResponse20038NutritionSummaryNutrients) o;
    return (this.name == null ? inlineResponse20038NutritionSummaryNutrients.name == null : this.name.equals(inlineResponse20038NutritionSummaryNutrients.name)) &&
        (this.amount == null ? inlineResponse20038NutritionSummaryNutrients.amount == null : this.amount.equals(inlineResponse20038NutritionSummaryNutrients.amount)) &&
        (this.unit == null ? inlineResponse20038NutritionSummaryNutrients.unit == null : this.unit.equals(inlineResponse20038NutritionSummaryNutrients.unit)) &&
        (this.percentDailyNeeds == null ? inlineResponse20038NutritionSummaryNutrients.percentDailyNeeds == null : this.percentDailyNeeds.equals(inlineResponse20038NutritionSummaryNutrients.percentDailyNeeds));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.name == null ? 0: this.name.hashCode());
    result = 31 * result + (this.amount == null ? 0: this.amount.hashCode());
    result = 31 * result + (this.unit == null ? 0: this.unit.hashCode());
    result = 31 * result + (this.percentDailyNeeds == null ? 0: this.percentDailyNeeds.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20038NutritionSummaryNutrients {\n");
    
    sb.append("  name: ").append(name).append("\n");
    sb.append("  amount: ").append(amount).append("\n");
    sb.append("  unit: ").append(unit).append("\n");
    sb.append("  percentDailyNeeds: ").append(percentDailyNeeds).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
