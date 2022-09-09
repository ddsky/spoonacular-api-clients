package com.spoonacular.client.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;

@Canonical
class SearchRecipesByNutrients200ResponseInner {
    
    BigDecimal calories
    
    String carbs
    
    String fat
    
    Integer id
    
    String image
    
    String imageType
    
    String protein
    
    String title
}
