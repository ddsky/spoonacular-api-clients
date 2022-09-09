package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.spoonacular.client.model.GetRecipeIngredientsByID200ResponseIngredientsInner;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

@Canonical
class GetRecipeIngredientsByID200Response {
    
    Set<GetRecipeIngredientsByID200ResponseIngredientsInner> ingredients = new LinkedHashSet<>()
}
