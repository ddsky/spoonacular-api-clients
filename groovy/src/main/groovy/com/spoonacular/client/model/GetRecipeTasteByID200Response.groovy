package com.spoonacular.client.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;

@Canonical
class GetRecipeTasteByID200Response {
    
    BigDecimal sweetness
    
    BigDecimal saltiness
    
    BigDecimal sourness
    
    BigDecimal bitterness
    
    BigDecimal savoriness
    
    BigDecimal fattiness
    
    BigDecimal spiciness
}
