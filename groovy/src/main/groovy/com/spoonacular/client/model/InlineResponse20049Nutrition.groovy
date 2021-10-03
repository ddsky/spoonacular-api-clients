package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.InlineResponse20049NutritionCalories;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class InlineResponse20049Nutrition {
    
    Integer recipesUsed
    
    InlineResponse20049NutritionCalories calories = null
    
    InlineResponse20049NutritionCalories fat = null
    
    InlineResponse20049NutritionCalories protein = null
    
    InlineResponse20049NutritionCalories carbs = null
}
