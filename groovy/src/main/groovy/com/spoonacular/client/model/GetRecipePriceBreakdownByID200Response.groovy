package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.spoonacular.client.model.GetRecipePriceBreakdownByID200ResponseIngredientsInner;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

@Canonical
class GetRecipePriceBreakdownByID200Response {
    
    Set<GetRecipePriceBreakdownByID200ResponseIngredientsInner> ingredients = new LinkedHashSet<>()
    
    BigDecimal totalCost
    
    BigDecimal totalCostPerServing
}
