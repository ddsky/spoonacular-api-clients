package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;

@Canonical
class ImageAnalysisByURL200ResponseNutritionCalories {
    
    BigDecimal value
    
    String unit
    
    ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent confidenceRange95Percent
    
    BigDecimal standardDeviation
}
