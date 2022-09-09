package com.spoonacular.client.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class ClassifyGroceryProductRequest {
    
    String title
    
    String upc
    
    String pluCode
}
