package com.spoonacular.client.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

@Canonical
class ClassifyCuisine200Response {
    
    String cuisine
    
    List<String> cuisines = new ArrayList<>()
    
    BigDecimal confidence
}
