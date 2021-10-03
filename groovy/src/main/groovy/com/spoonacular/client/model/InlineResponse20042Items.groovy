package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.InlineResponse20042Measures;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;

@Canonical
class InlineResponse20042Items {
    
    Integer id
    
    String name
    
    InlineResponse20042Measures measures = null
    
    Boolean pantryItem
    
    String aisle
    
    BigDecimal cost
    
    Integer ingredientId
}
