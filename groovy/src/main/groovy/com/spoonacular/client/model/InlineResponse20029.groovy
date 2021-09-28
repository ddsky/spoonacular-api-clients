package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.InlineResponse20029CustomFoods;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;

@Canonical
class InlineResponse20029 {
    
    List<InlineResponse20029CustomFoods> customFoods = new ArrayList<InlineResponse20029CustomFoods>()
    
    String type
    
    Integer offset
    
    Integer number
}
