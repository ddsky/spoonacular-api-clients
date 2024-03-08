package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import org.openapitools.model.GetShoppingList200ResponseAislesInnerItemsInnerMeasures;

@Canonical
class GetShoppingList200ResponseAislesInnerItemsInner {
    
    Integer id
    
    String name
    
    GetShoppingList200ResponseAislesInnerItemsInnerMeasures measures
    
    Boolean pantryItem
    
    String aisle
    
    BigDecimal cost
    
    Integer ingredientId
}
