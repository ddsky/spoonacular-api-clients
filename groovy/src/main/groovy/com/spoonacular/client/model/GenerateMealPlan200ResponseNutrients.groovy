package com.spoonacular.client.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;

@Canonical
class GenerateMealPlan200ResponseNutrients {
    
    BigDecimal calories
    
    BigDecimal carbohydrates
    
    BigDecimal fat
    
    BigDecimal protein
}
