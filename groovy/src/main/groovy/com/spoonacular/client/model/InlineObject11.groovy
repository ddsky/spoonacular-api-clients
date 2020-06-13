package com.spoonacular.client.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class InlineObject11 {
    /* The username. */
    String username
    /* The start date in the format yyyy-mm-dd. */
    String startDate
    /* The end date in the format yyyy-mm-dd. */
    String endDate
    /* The private hash for the username. */
    String hash
}
