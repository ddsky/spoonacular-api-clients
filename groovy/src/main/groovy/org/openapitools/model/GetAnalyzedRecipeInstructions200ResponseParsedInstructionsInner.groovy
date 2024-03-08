package org.openapitools.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.LinkedHashSet;
import java.util.Set;
import org.openapitools.model.GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInner;

@Canonical
class GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInner {
    
    String name
    
    Set<GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInner> steps
}
