package com.spoonacular.client.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;

@Canonical
class GetMealPlanWeek200ResponseDaysInnerItemsInnerValue {
    
    BigDecimal servings
    
    BigDecimal id
    
    String title
    
    String imageType
}
