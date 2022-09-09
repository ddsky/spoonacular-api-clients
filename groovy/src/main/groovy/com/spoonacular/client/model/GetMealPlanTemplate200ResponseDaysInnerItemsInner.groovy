package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.GetMealPlanTemplate200ResponseDaysInnerItemsInnerValue;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class GetMealPlanTemplate200ResponseDaysInnerItemsInner {
    
    Integer id
    
    Integer slot
    
    Integer position
    
    String type
    
    GetMealPlanTemplate200ResponseDaysInnerItemsInnerValue value
}
