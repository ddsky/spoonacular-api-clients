package com.spoonacular.client.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;

@Canonical
class InlineResponse20012 {
    
    String calories
    
    String carbs
    
    String fat
    
    String protein
    
    List<Object> bad = new ArrayList<Object>()
    
    List<Object> good = new ArrayList<Object>()
}
