package com.spoonacular.client.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;

@Canonical
class InlineObject6 {
    /* The ingredient list of the recipe, one ingredient per line. */
    String ingredientList
    /* The number of servings that you can make from the ingredients. */
    BigDecimal servings
    /* Whether nutrition data should be added to correctly parsed ingredients. */
    Boolean includeNutrition
}
