package com.spoonacular.client.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;

@Canonical
class InlineResponse20033 {
    
    String cleanTitle
    
    String image
    
    String category
    
    List<String> breadcrumbs = new ArrayList<String>()
    
    Integer usdaCode
}
