package org.openapitools.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.LinkedHashSet;
import java.util.Set;
import org.openapitools.model.AnalyzeRecipeInstructions200ResponseIngredientsInner;
import org.openapitools.model.AnalyzeRecipeInstructions200ResponseParsedInstructionsInner;

@Canonical
class AnalyzeRecipeInstructions200Response {
    
    Set<AnalyzeRecipeInstructions200ResponseParsedInstructionsInner> parsedInstructions = new LinkedHashSet<>()
    
    Set<AnalyzeRecipeInstructions200ResponseIngredientsInner> ingredients = new LinkedHashSet<>()
    
    Set<AnalyzeRecipeInstructions200ResponseIngredientsInner> equipment = new LinkedHashSet<>()
}
