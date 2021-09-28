package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.InlineResponse20041Measures;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;

@Canonical
class InlineResponse20041Items {
    
    Integer id
    
    String name
    
    InlineResponse20041Measures measures = null
    
    Boolean pantryItem
    
    String aisle
    
    BigDecimal cost
    
    Integer ingredientId
}
