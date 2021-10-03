package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.InlineResponse20041Days;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;

@Canonical
class InlineResponse20041 {
    
    Integer id
    
    String name
    
    List<InlineResponse20041Days> days = new ArrayList<InlineResponse20041Days>()
}
