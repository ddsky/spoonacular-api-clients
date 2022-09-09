package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.AddToMealPlanRequest1Value;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;

@Canonical
class AddToMealPlanRequest1 {
    
    BigDecimal date
    
    Integer slot
    
    Integer position
    
    String type
    
    AddToMealPlanRequest1Value value
}
