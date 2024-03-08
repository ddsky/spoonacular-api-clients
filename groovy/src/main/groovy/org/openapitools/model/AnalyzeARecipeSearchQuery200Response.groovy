package org.openapitools.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashSet;
import java.util.Set;
import org.openapitools.model.AnalyzeARecipeSearchQuery200ResponseDishesInner;
import org.openapitools.model.AnalyzeARecipeSearchQuery200ResponseIngredientsInner;

@Canonical
class AnalyzeARecipeSearchQuery200Response {
    
    Set<AnalyzeARecipeSearchQuery200ResponseDishesInner> dishes = new LinkedHashSet<>()
    
    Set<AnalyzeARecipeSearchQuery200ResponseIngredientsInner> ingredients = new LinkedHashSet<>()
    
    List<String> cuisines = new ArrayList<>()
    
    List<String> modifiers = new ArrayList<>()
}
