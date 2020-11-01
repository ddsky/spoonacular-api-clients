package com.spoonacular.client.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;

@Canonical
class InlineObject4 {
    /* The title of the recipe. */
    String title
    /* The binary image of the recipe as jpg. */
    File image
    /* The ingredient list of the recipe, one ingredient per line (separate lines with \\n). */
    String ingredients
    /* The instructions to make the recipe. One step per line (separate lines with \\n). */
    String instructions
    /* The number of minutes it takes to get the recipe on the table. */
    BigDecimal readyInMinutes
    /* The number of servings the recipe makes. */
    BigDecimal servings
    /* The mask to put over the recipe image (\"ellipseMask\", \"diamondMask\", \"starMask\", \"heartMask\", \"potMask\", \"fishMask\"). */
    String mask
    /* The background image (\"none\",\"background1\", or \"background2\"). */
    String backgroundImage
    /* The author of the recipe. */
    String author
    /* The background color for the recipe card as a hex-string. */
    String backgroundColor
    /* The font color for the recipe card as a hex-string. */
    String fontColor
    /* The source of the recipe. */
    String source
}
