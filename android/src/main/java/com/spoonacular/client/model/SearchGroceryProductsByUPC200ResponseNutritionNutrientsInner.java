/**
 * spoonacular API
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
 *
 * The version of the OpenAPI document: 2.0.2
 * Contact: mail@spoonacular.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package com.spoonacular.client.model;

import java.math.BigDecimal;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class SearchGroceryProductsByUPC200ResponseNutritionNutrientsInner {
  
  @SerializedName("name")
  private String name = null;
  @SerializedName("amount")
  private BigDecimal amount = null;
  @SerializedName("unit")
  private String unit = null;
  @SerializedName("percentOfDailyNeeds")
  private BigDecimal percentOfDailyNeeds = null;

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
  public BigDecimal getPercentOfDailyNeeds() {
    return percentOfDailyNeeds;
  }
  public void setPercentOfDailyNeeds(BigDecimal percentOfDailyNeeds) {
    this.percentOfDailyNeeds = percentOfDailyNeeds;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SearchGroceryProductsByUPC200ResponseNutritionNutrientsInner searchGroceryProductsByUPC200ResponseNutritionNutrientsInner = (SearchGroceryProductsByUPC200ResponseNutritionNutrientsInner) o;
    return (this.name == null ? searchGroceryProductsByUPC200ResponseNutritionNutrientsInner.name == null : this.name.equals(searchGroceryProductsByUPC200ResponseNutritionNutrientsInner.name)) &&
        (this.amount == null ? searchGroceryProductsByUPC200ResponseNutritionNutrientsInner.amount == null : this.amount.equals(searchGroceryProductsByUPC200ResponseNutritionNutrientsInner.amount)) &&
        (this.unit == null ? searchGroceryProductsByUPC200ResponseNutritionNutrientsInner.unit == null : this.unit.equals(searchGroceryProductsByUPC200ResponseNutritionNutrientsInner.unit)) &&
        (this.percentOfDailyNeeds == null ? searchGroceryProductsByUPC200ResponseNutritionNutrientsInner.percentOfDailyNeeds == null : this.percentOfDailyNeeds.equals(searchGroceryProductsByUPC200ResponseNutritionNutrientsInner.percentOfDailyNeeds));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.name == null ? 0: this.name.hashCode());
    result = 31 * result + (this.amount == null ? 0: this.amount.hashCode());
    result = 31 * result + (this.unit == null ? 0: this.unit.hashCode());
    result = 31 * result + (this.percentOfDailyNeeds == null ? 0: this.percentOfDailyNeeds.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class SearchGroceryProductsByUPC200ResponseNutritionNutrientsInner {\n");
    
    sb.append("  name: ").append(name).append("\n");
    sb.append("  amount: ").append(amount).append("\n");
    sb.append("  unit: ").append(unit).append("\n");
    sb.append("  percentOfDailyNeeds: ").append(percentOfDailyNeeds).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
