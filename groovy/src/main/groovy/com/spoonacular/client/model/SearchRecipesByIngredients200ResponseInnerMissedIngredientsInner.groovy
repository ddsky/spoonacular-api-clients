package com.spoonacular.client.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

@Canonical
class SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner {
    
    String aisle
    
    BigDecimal amount
    
    Integer id
    
    String image
    
    List<String> meta = new ArrayList<>()
    
    String name
    
    String original
    
    String originalName
    
    String unit
    
    String unitLong
    
    String unitShort
}
