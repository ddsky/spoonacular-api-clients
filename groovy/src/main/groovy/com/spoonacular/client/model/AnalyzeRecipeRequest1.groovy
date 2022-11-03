package com.spoonacular.client.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;

@Canonical
class AnalyzeRecipeRequest1 {
    
    String title
    
    Integer servings
    
    List<String> ingredients = new ArrayList<>()
    
    String instructions
}
