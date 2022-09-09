package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.spoonacular.client.model.AnalyzeARecipeSearchQuery200ResponseDishesInner;
import com.spoonacular.client.model.AnalyzeARecipeSearchQuery200ResponseIngredientsInner;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

@Canonical
class AnalyzeARecipeSearchQuery200Response {
    
    Set<AnalyzeARecipeSearchQuery200ResponseDishesInner> dishes = new LinkedHashSet<>()
    
    Set<AnalyzeARecipeSearchQuery200ResponseIngredientsInner> ingredients = new LinkedHashSet<>()
    
    List<String> cuisines = new ArrayList<>()
    
    List<String> modifiers = new ArrayList<>()
}
