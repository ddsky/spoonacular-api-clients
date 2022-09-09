package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.GetShoppingList200ResponseAislesInnerItemsInnerMeasures;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;

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
