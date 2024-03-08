package org.openapitools.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.LinkedHashSet;
import java.util.Set;
import org.openapitools.model.GenerateMealPlan200ResponseNutrients;
import org.openapitools.model.GetSimilarRecipes200ResponseInner;

@Canonical
class GenerateMealPlan200Response {
    
    Set<GetSimilarRecipes200ResponseInner> meals = new LinkedHashSet<>()
    
    GenerateMealPlan200ResponseNutrients nutrients
}
