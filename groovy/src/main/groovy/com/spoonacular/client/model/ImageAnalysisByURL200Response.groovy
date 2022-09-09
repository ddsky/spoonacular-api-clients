package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.spoonacular.client.model.ImageAnalysisByURL200ResponseCategory;
import com.spoonacular.client.model.ImageAnalysisByURL200ResponseNutrition;
import com.spoonacular.client.model.ImageAnalysisByURL200ResponseRecipesInner;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

@Canonical
class ImageAnalysisByURL200Response {
    
    ImageAnalysisByURL200ResponseNutrition nutrition
    
    ImageAnalysisByURL200ResponseCategory category
    
    Set<ImageAnalysisByURL200ResponseRecipesInner> recipes = new LinkedHashSet<>()
}
