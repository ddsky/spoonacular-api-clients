package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.spoonacular.client.model.GetAnalyzedRecipeInstructions200ResponseIngredientsInner;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

@Canonical
class GetMealPlanTemplates200Response {
    
    Set<GetAnalyzedRecipeInstructions200ResponseIngredientsInner> templates = new LinkedHashSet<>()
}
