package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.GetIngredientInformation200ResponseNutrition;
import org.openapitools.model.ParseIngredients200ResponseInnerEstimatedCost;

@Canonical
class GetIngredientInformation200Response {
    
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
    
    List<String> shoppingListUnits = new ArrayList<>()
    
    String aisle
    
    String image
    
    List<Object> meta = new ArrayList<>()
    
    GetIngredientInformation200ResponseNutrition nutrition
    
    List<String> categoryPath = new ArrayList<>()
}
