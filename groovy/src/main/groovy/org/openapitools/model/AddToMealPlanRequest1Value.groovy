package org.openapitools.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.LinkedHashSet;
import java.util.Set;
import org.openapitools.model.AddToMealPlanRequest1ValueIngredientsInner;

@Canonical
class AddToMealPlanRequest1Value {
    
    Set<AddToMealPlanRequest1ValueIngredientsInner> ingredients = new LinkedHashSet<>()
}
