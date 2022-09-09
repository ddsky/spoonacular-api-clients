package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.spoonacular.client.model.GetMealPlanTemplate200ResponseDaysInner;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

@Canonical
class GetMealPlanTemplate200Response {
    
    Integer id
    
    String name
    
    Set<GetMealPlanTemplate200ResponseDaysInner> days = new LinkedHashSet<>()
}
