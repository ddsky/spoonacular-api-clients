package org.openapitools.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.LinkedHashSet;
import java.util.Set;
import org.openapitools.model.ParseIngredients200ResponseInnerNutritionCaloricBreakdown;
import org.openapitools.model.ParseIngredients200ResponseInnerNutritionNutrientsInner;
import org.openapitools.model.ParseIngredients200ResponseInnerNutritionPropertiesInner;
import org.openapitools.model.ParseIngredients200ResponseInnerNutritionWeightPerServing;

@Canonical
class ParseIngredients200ResponseInnerNutrition {
    
    Set<ParseIngredients200ResponseInnerNutritionNutrientsInner> nutrients = new LinkedHashSet<>()
    
    Set<ParseIngredients200ResponseInnerNutritionPropertiesInner> properties = new LinkedHashSet<>()
    
    Set<ParseIngredients200ResponseInnerNutritionPropertiesInner> flavonoids = new LinkedHashSet<>()
    
    ParseIngredients200ResponseInnerNutritionCaloricBreakdown caloricBreakdown
    
    ParseIngredients200ResponseInnerNutritionWeightPerServing weightPerServing
}
