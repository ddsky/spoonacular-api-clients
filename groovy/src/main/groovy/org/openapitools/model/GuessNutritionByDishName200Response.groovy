package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.GuessNutritionByDishName200ResponseCalories;

@Canonical
class GuessNutritionByDishName200Response {
    
    GuessNutritionByDishName200ResponseCalories calories
    
    GuessNutritionByDishName200ResponseCalories carbs
    
    GuessNutritionByDishName200ResponseCalories fat
    
    GuessNutritionByDishName200ResponseCalories protein
    
    Integer recipesUsed
}
