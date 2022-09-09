package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.spoonacular.client.model.GetRecipeNutritionWidgetByID200ResponseBadInner;
import com.spoonacular.client.model.GetRecipeNutritionWidgetByID200ResponseGoodInner;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

@Canonical
class GetRecipeNutritionWidgetByID200Response {
    
    String calories
    
    String carbs
    
    String fat
    
    String protein
    
    Set<GetRecipeNutritionWidgetByID200ResponseBadInner> bad = new LinkedHashSet<>()
    
    Set<GetRecipeNutritionWidgetByID200ResponseGoodInner> good = new LinkedHashSet<>()
}
