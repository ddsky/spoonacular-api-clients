package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.spoonacular.client.model.GenerateMealPlan200ResponseNutrients;
import com.spoonacular.client.model.GetSimilarRecipes200ResponseInner;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

@Canonical
class GenerateMealPlan200Response {
    
    Set<GetSimilarRecipes200ResponseInner> meals = new LinkedHashSet<>()
    
    GenerateMealPlan200ResponseNutrients nutrients
}
