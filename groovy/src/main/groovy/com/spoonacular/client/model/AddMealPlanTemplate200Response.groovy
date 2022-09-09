package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.spoonacular.client.model.AddMealPlanTemplate200ResponseItemsInner;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

@Canonical
class AddMealPlanTemplate200Response {
    
    String name
    
    Set<AddMealPlanTemplate200ResponseItemsInner> items = new LinkedHashSet<>()
    
    Boolean publishAsPublic
}
