package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;

@Canonical
class GetMealPlanWeek200ResponseDaysInnerNutritionSummaryNutrientsInner {
    
    String name
    
    BigDecimal amount
    
    String unit
    
    BigDecimal percentDailyNeeds
}
