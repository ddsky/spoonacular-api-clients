package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.spoonacular.client.model.AddToMealPlanRequest1ValueIngredientsInner;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

@Canonical
class AddToMealPlanRequest1Value {
    
    Set<AddToMealPlanRequest1ValueIngredientsInner> ingredients = new LinkedHashSet<>()
}
