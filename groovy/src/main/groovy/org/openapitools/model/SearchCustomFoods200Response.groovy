package org.openapitools.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.LinkedHashSet;
import java.util.Set;
import org.openapitools.model.SearchCustomFoods200ResponseCustomFoodsInner;

@Canonical
class SearchCustomFoods200Response {
    
    Set<SearchCustomFoods200ResponseCustomFoodsInner> customFoods = new LinkedHashSet<>()
    
    String type
    
    Integer offset
    
    Integer number
}
