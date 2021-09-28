package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.InlineResponse20052SearchResults;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;

@Canonical
class InlineResponse20052 {
    
    String query
    
    Integer totalResults
    
    Integer limit
    
    Integer offset
    
    List<InlineResponse20052SearchResults> searchResults = new ArrayList<InlineResponse20052SearchResults>()
}
