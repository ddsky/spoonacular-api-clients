package org.openapitools.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import java.util.LinkedHashSet;
import java.util.Set;
import org.openapitools.model.GetShoppingList200ResponseAislesInner;

@Canonical
class GenerateShoppingList200Response {
    
    Set<GetShoppingList200ResponseAislesInner> aisles = new LinkedHashSet<>()
    
    BigDecimal cost
    
    BigDecimal startDate
    
    BigDecimal endDate
}
