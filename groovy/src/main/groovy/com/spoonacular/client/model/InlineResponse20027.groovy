package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.InlineResponse2007;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;

@Canonical
class InlineResponse20027 {
    
    List<InlineResponse2007> products = new ArrayList<InlineResponse2007>()
    
    Integer totalProducts
    
    String type
    
    Integer offset
    
    Integer number
}
