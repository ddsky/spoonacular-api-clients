package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.InlineResponse20010Amount;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;

@Canonical
class InlineResponse20010Ingredients {
    
    InlineResponse20010Amount amount = null
    
    String image
    
    String name
    
    BigDecimal price
}
