package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.InlineResponse20038NutritionSummary;
import com.spoonacular.client.model.InlineResponse20040Items;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;

@Canonical
class InlineResponse20040Days {
    
    InlineResponse20038NutritionSummary nutritionSummary = null
    
    InlineResponse20038NutritionSummary nutritionSummaryBreakfast = null
    
    InlineResponse20038NutritionSummary nutritionSummaryLunch = null
    
    InlineResponse20038NutritionSummary nutritionSummaryDinner = null
    
    String day
    
    List<InlineResponse20040Items> items = new ArrayList<InlineResponse20040Items>()
}
