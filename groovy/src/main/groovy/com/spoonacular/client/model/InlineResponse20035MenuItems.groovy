package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.InlineResponse20028Servings;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class InlineResponse20035MenuItems {
    
    Integer id
    
    String title
    
    String restaurantChain
    
    String image
    
    String imageType
    
    InlineResponse20028Servings servings = null
}
