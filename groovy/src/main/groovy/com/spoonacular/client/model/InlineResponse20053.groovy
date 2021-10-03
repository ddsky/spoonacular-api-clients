package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.InlineResponse20053SearchResults;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;

@Canonical
class InlineResponse20053 {
    
    String query
    
    Integer totalResults
    
    Integer limit
    
    Integer offset
    
    List<InlineResponse20053SearchResults> searchResults = new ArrayList<InlineResponse20053SearchResults>()
}
