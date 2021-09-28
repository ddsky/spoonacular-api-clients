package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.InlineResponse20010Amount;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class InlineResponse20011Ingredients {
    
    InlineResponse20010Amount amount = null
    
    String image
    
    String name
}
