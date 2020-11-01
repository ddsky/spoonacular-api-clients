package com.spoonacular.client.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;

@Canonical
class InlineObject15 {
    /* The username. */
    String username
    /* The shopping list item id. */
    BigDecimal id
    /* The private hash for the username. */
    String hash
}
