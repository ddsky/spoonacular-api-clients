package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.InlineResponse20038NutritionSummaryNutrients;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;

@Canonical
class InlineResponse20038NutritionSummary {
    
    List<InlineResponse20038NutritionSummaryNutrients> nutrients = new ArrayList<InlineResponse20038NutritionSummaryNutrients>()
}
