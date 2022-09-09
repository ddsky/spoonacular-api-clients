package com.spoonacular.client.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class AddToMealPlanRequest {
    /* The username. */
    String username
    /* The private hash for the username. */
    String hash
}
