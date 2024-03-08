package org.openapitools.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashSet;
import java.util.Set;
import org.openapitools.model.GetRecipeInformation200ResponseWinePairingProductMatchesInner;

@Canonical
class GetRecipeInformation200ResponseWinePairing {
    
    List<String> pairedWines = new ArrayList<>()
    
    String pairingText
    
    Set<GetRecipeInformation200ResponseWinePairingProductMatchesInner> productMatches = new LinkedHashSet<>()
}
