package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.GuessNutritionByDishName200ResponseCalories;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class GuessNutritionByDishName200Response {
    
    GuessNutritionByDishName200ResponseCalories calories
    
    GuessNutritionByDishName200ResponseCalories carbs
    
    GuessNutritionByDishName200ResponseCalories fat
    
    GuessNutritionByDishName200ResponseCalories protein
    
    Integer recipesUsed
}
