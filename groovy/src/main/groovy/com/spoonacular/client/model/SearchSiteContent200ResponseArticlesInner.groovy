package com.spoonacular.client.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;

@Canonical
class SearchSiteContent200ResponseArticlesInner {
    
    List<Object> dataPoints = new ArrayList<>()
    
    String image
    
    String link
    
    String name
}
