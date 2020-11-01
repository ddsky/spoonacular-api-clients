package com.spoonacular.client.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class InlineObject {
    /* The ingredient list of the recipe, one ingredient per line. */
    String ingredientList
}
