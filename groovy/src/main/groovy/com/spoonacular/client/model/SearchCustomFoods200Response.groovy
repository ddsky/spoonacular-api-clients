package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.spoonacular.client.model.SearchCustomFoods200ResponseCustomFoodsInner;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

@Canonical
class SearchCustomFoods200Response {
    
    Set<SearchCustomFoods200ResponseCustomFoodsInner> customFoods = new LinkedHashSet<>()
    
    String type
    
    Integer offset
    
    Integer number
}
