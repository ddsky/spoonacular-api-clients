package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import org.openapitools.model.GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount;

@Canonical
class GetRecipePriceBreakdownByID200ResponseIngredientsInner {
    
    GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount amount
    
    String image
    
    String name
    
    BigDecimal price
}
