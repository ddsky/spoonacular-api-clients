package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.spoonacular.client.model.GetWinePairing200ResponseProductMatchesInner;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

@Canonical
class GetWinePairing200Response {
    
    List<String> pairedWines = new ArrayList<>()
    
    String pairingText
    
    Set<GetWinePairing200ResponseProductMatchesInner> productMatches = new LinkedHashSet<>()
}
