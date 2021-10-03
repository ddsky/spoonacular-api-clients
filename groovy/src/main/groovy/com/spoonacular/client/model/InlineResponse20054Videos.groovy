package com.spoonacular.client.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;

@Canonical
class InlineResponse20054Videos {
    
    String title
    
    Integer length
    
    BigDecimal rating
    
    String shortTitle
    
    String thumbnail
    
    Integer views
    
    String youTubeId
}
