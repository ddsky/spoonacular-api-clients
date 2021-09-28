package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.InlineResponse20037Nutrients;
import com.spoonacular.client.model.InlineResponse2005;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;

@Canonical
class InlineResponse20037 {
    
    List<InlineResponse2005> meals = new ArrayList<InlineResponse2005>()
    
    InlineResponse20037Nutrients nutrients = null
}
