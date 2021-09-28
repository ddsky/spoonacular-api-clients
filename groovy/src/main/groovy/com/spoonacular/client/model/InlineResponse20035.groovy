package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.InlineResponse20035MenuItems;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;

@Canonical
class InlineResponse20035 {
    
    List<InlineResponse20035MenuItems> menuItems = new ArrayList<InlineResponse20035MenuItems>()
    
    Integer totalMenuItems
    
    String type
    
    Integer offset
    
    Integer number
}
