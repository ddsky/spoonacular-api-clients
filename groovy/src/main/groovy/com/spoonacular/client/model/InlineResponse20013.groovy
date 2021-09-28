package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.InlineResponse20013Ingredients1;
import com.spoonacular.client.model.InlineResponse20013ParsedInstructions;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;

@Canonical
class InlineResponse20013 {
    
    List<InlineResponse20013ParsedInstructions> parsedInstructions = new ArrayList<InlineResponse20013ParsedInstructions>()
    
    List<InlineResponse20013Ingredients1> ingredients = new ArrayList<InlineResponse20013Ingredients1>()
    
    List<InlineResponse20013Ingredients1> equipment = new ArrayList<InlineResponse20013Ingredients1>()
}
