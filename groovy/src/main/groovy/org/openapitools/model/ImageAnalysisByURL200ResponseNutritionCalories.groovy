package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import org.openapitools.model.ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent;

@Canonical
class ImageAnalysisByURL200ResponseNutritionCalories {
    
    BigDecimal value
    
    String unit
    
    ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent confidenceRange95Percent
    
    BigDecimal standardDeviation
}
