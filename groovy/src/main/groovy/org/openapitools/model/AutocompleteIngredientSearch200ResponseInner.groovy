package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;

@Canonical
class AutocompleteIngredientSearch200ResponseInner {
    
    String name
    
    String image
    
    Integer id
    
    String aisle
    
    List<String> possibleUnits
}
