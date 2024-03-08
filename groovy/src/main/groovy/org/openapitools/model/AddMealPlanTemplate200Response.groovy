package org.openapitools.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.LinkedHashSet;
import java.util.Set;
import org.openapitools.model.AddMealPlanTemplate200ResponseItemsInner;

@Canonical
class AddMealPlanTemplate200Response {
    
    String name
    
    Set<AddMealPlanTemplate200ResponseItemsInner> items = new LinkedHashSet<>()
    
    Boolean publishAsPublic
}
