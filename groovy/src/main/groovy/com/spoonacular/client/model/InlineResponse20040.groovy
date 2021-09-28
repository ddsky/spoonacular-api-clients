package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.InlineResponse20040Days;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;

@Canonical
class InlineResponse20040 {
    
    Integer id
    
    String name
    
    List<InlineResponse20040Days> days = new ArrayList<InlineResponse20040Days>()
}
