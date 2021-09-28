package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.RecipesParseIngredientsNutritionCaloricBreakdown;
import com.spoonacular.client.model.RecipesParseIngredientsNutritionNutrients;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;

@Canonical
class InlineResponse20028Nutrition {
    
    List<RecipesParseIngredientsNutritionNutrients> nutrients = new ArrayList<RecipesParseIngredientsNutritionNutrients>()
    
    RecipesParseIngredientsNutritionCaloricBreakdown caloricBreakdown = null
}
