package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.InlineResponse20045ProductMatches;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;

@Canonical
class InlineResponse20045 {
    
    List<String> pairedWines = new ArrayList<String>()
    
    String pairingText
    
    List<InlineResponse20045ProductMatches> productMatches = new ArrayList<InlineResponse20045ProductMatches>()
}
