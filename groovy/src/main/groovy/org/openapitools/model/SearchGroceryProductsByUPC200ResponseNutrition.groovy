package org.openapitools.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.LinkedHashSet;
import java.util.Set;
import org.openapitools.model.ParseIngredients200ResponseInnerNutritionCaloricBreakdown;
import org.openapitools.model.ParseIngredients200ResponseInnerNutritionNutrientsInner;

@Canonical
class SearchGroceryProductsByUPC200ResponseNutrition {
    
    Set<ParseIngredients200ResponseInnerNutritionNutrientsInner> nutrients = new LinkedHashSet<>()
    
    ParseIngredients200ResponseInnerNutritionCaloricBreakdown caloricBreakdown
}
