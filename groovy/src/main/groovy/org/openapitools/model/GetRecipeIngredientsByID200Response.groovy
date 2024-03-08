package org.openapitools.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.LinkedHashSet;
import java.util.Set;
import org.openapitools.model.GetRecipeIngredientsByID200ResponseIngredientsInner;

@Canonical
class GetRecipeIngredientsByID200Response {
    
    Set<GetRecipeIngredientsByID200ResponseIngredientsInner> ingredients = new LinkedHashSet<>()
}
