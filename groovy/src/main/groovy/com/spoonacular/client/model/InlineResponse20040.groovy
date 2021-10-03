package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.InlineResponse20040Items;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;

@Canonical
class InlineResponse20040 {
    
    String name
    
    List<InlineResponse20040Items> items = new ArrayList<InlineResponse20040Items>()
    
    Boolean publishAsPublic
}
