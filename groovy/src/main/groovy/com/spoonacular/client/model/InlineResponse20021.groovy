package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.InlineResponse20021Calories;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class InlineResponse20021 {
    
    InlineResponse20021Calories calories = null
    
    InlineResponse20021Calories carbs = null
    
    InlineResponse20021Calories fat = null
    
    InlineResponse20021Calories protein = null
    
    Integer recipesUsed
}
