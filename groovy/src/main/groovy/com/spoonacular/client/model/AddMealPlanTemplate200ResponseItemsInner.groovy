package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.AddMealPlanTemplate200ResponseItemsInnerValue;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class AddMealPlanTemplate200ResponseItemsInner {
    
    Integer day
    
    Integer slot
    
    Integer position
    
    String type
    
    AddMealPlanTemplate200ResponseItemsInnerValue value
}
