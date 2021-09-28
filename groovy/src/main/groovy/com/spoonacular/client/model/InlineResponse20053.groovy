package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.InlineResponse20053Videos;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;

@Canonical
class InlineResponse20053 {
    
    List<InlineResponse20053Videos> videos = new ArrayList<InlineResponse20053Videos>()
    
    Integer totalResults
}
