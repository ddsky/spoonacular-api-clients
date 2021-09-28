package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.InlineResponse20048NutritionCalories;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class InlineResponse20048Nutrition {
    
    Integer recipesUsed
    
    InlineResponse20048NutritionCalories calories = null
    
    InlineResponse20048NutritionCalories fat = null
    
    InlineResponse20048NutritionCalories protein = null
    
    InlineResponse20048NutritionCalories carbs = null
}
