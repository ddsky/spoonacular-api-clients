package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.RecipesParseIngredientsEstimatedCost;
import com.spoonacular.client.model.RecipesParseIngredientsNutrition;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

@Canonical
class InlineResponse20020 {
    
    Integer id
    
    String original
    
    String originalName
    
    String name
    
    String nameClean
    
    BigDecimal amount
    
    String unit
    
    String unitShort
    
    String unitLong
    
    List<String> possibleUnits = new ArrayList<String>()
    
    RecipesParseIngredientsEstimatedCost estimatedCost = null
    
    String consistency
    
    String aisle
    
    String image
    
    List<String> meta = new ArrayList<String>()
    
    RecipesParseIngredientsNutrition nutrition = null
}
