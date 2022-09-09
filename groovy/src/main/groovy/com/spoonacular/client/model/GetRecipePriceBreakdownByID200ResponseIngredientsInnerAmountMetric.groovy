package com.spoonacular.client.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;

@Canonical
class GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric {
    
    String unit
    
    BigDecimal value
}
