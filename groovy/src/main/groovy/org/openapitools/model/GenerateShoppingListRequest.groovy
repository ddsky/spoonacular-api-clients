package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class GenerateShoppingListRequest {
    /* The username. */
    String username
    /* The start date in the format yyyy-mm-dd. */
    String startDate
    /* The end date in the format yyyy-mm-dd. */
    String endDate
    /* The private hash for the username. */
    String hash
}
