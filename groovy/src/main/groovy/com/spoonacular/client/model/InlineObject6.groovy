package com.spoonacular.client.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class InlineObject6 {
    /* The title of the recipe. */
    String title
    /* The ingredient list of the recipe, one ingredient per line (separate lines with \\n). */
    String ingredientList
}
