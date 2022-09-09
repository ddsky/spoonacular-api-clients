package com.spoonacular.client.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;

@Canonical
class GetDishPairingForWine200Response {
    
    List<String> pairings = new ArrayList<>()
    
    String text
}
