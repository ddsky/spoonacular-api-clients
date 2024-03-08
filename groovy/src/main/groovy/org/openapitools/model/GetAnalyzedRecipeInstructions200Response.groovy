package org.openapitools.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.LinkedHashSet;
import java.util.Set;
import org.openapitools.model.GetAnalyzedRecipeInstructions200ResponseIngredientsInner;
import org.openapitools.model.GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInner;

@Canonical
class GetAnalyzedRecipeInstructions200Response {
    
    Set<GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInner> parsedInstructions = new LinkedHashSet<>()
    
    Set<GetAnalyzedRecipeInstructions200ResponseIngredientsInner> ingredients = new LinkedHashSet<>()
    
    Set<GetAnalyzedRecipeInstructions200ResponseIngredientsInner> equipment = new LinkedHashSet<>()
}
