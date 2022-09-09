package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.spoonacular.client.model.SearchRecipes200ResponseResultsInner;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

@Canonical
class SearchRecipes200Response {
    
    Integer offset
    
    Integer number
    
    Set<SearchRecipes200ResponseResultsInner> results = new LinkedHashSet<>()
    
    Integer totalResults
}
