package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.InlineResponse20013Steps;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;

@Canonical
class InlineResponse20013ParsedInstructions {
    
    String name
    
    List<InlineResponse20013Steps> steps = new ArrayList<InlineResponse20013Steps>()
}
