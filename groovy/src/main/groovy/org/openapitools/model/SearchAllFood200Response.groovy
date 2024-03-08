package org.openapitools.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.LinkedHashSet;
import java.util.Set;
import org.openapitools.model.SearchAllFood200ResponseSearchResultsInner;

@Canonical
class SearchAllFood200Response {
    
    String query
    
    Integer totalResults
    
    Integer limit
    
    Integer offset
    
    Set<SearchAllFood200ResponseSearchResultsInner> searchResults = new LinkedHashSet<>()
}
