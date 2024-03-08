package org.openapitools.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashSet;
import java.util.Set;
import org.openapitools.model.GetWinePairing200ResponseProductMatchesInner;

@Canonical
class GetWinePairing200Response {
    
    List<String> pairedWines = new ArrayList<>()
    
    String pairingText
    
    Set<GetWinePairing200ResponseProductMatchesInner> productMatches = new LinkedHashSet<>()
}
