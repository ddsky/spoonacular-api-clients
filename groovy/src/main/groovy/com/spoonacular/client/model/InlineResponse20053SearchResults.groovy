package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.InlineResponse20053Results;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;

@Canonical
class InlineResponse20053SearchResults {
    
    String name
    
    Integer totalResults
    
    List<InlineResponse20053Results> results = new ArrayList<InlineResponse20053Results>()
}
