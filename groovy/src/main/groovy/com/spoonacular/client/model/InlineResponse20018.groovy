package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.InlineResponse20018Dishes;
import com.spoonacular.client.model.InlineResponse20018Ingredients;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;

@Canonical
class InlineResponse20018 {
    
    List<InlineResponse20018Dishes> dishes = new ArrayList<InlineResponse20018Dishes>()
    
    List<InlineResponse20018Ingredients> ingredients = new ArrayList<InlineResponse20018Ingredients>()
    
    List<String> cuisines = new ArrayList<String>()
    
    List<String> modifiers = new ArrayList<String>()
}
