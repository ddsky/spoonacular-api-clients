package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.InlineResponse20013Ingredients;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

@Canonical
class InlineResponse20013Steps {
    
    BigDecimal number
    
    String step
    
    List<InlineResponse20013Ingredients> ingredients = new ArrayList<InlineResponse20013Ingredients>()
    
    List<InlineResponse20013Ingredients> equipment = new ArrayList<InlineResponse20013Ingredients>()
}
