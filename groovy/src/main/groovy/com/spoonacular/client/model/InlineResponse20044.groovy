package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.InlineResponse20044ProductMatches;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;

@Canonical
class InlineResponse20044 {
    
    List<String> pairedWines = new ArrayList<String>()
    
    String pairingText
    
    List<InlineResponse20044ProductMatches> productMatches = new ArrayList<InlineResponse20044ProductMatches>()
}
