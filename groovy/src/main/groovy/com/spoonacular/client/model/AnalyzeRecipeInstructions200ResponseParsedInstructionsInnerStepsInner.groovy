package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.spoonacular.client.model.AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

@Canonical
class AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner {
    
    BigDecimal number
    
    String step
    
    Set<AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner> ingredients = new LinkedHashSet<>()
    
    Set<AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner> equipment = new LinkedHashSet<>()
}
