package org.openapitools.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import java.util.LinkedHashSet;
import java.util.Set;
import org.openapitools.model.GetMealPlanWeek200ResponseDaysInnerItemsInner;
import org.openapitools.model.GetMealPlanWeek200ResponseDaysInnerNutritionSummary;

@Canonical
class GetMealPlanWeek200ResponseDaysInner {
    
    GetMealPlanWeek200ResponseDaysInnerNutritionSummary nutritionSummary
    
    GetMealPlanWeek200ResponseDaysInnerNutritionSummary nutritionSummaryBreakfast
    
    GetMealPlanWeek200ResponseDaysInnerNutritionSummary nutritionSummaryLunch
    
    GetMealPlanWeek200ResponseDaysInnerNutritionSummary nutritionSummaryDinner
    
    BigDecimal date
    
    String day
    
    Set<GetMealPlanWeek200ResponseDaysInnerItemsInner> items
}
