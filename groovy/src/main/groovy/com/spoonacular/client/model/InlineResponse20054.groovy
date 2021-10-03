package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.InlineResponse20054Videos;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;

@Canonical
class InlineResponse20054 {
    
    List<InlineResponse20054Videos> videos = new ArrayList<InlineResponse20054Videos>()
    
    Integer totalResults
}
