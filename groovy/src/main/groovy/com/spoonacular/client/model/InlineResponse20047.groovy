package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.InlineResponse20047RecommendedWines;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;

@Canonical
class InlineResponse20047 {
    
    List<InlineResponse20047RecommendedWines> recommendedWines = new ArrayList<InlineResponse20047RecommendedWines>()
    
    Integer totalFound
}
