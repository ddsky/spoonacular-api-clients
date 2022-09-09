package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.spoonacular.client.model.AnalyzeRecipeInstructions200ResponseIngredientsInner;
import com.spoonacular.client.model.AnalyzeRecipeInstructions200ResponseParsedInstructionsInner;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

@Canonical
class AnalyzeRecipeInstructions200Response {
    
    Set<AnalyzeRecipeInstructions200ResponseParsedInstructionsInner> parsedInstructions = new LinkedHashSet<>()
    
    Set<AnalyzeRecipeInstructions200ResponseIngredientsInner> ingredients = new LinkedHashSet<>()
    
    Set<AnalyzeRecipeInstructions200ResponseIngredientsInner> equipment = new LinkedHashSet<>()
}
