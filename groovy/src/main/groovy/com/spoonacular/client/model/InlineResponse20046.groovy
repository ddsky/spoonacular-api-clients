package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.InlineResponse20046RecommendedWines;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;

@Canonical
class InlineResponse20046 {
    
    List<InlineResponse20046RecommendedWines> recommendedWines = new ArrayList<InlineResponse20046RecommendedWines>()
    
    Integer totalFound
}
