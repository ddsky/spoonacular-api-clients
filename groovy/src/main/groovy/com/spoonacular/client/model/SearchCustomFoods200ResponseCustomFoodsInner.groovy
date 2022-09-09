package com.spoonacular.client.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;

@Canonical
class SearchCustomFoods200ResponseCustomFoodsInner {
    
    Integer id
    
    String title
    
    BigDecimal servings
    
    String imageUrl
    
    BigDecimal price
}
