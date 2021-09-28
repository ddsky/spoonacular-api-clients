package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.InlineResponse20022Nutrition;
import com.spoonacular.client.model.RecipesParseIngredientsEstimatedCost;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

@Canonical
class InlineResponse20022 {
    
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
    
    List<String> shoppingListUnits = new ArrayList<String>()
    
    String aisle
    
    String image
    
    List<Object> meta = new ArrayList<Object>()
    
    InlineResponse20022Nutrition nutrition = null
    
    List<String> categoryPath = new ArrayList<String>()
}
