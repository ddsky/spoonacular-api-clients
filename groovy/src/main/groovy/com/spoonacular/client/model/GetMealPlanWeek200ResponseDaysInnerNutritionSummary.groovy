package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.spoonacular.client.model.GetMealPlanWeek200ResponseDaysInnerNutritionSummaryNutrientsInner;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

@Canonical
class GetMealPlanWeek200ResponseDaysInnerNutritionSummary {
    
    Set<GetMealPlanWeek200ResponseDaysInnerNutritionSummaryNutrientsInner> nutrients = new LinkedHashSet<>()
}
