package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.InlineResponse20040Value;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class InlineResponse20040Items {
    
    Integer id
    
    Integer slot
    
    Integer position
    
    String type
    
    InlineResponse20040Value value = null
}
