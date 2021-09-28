package com.spoonacular.client.model;

import com.spoonacular.client.model.RecipesParseIngredientsNutritionWeightPerServing;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20041Measures  {
  
  @SerializedName("original")
  private RecipesParseIngredientsNutritionWeightPerServing original = null;
  @SerializedName("metric")
  private RecipesParseIngredientsNutritionWeightPerServing metric = null;
  @SerializedName("us")
  private RecipesParseIngredientsNutritionWeightPerServing us = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public RecipesParseIngredientsNutritionWeightPerServing getOriginal() {
    return original;
  }
  public void setOriginal(RecipesParseIngredientsNutritionWeightPerServing original) {
    this.original = original;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public RecipesParseIngredientsNutritionWeightPerServing getMetric() {
    return metric;
  }
  public void setMetric(RecipesParseIngredientsNutritionWeightPerServing metric) {
    this.metric = metric;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public RecipesParseIngredientsNutritionWeightPerServing getUs() {
    return us;
  }
  public void setUs(RecipesParseIngredientsNutritionWeightPerServing us) {
    this.us = us;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20041Measures inlineResponse20041Measures = (InlineResponse20041Measures) o;
    return (this.original == null ? inlineResponse20041Measures.original == null : this.original.equals(inlineResponse20041Measures.original)) &&
        (this.metric == null ? inlineResponse20041Measures.metric == null : this.metric.equals(inlineResponse20041Measures.metric)) &&
        (this.us == null ? inlineResponse20041Measures.us == null : this.us.equals(inlineResponse20041Measures.us));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.original == null ? 0: this.original.hashCode());
    result = 31 * result + (this.metric == null ? 0: this.metric.hashCode());
    result = 31 * result + (this.us == null ? 0: this.us.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20041Measures {\n");
    
    sb.append("  original: ").append(original).append("\n");
    sb.append("  metric: ").append(metric).append("\n");
    sb.append("  us: ").append(us).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
