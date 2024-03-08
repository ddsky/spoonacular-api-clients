package org.openapitools.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import java.util.LinkedHashSet;
import java.util.Set;
import org.openapitools.model.GetRecipePriceBreakdownByID200ResponseIngredientsInner;

@Canonical
class GetRecipePriceBreakdownByID200Response {
    
    Set<GetRecipePriceBreakdownByID200ResponseIngredientsInner> ingredients = new LinkedHashSet<>()
    
    BigDecimal totalCost
    
    BigDecimal totalCostPerServing
}
