package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;

@Canonical
class MapIngredientsToGroceryProductsRequest {
    
    List<String> ingredients = new ArrayList<>()
    
    BigDecimal servings
}
