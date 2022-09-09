package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;

@Canonical
class GuessNutritionByDishName200ResponseCalories {
    
    GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent confidenceRange95Percent
    
    BigDecimal standardDeviation
    
    String unit
    
    BigDecimal value
}
