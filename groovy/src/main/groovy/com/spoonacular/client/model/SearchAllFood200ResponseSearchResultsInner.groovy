package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.spoonacular.client.model.SearchAllFood200ResponseSearchResultsInnerResultsInner;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

@Canonical
class SearchAllFood200ResponseSearchResultsInner {
    
    String name
    
    Integer totalResults
    
    Set<SearchAllFood200ResponseSearchResultsInnerResultsInner> results = new LinkedHashSet<>()
}
