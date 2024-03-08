package org.openapitools.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.LinkedHashSet;
import java.util.Set;
import org.openapitools.model.ImageAnalysisByURL200ResponseCategory;
import org.openapitools.model.ImageAnalysisByURL200ResponseNutrition;
import org.openapitools.model.ImageAnalysisByURL200ResponseRecipesInner;

@Canonical
class ImageAnalysisByURL200Response {
    
    ImageAnalysisByURL200ResponseNutrition nutrition
    
    ImageAnalysisByURL200ResponseCategory category
    
    Set<ImageAnalysisByURL200ResponseRecipesInner> recipes = new LinkedHashSet<>()
}
