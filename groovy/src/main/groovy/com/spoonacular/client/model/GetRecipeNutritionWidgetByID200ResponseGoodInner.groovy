package com.spoonacular.client.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;

@Canonical
class GetRecipeNutritionWidgetByID200ResponseGoodInner {
    
    String amount
    
    Boolean indented
    
    BigDecimal percentOfDailyNeeds
    
    String name
}
