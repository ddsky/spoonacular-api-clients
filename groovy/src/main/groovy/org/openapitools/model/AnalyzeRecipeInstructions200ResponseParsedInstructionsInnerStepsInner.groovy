package org.openapitools.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import java.util.LinkedHashSet;
import java.util.Set;
import org.openapitools.model.AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner;

@Canonical
class AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner {
    
    BigDecimal number
    
    String step
    
    Set<AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner> ingredients
    
    Set<AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner> equipment
}
