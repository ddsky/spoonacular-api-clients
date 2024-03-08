package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.ParseIngredients200ResponseInnerEstimatedCost;
import org.openapitools.model.ParseIngredients200ResponseInnerNutrition;

@Canonical
class ParseIngredients200ResponseInner {
    
    Integer id
    
    String original
    
    String originalName
    
    String name
    
    String nameClean
    
    BigDecimal amount
    
    String unit
    
    String unitShort
    
    String unitLong
    
    List<String> possibleUnits = new ArrayList<>()
    
    ParseIngredients200ResponseInnerEstimatedCost estimatedCost
    
    String consistency
    
    String aisle
    
    String image
    
    List<String> meta = new ArrayList<>()
    
    ParseIngredients200ResponseInnerNutrition nutrition
}
