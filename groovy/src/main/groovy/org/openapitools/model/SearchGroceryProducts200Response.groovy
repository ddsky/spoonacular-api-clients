package org.openapitools.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.LinkedHashSet;
import java.util.Set;
import org.openapitools.model.AutocompleteRecipeSearch200ResponseInner;

@Canonical
class SearchGroceryProducts200Response {
    
    Set<AutocompleteRecipeSearch200ResponseInner> products = new LinkedHashSet<>()
    
    Integer totalProducts
    
    String type
    
    Integer offset
    
    Integer number
}
