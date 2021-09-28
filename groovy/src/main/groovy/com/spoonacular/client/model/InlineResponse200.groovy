package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.InlineResponse200Results;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;

@Canonical
class InlineResponse200 {
    
    Integer offset
    
    Integer number
    
    List<InlineResponse200Results> results = new ArrayList<InlineResponse200Results>()
    
    Integer totalResults
}
