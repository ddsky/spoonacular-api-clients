package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.InlineResponse20056Suggests;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;

@Canonical
class InlineResponse20056 {
    
    InlineResponse20056Suggests suggests = null
    
    List<Object> words = new ArrayList<Object>()
}
