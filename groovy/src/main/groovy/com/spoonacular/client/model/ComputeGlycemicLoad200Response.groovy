package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.spoonacular.client.model.ComputeGlycemicLoad200ResponseIngredientsInner;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

@Canonical
class ComputeGlycemicLoad200Response {
    
    BigDecimal totalGlycemicLoad
    
    Set<ComputeGlycemicLoad200ResponseIngredientsInner> ingredients = new LinkedHashSet<>()
}
