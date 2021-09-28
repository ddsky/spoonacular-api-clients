package com.spoonacular.client.model;

import java.math.BigDecimal;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class RecipesParseIngredientsNutritionCaloricBreakdown  {
  
  @SerializedName("percentProtein")
  private BigDecimal percentProtein = null;
  @SerializedName("percentFat")
  private BigDecimal percentFat = null;
  @SerializedName("percentCarbs")
  private BigDecimal percentCarbs = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public BigDecimal getPercentProtein() {
    return percentProtein;
  }
  public void setPercentProtein(BigDecimal percentProtein) {
    this.percentProtein = percentProtein;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public BigDecimal getPercentFat() {
    return percentFat;
  }
  public void setPercentFat(BigDecimal percentFat) {
    this.percentFat = percentFat;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public BigDecimal getPercentCarbs() {
    return percentCarbs;
  }
  public void setPercentCarbs(BigDecimal percentCarbs) {
    this.percentCarbs = percentCarbs;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    RecipesParseIngredientsNutritionCaloricBreakdown recipesParseIngredientsNutritionCaloricBreakdown = (RecipesParseIngredientsNutritionCaloricBreakdown) o;
    return (this.percentProtein == null ? recipesParseIngredientsNutritionCaloricBreakdown.percentProtein == null : this.percentProtein.equals(recipesParseIngredientsNutritionCaloricBreakdown.percentProtein)) &&
        (this.percentFat == null ? recipesParseIngredientsNutritionCaloricBreakdown.percentFat == null : this.percentFat.equals(recipesParseIngredientsNutritionCaloricBreakdown.percentFat)) &&
        (this.percentCarbs == null ? recipesParseIngredientsNutritionCaloricBreakdown.percentCarbs == null : this.percentCarbs.equals(recipesParseIngredientsNutritionCaloricBreakdown.percentCarbs));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.percentProtein == null ? 0: this.percentProtein.hashCode());
    result = 31 * result + (this.percentFat == null ? 0: this.percentFat.hashCode());
    result = 31 * result + (this.percentCarbs == null ? 0: this.percentCarbs.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class RecipesParseIngredientsNutritionCaloricBreakdown {\n");
    
    sb.append("  percentProtein: ").append(percentProtein).append("\n");
    sb.append("  percentFat: ").append(percentFat).append("\n");
    sb.append("  percentCarbs: ").append(percentCarbs).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
