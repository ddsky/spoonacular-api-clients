package com.spoonacular.client.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

@Canonical
class InlineResponse20017 {
    
    String cuisine
    
    List<String> cuisines = new ArrayList<String>()
    
    BigDecimal confidence
}
