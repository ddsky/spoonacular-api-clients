package com.spoonacular.client.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;

@Canonical
class InlineResponse2005 {
    
    Integer id
    
    String title
    
    String imageType
    
    Integer readyInMinutes
    
    BigDecimal servings
    
    String sourceUrl
}
