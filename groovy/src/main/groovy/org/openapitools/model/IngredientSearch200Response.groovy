package org.openapitools.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.LinkedHashSet;
import java.util.Set;
import org.openapitools.model.IngredientSearch200ResponseResultsInner;

@Canonical
class IngredientSearch200Response {
    
    Set<IngredientSearch200ResponseResultsInner> results = new LinkedHashSet<>()
    
    Integer offset
    
    Integer number
    
    Integer totalResults
}
