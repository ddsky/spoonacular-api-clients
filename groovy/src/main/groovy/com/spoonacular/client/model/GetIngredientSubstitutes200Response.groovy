package com.spoonacular.client.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;

@Canonical
class GetIngredientSubstitutes200Response {
    
    String ingredient
    
    List<String> substitutes = new ArrayList<>()
    
    String message
}
