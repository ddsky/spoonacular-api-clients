package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.InlineResponse2003WinePairingProductMatches;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;

@Canonical
class InlineResponse2003WinePairing {
    
    List<String> pairedWines = new ArrayList<String>()
    
    String pairingText
    
    List<InlineResponse2003WinePairingProductMatches> productMatches = new ArrayList<InlineResponse2003WinePairingProductMatches>()
}
