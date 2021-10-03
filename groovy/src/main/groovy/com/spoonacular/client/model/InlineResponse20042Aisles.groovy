package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.InlineResponse20042Items;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;

@Canonical
class InlineResponse20042Aisles {
    
    String aisle
    
    List<InlineResponse20042Items> items = new ArrayList<InlineResponse20042Items>()
}
