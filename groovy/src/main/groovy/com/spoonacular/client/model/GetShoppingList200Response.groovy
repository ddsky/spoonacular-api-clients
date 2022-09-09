package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.spoonacular.client.model.GetShoppingList200ResponseAislesInner;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

@Canonical
class GetShoppingList200Response {
    
    Set<GetShoppingList200ResponseAislesInner> aisles = new LinkedHashSet<>()
    
    BigDecimal cost
    
    BigDecimal startDate
    
    BigDecimal endDate
}
