package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.InlineResponse20038Items;
import com.spoonacular.client.model.InlineResponse20038NutritionSummary;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

@Canonical
class InlineResponse20038Days {
    
    InlineResponse20038NutritionSummary nutritionSummary = null
    
    InlineResponse20038NutritionSummary nutritionSummaryBreakfast = null
    
    InlineResponse20038NutritionSummary nutritionSummaryLunch = null
    
    InlineResponse20038NutritionSummary nutritionSummaryDinner = null
    
    BigDecimal date
    
    String day
    
    List<InlineResponse20038Items> items = new ArrayList<InlineResponse20038Items>()
}
