package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import org.openapitools.model.AddToMealPlanRequest1Value;

@Canonical
class AddToMealPlanRequest1 {
    
    BigDecimal date
    
    Integer slot
    
    Integer position
    
    String type
    
    AddToMealPlanRequest1Value value
}
