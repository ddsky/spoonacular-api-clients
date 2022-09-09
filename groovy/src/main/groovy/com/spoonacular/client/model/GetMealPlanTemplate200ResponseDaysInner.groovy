package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.spoonacular.client.model.GetMealPlanTemplate200ResponseDaysInnerItemsInner;
import com.spoonacular.client.model.GetMealPlanWeek200ResponseDaysInnerNutritionSummary;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

@Canonical
class GetMealPlanTemplate200ResponseDaysInner {
    
    GetMealPlanWeek200ResponseDaysInnerNutritionSummary nutritionSummary
    
    GetMealPlanWeek200ResponseDaysInnerNutritionSummary nutritionSummaryBreakfast
    
    GetMealPlanWeek200ResponseDaysInnerNutritionSummary nutritionSummaryLunch
    
    GetMealPlanWeek200ResponseDaysInnerNutritionSummary nutritionSummaryDinner
    
    String day
    
    Set<GetMealPlanTemplate200ResponseDaysInnerItemsInner> items = new LinkedHashSet<>()
}
