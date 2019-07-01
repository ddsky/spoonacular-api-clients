package com.spoonacular.client.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;

@Canonical
class InlineObject {
    /* The ingredient list of the recipe, one ingredient per line. */
    String ingredientList
    /* The number of servings. */
    BigDecimal servings
    /* Whether the default CSS should be added to the response. */
    Boolean defaultCss
    /* Whether to show a backlink to spoonacular. If set false, this call counts against your quota. */
    Boolean showBacklink
}
