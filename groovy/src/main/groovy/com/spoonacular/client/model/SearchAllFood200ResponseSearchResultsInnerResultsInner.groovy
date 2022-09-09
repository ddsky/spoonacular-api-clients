package com.spoonacular.client.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;

@Canonical
class SearchAllFood200ResponseSearchResultsInnerResultsInner {
    
    String id
    
    String name
    
    String image
    
    String link
    
    String type
    
    BigDecimal relevance
    
    String content
}
