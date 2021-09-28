package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.InlineResponse20010Ingredients;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

@Canonical
class InlineResponse20010 {
    
    List<InlineResponse20010Ingredients> ingredients = new ArrayList<InlineResponse20010Ingredients>()
    
    BigDecimal totalCost
    
    BigDecimal totalCostPerServing
}
