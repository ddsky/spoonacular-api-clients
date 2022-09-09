package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.GetRecipeInformation200ResponseExtendedIngredientsInnerMeasures;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

@Canonical
class GetRecipeInformation200ResponseExtendedIngredientsInner {
    
    String aisle
    
    BigDecimal amount
    
    String consitency
    
    Integer id
    
    String image
    
    GetRecipeInformation200ResponseExtendedIngredientsInnerMeasures measures
    
    List<String> meta = new ArrayList<>()
    
    String name
    
    String original
    
    String originalName
    
    String unit
}
