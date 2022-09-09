package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.ImageAnalysisByURL200ResponseNutritionCalories;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class ImageAnalysisByURL200ResponseNutrition {
    
    Integer recipesUsed
    
    ImageAnalysisByURL200ResponseNutritionCalories calories
    
    ImageAnalysisByURL200ResponseNutritionCalories fat
    
    ImageAnalysisByURL200ResponseNutritionCalories protein
    
    ImageAnalysisByURL200ResponseNutritionCalories carbs
}
