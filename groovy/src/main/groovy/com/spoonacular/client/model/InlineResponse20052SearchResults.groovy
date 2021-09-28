package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.InlineResponse20052Results;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;

@Canonical
class InlineResponse20052SearchResults {
    
    String name
    
    Integer totalResults
    
    List<InlineResponse20052Results> results = new ArrayList<InlineResponse20052Results>()
}
