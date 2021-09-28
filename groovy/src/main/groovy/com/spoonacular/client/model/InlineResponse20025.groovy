package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.InlineResponse20025Results;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;

@Canonical
class InlineResponse20025 {
    
    List<InlineResponse20025Results> results = new ArrayList<InlineResponse20025Results>()
    
    Integer offset
    
    Integer number
    
    Integer totalResults
}
