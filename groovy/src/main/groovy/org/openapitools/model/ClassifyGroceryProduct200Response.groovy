package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;

@Canonical
class ClassifyGroceryProduct200Response {
    
    String cleanTitle
    
    String image
    
    String category
    
    List<String> breadcrumbs = new ArrayList<>()
    
    Integer usdaCode
}
