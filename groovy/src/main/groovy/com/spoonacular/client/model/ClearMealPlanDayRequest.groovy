package com.spoonacular.client.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class ClearMealPlanDayRequest {
    /* The username. */
    String username
    /* The date in the format yyyy-mm-dd. */
    String date
    /* The private hash for the username. */
    String hash
}
