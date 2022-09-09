package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.spoonacular.client.model.ParseIngredients200ResponseInnerNutritionCaloricBreakdown;
import com.spoonacular.client.model.ParseIngredients200ResponseInnerNutritionNutrientsInner;
import com.spoonacular.client.model.ParseIngredients200ResponseInnerNutritionPropertiesInner;
import com.spoonacular.client.model.ParseIngredients200ResponseInnerNutritionWeightPerServing;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

@Canonical
class GetIngredientInformation200ResponseNutrition {
    
    Set<ParseIngredients200ResponseInnerNutritionNutrientsInner> nutrients = new LinkedHashSet<>()
    
    Set<ParseIngredients200ResponseInnerNutritionPropertiesInner> properties = new LinkedHashSet<>()
    
    ParseIngredients200ResponseInnerNutritionCaloricBreakdown caloricBreakdown
    
    ParseIngredients200ResponseInnerNutritionWeightPerServing weightPerServing
}
