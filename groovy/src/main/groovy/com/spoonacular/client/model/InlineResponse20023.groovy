package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.InlineResponse20023Ingredients;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

@Canonical
class InlineResponse20023 {
    
    BigDecimal totalGlycemicLoad
    
    List<InlineResponse20023Ingredients> ingredients = new ArrayList<InlineResponse20023Ingredients>()
}
