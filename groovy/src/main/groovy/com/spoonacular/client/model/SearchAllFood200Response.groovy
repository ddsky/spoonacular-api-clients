package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.spoonacular.client.model.SearchAllFood200ResponseSearchResultsInner;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

@Canonical
class SearchAllFood200Response {
    
    String query
    
    Integer totalResults
    
    Integer limit
    
    Integer offset
    
    Set<SearchAllFood200ResponseSearchResultsInner> searchResults = new LinkedHashSet<>()
}
