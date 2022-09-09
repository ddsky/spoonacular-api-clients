package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.spoonacular.client.model.GetRecipeInformation200ResponseWinePairingProductMatchesInner;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

@Canonical
class GetRecipeInformation200ResponseWinePairing {
    
    List<String> pairedWines = new ArrayList<>()
    
    String pairingText
    
    Set<GetRecipeInformation200ResponseWinePairingProductMatchesInner> productMatches = new LinkedHashSet<>()
}
