package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.spoonacular.client.model.AutocompleteRecipeSearch200ResponseInner;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

@Canonical
class SearchGroceryProducts200Response {
    
    Set<AutocompleteRecipeSearch200ResponseInner> products = new LinkedHashSet<>()
    
    Integer totalProducts
    
    String type
    
    Integer offset
    
    Integer number
}
