package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.InlineResponse20021CaloriesConfidenceRange95Percent;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;

@Canonical
class InlineResponse20021Calories {
    
    InlineResponse20021CaloriesConfidenceRange95Percent confidenceRange95Percent = null
    
    BigDecimal standardDeviation
    
    String unit
    
    BigDecimal value
}
