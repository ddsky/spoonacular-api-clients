package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class AnalyzeRecipeRequest {
    /* The input language, either \"en\" or \"de\". */
    String language
    /* Whether nutrition data should be added to correctly parsed ingredients. */
    Boolean includeNutrition
    /* Whether taste data should be added to correctly parsed ingredients. */
    Boolean includeTaste
}
