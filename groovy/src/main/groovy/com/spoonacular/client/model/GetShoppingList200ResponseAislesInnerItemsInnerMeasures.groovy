package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.ParseIngredients200ResponseInnerNutritionWeightPerServing;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class GetShoppingList200ResponseAislesInnerItemsInnerMeasures {
    
    ParseIngredients200ResponseInnerNutritionWeightPerServing original
    
    ParseIngredients200ResponseInnerNutritionWeightPerServing metric
    
    ParseIngredients200ResponseInnerNutritionWeightPerServing us
}
