package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.InlineResponse2003Measures;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

@Canonical
class InlineResponse2003ExtendedIngredients {
    
    String aisle
    
    BigDecimal amount
    
    String consitency
    
    Integer id
    
    String image
    
    InlineResponse2003Measures measures = null
    
    List<String> meta = new ArrayList<String>()
    
    String name
    
    String original
    
    String originalName
    
    String unit
}
