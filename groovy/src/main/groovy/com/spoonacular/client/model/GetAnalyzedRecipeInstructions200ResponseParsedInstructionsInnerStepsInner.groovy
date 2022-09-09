package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.spoonacular.client.model.GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

@Canonical
class GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInner {
    
    BigDecimal number
    
    String step
    
    Set<GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner> ingredients = new LinkedHashSet<>()
    
    Set<GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner> equipment = new LinkedHashSet<>()
}
