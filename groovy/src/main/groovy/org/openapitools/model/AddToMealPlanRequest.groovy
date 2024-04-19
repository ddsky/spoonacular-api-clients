package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import org.openapitools.model.AddToMealPlanRequestValue;

@Canonical
class AddToMealPlanRequest {
    
    BigDecimal date
    
    Integer slot
    
    Integer position
    
    String type
    
    AddToMealPlanRequestValue value
}
