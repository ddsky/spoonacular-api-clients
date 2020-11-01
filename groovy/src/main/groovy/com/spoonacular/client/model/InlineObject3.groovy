package com.spoonacular.client.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class InlineObject3 {
    /* The recipe's instructions. */
    String instructions
    /* How to visualize the equipment, either \"grid\" or \"list\". */
    String view
    /* Whether the default CSS should be added to the response. */
    Boolean defaultCss
    /* Whether to show a backlink to spoonacular. If set false, this call counts against your quota. */
    Boolean showBacklink
}
