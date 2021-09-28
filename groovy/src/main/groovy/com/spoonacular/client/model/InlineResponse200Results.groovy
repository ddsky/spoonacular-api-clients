package com.spoonacular.client.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;

@Canonical
class InlineResponse200Results {
    
    Integer id
    
    String title
    
    BigDecimal calories
    
    String carbs
    
    String fat
    
    String image
    
    String imageType
    
    String protein
}
