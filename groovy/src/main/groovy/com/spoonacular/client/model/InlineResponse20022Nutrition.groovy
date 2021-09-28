package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.RecipesParseIngredientsNutritionCaloricBreakdown;
import com.spoonacular.client.model.RecipesParseIngredientsNutritionNutrients;
import com.spoonacular.client.model.RecipesParseIngredientsNutritionProperties;
import com.spoonacular.client.model.RecipesParseIngredientsNutritionWeightPerServing;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;

@Canonical
class InlineResponse20022Nutrition {
    
    List<RecipesParseIngredientsNutritionNutrients> nutrients = new ArrayList<RecipesParseIngredientsNutritionNutrients>()
    
    List<RecipesParseIngredientsNutritionProperties> properties = new ArrayList<RecipesParseIngredientsNutritionProperties>()
    
    RecipesParseIngredientsNutritionCaloricBreakdown caloricBreakdown = null
    
    RecipesParseIngredientsNutritionWeightPerServing weightPerServing = null
}
