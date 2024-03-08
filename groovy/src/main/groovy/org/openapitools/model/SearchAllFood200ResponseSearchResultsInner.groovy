package org.openapitools.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.LinkedHashSet;
import java.util.Set;
import org.openapitools.model.SearchAllFood200ResponseSearchResultsInnerResultsInner;

@Canonical
class SearchAllFood200ResponseSearchResultsInner {
    
    String name
    
    Integer totalResults
    
    Set<SearchAllFood200ResponseSearchResultsInnerResultsInner> results
}
