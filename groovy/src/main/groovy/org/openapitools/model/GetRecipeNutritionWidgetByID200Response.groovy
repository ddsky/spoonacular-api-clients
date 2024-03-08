package org.openapitools.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.LinkedHashSet;
import java.util.Set;
import org.openapitools.model.GetRecipeNutritionWidgetByID200ResponseBadInner;
import org.openapitools.model.GetRecipeNutritionWidgetByID200ResponseGoodInner;

@Canonical
class GetRecipeNutritionWidgetByID200Response {
    
    String calories
    
    String carbs
    
    String fat
    
    String protein
    
    Set<GetRecipeNutritionWidgetByID200ResponseBadInner> bad = new LinkedHashSet<>()
    
    Set<GetRecipeNutritionWidgetByID200ResponseGoodInner> good = new LinkedHashSet<>()
}
