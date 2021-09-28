package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.InlineResponse20038Value;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class InlineResponse20038Items {
    
    Integer id
    
    Integer slot
    
    Integer position
    
    String type
    
    InlineResponse20038Value value = null
}
