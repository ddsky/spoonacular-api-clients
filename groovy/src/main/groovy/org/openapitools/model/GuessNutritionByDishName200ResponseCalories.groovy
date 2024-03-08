package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import org.openapitools.model.GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent;

@Canonical
class GuessNutritionByDishName200ResponseCalories {
    
    GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent confidenceRange95Percent
    
    BigDecimal standardDeviation
    
    String unit
    
    BigDecimal value
}
