package com.spoonacular.client.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;

@Canonical
class InlineResponse20019 {
    
    BigDecimal sourceAmount
    
    String sourceUnit
    
    BigDecimal targetAmount
    
    String targetUnit
    
    String answer
}
