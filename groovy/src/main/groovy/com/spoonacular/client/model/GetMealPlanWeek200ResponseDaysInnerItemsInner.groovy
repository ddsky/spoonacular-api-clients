package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.GetMealPlanWeek200ResponseDaysInnerItemsInnerValue;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class GetMealPlanWeek200ResponseDaysInnerItemsInner {
    
    Integer id
    
    Integer slot
    
    Integer position
    
    String type
    
    GetMealPlanWeek200ResponseDaysInnerItemsInnerValue value
}
