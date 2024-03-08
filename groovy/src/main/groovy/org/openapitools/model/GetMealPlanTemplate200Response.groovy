package org.openapitools.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.LinkedHashSet;
import java.util.Set;
import org.openapitools.model.GetMealPlanTemplate200ResponseDaysInner;

@Canonical
class GetMealPlanTemplate200Response {
    
    Integer id
    
    String name
    
    Set<GetMealPlanTemplate200ResponseDaysInner> days = new LinkedHashSet<>()
}
